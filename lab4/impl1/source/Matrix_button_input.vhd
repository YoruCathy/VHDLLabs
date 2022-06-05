library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Matrix_button_input is
port(
Clk:in std_logic;
reset:in std_logic;
ROW:out std_logic_vector(3 downto 0);
COL :in std_logic_vector(3 downto 0);
key_out:out integer range 0 to 16
);
end Matrix_button_input;

architecture Default_arch of Matrix_button_input is
signal Clk_cnt:		integer 	range 0 to 12000	;--12MHz,1ms
signal R_get:		integer 	range 0 to 30 		;
signal LED_get:		integer 	range 0 to 30		;
signal num_cnt:		integer		range 0 to 4 		;
signal refresh_flag:	boolean 	:= false 			;
signal R_cache: 	std_logic_vector(15 downto 0)	;
signal BTN_cache:	std_logic_vector(3 downto 0)	;
signal Keytmp: integer range 0 to 16 :=0;
signal Delay_cnt: integer range 0 to 960000 := 0;
signal key_get : integer range 0 to 16;
signal key_get_temp : integer range 0 to 16;
begin

	process(Clk)
	begin
	if Clk'event and Clk = '1' then --1ms分频	
		if Clk_cnt = 6000 then
			if num_cnt = 4 then 
				num_cnt <= 0;
			else 
				num_cnt <= num_cnt + 1;
			end if;
		elsif Clk_cnt = 11999 then
			Clk_cnt <= 0;
		end if;
		Clk_cnt <= Clk_cnt + 1;
	end if ;
	end process;
	
	process(Clk)
	begin
	if Clk'event and Clk = '0' then
		case num_cnt is
			when 0 => ROW <= "0111";
			when 1 => ROW <= "1011";
			when 2 => ROW <= "1101";
			when 3 => ROW <= "1110";
			when OTHERS => ROW <= "1110";
		end case;
	end if;
	end process;


	process(Clk)
	begin 
	if(reset='0')then 
		key_get  <= 0;
		key_get_temp <= 0;
	elsif Clk'event and Clk = '1' then
		--键盘的延迟读		
		if num_cnt = 0 then R_cache(15 downto 12) <= COL; end if;

		if num_cnt = 1 then R_cache(11 downto 8) <= COL; end if;

		if num_cnt = 2 then R_cache(7 downto 4) <= COL; end if;

		if num_cnt = 3 then R_cache(3 downto 0) <= COL; end if;

		if num_cnt = 4 then
		--如果想延迟可以在这里加
			case R_cache is
			when "0111111111111111" =>	key_get<=1;
			when "1011111111111111" =>	key_get<=2;
			when "1101111111111111" =>	key_get<=3;
			when "1110111111111111" =>	key_get<=4;
			when "1111011111111111" =>	key_get<=5;
			when "1111101111111111" =>	key_get<=6;
			when "1111110111111111" =>	key_get<=7;
			when "1111111011111111" =>	key_get<=8;
			when "1111111101111111" =>	key_get<=9;
			when "1111111110111111" =>	key_get<=10;
			when "1111111111011111" =>	key_get<=11;
			when "1111111111101111" =>	key_get<=12;
			when "1111111111110111" =>	key_get<=13;
			when "1111111111111011" =>	key_get<=14;
			when "1111111111111101" =>	key_get<=15;
			when "1111111111111110" =>	key_get<=16;
			when others 			=>	key_get<=0;
			end case;
		end if;
		
		if key_get/=0 then
			if refresh_flag = true then
				key_out <= 0;
				key_get_temp<=0;
				refresh_flag <= false;
			end if;
			
			key_get_temp <= key_get;
			
			if delay_cnt/=960000-1 then
				delay_cnt <= delay_cnt+1;
			elsif key_get_temp=key_get then
				key_out <=key_get_temp;
				refresh_flag <= true;
				delay_cnt<=0;
			else
				delay_cnt <= 0;
				key_out <= 0;
			end if;
		else
			delay_cnt <= 0;
			key_out <= 0;
			key_get_temp <= 0;
		end if;
	end if;

end process;
end Default_arch;