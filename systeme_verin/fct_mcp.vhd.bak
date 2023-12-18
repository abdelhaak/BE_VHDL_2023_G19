library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity fct_mcp is
port (

	clk_50Mhz : in std_logic;
	raz_n : in std_logic;
	data_in : in std_logic;
	clk_adc : out std_logic;
	cs_out : out std_logic;
	data_out : out std_logic_vector(11 downto 0));
end fct_mcp;

architecture bhv of fct_mcp is

signal clk_1Mhz : std_logic :='0';	--signal de compteur à 0
signal start_conv : std_logic;
signal cs,stop : std_logic;
signal decalage : std_logic_vector(11 downto 0);

begin

------------------------------------------------------------
-- Process de generation de 1 MHz
------------------------------------------------------------

process (clk_50Mhz) is
variable cnt: integer := 0;
--signal tmp: std_logic :='0';

begin
	if raz_n= '0' then
			cnt:=0;
	elsif rising_edge(clk_50Mhz) then
		cnt := cnt + 1 ;
		if cnt = 25  then
			clk_1Mhz <= not clk_1Mhz;
			cnt := 0;
		end if;
	end if;
	clk_adc <=clk_1Mhz;
end process;


-------------------------------------------------------------
-- Process de generation de 100 ms de command de start_conv
-------------------------------------------------------------


process(clk_1Mhz)
	variable count_conv : integer range 0 to 50000;	
	BEGIN
		if raz_n= '0' then
			count_conv:=0;
		elsif clk_1Mhz'event and clk_1Mhz='1' then
			count_conv:= count_conv +1;
			if count_conv =  50000 then
				start_conv <= not start_conv;
				count_conv:= 0;
			end if;
		end if;	
end process;



-------------------------------------------------------------
-- Process de de generation de chipselect de conversion
-------------------------------------------------------------

process(clk_1Mhz, raz_n) is
variable cnt1 : integer range 0 to 32:=0;
variable cnt2 : integer range 0 to 16:=0;


begin
if start_conv = '0' then
	stop <= '0';
else stop <='1';
end if;
if raz_n ='0' then
	cnt1 := 0 ;
elsif stop = '0' then
	if rising_edge(clk_1Mhz) then
		cnt1 := cnt1 + 1;
		if cnt1 >= 15 then
			cs <= '0';
			cnt2 := cnt2 + 1;
			if cnt2 = 16 then
				cs <= '1';
				cnt1 := 0;
				cnt2 := 0;
			end if;
		end if;
	end if;
end if;
cs_out <= cs; 
end process;


-------------------------------------------------------------
-- Process de traitement de registre de decalage
-------------------------------------------------------------


process(clk_1Mhz, raz_n)
variable cnt3 : integer range 0 to 16;
variable cnt4 : integer range 0 to 16;

begin

if raz_n = '0' then
	data_out <= x"000";
elsif falling_edge(clk_1Mhz) then
	if start_conv ='0' and cs = '0' then
		cnt3 := cnt3 + 1;
		cnt4 := cnt4 + 1;
		if cnt3 >= 5 then
			if cnt4 <= 15 then
				decalage(16- cnt4) <= data_in;
			end if;	
		end if;
	else
		cnt3 := 0;
		cnt4 := 0;
	end if;
end if;

data_out <= decalage;

end process;



end bhv;
