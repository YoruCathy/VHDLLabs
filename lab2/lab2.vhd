LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Lab2  is
port(clk,clrin,speed_up_in,speed_down_in,brightness_in: in std_logic;
     LED_SIG: out std_logic:='0'   
     );
end Lab2;


architecture Default_arch of Lab2 is
signal LIGHT_CTL:integer :=1;  		--亮度控制
signal Cycle_period:integer :=12000000;--一个循环周期  
signal cnt:integer :=0;      			--计数器，用于创建波形
signal cur1,cur2:integer :=0;         	--曲线1，2
signal speed_up,speed_down,brightness,clr:std_logic:='0';	--加速键flag，减速键flag，亮度flag，reset

begin

PROCESS(CLK,clrin) --reset key 按下消抖检测
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF clrin='0' THEN 
		IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN clr<='1'; 
			ELSE clr<='0'; END IF; 
		END IF; 
	ELSE COUNT1:=0;
	END IF; 
end process;

PROCESS(CLK,speed_up_in) --speed_up key 按下消抖检测
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF speed_up_in='0' THEN 
	   IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN speed_up<='1'; 
			ELSE speed_up<='0'; END IF; 
		END IF; 
	ELSE COUNT1:=0;
	END IF; 
end process;

PROCESS(CLK,speed_down_in) --speed_down key 按下消抖检测
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF speed_down_in='0' THEN 
	   IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN speed_down<='1'; 
			ELSE speed_down<='0'; END IF; 
	  END IF; 
	ELSE COUNT1:=0;
	END IF; 
END PROCESS ;

PROCESS(CLK,brightness_in) --brightness key 按下消抖检测
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000; 
BEGIN 
	IF brightness_in='0' THEN 
		IF RISING_EDGE(CLK) THEN
			IF COUNT1<240000 THEN COUNT1:=COUNT1+1; 
			ELSE COUNT1:=COUNT1; END IF; 
			IF COUNT1=239999 THEN brightness<='1'; 
			ELSE brightness<='0'; END IF; 
		END IF; 
	ELSE COUNT1:=0;
	END IF; 
END PROCESS ;


process(clk)--按键按下调整模块
begin

  if(rising_edge(clk))then
   if(brightness='1')then --亮度调节
	  if(LIGHT_CTL=1) then LIGHT_CTL<=20; end if;
	  if(LIGHT_CTL=20) then LIGHT_CTL<=200; end if;
	  if(LIGHT_CTL=200) then LIGHT_CTL<=1; end if;	  
	end if;    
	if(clr='1')then--reset
	  Cycle_period<=12000000;
	  LIGHT_CTL<=1;
    end if;
    if(speed_down='1')then--减速
	  Cycle_period<=Cycle_period+3000000;
	  if(Cycle_period>60000000) then
	  Cycle_period<=60000000;
	  end if;
	 end if;
   if(speed_up='1')then--加速
      Cycle_period<=Cycle_period-3000000;
	  if(Cycle_period<1000000) then
	  Cycle_period<=1000000;
	  end if;
	end if;
  end if;
end process;
	
curve:process(clk,LIGHT_CTL)--生成两条曲线模块
VARIABLE LIGHT_cnt :INTEGER RANGE 0 TO 240000; --亮度调节参量
  begin
    LIGHT_cnt:=LIGHT_CTL;
    if(rising_edge(clk)) then
		  cnt<=cnt+1;
			--生成第一条曲线（小锯齿），含亮度调节 
	      cur1<=cur1+200*LIGHT_cnt;
	      if(cur1>(Cycle_period*1/2*LIGHT_cnt)) then--保证周期不变
	      cur1<=0;
	      end if;
			--生成第二条曲线（大三角）    
	      if(cnt<Cycle_period) then     

				 if(cnt<(Cycle_period/2)) then 
					cur2<=cur2+1;
				 end if ;
				 if(cnt>=(Cycle_period/2)) then  
					cur2<=cur2-1;
				 end if;
          end if;
			--一个周期结束  		  
	      if(cnt>=Cycle_period) then
	         cnt<=0;
	         cur1<=0;
	         cur2<=0;
	      end if;
   end if;
end process curve;	  

compare:process(clk,cur1,cur2)--比较两条曲线，生成输出流
  begin
    if(cur1>cur2) then
	LED_SIG<='1';
	else LED_SIG<='0';
    end if;
end process compare;

end architecture Default_arch;

