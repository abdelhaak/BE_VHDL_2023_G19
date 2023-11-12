library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity div_1kHz is
port ( clk_50M,raz_n: in std_logic;
clk_1khz: out std_logic);
end div_1kHz;
  
architecture bhv of div_1kHz is
  
signal count: integer:=1;
signal tmp : std_logic;
  
begin
  
	process(clk_50M,raz_n)
	begin
		if(raz_n='1') then
			count<=1;
			tmp<='0';
		elsif(clk_50M'event and clk_50M='1') then
			count <=count+1;
			end if;
		if (count = 25000) then
			tmp <= NOT tmp;
			count <= 0;		
		end if;
	clk_1khz <= tmp;
	end process;
  
end bhv;