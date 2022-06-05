
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

-- 测试平台
entity testbench is
end;

architecture testmain of testbench is
    -- 带了内存的CPU子系统
    component cpu2system
        port ( clk   : in    std_logic;
               reset : in    std_logic;
               akku_o: out   std_logic_vector(8 downto 0)
             );
    end component;
    signal clk,reset:    std_logic;
begin

    SYS: cpu2system
    port map(clk => clk, reset => reset);

    process
    begin
        -- 复位信号
        clk <= '0';
        reset <= '1';
        WAIT FOR 50 ns;
        clk <= '0';
        reset <= '0';
        WAIT FOR 50 ns;
        clk <= '1';
        WAIT FOR 25 ns;
        reset <= '1';
        WAIT FOR 25 ns;

        -- 时钟振荡器
        loop
            clk <= '0';
            WAIT FOR 50 ns;
            clk <= '1';
            WAIT FOR 50 ns;
        end loop;
  end process;
end;


