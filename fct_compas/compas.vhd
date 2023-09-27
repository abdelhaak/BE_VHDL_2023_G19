library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity compas is
    Port (
        clk_1Hz, continu, start_stop: in STD_LOGIC;
        data_in : in STD_LOGIC_VECTOR (8 downto 0);
        data_valid : out STD_LOGIC;
        data_compas : out STD_LOGIC_VECTOR (8 downto 0)
    );
end compas;

architecture behavior of compas is
    signal tmp, tmp1 : STD_LOGIC_VECTOR (8 downto 0);
    signal data_valid_internal : STD_LOGIC;
begin

    process(clk_1Hz)
    begin
        if clk_1Hz'event and clk_1Hz = '1' then
            if continu = '1' then
                data_compas <= tmp;
                data_valid_internal <= '1';
            else
                if start_stop = '1' then
                    data_compas <= tmp;
                    data_valid_internal <= '1';
                else
                    data_compas <= "000000000";
                    data_valid_internal <= '0';
                    tmp1 <= data_in;
                end if;
            end if;
        end if;
    end process;

    data_valid <= data_valid_internal;

end behavior;
