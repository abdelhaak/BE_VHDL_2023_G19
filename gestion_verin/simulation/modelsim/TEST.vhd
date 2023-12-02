LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.MATH_REAL.all  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.STD_LOGIC_SIGNED.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY TEST  IS 
END ; 
 
ARCHITECTURE TEST_arch OF TEST IS
  SIGNAL Data_in   :  STD_LOGIC  ; 
  SIGNAL clk50M   :  STD_LOGIC  ; 
  SIGNAL Clk_adc   :  STD_LOGIC  ; 
  SIGNAL Angle_barre   :  std_logic_vector (11 downto 0)  ; 
  SIGNAL Raz_n   :  STD_LOGIC  ; 
  SIGNAL Cs_n   :  STD_LOGIC  ; 
  COMPONENT Gestion_MCP  
    PORT ( 
      Data_in  : in STD_LOGIC ; 
      clk50M  : in STD_LOGIC ; 
      Clk_adc  : out STD_LOGIC ; 
      Angle_barre  : out std_logic_vector (11 downto 0) ; 
      Raz_n  : in STD_LOGIC ; 
      Cs_n  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Gestion_MCP  
    PORT MAP ( 
      Data_in   => Data_in  ,
      clk50M   => clk50M  ,
      Clk_adc   => Clk_adc  ,
      Angle_barre   => Angle_barre  ,
      Raz_n   => Raz_n  ,
      Cs_n   => Cs_n   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	 clk50m  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 9
	loop
	    clk50m  <= '1'  ;
	   wait for 50 ns ;
	    clk50m  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 clk50m  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 raz_n  <= '0'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 data_in  <= '0'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 if clk_adc  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 if cs_n  /= ('0'  ) then 
		report " test case failed" severity error; end if;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
