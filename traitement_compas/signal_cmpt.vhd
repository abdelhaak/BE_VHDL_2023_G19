library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity signal_cmpt is
port ( in_pwm_compas,clk_10KHz: in std_logic;
e_signal_compteur: out std_logic);
end signal_cmpt;

architecture bhv of signal_cmpt is
begin 
	process(clk_10KHz)
	begin
		if(in_pwm_compas = '1') then
			e_signal_compteur <= clk_10KHz;
			else
			e_signal_compteur <= '0';
		end if;
	end process;
end bhv;