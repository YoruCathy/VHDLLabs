library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--------------------------------------------
entity TOP is
 port( 
 Clock_top: in std_logic;
 Rst1: in std_logic;
 Mod1: in std_logic;
 led: out std_logic_vector(7 downto 0);
 row1:out std_logic_vector(3 downto 0);
 column1 :in std_logic_vector(3 downto 0);
 rclk_out1:out std_logic;
 sclk_out1:out std_logic;
 ser_out1:out std_logic
 );
end TOP;
--------------------------------------------
architecture Clock_TOP_arch of TOP is
------------------------------------------------------------
component Matrix_button_input
port(
Clk:in std_logic;
reset:in std_logic;
ROW:out std_logic_vector(3 downto 0);
COL :in std_logic_vector(3 downto 0);
key_out:out integer range 0 to 16
);
end component;
component Code_shape_provider
port
(
Clk: in std_logic;
Rst: in std_logic;
dot: in std_logic;
number_in: in std_logic_vector(3 downto 0);
seg_number_out: out std_logic_vector(7 downto 0)
);
end component;


component Clock_Logic
port( 
Clk: in std_logic;
Rst: in std_logic;
Modx: in std_logic;
key_in:in integer range 0 to 16;
h1: buffer std_logic_vector(3 downto 0);
h2: buffer std_logic_vector(3 downto 0);
m1: buffer std_logic_vector(3 downto 0);
m2: buffer std_logic_vector(3 downto 0);
s1: buffer std_logic_vector(3 downto 0);
s2: buffer std_logic_vector(3 downto 0);
state:out integer range 1 to 4
);
end component;

component Display
port(
Clk:in std_logic;
Rst:in std_logic;
digit:in std_logic_vector(7 downto 0);
number:in std_logic_vector(7 downto 0);
rclk_out:out std_logic;
sclk_out:out std_logic;
ser_out:out std_logic
);
end component;

component Clock_Div
 port( 
 Clk: in std_logic;
 reset: in std_logic;
 Clk1: buffer std_logic;
 Clk2: buffer std_logic
 );
end component;
-------------------------------------------------------------
type status is (hour1,hour2,min1,min2,sec1,sec2);

signal segstate:integer range 1 to 6;
signal ledstate:integer range 1 to 4;
signal leddot:std_logic;
signal h11:std_logic_vector(3 downto 0);
signal h21:std_logic_vector(3 downto 0);
signal m11:std_logic_vector(3 downto 0);
signal m21:std_logic_vector(3 downto 0);
signal s11:std_logic_vector(3 downto 0);
signal s21:std_logic_vector(3 downto 0);
signal key_code1:integer range 0 to 16;
signal Keyout1:integer range 0 to 16;
signal digit1:std_logic_vector(7 downto 0);
signal number_in1:std_logic_vector(3 downto 0);
signal seg_number_out1:std_logic_vector(7 downto 0);
signal Clkout1M:std_logic;
signal Clkout200:std_logic;
--------------------------------------------------------------------
begin
U1:Matrix_button_input port map--read key
(
  Clk=>Clock_top,
  reset=>Rst1,
  ROW=>row1,
  COL=>column1,
  key_out=>Keyout1
);
U2:Clock_Logic port map--clock logic
(
  Clk=>Clock_top,
  Rst=>Rst1,
  Modx=>Mod1,
  key_in=>Keyout1,
  h1=>h11,
  h2=>h21,
  m1=>m11,
  m2=>m21,
  s1=>s11,
  s2=>s21,
  state=>ledstate
);

U3:Code_shape_provider port map--transform seg num
(
  Clk=>Clock_top,
  Rst=>Rst1,
  dot=>leddot,
  number_in=>number_in1,
  seg_number_out=>seg_number_out1
);
U4:Display port map--display num
(
  Clk=>Clkout1M,--1MHz
  Rst=>Rst1,
  digit=>digit1,
  number=>seg_number_out1,
  rclk_out=>rclk_out1,
  sclk_out=>sclk_out1,
  ser_out=>ser_out1
);
U5:Clock_Div port map--clock div
(
  Clk=>Clock_top,
  reset=>Rst1,
  Clk1=>Clkout1M,
  Clk2=>Clkout200
);
----------------------------------------------------------------
process(Clkout200,Rst1)
begin
if Rst1='0' then

  segstate<=1;
  leddot<='0';


elsif Clkout200'event and Clkout200='1' then
	

  case segstate is
    when 1=>
   	  number_in1<=h11;
	  digit1<="01111100";
		leddot<='0';
	when 2=>

	  number_in1<=h21;
	  digit1<="10111100";
		leddot<='1';

	when 3=>

	  number_in1<=m11;
	  digit1<="11011100";
		leddot<='0';
	when 4=>

	  number_in1<=m21;
	  digit1<="11101100";
		leddot<='1';
	when 5=>

	  number_in1<=s11;
	  digit1<="11110100";
		leddot<='0';
	when 6=>

	  number_in1<=s21;
	  digit1<="11111000";
		leddot<='1';
  end case;
  segstate<=segstate+1;
  if segstate=6 then
	segstate<=1;
	end if;
	
end if;
end process;
 with ledstate select
    
	  led<="00111111" when 1,
		"11001111" when 2,
	  "11110011" when 3,
	  "11111100" when 4,
	  "01111111" when others;
end Clock_TOP_arch;