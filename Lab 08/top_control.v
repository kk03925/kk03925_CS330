module top_control
(
	input [0:6] Opcode, Funct
	output reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite,
	output reg [0:3] Operation

);

	wire [0:6] Opcode;
	wire [0:1] ALUOp;
	wire [0:3] Funct;
	reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
	reg [0:3] Operation;
	
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
	
	