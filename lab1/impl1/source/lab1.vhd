library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Lab1 is
port(
     clk      						:in  std_logic;							--����ʱ���ź�
	 button  						:in  std_logic_vector(3 downto 0);		--���ذ�ť����ȡ
	 column   						:in  std_logic_vector(3 downto 0);		--�������źţ���ȡ
	 sck 	  						:out std_logic;							--Ƭѡ�ź�
	 rck 	  						:out std_logic:='0';						--Ƭѡ�ź�
	 din 	  						:out std_logic;							--Ƭѡ�ź�
	 row      						:buffer std_logic_vector(3 downto 0);	--������̼����ź�
	 seven_segment_disp_left    	:out std_logic_vector(6 downto 0);		--7�������1
	 seven_segment_disp_right    	:out std_logic_vector(6 downto 0);		--7�������2
	 seven_segment_disp_dp  		:out std_logic_vector(1 downto 0)		--��������ܵ�ǰλС����
     );
end Lab1;

architecture Default_arch of Lab1 is
signal matrix_key_code :std_logic_vector(4 downto 0);						--MSB:������ʼ��״̬��,������λ��ʾ��ǰ���µ�״̬
signal state_clk: std_logic;												--״̬��ʱ��
signal scan_state: std_logic_vector(1 downto 0):="01";						--״̬��״̬
signal button_flag:std_logic:='0';											--���°�ťflag
signal button_last:std_logic_vector(3 downto 0):="0000";					--��һ����ť״̬

signal key_flag:std_logic_vector(1 downto 0):="00";						--matrix key location
signal row_last:std_logic_vector(3 downto 0):="1111";						--matrix ��һ��row״̬
signal row_now:std_logic_vector(3 downto 0):="1111";						--matrix��ǰrow״̬
signal matrix_disp_right :std_logic_vector(15 downto 0);					--�װ���ʾ��
signal matrix_disp_left :std_logic_vector(15 downto 0);					--�װ���ʾ��

begin
seven_segment_disp_dp<="00";			--С����ȫ������ʾ
sck<=clk;				--������оƬ��ʱ��


