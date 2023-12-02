library ieee;
Use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity div_1Mhz is
port (
	clk_50Mhz : in std_logic;
	raz_n : in std_logic;
	clk_1Mhz : out std_logic);
end entity div_1Mhz;



architecture bhv of div_1Mhz is
signal tmp: std_logic :='0';
--signal cnt: integer := 0;

begin

process (clk_50Mhz) is
variable cnt: integer := 0;

begin
	if raz_n= '0' then
			cnt:=0;
	elsif rising_edge(clk_50Mhz) then
		cnt := cnt + 1 ;
		if cnt = 25  then
			tmp <= not tmp;
			cnt := 0;
		end if;
	end if;
	
	clk_1Mhz <= tmp;

end process;

end architecture bhv;