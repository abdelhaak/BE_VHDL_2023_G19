Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity det_front is
	port(
		clk_50MHz, clk_1Hz : in std_logic;
		FM : out std_logic);
end det_front;

architecture detc of det_front is
signal etat : std_logic ;

begin
	bascule_clk : process(clk_50MHz, clk_1Hz)
	begin
		if (clk_50MHz'event and clk_50MHz='1') then etat <= clk_1Hz ;
		end if ;
	end process bascule_clk ;
	
FM <= '1' when clk_1Hz = '1' and etat = '0' else '0' ; 
end detc;
