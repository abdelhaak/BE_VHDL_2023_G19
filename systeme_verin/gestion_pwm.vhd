library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity gestion_pwm is
port (
clk_50MHz, reset_n : in std_logic;
freq, duty : in std_logic_vector (15 downto 0);
out_pwm_sig : out std_logic
);
end entity;

ARCHITECTURE arch_pwm_nano of gestion_pwm IS
	-- signaux relatifs au circuit gestion pwm_nano
	signal counter : std_logic_vector (15 downto 0);
	signal pwm_signal : std_logic;

BEGIN

	divide: process (clk_50MHz, reset_n)
	begin
		if reset_n = '0' then
		counter <= (others => '0');
		elsif clk_50MHz'event and clk_50MHz = '1' then
		if counter >= freq then
		counter <= (others => '0');
		else
		counter <= counter + 1;
		end if;
		end if;
	end process divide;

	compare: process (clk_50MHz, reset_n)
	begin
		if reset_n = '0' then
		pwm_signal <= '0';
		elsif clk_50MHz'event and clk_50MHz = '1' then
		if counter >= duty then
		pwm_signal <= '0';
		else
		pwm_signal <= '1';
		end if;
		end if;
	end process compare;
	out_pwm_sig <= pwm_signal;

END arch_pwm_nano ;
