library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity pwm_fct is
port (
	clk, reset_n : in std_logic;
	freq, duty : in std_logic_vector (15 downto 0);
	out_pwm_sig: out std_logic
);
end entity;


ARCHITECTURE bhv of pwm_fct IS
		-- signaux relatifs au circuit gestion pwm_nano
signal counter : std_logic_vector (15 downto 0);
signal pwm_on : std_logic;

BEGIN

-- fixer la frequence de la pwm_fct
--||||||||||||||||||||||||||||||||||||||||||||||||||||||

freq_fct: process (clk, reset_n)
begin
if reset_n = '0' then
	counter <= (others => '0');
elsif clk'event and clk = '1' then
	if counter >= freq then
		counter <= (others => '0');
	else
		counter <= counter + 1;
	end if;
end if;
end process freq_fct;



--  generer le DUTY
--||||||||||||||||||||||||||||||||||||||||||||||||||||||

duty_fct: process (clk, reset_n)
begin
if reset_n = '0' then
	pwm_on <= '0';
elsif clk'event and clk = '1' then
	if counter >= duty then
		pwm_on <= '0';
	else
		pwm_on <= '1';
	end if;
end if;
end process duty_fct;

--||||||||||||||||||||||||||||||||||||||||||||||||||||||

-- Affecter le signal de sortie
out_pwm_sig <= pwm_on ;


end bhv ;