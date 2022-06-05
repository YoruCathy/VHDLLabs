LIBRARY IEEE;  
USE IEEE.STD_LOGIC_1164.ALL;  
USE IEEE.STD_LOGIC_UNSIGNED.ALL; 
ENTITY Lab3 is     
	PORT (	clk:in std_logic;        
			key_in:in std_logic_vector(2 downto 0);		--С��Ѿ����ģʽ����
			rst:in std_logic;								--С��Ѿreset���루����ģʽreset��
			column   :in  std_logic;						--�������reset���루ȫ��reset��
			row      :out std_logic_vector(3 downto 0);	--������̼����ź�
			seven_segment_disp_left:out std_logic_vector(6 downto 0);    	--С��Ѿ�����
			seven_segment_disp_right:out std_logic_vector(6 downto 0);     --С��Ѿ�����
			led:out std_logic_vector(5 downto 0);--��ɫLED
			dig1:out std_logic:='0';
			dig2:out std_logic:='0') ;
end;  
 
ARCHITECTURE Default_arch of Lab3 is        
	signal 	current_state:STD_LOGIC_VECTOR(1 downto 0);	--led state
	signal 	next_state:STD_LOGIC_VECTOR(1 downto 0);  	--led next state     
	signal 	clk_1000ms : STD_LOGIC;        				--1s clock	
	signal	ones_place :STD_LOGIC_VECTOR(6 downto 0);	--����ܸ�λ
	signal	tens_place:STD_LOGIC_VECTOR(1 downto 0);	--�����ʮλ
	signal	disp_number :STD_LOGIC_VECTOR(6 downto 0); --��ʾ������
	signal	counter_seconds_main  :STD_LOGIC_VECTOR(6 downto 0); 	--������������26s
	signal	mode  :STD_LOGIC_VECTOR(2 downto 0); 		--ģʽ
	signal	mode_last  :STD_LOGIC_VECTOR(2 downto 0); 	--������һ��mode

