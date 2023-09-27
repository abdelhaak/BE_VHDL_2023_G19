Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity compteur is
	port(
		in_pwm : in std_logic;
		reset : in std_logic;
		counter : out unsigned (8 downto 0));
end compteur;

architecture arc of compteur is
	
begin 
	
	process(in_pwm, reset) is
		variable cpt : unsigned (8 downto 0);
	begin
	if reset = '1' then
      counter <= "000000000";
      cpt := "000000000";
	elsif rising_edge(in_pwm) then
      cpt := cpt + 1;
      counter <= cpt ;
      
	end if;
	end process p_asynchronous_reset;
end arc;