library ieee ;
use ieee.std_logic_1164.all ;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;  			 -- Pour les opertaions numériques

entity compas is

	-- CLK_50M == L'horloge intégrée de FPGA de 50 MHz
	-- RAZ-n == signal de réinitialisation asynchrone actif bas de circuit
	-- IN_PWM == signal d'entrée PWM
	-- CONTINU == si 0 -> monocoup /  si 1 -> continu (la donnée est rafraîchie toute les secondes) 
	-- START_STOP == si 1 -> démarre une acquisition  / si 0 -> - remet à 0 le signal data_valid
	
	port( clk_50m, raz_n, in_pwm_compas, continu, START_STOP	:	in std_logic ;
			DATA_VALID												:	out std_logic ;
			DATA_COMPAS												: 	out std_logic_vector(8 downto 0) 
	) ;
end compas ;

architecture DESCR of compas is
	component compter  
		port(	ARst_N	:	in std_logic ;
				Clk		:	in std_logic ;
				SRst		:	in	std_logic ;
				EN			:	in	std_logic ; 
				Q			:	out std_logic_vector(7 downto 0) 
			  ) ;
	end component ;
	
	component detection_FM 					-- Detection de signal PWM
	port(	clk 	: 	in std_logic ; 			-- signal d'horloge 50MHz
			E 		: 	in std_logic ; 			-- signal d'entrée 
			FM 	: 	out std_logic  			-- signal de sortie (E retarde)
		 ) ;
	end component ;
	 
	constant tempo		: integer := 13 ; 	--il faut compter jusqu'a 5000 pour avoir 0.1ms (donc 1degre)
	
	signal tempo_time			: std_logic_vector(tempo - 1 downto 0) ; -- Vecteur de compte temporel 
	signal out_compare		: std_logic ;  								  -- signal de comparaison
	signal angle				: std_logic_vector(8 downto 0) ;         -- 9 bits pour l'angle de 360 degres
	signal reset_synchrone 	: std_logic ;
	signal FM					: std_logic ;
	
begin 

-- Une instance de composant Detection_FM

	front_mont : detection_FM
		port map(		clk	=>	CLK_50M	,	
							E		=>	IN_PWM	,
							FM		=> FM
					) ;
-- Deux instances de composant compter == Cnt_time & Cnt_degre  
 		
	Cnt_time	:	compter
		generic map(tempo)
		port map(		ARst_N	=> '0'			,
							Clk 		=>	CLK_50M		,
							SRst		=> out_compare ,
							En			=> IN_PWM		,
							Q			=>	tempo_time	
					) ;
		
		
	Cnt_degre : compter
		generic map(angular)
		port map(		ARst_N	=> '0'			,
							Clk 		=>	CLK_50M		,
							SRst		=> FM ,
							En			=> out_compare 	,
							Q			=>	angle	
					) ;	
							
	compare : process(tempo_time) -- Il surveille le signal pour arriver au 5000
	begin
			if tempo_time >= 5000 
			then out_compare <= '1';
			else out_compare <= '0' ;
			end if ;
	end process compare ;
								
	DATA_COMPAS <= angle ;
	
end architecture DESCR ;
		