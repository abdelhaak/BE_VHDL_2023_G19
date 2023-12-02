Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cs_conversion is
	port(
		start_conv : in std_logic;
		clk_1Mhz : in std_logic;
		raz_n : in std_logic;
		cs_out : out std_logic);
end cs_conversion;

architecture bhv of cs_conversion is
signal stop : std_logic;

begin 

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
			cs_out <= '0';
			cnt2 := cnt2 + 1;
			if cnt2 = 16 then
				cs_out <= '1';
				cnt1 := 0;
				cnt2 := 0;
			end if;
		end if;
	end if;
end if;
end process;
end bhv;
