module RISC_V_Processor
(
	input clk, reset
);
	
	wire [63:0] PC_Out, PC_In, imm_data, add1out, add2out, 
	WriteData, ReadData1, ReadData2, ALUinput, Read_Datadm, ALUResult;
	wire [31:0] instruction;
	wire [6:0] opcode;
	wire [4:0] rd, rs1, rs2;
	wire [2:0] funct3;
	wire [3:0] Operation;
	wire Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, ZERO;
	wire [1:0] ALUOp;

	Instruction_Memory inst1
	(
		.Inst_address(PC_Out),
		.Instruction(instruction)
	);
	
	Program_Counter pc
	(
		.clk(clk),
		.reset(reset),
		.PC_In(PC_In),
		.PC_Out(PC_Out)
	);
	
	Adder add1
	(
		.a(PC_Out),
		.b(64'd4),
		.out(add1out)
	);
	
	Instruction_parser ip1
	(
		.instruction(instruction),
		.opcode(opcode),
		.rd(rd),
		.rs1(rs1),
		.rs2(rs2),
		.funct3(funct3),
		.funct7()
	);
	
	Control_Unit ctrl(
		.Opcode(opcode),
		.ALUOp(ALUOp),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.MemtoReg(MemtoReg),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite)
	);
	
	ALU_Control aluC(
		.ALUOp(ALUOp),
		.Funct({instruction[30],funct3}),
		.Operation(Operation)
	);
	
	Immediate_Data_Extractor ide1
	(
		.instruction(instruction),
		.imm_data(imm_data)
	);
	
	registerFile rf1
	(
		.WriteData(WriteData),
		.RS1(rs1),
		.RS2(rs2),
		.RD(rd),
		.RegWrite(RegWrite),
		.clk(clk),
		.reset(reset),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
	Adder add2
	(
		.a(PC_Out),
		.b(imm_data<<1),
		.out(add2out)
	);
	
	Mux m1
	(
		.a(add1out),
		.b(add2out),
		.sel(Branch&ZERO),
		.data_out(PC_In)
	);
	
	Mux m2
	(
		.a(ReadData2),
		.b(imm_data),
		.sel(ALUSrc),
		.data_out(ALUinput)
	);
	
	module64 alu
	(
		.a(ReadData1),
		.b(ALUinput),
		.ALUop(Operation),
		.Result(ALUResult),
		.ZERO(ZERO)
	);
	
	Data_Memory DM1
	(
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.Mem_Addr(ALUResult),
		.clk(clk),
		.Read_Data(Read_Datadm),
		.Write_Data(ReadData2)
	);
	
	Mux m3
	(
		.b(Read_Datadm),
		.a(ALUResult),
		.sel(MemtoReg),
		.data_out(WriteData)
	);
	
endmodule
	
	
	
	
	
	
	
	