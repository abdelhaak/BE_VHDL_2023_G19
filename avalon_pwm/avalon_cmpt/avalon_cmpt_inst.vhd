	component avalon_cmpt is
		port (
			clk_clk                      : in  std_logic                    := 'X';             -- clk
			leds_export                  : out std_logic_vector(7 downto 0);                    -- export
			boutons_export               : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			out_pwm_writeresponsevalid_n : out std_logic                                        -- writeresponsevalid_n
		);
	end component avalon_cmpt;

	u0 : component avalon_cmpt
		port map (
			clk_clk                      => CONNECTED_TO_clk_clk,                      --     clk.clk
			leds_export                  => CONNECTED_TO_leds_export,                  --    leds.export
			boutons_export               => CONNECTED_TO_boutons_export,               -- boutons.export
			out_pwm_writeresponsevalid_n => CONNECTED_TO_out_pwm_writeresponsevalid_n  -- out_pwm.writeresponsevalid_n
		);

