
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM_Generator is
    generic (
        ANGLE : INTEGER := 180  -- Paramètre d'angle à modifier si besoin
    );
    Port (
        clk_50Mhz : in STD_LOGIC;  -- Horloge d'entrée à 50 MHz
        pwm_out : out STD_LOGIC
    );
end PWM_Generator;

architecture Behavioral of PWM_Generator is
    constant MIN_PULSE_WIDTH : INTEGER := 1000000;   -- Largeur d'impulsion minimale en picosecondes (1 ms = 1000000 ps)
    constant MAX_PULSE_WIDTH : INTEGER := 37000000;  -- Largeur d'impulsion maximale en picosecondes (37 ms = 37000000 ps)
    constant PERIOD : INTEGER := 65000000;           -- Période en picosecondes (65 ms = 65000000 ps)
    
    signal counter : INTEGER := 0;
    signal pulse_width : INTEGER := 0;
    signal period_count : INTEGER := 0;

begin
    process(clk_50Mhz)
    begin
        if rising_edge(clk_50Mhz) then
            if period_count = 0 then
            -- Début d'une nouvelle période
            pulse_width <= MIN_PULSE_WIDTH + ANGLE * (MAX_PULSE_WIDTH - MIN_PULSE_WIDTH) / 360;
            if counter < pulse_width then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;

            if counter = PERIOD - 1 then
                -- Fin de la période
                counter <= 0;
                period_count <= 0;
            else
                counter <= counter + 1;
            end if;
        else
            -- Attente avant de commencer une nouvelle période
            counter <= 0;
            period_count <= period_count - 1;
            pwm_out <= '0';
        end if;
    end if;
    end process;

end Behavioral;
