--΢��8-bit������
-- ע��棨uingrd@outlook.com��

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- �źŽӿ�
entity CPU8BIT2 is
    port (  data  : inout   std_logic_vector(7 downto 0);
            adress: out     std_logic_vector(5 downto 0);
            oe    : out     std_logic;  -- �����ⲿSRAM��nOE�źţ�ע�⣺���߼����͵�ƽ��Ч��
            we    : out     std_logic;  -- �����ⲿSRAM��nWE�źţ�ע�⣺���߼����͵�ƽ��Ч��
            rst   : in      std_logic;
            clk   : in      std_logic;
            akku_o: out    std_logic_vector(8 downto 0) -- output for debug 
            );
end;

architecture CPU_ARCH of CPU8BIT2 is
    signal    akku  : unsigned(8 downto 0);   -- akku(8)�ǽ�λ�ź�
    signal    adreg : unsigned(5 downto 0);   -- ��ַ�Ĵ�����ֱ�����ӵ�ַ����
    signal    pc    : unsigned(5 downto 0);   -- ���������
    
    signal    states: std_logic_vector(2 downto 0);   -- ״̬����
begin
    process(clk,rst)
    begin
        if (rst = '0') then 
            states  <= "000";
            adreg   <= to_unsigned(0,adreg'length); -- ��λ���ʼ���е�ַ
            akku    <= to_unsigned(0, akku'length); -- ��0
            pc      <= to_unsigned(0,   pc'length); -- ��0
			
        elsif rising_edge(clk) then
            -- �����ַ����
            if (states = "000") then 
                -- ��ǰ��ȡָ�׶�
                adreg   <= unsigned(data(5 downto 0));  -- data�ǵ�ǰָ��, ����������������ַ��(����JCC��STAָ��)
                pc      <= adreg + 1;                   -- ��ַ����
            else    
                -- ��ǰ��ִ�н׶Σ�����ת�Ƶ�����ָ���ȡָ״̬
                adreg   <= pc;                          -- ����һ��ָ��ĵ�ַ���õ���ַ����
            end if;

            -- ָ��ִ��(�漰����Ĵ���akku��ָ��ִ��)
            case states is
                when "010" => akku <= unsigned('0'&akku(7 downto 0)) + unsigned('0'&data);  -- ADDָ��ִ�н׶Σ����������ߵõ��Ĳ�����������Ĵ���akku���
                                                                                -- ��������1-bit���akku�ļӷ���λC
                when "011" => akku(7 downto 0) <= unsigned(std_logic_vector(akku(7 downto 0)) nor data);    -- NORָ��ִ�н׶Σ�
                when "101" => akku(8) <= '0';                                   -- JCCָ��δת����ִ�к����C
                when others => null;                                            -- ��ЧJCC��STAָ�����Ҫ�ı�akku�Ĵ����� 
            end case;                        

            -- ״̬������
            if (states /= "000") then 
                states <= "000";                            -- ��ǰ��ִ�н׶Σ�����ת�Ƶ�ȡָ�׶�
				
            elsif (data(7 downto 6) = "11" and akku(8)='1') then 
                states <= "101";                            -- ��ǰ��ȡָ�׶Σ�ȡ��ת����Ч��JCCָ�������C=1��ת����ִ�У���һʱ��ִ��47�У����C
				
            else                                            -- ��ǰ��ȡָ�׶Σ�ȡ��ת����Ч��JCCָ��(C=0)��NOR/ADD/STAָ��
                -- data(7 downto 6)=00  NORָ�states=��011������һʱ��ִ��46��
                --                 =01  ADDָ�states=��010������һʱ��ִ��44��
                --                 =10  STAָ�states=��001������һʱ��ִ��48��(�޶�����)
                --                 =11  JCCָ�states=��000������һʱ��ִ��36��(ת����Ч��Ŀ���ַ�Ѿ���adreg���ˣ���35��)
				
                states <= '0' & not data(7 downto 6);       -- ��ǰ��ȡָ�׶Σ�ȡ��ADD/NOR/STAָ������ܹ�ִ�е�JCCָ��
                                                            -- ��ȡ��JCCָ����ܹ�ִ�еĻ�����һ��״̬��S=000����ʾ�����ֻص�ȡָ�׶Σ�
                                                            -- ������û�о���ִ�н׶Σ�39��δִ�У�����adreg�ڲ�����Ŵ�JCCָ������ȡ��ת����ַ��35�У���
                                                            -- ������PCָ�����һָ��
            end if;    
        end if;
    end process;
    
    -- ���
    adress   <= std_logic_vector(adreg);  -- ��ַ���ߣ�ͨ��adreg��ת��ʹ��address����д��buffer���ͣ�
    data     <= "ZZZZZZZZ" when states /= "001" else std_logic_vector(akku(7 downto 0));-- �������STAִ�н׶Σ�������������Ϊ���裻���򣨵�ȷ��STAָ�����akku���ݣ���������
    
    -- �ڴ��д�ź�
    --oe <= '1' when (clk='1' or states  = "001" or rst='0' or states = "101") else '0';
    --we <= '1' when (clk='1' or states /= "001" or rst='0') else '0';                  
    oe <= '0' when (clk='0' and states /= "001" and rst='1' and states /= "101") else '1'; -- states/="001"��"101"��ʾ��STA��JCCָ��
    we <= '0' when (clk='0' and states  = "001" and rst='1') else '1';               -- states="001"��ӦSTAָ��ִ�У���Ҫд�ڴ�
    
    -- �������
    akku_o<=std_logic_vector(akku);
    
end CPU_ARCH;
    
