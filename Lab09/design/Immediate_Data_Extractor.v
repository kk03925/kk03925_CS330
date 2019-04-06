module Immediate_Data_Extractor
(
	input [31:0] instruction,
	output [63:0] imm_data
);
	
	wire [11:0] data;
	
	Mux2 m2
	(
		.a(instruction[31:20]),	//load 00
		.b({instruction[31:25], instruction[11:7]}),	//store 01
		.c({instruction[31], instruction[7], instruction[30:25], instruction[11:8]}),	//conditonal instruction[6]=1
		.sel(instruction[6:5]),
		.data_out(data)
	);	
	
	assign imm_data = {{52{instruction[31]}}, data};

endmodule