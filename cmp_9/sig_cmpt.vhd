library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity sig_cmpt is
port ( in_pwm_compas,diviseur_1khz_out: in std_logic;
e_signal_compteur: out std_logic);
end sig_cmpt;

architecture bhv of sig_cmpt is
begin 
	process(diviseur_1khz_out)
	begin
		if(in_pwm_compas = '1') then
			e_signal_compteur <= diviseur_1khz_out;
			else
			e_signal_compteur <= '0';
		end if;
	end process;
end  bhv;