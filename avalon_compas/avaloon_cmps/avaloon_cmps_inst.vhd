	component avaloon_cmps is
		port (
			avalon_cpt_0_conduit_end_beginbursttransfer : in std_logic := 'X'; -- beginbursttransfer
			clk_clk                                     : in std_logic := 'X'  -- clk
		);
	end component avaloon_cmps;

	u0 : component avaloon_cmps
		port map (
			avalon_cpt_0_conduit_end_beginbursttransfer => CONNECTED_TO_avalon_cpt_0_conduit_end_beginbursttransfer, -- avalon_cpt_0_conduit_end.beginbursttransfer
			clk_clk                                     => CONNECTED_TO_clk_clk                                      --                      clk.clk
		);

