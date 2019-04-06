module module64
(
	input [63:0] a, b,
	input [3:0] ALUop,
	output ZERO,
	output reg [63:0] Result
);
	
	assign ZERO = Result==0 ? 1:0;
	
	always @(a or b or ALUop)
	case(ALUop)
	4'b0000: Result=a&b;
	4'b0001: Result=a|b;
	4'b0010: Result=a+b;
	4'b0110: Result=a-b;
	4'b1100: Result=~(a|b);
	endcase

endmodule
