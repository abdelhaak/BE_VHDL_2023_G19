	component avalon_cpt is
		port (
			clk_clk                       : in  std_logic := 'X'; -- clk
			cs_writeresponsevalid_n       : out std_logic;        -- writeresponsevalid_n
			out_pwm_writeresponsevalid_n  : out std_logic;        -- writeresponsevalid_n
			out_sens_writeresponsevalid_n : out std_logic         -- writeresponsevalid_n
		);
	end component avalon_cpt;

	u0 : component avalon_cpt
		port map (
			clk_clk                       => CONNECTED_TO_clk_clk,                       --      clk.clk
			cs_writeresponsevalid_n       => CONNECTED_TO_cs_writeresponsevalid_n,       --       cs.writeresponsevalid_n
			out_pwm_writeresponsevalid_n  => CONNECTED_TO_out_pwm_writeresponsevalid_n,  --  out_pwm.writeresponsevalid_n
			out_sens_writeresponsevalid_n => CONNECTED_TO_out_sens_writeresponsevalid_n  -- out_sens.writeresponsevalid_n
		);

