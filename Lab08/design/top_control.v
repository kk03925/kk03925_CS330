module top_control
(
	input [0:6] Opcode, 
	input [0:3] Funct,
	output Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite,
	output [0:3] Operation

);
	wire [0:1] ALUOp;
	
	Control_Unit tc_cu
	(
		.Opcode(Opcode),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
		.ALUOp(ALUOp)

	);	
	
	ALU_Control tc_ac
	(
		.ALUOp(ALUOp),
		.Funct(Funct),
		.Operation(Operation)
	);
endmodule
	
	