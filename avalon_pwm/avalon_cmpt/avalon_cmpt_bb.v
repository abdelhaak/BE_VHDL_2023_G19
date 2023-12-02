
module avalon_cmpt (
	boutons_export,
	clk_clk,
	leds_export,
	out_pwm_writeresponsevalid_n);	

	input	[1:0]	boutons_export;
	input		clk_clk;
	output	[7:0]	leds_export;
	output		out_pwm_writeresponsevalid_n;
endmodule
