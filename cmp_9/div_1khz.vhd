library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity div_1khz is
port ( clk_50M,raz_n: in std_logic;
diviseur_1khz_out: out std_logic);
end div_1khz;
  
architecture bhv of div_1khz is
  
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
	diviseur_1khz_out <= tmp;
	end process;
  
end bhv;