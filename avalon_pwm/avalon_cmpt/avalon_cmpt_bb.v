
module avalon_cmpt (
	clk_clk,
	leds_export,
	boutons_export,
	out_pwm_writeresponsevalid_n);	

	input		clk_clk;
	output	[7:0]	leds_export;
	input	[1:0]	boutons_export;
	output		out_pwm_writeresponsevalid_n;
endmodule
