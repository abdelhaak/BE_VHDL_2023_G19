library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity compas is
port ( 	clk_1Hz, continu, start_stop, FM: in std_logic;
		data_in : in std_logic_vector (8 downto 0);
		data_valid : out std_logic;
		data_compas : out std_logic_vector (8 downto 0));
end compas;
  
architecture behavior of compas is
  
  signal tmp, tmp1 : std_logic_vector (8 downto 0);
  
begin
  
process(clk_1Hz)

begin

if(clk_1Hz'event and clk_1Hz='1') then
	if continu = '1' then
		if FM = '1' then
			data_compas <= tmp;
			data_valid <= '1';
		else
			tmp <= data_in;
			data_valid <= '1';
		end if;
	else
		if start_stop = '1' then
			data_compas <= tmp;
			data_valid <= '1';
		else
			data_compas <= "000000000";
			data_valid <= '0';
			if FM='0' then
				tmp1 <= data_in;
			else 
				tmp <= tmp1;
			end if;	
		end if;
	end if;		
end if;
end process;
  
end behavior;