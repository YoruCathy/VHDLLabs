library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

entity cpu2system is    
    port (  clk   : in    std_logic;
            reset : in    std_logic;
            akku_o: out   std_logic_vector(8 downto 0)
         );
end;

architecture arch of cpu2system is

    component CPU8BIT2
        port (  data  : inout   std_logic_vector(7 downto 0);
                adress: out     std_logic_vector(5 downto 0);
                oe    : out     std_logic;
                we    : out     std_logic;
                rst   : in      std_logic;
                clk   : in      std_logic;
                akku_o: out    std_logic_vector(8 downto 0));
    end component;

    component sram64kx8 
        port (  ncs1, cs2: in       std_logic;        -- not chip select 1, cs2
                addr     : in       std_logic_vector( 15 downto 0 );
                data     : inout    std_logic_vector( 7 downto 0 );
                nwe      : in       std_logic;        -- not write enable
                noe      : in       std_logic;
                reset    : in       std_logic);        
    end component;

    signal  ncs,cs  : std_logic;
    signal  oe,we   : std_logic;
    signal  data    : std_logic_vector(7  downto 0);
    signal  adrram  : std_logic_vector(15 downto 0);
    signal  adrcpu  : std_logic_vector(5  downto 0);
            
begin

    CPU: CPU8BIT2    port map(rst => reset, clk => clk, oe => oe, we => we, data => data, adress => adrcpu, akku_o=>akku_o); 
    RAM: sram64kx8   port map(ncs1 => ncs, cs2 => cs, data => data, addr => adrram, nwe => we, noe => oe, reset=>reset);    

    ncs <= '0'; 
    cs  <= '1';
    adrram <= "0000000000" & adrcpu;
end;


