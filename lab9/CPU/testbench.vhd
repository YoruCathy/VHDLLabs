
library ieee;
use ieee.std_logic_1164.all;

library work;
use work.all;

-- ����ƽ̨
entity testbench is
end;

architecture testmain of testbench is
    -- �����ڴ��CPU��ϵͳ
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
        -- ��λ�ź�
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

        -- ʱ������
        loop
            clk <= '0';
            WAIT FOR 50 ns;
            clk <= '1';
            WAIT FOR 50 ns;
        end loop;
  end process;
end;


