library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pwm9 is
    Port (
        clk : in STD_LOGIC;         -- Horloge de référence de FPGA
        reset_n : in STD_LOGIC;     -- Entrée RAZ asynchrone active à 0
        freq_switch : in STD_LOGIC_VECTOR(7 downto 0); -- 8 inters pour fixer la fréquence
        duty_switch : in STD_LOGIC_VECTOR(7 downto 0); -- 8 inters pour fixer le rapport cyclique
        pwm_out : out STD_LOGIC     -- Sortie PWM
    );
end pwm9;

architecture Behavioral of pwm9 is
    signal counter : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal compare_freq : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal compare_duty : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal pwm : STD_LOGIC := '0';

begin
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            counter <= (others => '0');
            pwm <= '0';
        elsif rising_edge(clk) then
            counter <= counter + 1;
            if counter = compare_freq then
                counter <= (others => '0');
                pwm <= '1';
            elsif counter = compare_duty then
                pwm <= '0';
            end if;
        end if;
    end process;

    process(freq_switch, duty_switch)
    begin
        compare_freq <= freq_switch;
        compare_duty <= duty_switch;
    end process;

    pwm_out <= pwm;

end Behavioral;
