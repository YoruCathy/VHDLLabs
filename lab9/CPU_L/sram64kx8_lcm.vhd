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
        "00111110", -- 00 init: nor allone 
        "01010011", -- 01 a 19
        "10010110", -- 02 sta a_tmp 22
        "00111110", -- 03 nor allone
        "01010100", -- 04 b 20
        "10010111", -- 05 sta b_tmp 23
        "00111110", -- 06 nor allone 
        "00010111", -- 07 nor b'
        "01111111", -- 08 nor b'+1 
        "01010110", -- 09 a'-b'
        "11011000", -- 10 JCC a'<b'
        "01111110", -- 11 +111111
        "11011110", -- 12 JCC a'-b'=0
        "00111110", -- 13 nor allone
        "01010111", -- 14 b'
        "01010100", -- 15 b'+b
        "10010111", -- 16 sta b'+b=>b'
        "11000110", -- 17  06
        "11000110", -- 18  06
        "00001001", -- 19 data a "00001001"
        "00001111", -- 20 data b
        "00000000", -- 21 =gcd(a,b)
        "00000000", --22 data a'
        "00000000", --23 data b'
        "00111110", --24 nor allone
        "01010110", --25 a'
        "01010011", --26 a'+a
        "10010110", --27 sta a'+a=>a
        "11000110", --28 06
        "11000110", --29 06
        "00111110", --30 nor allone
        "01010110", --31 a'
        "11100000", --32 JCC
        "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
        "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
        "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
        "00000000", -- 61
        "11111111", -- 62
        "00000001"  -- 63
    );
    
    signal mem : memory_array(0 to 63):=mem_init;
begin
    data <= mem(to_integer(unsigned(addr))) when noe = '0' and (ncs1 = '0') and (cs2 = '1') else (others=>'Z');
    
    process (nwe,reset)
    begin
        if reset='0' then
            -- for n in 0 to 63 loop
			   -- mem(n)<=mem_init(n);
            -- end loop;
			mem <= mem_init;
        elsif falling_edge(nwe) then
            if ncs1='0' and cs2='1' then
                mem(to_integer(unsigned(addr))) <= data;
            end if;
        end if;
   end process;
end;


