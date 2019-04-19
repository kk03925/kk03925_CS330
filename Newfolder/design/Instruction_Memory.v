module Instruction_Memory
(
	input [63:0] Inst_Address,
	output reg [31:0] Instruction
);
  reg [7:0] Internal_Inst_Mem [15:0];
	Internal_Inst_Mem[0] = 8'b10010011;	
	Internal_Inst_Mem[1] = 8'b10000011;
	Internal_Inst_Mem[2] = 8'b10100110;
	Internal_Inst_Mem[3] = 8'b10101011;
	Internal_Inst_Mem[4] = 8'b11001100;
	Internal_Inst_Mem[5] = 8'b01010101;
	Internal_Inst_Mem[6] = 8'b10101001;
	Internal_Inst_Mem[7] = 8'b11100011;
	Internal_Inst_Mem[8] = 8'b00100110;
	Internal_Inst_Mem[9] = 8'b11111111;
	Internal_Inst_Mem[10] = 8'b11001101;
	Internal_Inst_Mem[11] = 8'b10000101;
	Internal_Inst_Mem[12] = 8'b00001111;
	Internal_Inst_Mem[13] = 8'b01000011;
	Internal_Inst_Mem[14] = 8'b11111110;
	Internal_Inst_Mem[15] = 8'b00000000;
	
	always@(Inst_Address)
	begin
		Instruction[0:7] = Internal_Inst_Mem[Inst_Address];
		Instruction[8:15] = Internal_Inst_Mem[Inst_Address+1];
		Instruction[16:23] = Internal_Inst_Mem[Inst_Address+2];
		Instruction[24:31] = Internal_Inst_Mem[Inst_Address+3];
	end

endmodule