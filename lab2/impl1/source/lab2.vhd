LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Lab2  is
port(clk,clrin,speed_up_in,speed_down_in,brightness_in: in std_logic;
     LED_SIG: out std_logic:='0'   
     );
end Lab2;


architecture Default_arch of Lab2 is
signal LIGHT_CTL:integer :=1;  		--���ȿ���
signal Cycle_period:integer :=12000000;--һ��ѭ������  
signal cnt:integer :=0;      			--�����������ڴ�������
signal cur1,cur2:integer :=0;         	--����1��2
signal speed_up,speed_down,brightness,clr:std_logic:='0';	--���ټ�flag�����ټ�flag������flag��reset

begin

PROCESS(CLK,clrin) --reset key �����������
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF clrin='0' THEN 
		IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN clr<='1'; 
			ELSE clr<='0'; END IF; 
		END IF; 
	ELSE COUNT1:=0;
	END IF; 
end process;

PROCESS(CLK,speed_up_in) --speed_up key �����������
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF speed_up_in='0' THEN 
	   IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN speed_up<='1'; 
			ELSE speed_up<='0'; END IF; 
		END IF; 
	ELSE COUNT1:=0;
	END IF; 
end process;

PROCESS(CLK,speed_down_in) --speed_down key �����������
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF speed_down_in='0' THEN 
	   IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN speed_down<='1'; 
			ELSE speed_down<='0'; END IF; 
	  END IF; 
	ELSE COUNT1:=0;
	END IF; 
END PROCESS ;

PROCESS(CLK,brightness_in) --brightness key �����������
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF brightness_in='0' THEN 
		IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN brightness<='1'; 
			ELSE brightness<='0'; END IF; 
		END IF; 
	ELSE COUNT1:=0;
	END IF; 
END PROCESS ;


process(clk)--�������µ���ģ��
begin

  if(rising_edge(clk))then
   if(brightness='1')then --���ȵ���
	  if(LIGHT_CTL=1) then LIGHT_CTL<=20; end if;
	  if(LIGHT_CTL=20) then LIGHT_CTL<=200; end if;
	  if(LIGHT_CTL=200) then LIGHT_CTL<=1; end if;	  
	end if;    
	if(clr='1')then--reset
	  Cycle_period<=12000000;
	  LIGHT_CTL<=1;
    end if;
    if(speed_down='1')then--����
	  Cycle_period<=Cycle_period+3000000;
	  if(Cycle_period>60000000) then
	  Cycle_period<=60000000;
	  end if;
	 end if;
   if(speed_up='1')then--����
      Cycle_period<=Cycle_period-3000000;
	  if(Cycle_period<1000000) then
	  Cycle_period<=1000000;
	  end if;
	end if;
  end if;
end process;
	
curve:process(clk,LIGHT_CTL)--������������ģ��
VARIABLE LIGHT_cnt :INTEGER RANGE 0 TO 240000; --���ȵ��ڲ���
  begin
    LIGHT_cnt:=LIGHT_CTL;
    if(rising_edge(clk)) then
		  cnt<=cnt+1;
			--���ɵ�һ�����ߣ�С��ݣ��������ȵ��� 
	      cur1<=cur1+200*LIGHT_cnt;
	      if(cur1>(Cycle_period*1/2*LIGHT_cnt)) then--��֤���ڲ���
	      cur1<=0;
	      end if;
			--���ɵڶ������ߣ������ǣ�    
	      if(cnt<Cycle_period) then     

				 if(cnt<(Cycle_period/2)) then 
					cur2<=cur2+1;
				 end if ;
				 if(cnt>=(Cycle_period/2)) then  
					cur2<=cur2-1;
				 end if;
          end if;
			--һ�����ڽ���  		  
	      if(cnt>=Cycle_period) then
	         cnt<=0;
	         cur1<=0;
	         cur2<=0;
	      end if;
   end if;
end process curve;	  

compare:process(clk,cur1,cur2)--�Ƚ��������ߣ����������
  begin
    if(cur1>cur2) then
	LED_SIG<='1';
	else LED_SIG<='0';
    end if;
end process compare;

end architecture Default_arch;

