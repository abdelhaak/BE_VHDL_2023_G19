library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--	use ieee.std_logic_unsigned.all;
	
entity avalon_compas is
port (
clk, chipselect, write_n, address, reset_n : in std_logic;
in_pwm_compas : in std_logic;
writedata : in std_logic_vector (31 downto 0);
readdata : out std_logic_vector (31 downto 0)
);
end entity;
	
	
ARCHITECTURE bhv of avalon_compas IS
--signal compas : std_logic_vector (8 downto 0);
signal continu, start_stop, raz_n ,data_valid: std_logic;
signal config : std_logic_vector (2 downto 0);
signal clk_10Khz: std_logic;
signal clk_1Hz, val_compt, valid_data, fin_mesure, pwm_compas: std_logic;
signal sig_duree, valeur_compas : std_logic_vector (8 downto 0);
	
begin


--|||||....................................
--
-- Bloc de l'horloge de 10khz
--
--|||||....................................

bloc_horloge_10khz:	process(clk,raz_n)
	variable count : integer range 0 to 2500;		-- Creation de variable de comptage de l'horloge
	BEGIN
		if raz_n= '0' then           					--  Le reset activé  --> tous les variables à zero
			count:=0; clk_10Khz <= '0';
		elsif clk'event and clk='1' then
			count:= count +1;
			if count =  2499 then
				clk_10Khz <= not clk_10Khz;			-- La sortie de l'horloge de 10khz
				count:= 0;
			end if;
		end if;	
	end process bloc_horloge_10khz;




--|||||................................................................
--
-- Bloc de synchronisation de signal de PWM 
-- Avec l'horloge de 10khz afin de synchroniser la période avec l'angle 
-- Dans notre cas :: 0.1ms --> 0 º  ||  36 ms --> 360 º
--
--|||||................................................................


bloc_synch_pwm:	process(clk_10Khz,raz_n)	
	BEGIN
		if raz_n= '0' then
			pwm_compas <= '0';
		elsif clk_10Khz'event and clk_10Khz='0' then
				pwm_compas <= in_pwm_compas;
		end if;	
	end process bloc_synch_pwm;
	
	
	
	
--|||||....................................
--
-- Bloc de l'horloge de 1Hz --> 1 seconde pour le mode continu
--
--|||||....................................

top_1s:	process(clk_10Khz,raz_n)
    variable count : integer range 0 to 5000;	
	BEGIN
		if raz_n= '0' then
			count:= 0;
		elsif clk_10Khz'event and clk_10Khz='1' then
			count:= count +1;
			if count = 4999 then
				clk_1Hz <= not clk_1Hz;     					-- La sortie de l'horloge de 1hz
				count:= 0;
			end if;
		end if;	
	end process top_1s;

	

--|||||......................................
--
-- Bloc de sequencement des valeurs de compas
--
--|||||......................................


Bloc_seq:process (raz_n, clk)
variable etat : integer range 0 to 4;     				-- Declarer les différents états 
begin
	if raz_n ='0' then											--  Le reset activé  --> tous les variables à zero
	etat:= 0;
	val_compt <= '0';valid_data<='0';
	elsif clk'event and clk='1' then
	case etat is
	when 0 =>
		if continu ='0' then 
			if start_stop='1' and pwm_compas='0' then
			etat:=1; val_compt <= '1';
			end if;
		else
			if clk_1Hz = '1' and pwm_compas='0' then     -- Mode continu activé 
			etat:=3; val_compt <= '1';
			end if;
		end if;
	when 1 =>
		if fin_mesure='1' then 
		etat:=2; val_compt <= '0'; valid_data<='1';
		end if;
	when 2 =>
		if start_stop='0' then 
		etat:=0; val_compt <= '0'; valid_data<='0';
		end if;
	when 3 =>
		if fin_mesure='1' then 
			etat:=4; val_compt <= '0'; valid_data<='1';
		end if;
	when 4 =>
		if clk_1Hz = '0' then 
			etat:=0; val_compt <= '0'; valid_data<='0';
		end if;
	end case;
	end if;
end process Bloc_seq;

	

--|||||...............................................................
--
-- Bloc de compatge de la valeur de l'impulsion de signal PWM d'entrée
--
--|||||...............................................................

bloc_val_pwm: process(clk_10Khz, raz_n)
begin
    if raz_n = '0' then
        sig_duree <= "000000000";
    elsif rising_edge(clk_10Khz) then
        if val_compt = '1' then
            if pwm_compas = '1' then
                sig_duree <= std_logic_vector(unsigned(sig_duree) + 1); -- Add one to sig_duree
            end if;
        else
            sig_duree <= "000000000";
        end if;
    end if;
end process bloc_val_pwm;


--|||||...............................................................
--
-- Bloc d'affectation des données de compas
--
--|||||...............................................................

bloc_data:	process(pwm_compas, val_compt, raz_n)	
	BEGIN
		if raz_n= '0' then										  --  Le reset activé  --> tous les variables à zero
		valeur_compas <= "000000000";
		elsif val_compt='0' then 
		fin_mesure <= '0';	
		elsif pwm_compas'event and pwm_compas ='0' then   
		valeur_compas <= sig_duree;
		fin_mesure <= '1';
		end if;	
	end process bloc_data;

-- Affectation de la validation des données de compas dans data_valid
data_valid <= valid_data;	
	

-- Affectation de la validation des données de configuration
raz_n <= config(0);
continu <= config(1);
start_stop <= config(2);
	

	
	
--*********************************************************************
--  interface avalon
--*********************************************************************

registers: process (clk, reset_n)
begin
	if reset_n = '0' then
	config <= (others => '0');
	elsif clk'event and clk = '1' then
		if chipselect ='1' and write_n = '0' then
			if address = '0' then
			config <= (writedata (2 downto 0));
			end if;
		end if;
	end if;
end process registers;
--readdata(2 downto 0) <= config when address = '0' else readdata(9 downto 0) <= valid_data&valeur_compas ;
readdata <= X"0000000"&"0"&config when address = '0' else X"00000"&"00"&valid_data&valeur_compas ;
	
END bhv ;