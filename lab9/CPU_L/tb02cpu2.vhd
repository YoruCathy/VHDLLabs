--微型8-bit处理器
-- 注解版（uingrd@outlook.com）

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- 信号接口
entity CPU8BIT2 is
    port (  data  : inout   std_logic_vector(7 downto 0);
            adress: out     std_logic_vector(5 downto 0);
            oe    : out     std_logic;  -- 连接外部SRAM的nOE信号（注意：负逻辑，低电平有效）
            we    : out     std_logic;  -- 连接外部SRAM的nWE信号（注意：负逻辑，低电平有效）
            rst   : in      std_logic;
            clk   : in      std_logic;
            akku_o: out    std_logic_vector(8 downto 0) -- output for debug 
            );
end;

architecture CPU_ARCH of CPU8BIT2 is
    signal    akku  : unsigned(8 downto 0);   -- akku(8)是进位信号
    signal    adreg : unsigned(5 downto 0);   -- 地址寄存器，直接连接地址总线
    signal    pc    : unsigned(5 downto 0);   -- 程序计数器
    
    signal    states: std_logic_vector(2 downto 0);   -- 状态变量
begin
    process(clk,rst)
    begin
        if (rst = '0') then 
            states  <= "000";
            adreg   <= to_unsigned(0,adreg'length); -- 复位后初始运行地址
            akku    <= to_unsigned(0, akku'length); -- 置0
            pc      <= to_unsigned(0,   pc'length); -- 置0
			
        elsif rising_edge(clk) then
            -- 程序地址处理
            if (states = "000") then 
                -- 当前是取指阶段
                adreg   <= unsigned(data(5 downto 0));  -- data是当前指令, 从其剥离出操作数地址域(用于JCC和STA指令)
                pc      <= adreg + 1;                   -- 地址增量
            else    
                -- 当前是执行阶段，即将转移到下条指令的取指状态
                adreg   <= pc;                          -- 将下一条指令的地址放置到地址总线
            end if;

            -- 指令执行(涉及运算寄存器akku的指令执行)
            case states is
                when "010" => akku <= unsigned('0'&akku(7 downto 0)) + unsigned('0'&data);  -- ADD指令执行阶段，将数据总线得到的操作数和运算寄存器akku相加
                                                                                -- 额外增加1-bit针对akku的加法进位C
                when "011" => akku(7 downto 0) <= unsigned(std_logic_vector(akku(7 downto 0)) nor data);    -- NOR指令执行阶段，
                when "101" => akku(8) <= '0';                                   -- JCC指令未转跳，执行后清除C
                when others => null;                                            -- 有效JCC或STA指令（不需要改变akku寄存器） 
            end case;                        

            -- 状态机控制
            if (states /= "000") then 
                states <= "000";                            -- 当前是执行阶段，下面转移到取指阶段
				
            elsif (data(7 downto 6) = "11" and akku(8)='1') then 
                states <= "101";                            -- 当前是取指阶段，取得转跳无效的JCC指令，但由于C=1，转跳不执行，下一时钟执行47行，清除C
				
            else                                            -- 当前是取指阶段，取得转跳有效的JCC指令(C=0)或NOR/ADD/STA指令
                -- data(7 downto 6)=00  NOR指令，states=“011”，下一时钟执行46行
                --                 =01  ADD指令，states=“010”，下一时钟执行44行
                --                 =10  STA指令，states=“001”，下一时钟执行48行(无动作，)
                --                 =11  JCC指令，states=“000”，下一时钟执行36行(转跳有效，目标地址已经在adreg中了，见35行)
				
                states <= '0' & not data(7 downto 6);       -- 当前是取指阶段，取到ADD/NOR/STA指令或者能够执行的JCC指令
                                                            -- 当取到JCC指令，并能够执行的话，下一个状态是S=000，表示立刻又回到取指阶段，
                                                            -- 但由于没有经历执行阶段，39行未执行，导致adreg内部存放着从JCC指令中提取的转跳地址（35行），
                                                            -- 而不是PC指向的下一指令
            end if;    
        end if;
    end process;
    
    -- 输出
    adress   <= std_logic_vector(adreg);  -- 地址总线（通过adreg中转，使得address不用写成buffer类型）
    data     <= "ZZZZZZZZ" when states /= "001" else std_logic_vector(akku(7 downto 0));-- 如果不在STA执行阶段，则数据总线设为高阻；否则（的确是STA指令）放置akku内容（计算结果）
    
    -- 内存读写信号
    --oe <= '1' when (clk='1' or states  = "001" or rst='0' or states = "101") else '0';
    --we <= '1' when (clk='1' or states /= "001" or rst='0') else '0';                  
    oe <= '0' when (clk='0' and states /= "001" and rst='1' and states /= "101") else '1'; -- states/="001"，"101"表示非STA、JCC指令
    we <= '0' when (clk='0' and states  = "001" and rst='1') else '1';               -- states="001"对应STA指令执行，需要写内存
    
    -- 调试输出
    akku_o<=std_logic_vector(akku);
    
end CPU_ARCH;
    
