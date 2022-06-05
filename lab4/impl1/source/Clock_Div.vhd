library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------------
entity Clock_Div is
 port( 
 Clk: in std_logic;
 reset: in std_logic;
 Clk1: buffer std_logic;
 Clk2: buffer std_logic
 );
end Clock_Div;
--------------------------------------------
architecture behavior of Clock_Div is
signal cnt_200: integer range 0 to 10000;
signal cnt_1M: integer range 0 to 12;
begin
process(Clk,reset)
	begin
		if reset='0' then
		cnt_1M<=0;
		Clk1<='0';
		cnt_200<=0;
		Clk2<='0';
		elsif Clk'event and Clk='1' then
		
		if cnt_1M=11 then
			Clk1<=not Clk1;
			cnt_1M<=0;
		else
			cnt_1M<=cnt_1M+1;
			Clk1<=Clk1;
		end if;
		
		if cnt_200=9999 then
	    Clk2<=not Clk2;
		cnt_200<=0;
		else
	    cnt_200<=cnt_200+1;
		Clk2<=Clk2;
		end if;
		
		end if;
end process;

end behavior;