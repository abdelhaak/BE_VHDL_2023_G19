library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity shift_register is
	Port (
		sig : in std_logic;
		cs_n : in std_logic;
		clk_1Mhz : in std_logic;
		reg : out std_logic_vector(11 downto 0)   -- Resitre de l'angle_barre
	);
end shift_register;

architecture bhv of shift_register is
	signal shift_reg, shift_next : std_logic_vector(11 downto 0);
	signal adc_data_reg : std_logic_vector(11 downto 0);

	
begin
	
	------ Registre Analogique -> Numérique
	
	process(clk_1Mhz)
	begin                  -- clocked on falling edge bclk - middle of data bit
		if (clk_1Mhz'event and clk_1Mhz='0') then
			shift_reg <= shift_next;
		end if;
	end process;
	shift_next <= shift_reg(10 downto 0) & sig;
	
	------ Analog / Digital data holding register
	
	process(clk_1Mhz, cs_n)
	begin
		if (clk_1Mhz'event and clk_1Mhz='1') then
				if cs_n = '1' then
				adc_data_reg <= shift_reg;
				end if;
		end if;
	end process;
	reg <= adc_data_reg;
end bhv;