process(clk)--ʱ�ӷ�Ƶ�Ͷ�������
variable cnt_100 : integer :=0;		--100 clock��Ƶ
variable cnt_debounce : integer :=0;		--���� 120000 clock
variable cnt_debounce2 : integer :=0;		--���� 480000 clock
variable cnt_disp_1ms : integer :=0;		--12000 clock
begin
	---------L0
	if(rising_edge(clk))then
	
		--��������-----------------------------------------------------------------------------------------------------------------	 
		----------L1
		if(button_last/=button and button_flag='0')then  --���button��֮ǰ��ͬ����button_flagδ��λ����ʱû�н���
			button_flag<='1';
		end if;
		----------END L1
		----------L2
		if(button_flag='1')then --�����������
			--��ʱ40ms��������������
			----------L2-La
			if(cnt_disp_1ms=120000) then
				case button is
				when "1111"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="0000000";--0
				when "1110"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="0000110";--1
				when "1101"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="1011011";--2
				when "1100"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="1001111";--3
				when "1011"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="1100110";--4
				when "1010"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="1101101";--5
				when "1001"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="1111101";--6
				when "1000"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="0000111";--7
				when "0111"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="1111111";--8
				when "0110"=>seven_segment_disp_left<="0000000";seven_segment_disp_right<="1101111";--9
				when "0101"=>seven_segment_disp_left<="0000110";seven_segment_disp_right<="0111111";--10
				when "0100"=>seven_segment_disp_left<="0000110";seven_segment_disp_right<="0000110";--11
				when "0011"=>seven_segment_disp_left<="0000110";seven_segment_disp_right<="1011011";--12
				when "0010"=>seven_segment_disp_left<="0000110";seven_segment_disp_right<="1001111";--13
				when "0001"=>seven_segment_disp_left<="0000110";seven_segment_disp_right<="1100110";--14
				when "0000"=>seven_segment_disp_left<="0000110";seven_segment_disp_right<="1101101";--15
				when others=>null;
				end case;
				button_last<=button;
				button_flag<='0';
				cnt_disp_1ms:=0;
			 else cnt_disp_1ms:=cnt_disp_1ms+1;
			 end if;
			 ----------END L2-La
		end if;
		----------END L2
		--���󰴼�
	

	--���󰴼�-----------------------------------------------------------------------------------------------------------------	  
	--��Ƶ
	if(cnt_100 = 100) then
		cnt_100 := 0;
		state_clk <= not state_clk;
	else
		cnt_100 := cnt_100+1;
	end if;
	--״̬�����
	case scan_state is
    when "00" =>row <= "1110";
	when "01" =>row <= "1101";
	when "10" =>row <= "1011";
	when "11" =>row <= "0111";
	when others => null;
	end case;
	--����row�������״̬
	case row is
	when "1110"=>
		if(row_last="1111" and column/="1111") then
			key_flag <="01";
			row_now<=row;
		end if;
		if(row_last=row and column="1111")then
			key_flag<="10";
			row_now<=row;
		end if;
		
		if(key_flag="01" and row_now=row)then
		--��ʱ10ms��������������
			if(cnt_debounce=120000) then
				case column is
				when "1110"=>matrix_key_code<="00011";
				when "1101"=>matrix_key_code<="00010";
				when "1011"=>matrix_key_code<="00001";
				when "0111"=>matrix_key_code<="00000";
				when others=>null;
				end case;
				row_last<=row;
				key_flag<="00";
				cnt_debounce:=0;
				
			else cnt_debounce:=cnt_debounce+1;
			end if;
		end if;
		if(key_flag="10" and row_now=row)then
			if(cnt_debounce2=480000)then
				row_last<="1111";
				key_flag<="00";
				cnt_debounce2:=0;
			else cnt_debounce2:=cnt_debounce2+1;
			end if;
		
		end if;
		
	when "1101"=>
		if(row_last="1111" and column/="1111") then
			key_flag <="01";
			row_now<=row;
		end if;
		if(row_last=row and column="1111")then
			key_flag<="10";
			row_now<=row;
			
		end if;
		
		if(key_flag="01" and row_now=row)then
		--��ʱ10ms��������������
			if(cnt_debounce=120000) then
				case column is
				when "1110"=>matrix_key_code<="00111";
				when "1101"=>matrix_key_code<="00110";
				when "1011"=>matrix_key_code<="00101";
				when "0111"=>matrix_key_code<="00100";
				when others=>null;
				end case;
				row_last<=row;
				key_flag<="00";
				cnt_debounce:=0;
				
			else cnt_debounce:=cnt_debounce+1;
			end if;
		end if;
		if(key_flag="10"and row_now=row)then
			if(cnt_debounce2=480000)then
				row_last<="1111";
				key_flag<="00";
				cnt_debounce2:=0;
			else cnt_debounce2:=cnt_debounce2+1;
			end if;
		
		end if;
		
    when "1011"=>
		if(row_last="1111" and column/="1111") then
			key_flag <="01";
			row_now<=row;
		end if;
		if(row_last=row and column="1111")then
			key_flag<="10";
			row_now<=row;
		end if;
		
		if(key_flag="01" and row_now=row)then
		--��ʱ10ms��������������
			if(cnt_debounce=120000) then
				case column is
				when "1110"=>matrix_key_code<="01011";
				when "1101"=>matrix_key_code<="01010";
				when "1011"=>matrix_key_code<="01001";
				when "0111"=>matrix_key_code<="01000";
				when others=>null;
				end case;
				row_last<=row;
				key_flag<="00";
				cnt_debounce:=0;
				
			else cnt_debounce:=cnt_debounce+1;
			end if;
		end if;
		if(key_flag="10" and row_now=row)then
			if(cnt_debounce2=480000)then
				row_last<="1111";
				key_flag<="00";
				cnt_debounce2:=0;
			else cnt_debounce2:=cnt_debounce2+1;
			end if;
		
		end if;
		
   when "0111"=>
		if(row_last="1111" and column/="1111") then
			key_flag <="01";
			row_now<=row;
		end if;
		if(row_last=row and column="1111")then
			key_flag<="10";
			row_now<=row;
		end if;
		
		if(key_flag="01" and row_now=row)then
		--��ʱ10ms��������������
			if(cnt_debounce=120000) then
				case column is
				when "1110"=>matrix_key_code<="01111";
				when "1101"=>matrix_key_code<="01110";
				when "1011"=>matrix_key_code<="01101";
				when "0111"=>matrix_key_code<="01100";
				when others=>null;
				end case;
				row_last<=row;
				key_flag<="00";
				cnt_debounce:=0;
				
			else cnt_debounce:=cnt_debounce+1;
			end if;
		end if;
		if(key_flag="10" and row_now=row)then
			if(cnt_debounce2=480000)then
				row_last<="1111";
				key_flag<="00";
				cnt_debounce2:=0;
			else cnt_debounce2:=cnt_debounce2+1;
			end if;
		
		end if;
	when others=>matrix_key_code<="10000";
	end case;
	
  end if;
