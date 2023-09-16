library IEEE;
use IEEE.std_logic_1164.all;

entity DEC_BCD_7 is
port (
bcd: in STD_LOGIC_VECTOR (3 downto 0);
segment: out STD_LOGIC_VECTOR (6 downto 0)
);
end DEC_BCD_7;

architecture DEC_BCD_7_arch of DEC_BCD_7 is
begin
process(bcd)
begin
	case bcd is
		when "0000"=>segment<="0000001";
		when "0001"=>segment<="1001111";
		when "0010"=>segment<="0010010";
		when "0011"=>segment<="0000110";
		when "0100"=>segment<="1001100";
		when "0101"=>segment<="0100100";
		when "0110"=>segment<="0100000";
		when "0111"=>segment<="0001111";
		when "1000"=>segment<="0000000";
		when "1001"=>segment<="0000100";
		when others => segment<="1001000";
	end case;
end process;

end DEC_BCD_7_arch;