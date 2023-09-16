library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_textio.all;
use STD.textio.all;
use ieee.numeric_std.all;

entity testbench_pwm is
--  Port ( );
end testbench_pwm;

architecture Behavioral of testbench_pwm is
    component pwm is
    Generic (
        n           :   integer := 8
    );
    port ( 
        clk         :   in std_logic := '0';
        reset_n     :   in std_logic := '0';
        freq_switch       :   in std_logic_vector((n-1) downto 0) := (others => '0');
        duty_switch     :   in std_logic_vector((n-1) downto 0) := (others => '0');
        pwm_out     :   out std_logic := '1'
    );
    end component;
   
   constant s_n         :   integer := 8;
    
   signal s_clk         :   std_logic := '0';
   signal s_reset_n     :   std_logic := '0';
   signal s_freq_switch        :   std_logic_vector((s_n-1) downto 0) := (others => '0');
   signal s_duty_switch       :   std_logic_vector((s_n-1) downto 0) := (others => '0');
   signal s_pwm_out     :   std_logic := '1';
   
begin

    pwm_1 : pwm 
    generic map(
        n       => s_n
    )
    port map(
        clk     => s_clk,
        reset_n => s_reset_n,
        freq_switch    => s_freq_switch,
        duty_switch   => s_duty_switch,
        
        pwm_out => s_pwm_out
    );
    
    -- Clock process definitions
    tb_clock_process :process
    begin
        s_clk <= not(s_clk);
        wait for 10ns;
    end process;
    
    tb_pwm_process  :process
    begin
        s_reset_n <= '0';
        wait for 10us;
        
        s_freq_switch <= x"40";
        s_duty_switch <= x"20";
        wait for 10us;
        
        s_reset_n <= '1';
        wait for 5us;
       
        s_reset_n <= '0';
        wait for 5us;
        
       s_freq_switch <= x"40";
       s_duty_switch <= x"20";
        wait for 10us;
        
        s_reset_n <= '1';
        wait ;
    end process;
    
end Behavioral;