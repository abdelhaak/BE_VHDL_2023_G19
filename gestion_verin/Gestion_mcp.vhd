library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_arith.all;

entity TEST_MCP is
end TEST_MCP;

architecture Testbench of TEST_MCP is

component Gestion_MCP
port(
    clk50M : in std_logic;
    Raz_n : in std_logic;
    Data_in : in std_logic;
    Angle_barre : out std_logic_vector(11 downto 0);
    Clk_adc : out std_logic;
    Cs_n : out std_logic
);
end component Gestion_MCP;

signal clk50M : std_logic := '0';
signal Raz_n : std_logic := '0';
signal Data_in : std_logic := '0';
signal Angle_barre : std_logic_vector(11 downto 0);
signal Clk_adc : std_logic;
signal Cs_n : std_logic;

begin

UUT : Gestion_MCP port map(
    clk50M => clk50M,
    Raz_n => Raz_n,
    Data_in => Data_in,
    Angle_barre => Angle_barre,
    Clk_adc => Clk_adc,
    Cs_n => Cs_n
);

clk_process : process
begin
    clk50M <= '0';
    wait for 10 ns;
    clk50M <= '1';
    wait for 10 ns;
end process clk_process;

Raz_n_process : process
begin
    Raz_n <= '1';
    wait for 10 ns;
    Raz_n <= '0';
    wait for 50 us;
end process Raz_n_process;

Data_in_process : process
begin
    Data_in <= '0';
    wait for 1 us;
    Data_in <= '1';
    wait for 1 us;
    Data_in <= '1';
    wait for 1 us;
end process Data_in_process;

end Testbench;