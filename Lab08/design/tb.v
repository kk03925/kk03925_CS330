module tb
(




);
	reg [6:0] Opcode;
	reg [3:0] Funct;
	wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite;
	wire [3:0] Operation;

	top_control tc
	(
		.Opcode(Opcode),
		.Funct(Funct),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.MemWrite(MemWrite),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite),
		.Operation(Operation)
	);
	
	initial
	begin
		Opcode = 7'b0110011;
		Funct = 4'b0000;
		#5 Funct = 4'b1000;
		#5 Funct = 4'b0111;
		#5 Funct = 4'b0110;
		#10 Opcode = 7'b0000011;
		#10 Opcode = 7'b0100011;
		#10 Opcode = 7'b1100011;
	end
endmodule