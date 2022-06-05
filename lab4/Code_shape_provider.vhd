library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------------
entity Code_shape_provider is
 port
 (
	Clk: in std_logic;
	Rst: in std_logic;
	dot: in std_logic;
	number_in: in std_logic_vector(3 downto 0);
	seg_number_out: out std_logic_vector(7 downto 0)
 );
end Code_shape_provider;
--------------------------------------------
architecture Default_arch of Code_shape_provider is
	signal number_in_reg:std_logic_vector(3 downto 0);
	signal seg:std_logic_vector(7 downto 0);
begin
process(Clk,Rst)
begin
	if(Rst = '0')then
		seg <= "11111100";
	elsif(Clk'event and Clk='1')then
		number_in_reg <= number_in;
	if dot='1' then
		case number_in_reg is
		
			when "0000" =>
				seg_number_out <= "11111101";
			when "0001" =>
				seg_number_out <= "01100001";
			when "0010" =>
				seg_number_out <= "11011011";
			when "0011" =>
				seg_number_out <= "11110011";
			when "0100" =>
				seg_number_out <= "01100111";
			when "0101" =>
				seg_number_out <= "10110111";
			when "0110" =>
				seg_number_out <= "10111111";
			when "0111" =>
				seg_number_out <= "11100001";
			when "1000" =>
				seg_number_out <= "11111111";
			when "1001" =>
				seg_number_out <= "11110111";
			when others =>
				seg_number_out <= "11111101";
		end case;
		else
		case number_in_reg is
		
			when "0000" =>
				seg_number_out <= "11111100";
			when "0001" =>
				seg_number_out <= "01100000";
			when "0010" =>
				seg_number_out <= "11011010";
			when "0011" =>
				seg_number_out <= "11110010";
			when "0100" =>
				seg_number_out <= "01100110";
			when "0101" =>
				seg_number_out <= "10110110";
			when "0110" =>
				seg_number_out <= "10111110";
			when "0111" =>
				seg_number_out <= "11100000";
			when "1000" =>
				seg_number_out <= "11111110";
			when "1001" =>
				seg_number_out <= "11110110";
			when others =>
				seg_number_out <= "11111100";
		end case;
		end if;
end if;

	


	
end process;
end Default_arch;
