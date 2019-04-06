module Mux2
(
	input [11:0] a, b, c,
	input [1:0] sel,
	output reg [11:0] data_out
);

always @(a or b or c or sel)	
case (sel)
	0: data_out=a;
	1: data_out=b;
	2, 3: data_out=c;
	
endcase

endmodule