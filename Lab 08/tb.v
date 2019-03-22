module tb
(




);
	wire [0:6] Opcode;
	wire [0:1] ALUOp;
	wire [0:3] Funct;
	reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
	reg [0:3] Operation;

	top_control tc
	(
		.Opcode(Opcode),
		.Funct(Funct)
		.ALUOp(ALUOp),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
	);
	
	