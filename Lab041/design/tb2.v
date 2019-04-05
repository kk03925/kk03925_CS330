module tb2
(




);

	reg [31:0] instruction;
	wire [63:0] ReadData1;
	wire [63:0] ReadData2;
	
	top t1
	(
		.instruction(instruction),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
	initial
	instruction = 32'b00000000111000110000000000000000;
	
endmodule