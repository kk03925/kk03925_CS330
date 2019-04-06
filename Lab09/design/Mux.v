module Mux
(
	input [63:0] a, b,
	input sel,
	output reg [63:0] data_out
);

always @(a or b or sel)	
case (sel)
	0: data_out=a;
	1: data_out=b;
endcase

endmodule