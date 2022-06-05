Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sram64kx8 is
  port (ncs1, cs2: in    std_logic;                     
        addr     : in    std_logic_vector(15 downto 0); 
        data     : inout std_logic_vector( 7 downto 0); 
        nwe      : in    std_logic;                     
        noe      : in    std_logic;
        reset    : in    std_logic
       );
end;

architecture sram_syn of sram64kx8 is
    type memory_array is array (natural range <>) of std_logic_vector(7 downto 0);
    constant mem_init : memory_array(0 to 63) :=
    (
        "00111110", -- 00
        "00010100", -- 01
        "01111111", -- 02
        "10010101", -- 03
        "00111110", -- 04
        "01010101", -- 05
        "01010011", -- 06 
        "11001100", -- 07 
        "10010011", -- 08 
        "01111110", -- 09 
        "11001110", -- 10 
        "11000100", -- 11 
        "10010101", -- 12 
        "11000110", -- 13 
        "01010101", -- 14 
        "00111101", -- 15 
        "10010100", -- 16 
        "11010001", -- 17 
        "11010001", -- 18 
        "00001001", -- 19 a(9)
        "00001111", -- 20 b(15)
        "00000000", -- 21 gcd(a,b)
        "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
        "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
        "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
        "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
        "00000000", -- 61
        "11111111", -- 62
        "00000001"  -- 63
    );
    
    signal mem : memory_array(0 to 63);
begin
    data <= mem(to_integer(unsigned(addr))) when noe = '0' and (ncs1 = '0') and (cs2 = '1') else (others=>'Z');
    
    process (nwe,reset)
    begin
        if reset='0' then
			mem <= mem_init;
        elsif rising_edge(nwe) then
            if ncs1='0' and cs2='1' then
                mem(to_integer(unsigned(addr))) <= data;
            end if;
        end if;
   end process;
end;