begin  
  dig1<='0';--С����ȫ0
  dig2<='0';
  row<="0000";	--������̼����źţ�ֻ�õ�һ���������Ͳ�����������ģʽ
	process(clk,key_in,mode,column)--ģʽ���º�resetģ��									--sel
	begin 
	if(rising_edge(clk))then
		case key_in is
			when "011"=>mode<="011";
			when "101"=>mode<="101";
			when "110"=>mode<="110";
			when "111"=>mode<=mode;
			when others=>mode<=mode;
		end case;
			if column='0'
			then
			mode<="110";
			end if;
	end if;
	end process;

	process(clk)--1sʱ�Ӳ���ģ��
	variable cnt_1s:STD_LOGIC_VECTOR(23 downto 0);    
	begin    
	if (rst='0' or mode_last/=mode or column='0') then
	cnt_1s:="000000000000000000000000";
	clk_1000ms <= '0';
		elsif clk'EVENT AND clk='1' 
		then     
			if cnt_1s = "101101110001101100000000" 
			then     
				cnt_1s:="000000000000000000000000";     
				clk_1000ms<='1';        
			else 
				cnt_1s := cnt_1s+1;        
				clk_1000ms <= '0';      
			end if;     
		end if;   
	end process; 
  
  
	process(clk_1000ms,rst)--���̵�����һ������26s��������ѭ������ģ��
	begin  
	if (rst='0' or mode_last/=mode or column='0') then
		counter_seconds_main <="0000000";
		mode_last<=mode;
		elsif clk_1000ms'EVENT AND clk_1000ms='1' 
		then

				if counter_seconds_main<"00011001" 
				then         
					counter_seconds_main<=counter_seconds_main+1;     
				else counter_seconds_main <="0000000";     
				end if; 
			end if;		
	end process;  
 
	process(next_state)--״̬��״̬ˢ��ģ��
	begin                
		current_state<=next_state;      
	end process;    
  
  
	process(counter_seconds_main,mode,current_state)--ģʽ�����ֵģ�飨����״̬����
	begin  
		if mode="101"--ģʽ2 һ�����ɵ�һ��θɵ��ķǶԵȿ���ģʽ ���ɵ�15s �θɵ�5s
		then 
			if counter_seconds_main>=0 and counter_seconds_main<=14 then next_state<="00";      
			else if counter_seconds_main>14 and counter_seconds_main<=17 then next_state<="01";      
				else if counter_seconds_main>17 and counter_seconds_main<=22 then next_state<="10";      
					else if counter_seconds_main>22 and counter_seconds_main<=25 then next_state<="11";      
						end if;  
					end if;  
				end if;  
			end if;  
			case current_state is  
				when "00"=>led<="101110";disp_number<=15-counter_seconds_main;   
				when "01"=>led<="100110";disp_number<=18-counter_seconds_main;   
				when "10"=>led<="110101";disp_number<=23-counter_seconds_main;   
				when "11"=>led<="110100";disp_number<=26-counter_seconds_main;   
				when others=>led<="110100";disp_number<=26-counter_seconds_main;  				
			end case; 
		end if;   

		if mode ="110"		--ģʽ1 ˫��Ե�ģʽ  ˫���10s
		then 
			if counter_seconds_main>=0 and counter_seconds_main<=9  then  next_state<="00";      
			else if counter_seconds_main>9 and counter_seconds_main<=12  then  next_state<="01";      
				else if counter_seconds_main>12 and counter_seconds_main<=22  then  next_state<="10";      
					else if counter_seconds_main>22 and counter_seconds_main<=25  then  next_state<="11";      
						end if;  
					end if;  
				end if;  
			end if;  
			case current_state is  
				when "00"=>led<="101110";disp_number<=10-counter_seconds_main;   
				when "01"=>led<="100110";disp_number<=13-counter_seconds_main;   
				when "10"=>led<="110101";disp_number<=23-counter_seconds_main;   
				when "11"=>led<="110100";disp_number<=26-counter_seconds_main;  
				when others=>led<="110100";disp_number<=26-counter_seconds_main; 				
			end case; 
		end if;

		if mode ="011"--ģʽ3 ˫�򳤻�����ģʽ
		then 
			if counter_seconds_main=0 or counter_seconds_main=2 or counter_seconds_main =4 or counter_seconds_main=6 or counter_seconds_main=8 or
			counter_seconds_main=10 or counter_seconds_main=12 or counter_seconds_main =14 or counter_seconds_main=16 or counter_seconds_main=18 or
			counter_seconds_main=20 or counter_seconds_main=22 or counter_seconds_main =24 
			then next_state<="00";
			else next_state<="01";
			end if;
			case current_state is  
				when "00"=>led<="100100";disp_number<="0000000"; 
				when "01"=>led<="111111";disp_number<="0100011";     
				when others=>next_state<="00";
			end case; 
		end if;
	end process; 


	process(tens_place,disp_number,ones_place)--�������ʾ���ּ���ģ��
	begin   
		if disp_number>=30 then tens_place<="11";ones_place<=disp_number; 
		else if disp_number>=20 then tens_place<="10";ones_place<=disp_number-20;
			else if disp_number>=10 then tens_place<="01";ones_place<=disp_number-10; 
				else  tens_place<="00";ones_place<=disp_number; 
				end if; 
			end if;
		end if;		
	end process;   

	
	process(clk,tens_place,ones_place) --�������ʾģ�� 
	begin 
		case tens_place is        
			when"00"=>seven_segment_disp_left<="0111111";       
			when"01"=>seven_segment_disp_left<="0000110";       
			when"10"=>seven_segment_disp_left<="1011011";       
		--	when"11"=>seven_segment_disp_left<="1001111"; 
			when"11"=>seven_segment_disp_left<="0000000";--����0100011��������������˸      		
			when others=>null;       
		end case; 
		case ones_place is         
			when "0000000"=>seven_segment_disp_right<="0111111";       
			when"0000001"=>seven_segment_disp_right<="0000110";       
			when "0000010"=>seven_segment_disp_right<="1011011";       
			when"0000011"=>seven_segment_disp_right<="1001111";
			when"0000100"=>seven_segment_disp_right<="1100110";       
			when "0000101"=>seven_segment_disp_right<="1101101";       
			when "0000110"=>seven_segment_disp_right<="1111101";       
			when"0000111"=>seven_segment_disp_right<="0000111";        
			when "0001000"=>seven_segment_disp_right<="1111111";       
			when "0001001"=>seven_segment_disp_right<="1101111";
			when "0100011"=>seven_segment_disp_right<="0000000";  --����0100011��������������˸			
			when others=>null;     
		end case;  
	end process; 

end; 

