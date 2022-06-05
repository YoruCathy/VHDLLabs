----------VHDL���Ա�дDS18B20�¶ȴ���������

library IEEE;  
use IEEE.STD_LOGIC_1164.ALL;  
use IEEE.STD_LOGIC_ARITH.ALL;  
use IEEE.STD_LOGIC_UNSIGNED.ALL;  

-- ���¶ȴ����������趨
entity ds18B20 is  
port(clk : in std_logic;   ---12MHz
     dq  : inout std_logic;  
     rst: in std_logic; 
     sck:buffer std_logic;
  rck:buffer std_logic;
  ser:out std_logic;
  led:out std_logic_vector(2 downto 0) -- ����led��ʾ
    );
end ds18B20;  

architecture Behavioral of ds18B20 is  

TYPE STATE_TYPE is (RESET,CMD_CC,WRITE_BYTE,WRITE_LOW,WRITE_HIGH,READ_BIT, 
CMD_44,CMD_BE,WAIT800MS,GET_TMP,WAIT4MS);  
signal STATE: STATE_TYPE:=RESET;  
signal btnflag:integer range 0 to 1;
signal clk_temp : std_logic:='0';  
signal clk1m : std_logic; --��Ƶ��õ���1Mʱ�� 
signal cp: std_logic;  -- 1ms  ʱ��
signal w : integer range 0 to 2 :=0; 

signal write_temp : std_logic_vector(7 downto 0):="00000000";  
signal TMP : std_logic_vector(11 downto 0);  
signal tmp_bit : std_logic;  
signal WRITE_BYTE_CNT : integer range 0 to 8:=0;  
signal WRITE_LOW_CNT : integer range 0 to 2:=0;  
signal WRITE_HIGH_CNT : integer range 0 to 2:=0;  
signal READ_BIT_CNT : integer range 0 to 3:=0;  
signal GET_TMP_CNT : integer range 0 to 13:=0;  
signal cnt : integer range 0 to 100_001:=0;  
signal temp : std_logic; 
signal sign : std_logic_vector(7 downto 0); 

signal count : integer range 0 to 51:=0;  


signal WRITE_BYTE_FLAG : integer range 0 to 4:=0;  

-- �趨�������ʾ
type matrix_index is array(9 downto 0) of std_logic_vector(7 downto 0);
constant SEG:matrix_index:=(X"6f",X"7f",X"07",X"7d",X"6d",X"66",X"4f",X"5b",X"06",X"3f");
signal cycledata:std_logic_vector(95 downto 0);
 signal placecnt:integer range 0 to 17:=16;
 signal segcnt:integer range 0 to 5:=5;
 signal segcnt_div:std_logic_vector(1 downto 0);
 signal mode:integer range 0 to 1;
 signal key_div:integer range 0 to 539999;
begin  

process (clk,clk_temp)  
begin  
if rising_edge(clk) then  
	if (key_div=539999) then 
						key_div<=0;
			            if (rst='0') then
								case btnflag is
								    when 0=>btnflag<=1;
									when 1=>btnflag<=0;
									case mode is
											when 0=>mode<=1;
											when 1=>mode<=0;
											when others=>NULL;
									end case;
									when others=>NULL;
								end case;
						else btnflag<=0;
						end if;
						else key_div<=key_div+1;
                   end if;
				   --�ð����������Ϻͻ���ģʽ���л�
   if (count =5) then  
      count <= 0;  
      clk_temp<= not clk_temp;  
   else  
      count <= count +1;  
   end if;  
end if;   
   clk1m<=clk_temp;  --1Mʱ�ӷ�Ƶ
end Process;  


process (clk1m)  
variable n: integer range 0 to 12000:=0;
begin             -----cp 1ms 
if rising_edge(clk1m) then  
   n:=n+1;
   if (n>12000) then n:=0;  cp<=not cp;  end if;
    end if;  
end Process;  
--��ȡ1ms

process(STATE,clk1m) --�¶ȴ�������ʱ����
begin 
if rising_edge(clk1m) then  
if(rst='0') then  
STATE<=RESET; 
else 
case STATE is  
     when RESET=>  
--********** 

--********* 
            if (cnt>=0 and cnt<500) then -- 500��s�ĸ�λ�͵�ƽ
               dq<='0';--  dq��Ϊ���
     cnt<=cnt+1;  
    STATE<=RESET;  
elsif (cnt>=500 and cnt<510) then --����̬��������һ����·�Ļ������¼���·���κ�Ӱ�죬��û��һ��,����̬����Ӧ����inout�˿����棬������inoutû�������ʱ���Ū������̬�����������ƽ�Ϳ���������������źž�����
dq<='Z'; 
cnt<=cnt+1; 
STATE<=RESET; --����dq
            elsif (cnt>=510 and cnt<750) then   -- 240��s
