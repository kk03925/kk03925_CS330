module Instruction_Fetch
(
	input clk, reset,
	output [31:0] Instruction 
);
	wire [63:0] PC_Out;
	wire [63:0] PC_In;
	
	
	Program_Counter PC
	(
		.clk(clk),
		.reset(reset),
		.PC_In(PC_In),
		.PC_Out(PC_Out)
	);
	
	Instruction_Memory Inst_Mem
	(
		.Inst_Address(PC_Out),
		.Instruction(Instruction)
	);
	
	Adder Add
	(
		.a(PC_Out),
		.b(64'b100),
		.out(PC_In)
	);
endmodule