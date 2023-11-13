--*********************************************
-- module gestion_compas pour boussole CMPS03
--
-- **********************************************************************************************************************
--
-- Realisé par : Abdelhak ELALAOUI
-- Encadré par : Mr Thierry Perisse
-- Classe : Master SME 2 
-- Année : 2023 / 2024
--
-- **********************************************************************************************************************
--
-- Les entrées:
-- 	clk_50M : horloge de 50MHz de la carte DE0 Nano 
-- 	raz_n : reset actif à 0 => initialise le circuit
-- 	in_pwm_compas: signal PWM de la boussole, durée varie de 1ms à 36,9ms
-- 	continu : si = 0 mode monocoup //  si = 1 mode continu, en mode continu la donnée est rafraîchie toute les secondes
-- 	start_stop: en monocoup si=1 démarre une acquisition, si =0 remet à 0 le signal data_valid
-- 
-- **********************************************************************************************************************
--
-- Les sorties:
--  	data_valid: = 1 lorsque une mesure est valide est remis à 0 quand start_stop passe à 0
--  	out_1s : signal de contrôle du top seconde (normalement pas utilisé)
--  	data_compas : valeur du cap réel exprimé en degré codé sur 9 bits
--
-- **********************************************************************************************************************

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY fct_compas IS
	PORT (
				clk_50M,  raz_n, in_pwm_compas,  continu,  start_stop  : in std_logic;    
				valeur_compas: out std_logic_vector (8 downto 0);
				data_valid: out std_logic		  
		  );
END fct_compas  ;

ARCHITECTURE arch OF fct_compas IS
signal clk_10Khz: std_logic;																-- Creátion de l'horloge de 10 khz pour la lecture de l'angle par la suite :: 0.1us -> 1 degré
signal clk_1Hz, val_compt, valid_data, fin_mesure, pwm_compas: std_logic;  -- Les variables de validation et de mesure
signal sig_duree : std_logic_vector (8 downto 0);    								-- La variable de stock des donnée de l'impulsion de signal de PWM
begin




--|||||....................................
--
-- Bloc de l'horloge de 10khz
--
--|||||....................................

bloc_horloge_10khz:	process(clk_50M,raz_n)
	variable count : integer range 0 to 2500;		-- Creation de variable de comptage de l'horloge
	BEGIN
		if raz_n= '0' then           					--  Le reset activé  --> tous les variables à zero
			count:=0; clk_10Khz <= '0';
		elsif clk_50M'event and clk_50M='1' then
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


Bloc_seq:process (raz_n, clk_50M)
variable etat : integer range 0 to 4;     				-- Declarer les différents états 
begin
	if raz_n ='0' then											--  Le reset activé  --> tous les variables à zero
	etat:= 0;
	val_compt <= '0';valid_data<='0';
	elsif clk_50M'event and clk_50M='1' then
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

bloc_val_pwm:process(clk_10Khz,raz_n)	
	begin
		if raz_n= '0' then										--  Le reset activé  --> tous les variables à zero
		sig_duree <= "000000000";	
		elsif clk_10Khz'event and clk_10Khz ='1' then
			if val_compt ='1' then 
				if pwm_compas = '1' then
				sig_duree <= sig_duree + "000000001";		-- Comptage de degré de compas en binaire
				end if;
			else sig_duree <= "000000000";
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
end arch;