library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity div_fre is
    Port (
        clk : in  STD_LOGIC;          -- Horloge de 50 MHz en entrée
        clk_1Hz : out STD_LOGIC       -- Sortie d'horloge de 1 Hz
    );
end div_fre;

architecture Behavioral of div_fre is
    signal counter : integer range 0 to 49_999_999 := 0;  -- Compteur 32 bits
    signal one_second_pulse : STD_LOGIC := '0';

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if counter = 49_999_999 then  -- Correspond à 1 seconde avec une horloge de 50 MHz
                counter <= 0;
                one_second_pulse <= not one_second_pulse;  -- Inversion du signal chaque seconde
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- Sortie de la LED en fonction du signal de 1 Hz
    clk_1Hz <= one_second_pulse;

end Behavioral;
