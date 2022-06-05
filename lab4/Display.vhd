library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
--------------------------------------------
entity Display is
port(
Clk:in std_logic;
Rst:in std_logic;
digit:in std_logic_vector(7 downto 0);
number:in std_logic_vector(7 downto 0);
rclk_out:out std_logic;
sclk_out:out std_logic;
ser_out:out std_logic
);
end Display;
--------------------------------------------
architecture Default_arch of Display is

type data_state_enum is (LOAD_STATE,WRITE_STATE,SHIFT_STATE,OUT_STATE);
signal data_state:data_state_enum;
signal data_reg:std_logic_vector(15 downto 0);
signal write_times_counter:integer range 0 to 16;
signal number_reg:std_logic_vector(7 downto 0);
signal digit_reg:std_logic_vector(7 downto 0);

begin
  process(Clk,Rst)
  begin
      if Rst='0' then
	    data_state<=LOAD_STATE;
		rclk_out<='0';
		sclk_out<='0';
		ser_out<='0';
      elsif(Clk'event and Clk='1')then
		case data_state is
			when LOAD_STATE =>
				digit_reg <= digit;
				number_reg <= number;
				data_reg <= digit_reg&number_reg;
				data_state <= WRITE_STATE;
			when WRITE_STATE =>
				sclk_out <= '0';
				ser_out <= data_reg(0);
				data_state <= SHIFT_STATE;
				write_times_counter <= write_times_counter + 1;
			when SHIFT_STATE =>
				if (write_times_counter = 16)then
					sclk_out <= '1';
					write_times_counter <= 0;
					data_state <= OUT_STATE;
					rclk_out <= '0';
				else 
					data_reg <= data_reg(0) & data_reg(15 downto 1);
					sclk_out <= '1';
					data_state <= WRITE_STATE;
				end if;
			when OUT_STATE =>
				rclk_out <= '1';
				data_state <= LOAD_STATE;
		end case;
	  end if;
  end process;
end Default_arch;