temp<=dq; --  dq��Ϊ����
if(cnt=580) then 
temp<=dq; 

end if; 
     cnt<=cnt+1;  
     STATE<=RESET;  
elsif (cnt>=750) then  
    cnt<=0; 
    STATE<=CMD_CC; 
end if;  
when CMD_CC=>  --��Ծromָ�CC��

write_temp<="11001100";  
STATE<=WRITE_BYTE; 
when WRITE_BYTE=> 
case WRITE_BYTE_CNT is  
when 0 to 7=>  
if (write_temp(WRITE_BYTE_CNT)='0') then  
     STATE<=WRITE_LOW;        
else 
     STATE<=WRITE_HIGH;  
    end if;  
      WRITE_BYTE_CNT<=WRITE_BYTE_CNT+1;  
when 8=> 
if (WRITE_BYTE_FLAG=0) then -- ��һ��д0XCC���  
     STATE<=CMD_44;  
       WRITE_BYTE_FLAG<=1;  
    elsif (WRITE_BYTE_FLAG=1) then --д0X44��� 
       STATE<=RESET;  
       WRITE_BYTE_FLAG<=2;  
    elsif (WRITE_BYTE_FLAG=2) then --�ڶ���д0XCC���  
       STATE<=CMD_BE;  
       WRITE_BYTE_FLAG<=3;  
    elsif (WRITE_BYTE_FLAG=3) then --д0XBE���  
       STATE<=GET_TMP;  
       WRITE_BYTE_FLAG<=0;  
    end if;  
WRITE_BYTE_CNT<=0; 
when others=>STATE<=RESET; 
end case;  
when WRITE_LOW=>  --д0����
case WRITE_LOW_CNT is  
    when 0=>  
        dq<='0';  
        if (cnt=70) then  
          cnt<=0;  
          WRITE_LOW_CNT<=1;  
       else  
          cnt<=cnt+1;  
       end if;  
    when 1=>  
       dq<='Z';  
       if (cnt=5) then  
          cnt<=0;  
          WRITE_LOW_CNT<=2;  
    else  
         cnt<=cnt+1;  
    end if;  
when 2=>  
    STATE<=WRITE_BYTE;  
     WRITE_LOW_CNT<=0;  
    when others=>WRITE_LOW_CNT<=0;  
end case;  
when WRITE_HIGH=>  --д1����
 case WRITE_HIGH_CNT is  
    when 0=>  
       dq<='0';  
       if (cnt=8) then  
          cnt<=0;  
          WRITE_HIGH_CNT<=1;  
       else  
          cnt<=cnt+1;  
       end if;  
    when 1=>  
       dq<='Z';  
       if (cnt=72) then  
          cnt<=0;  
          WRITE_HIGH_CNT<=2;  
       else  
          cnt<=cnt+1;  
       end if;  
    when 2=>  
       STATE<=WRITE_BYTE;  
       WRITE_HIGH_CNT<=0;  
    when others=>WRITE_HIGH_CNT<=0;  
end case;  
when CMD_44=>  
write_temp<="01000100";  
STATE<=WRITE_BYTE;  
when CMD_BE=>  
write_temp<="10111110";  
STATE<=WRITE_BYTE;
----------------------------------  
    when READ_BIT=>  
 case READ_BIT_CNT is  --��ȡ����
    when 0=>  
       dq<='0';  --4��s�ĵ͵�ƽ
       if (cnt=4) then  
READ_BIT_CNT<=1;  
cnt<=0;  
       else  
          cnt<=cnt+1;  
       end if;  
    when 1=>  
       dq<='Z'; --4��s�ĸߵ�ƽ 

       if (cnt=4) then 
          READ_BIT_CNT<=2;  
          cnt<=0;  
       else  
          cnt<=cnt+1;  
       end if;  
    when 2=>  
   dq<='Z'; 
       TMP_BIT<=dq; --12��s�������� ,�������һ�θ�ֵ�Ľ����
       if (cnt=4) then  
          READ_BIT_CNT<=3;  
          cnt<=0;  
       else  
          cnt<=cnt+1;  
       end if;  
    when 3=>  
--------------------- 
   dq<='Z';    --��������������
--------------------- 
       if (cnt=50) then --�������ݺ󣬵ȴ�50us 
          cnt<=0;  
          READ_BIT_CNT<=0;  
          STATE<=GET_TMP;  
       else  
          cnt<=cnt+1;  
       end if;  
    when others=>READ_BIT_CNT<=0;  
 end case;  

-------#################--------------
    when GET_TMP=>  --��������12λ����ת����TMP
 case GET_TMP_CNT is  
