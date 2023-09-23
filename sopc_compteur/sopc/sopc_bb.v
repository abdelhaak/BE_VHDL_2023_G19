
module sopc (
	clk_clk,
	boutons_external_connection_export,
	leds_external_connection_export);	

	input		clk_clk;
	input	[1:0]	boutons_external_connection_export;
	output	[7:0]	leds_external_connection_export;
endmodule
