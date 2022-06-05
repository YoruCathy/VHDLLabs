library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------------
entity Clock_Logic is
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
end Clock_Logic;
--------------------------------------------
architecture Clock_Logic_arch of Clock_Logic is
type status is (normal,hour_set,min_set,sec_adjust);
signal clr:std_logic:='0';
signal mode:integer :=0;
signal Clock_status:status;
signal one_sec_flag:std_logic;
signal one_sec_cnt:integer range 0 to 11999999;
begin


PROCESS(Clk, Modx)
  VARIABLE COUNT1 :INTEGER RANGE 0 TO 240000;
BEGIN
IF Modx ='0' THEN
   IF RISING_EDGE(Clk) THEN
    IF COUNT1<240000 THEN COUNT1:=COUNT1+1;
    ELSE COUNT1:=COUNT1; END IF;
    IF COUNT1=239999 THEN clr<='1';
    ELSE clr<='0'; END IF;
  END IF;
ELSE COUNT1:=0;
END IF;
end process;

process(Clk)
begin
  if(rising_edge(Clk))then
   if(clr='1')then
      mode<=mode+1;
	  if(mode>2) then
	  mode<=0;
	  end if;	  
	  	  end if;	
  end if;
 end process;

status_control:process(Clk,Rst)
begin
   if Rst='0' then
     Clock_status<=normal;
	 state<=1;
   elsif Clk'event and Clk='1' then
 
		if mode=1 then
		   Clock_status<=hour_set;
		   state<=2;
		 elsif mode=2 then
		   Clock_status<=min_set;
		   state<=3;
		 elsif mode=3 then
		   Clock_status<=sec_adjust;
		   state<=4;
		 elsif mode=0 then
		   Clock_status<=normal;
		   state<=1;
		 end if;
	  
   end if;
end process;

status_process:process(Clk,Rst,one_sec_flag)
begin
   if Rst='0' then
     h1<="0000";
	 h2<="0000";
	 m1<="0000";
	 m2<="0000";
	 s1<="0000";
	 s2<="0000";

   elsif Clk'event and Clk='1' then

		
		
	  case Clock_status is
		when normal =>
		if one_sec_flag='1' then
		  s2<=s2+'1';
		end if;
		
	    if s2="1010" then--s2=10
	      s2<="0000";
	      s1<=s1+'1';--s1++
	    end if;
		
	      if s1="0110" then--s1=5
	        s1<="0000";
	    	 m2<=m2+'1';--m2++
	      end if;
	    	 if m2="1010" then--m2=9
	    	   m2<="0000";
	    	   m1<=m1+'1';--m1++
	    	 end if;
	    	   if m1="0110" then--m1=5
	    	     m1<="0000";
	    		 h2<=h2+'1';--h2++
	    	   end if;
	    		 if h2="0100" and h1="0010" then--23:xx:xx
	    		   h2<="0000";
	    		   h1<="0000";
	    		 elsif h2="1010" then--09:xx:xx 19:xx:xx
	    		   h2<="0000";
	    		   h1<=h1+'1';
	    		 end if;
	  when hour_set =>
	    if key_in=13 then
		if h2=9 then
			h2<="0000";
			h1<=h1+'1';
		
		elsif h1=2 and h2=3 then
			h1<="0000";
			h2<="0000";
		else
			h2<=h2+'1';
		end if;
		
		elsif key_in=14 then
		  if h1=0 then
		    if h2=0 then
			  h2<="0011";
			  h1<="0010";
			else 
			  h2<=h2-'1';
			end if;
		  else 
		    if h2=0 then
			  h2<="1001";
			  h1<=h1-'1';
			else
			  h2<=h2-'1';
			end if;
		  end if;
		end if;
	  when min_set =>
	    if key_in=13 then
		  if m2=9 then
			m2<="0000";
			m1<=m1+'1';
		
			if m1=5 then
				m1<="0000";
				m2<="0000";

			end if;
		else
			m2<=m2+'1';
		end if;
		elsif key_in=14 then
		  if m2=0 then
		    if m1=0 then
			  m2<="1001";
			  m1<="0101";
			else 
				m2<="1001";
				
				m1<=m1-'1';
			end if;

			else
			  m2<=m2-'1';
			end if;

		end if;
	  when sec_adjust =>
	    if key_in=13 then
		if s2=9 then
		  if s1=5 then
			s2<="0000";
			s1<="0000";
			else
				s1<=s1+'1';
				s2<="0000";
			end if;
			
		else
			s2<=s2+'1';
		end if;
		elsif key_in=14 then
		if s2=0 then
		 if s1=0 then
			  s2<="1001";
			  s1<="0101";
			  
			else 
				s2<="1001";
				
				s1<=s1-'1';
			end if;

			else
			  s2<=s2-'1';
			end if;
			
		
	end if;

	 end case;
   end if;
 end process;
 
 status_process_clkrun:process(Clk,Rst)
 begin
	if Rst='0' then
		one_sec_flag<='0';
		one_sec_cnt<=0;
	elsif (Clk'event and Clk='1')then
		one_sec_cnt<=one_sec_cnt+1;
		if(one_sec_cnt=11999999)then
			one_sec_cnt<=0;
			one_sec_flag<='1';
		else
			one_sec_flag<='0';
		end if;
	end if;
 end process;
 
 
end Clock_Logic_arch;