when 0 => 
STATE<=READ_BIT; 
GET_TMP_CNT<=GET_TMP_CNT+1; 
    when 1 to 12=>  
       STATE<=READ_BIT;  
       TMP(GET_TMP_CNT-1)<=TMP_BIT;--��������ÿһλ���ݰ�˳���� TMP��0 to 11������  
       GET_TMP_CNT<=GET_TMP_CNT+1; --����Ƕ�����0��11λ����ʮ��λû�д� 
    when 13=>  
       GET_TMP_CNT<=0;  
       STATE<=WAIT4MS;  
 end case;  
         when WAIT4MS=>  
 if (cnt>=4000) then  
--STATE<=WAIT4MS; 
    STATE<=RESET;  
    cnt<=0;  
 else  
    cnt<=cnt+1;  
    STATE<=WAIT4MS;  
 end if;  
when others=>STATE<=RESET; 
end case;  

end if; 
end if; 
end process;  

----------------------------------------------- 

process (cp)         --------����ܶ�̬��ʾ�¶�ֵ
variable temp1:integer range 0 to 256;
variable temp2:integer range 0 to 256;
variable temp3:integer range 0 to 256;
variable temp4:integer range 0 to 256;
variable Ftemp:integer range 0 to 100000;
variable Ftemp1:integer range 0 to 100000;
variable tens:integer range 0 to 9;
variable ones:integer range 0 to 9;
variable zpone:integer range 0 to 9;
variable zpzone:integer range 0 to 9;
begin
  temp1:=0;
  if (TMP(10)='1') then temp1:=temp1+64;end if;
  if (TMP(9)='1') then temp1:=temp1+32;end if;
    if (TMP(8)='1') then temp1:=temp1+16;end if;
	  if (TMP(7)='1') then temp1:=temp1+8;end if;
	    if (TMP(6)='1') then temp1:=temp1+4;end if;
		  if (TMP(5)='1') then temp1:=temp1+2;end if;
		    if (TMP(4)='1') then temp1:=temp1+1;end if;
  temp2:=0;
  if (TMP(3)='1') then temp2:=temp2+8;end if;
  if (TMP(2)='1') then temp2:=temp2+4;end if;
  if (TMP(1)='1') then temp2:=temp2+2;end if;
  if (TMP(0)='0') then temp2:=temp2+1;end if;
  temp2:=temp2*100/16;
  Ftemp:=temp1*100+temp2;
  Ftemp:=Ftemp*18+32000;
  if (mode=0) then
  ones:=temp1 mod 10;
  tens:=(temp1-ones)/10;
  zpzone:=temp2 mod 10;
  zpone:=(temp2-zpzone)/10;
  --���ϸ�λ����
  
  end if;
  if (mode=1) then
  Ftemp1:=Ftemp mod 10;
  Ftemp:=(Ftemp-Ftemp1)/10;
  temp4:=Ftemp mod 100;
  temp3:=(Ftemp-temp4)/100;
  
  ones:=temp3 mod 10;
  tens:=(temp3-ones)/10;
  zpzone:=temp4 mod 10;
  zpone:=(temp4-zpzone)/10;--���ϸ�λ����
  end if;
  cycledata(5 downto 0)<="011111";
  cycledata(21 downto 16)<="101111";
 cycledata(37 downto 32)<="110111";
   cycledata(53 downto 48)<="111011";
   cycledata(69 downto 64)<="111111";
   cycledata(85 downto 80)<="111111";
                  cycledata(15 downto 8)<=SEG(zpzone);
				  cycledata(31 downto 24)<=SEG(zpone);
				  cycledata(47 downto 40)<=SEG(ones);
				  cycledata(47)<='1';
				  cycledata(63 downto 56)<=SEG(tens);
				  cycledata(79 downto 72)<=SEG(0);
				  cycledata(95 downto 88)<=SEG(0);
				  --74HC595 96λѭ��������
  if (temp1>=25)then led<="011";
  else led<="111";end if;
  --�¶ȱ������ܣ����ñ����¶�Ϊ25���϶ȣ�����¶ȸ���25���϶Ⱦ�����Ʊ���
  end process;

process (clk) 
     begin
	   if (clk'event and clk='0') then
	   if (segcnt_div="11") then segcnt_div<="00";else segcnt_div<=segcnt_div+1;end if;
	   end if;
	   sck<=segcnt_div(1);
	 end process;
	 --��ʾʱ�ӷ�Ƶ
process (sck)
   begin
      if (sck'event and sck='0') then 
	  if (placecnt=0) then placecnt<=15;
	  if (segcnt=0) then segcnt<=5;else segcnt<=segcnt-1;end if;
	  else placecnt<=placecnt-1;end if;  
	  ser<=cycledata(segcnt*16+placecnt);
	  if (placecnt=15) then rck<='1';
	  else rck<='0';end if;
	  end if;

   end process;
--��74HC595�������������ʾ
end Behavioral;