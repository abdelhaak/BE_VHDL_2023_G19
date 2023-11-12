library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity detect_front is
port ( in_pwm_compas,raz_n,e_signal_compteur: in std_logic;
compteur_out_angle: out std_logic_vector(8 downto 0));
end detect_front;

architecture bhv of detect_front is

	signal angle_front: std_logic_vector(8 downto 0);
	begin
	process(in_pwm_compas,e_signal_compteur,raz_n)
	begin
		if(raz_n='0') then
		angle_front <= "000000000";
		elsif(in_pwm_compas ='1') then
			if (e_signal_compteur'event and e_signal_compteur='1') then
				angle_front <= angle_front + 1;
				compteur_out_angle <= angle_front;
			end if;
		else 
			angle_front <= "000001000";
		end if;
		end process;
	

end bhv;