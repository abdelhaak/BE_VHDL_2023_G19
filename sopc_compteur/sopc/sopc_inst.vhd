	component sopc is
		port (
			clk_clk                            : in  std_logic                    := 'X';             -- clk
			boutons_external_connection_export : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			leds_external_connection_export    : out std_logic_vector(7 downto 0)                     -- export
		);
	end component sopc;

	u0 : component sopc
		port map (
			clk_clk                            => CONNECTED_TO_clk_clk,                            --                         clk.clk
			boutons_external_connection_export => CONNECTED_TO_boutons_external_connection_export, -- boutons_external_connection.export
			leds_external_connection_export    => CONNECTED_TO_leds_external_connection_export     --    leds_external_connection.export
		);