end process;

process(state_clk)--״̬��״̬�л�
begin
	if (rising_edge(state_clk)) then
		case scan_state is
			when "00" => scan_state<="01";
			when "01" => scan_state<="10";
			when "10" => scan_state<="11";
			when "11" => scan_state<="00";
			when others => null;
		end case;
	end if;
end process;


process(matrix_key_code)--���󰴼���ʾ����
begin

		 case matrix_key_code is
		 when "00000"=>matrix_disp_right<="1111101101100000";matrix_disp_left<="1111111101100000";--1
		 when "00001"=>matrix_disp_right<="1111101111011010";matrix_disp_left<="1111111101100000";--2
		 when "00010"=>matrix_disp_right<="1111101111110010";matrix_disp_left<="1111111101100000";--3
		 when "00011"=>matrix_disp_right<="1111101101100110";matrix_disp_left<="1111111101100000";--4
		 when "00100"=>matrix_disp_right<="1111101110110110";matrix_disp_left<="1111111101100000";--5
		 when "00101"=>matrix_disp_right<="1111101110111110";matrix_disp_left<="1111111101100000";--6
		 when "00110"=>matrix_disp_right<="1111101111100000";matrix_disp_left<="1111111101100000";--7
		 when "00111"=>matrix_disp_right<="1111101111111110";matrix_disp_left<="1111111101100000";--8
		 when "01000"=>matrix_disp_right<="1111101111110110";matrix_disp_left<="1111111101100000";--9
		 when "01001"=>matrix_disp_right<="1111101111111100";matrix_disp_left<="1111011101100000";--10
		 when "01010"=>matrix_disp_right<="1111101101100000";matrix_disp_left<="1111011101100000";--11
		 when "01011"=>matrix_disp_right<="1111101111011010";matrix_disp_left<="1111011101100000";--12
		 when "01100"=>matrix_disp_right<="1111101111110010";matrix_disp_left<="1111011101100000";--13
		 when "01101"=>matrix_disp_right<="1111101101100110";matrix_disp_left<="1111011101100000";--14
		 when "01110"=>matrix_disp_right<="1111101110110110";matrix_disp_left<="1111011101100000";--15
		 when "01111"=>matrix_disp_right<="1111101110111110";matrix_disp_left<="1111011101100000";--16
		 when "10000"=>matrix_disp_right<="1111111110111110";matrix_disp_left<="1111111101100000";--INIX
		 when others=>matrix_disp_right<="1111101111111100";matrix_disp_left<="1111011101100000";
		 end case;
end process;


process(clk,matrix_disp_right)--��ʾ�����ɨ��ģ��
variable location:integer :=0;
variable segment_switch_flag:integer :=0;
begin
	if(clk'event and clk='0') then
		--���Ҳ�����
		if(segment_switch_flag=1)then
		
			if(location<16 and location >-1)then
				din<=matrix_disp_right(location);
				location:=location+1;
			elsif(location=16)then
				rck<='1';
				location:=location+1;	
			else
				rck<='0';
				location:=0;
				segment_switch_flag:=0;
		    end if;
        end if;
		--���������
		if(segment_switch_flag=0)then
			if(location<16 and location >-1)then
				din<=matrix_disp_left(location);
				location:=location+1;
			elsif(location=16)then
				rck<='1';
				location:=location+1;	
			else
				rck<='0';
				location:=0;
				segment_switch_flag:=1;
		    end if;
        end if;
	end if;

end process;

end Default_arch;


