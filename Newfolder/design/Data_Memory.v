module Data_memory
(
	input[63:0] Write_Data,
	input[63:0] Mem_Addr,
	input clk, MemWrite, MemRead,
	output reg [63:0] Read_Data	
);

	  reg [7:0] Data_Memory [63:0];
    Data_Memory[0] = 8'd14;
    Data_Memory[1] = 8'd15;
    Data_Memory[2] = 8'd14;
    Data_Memory[3] = 8'd15;
    Data_Memory[4] = 8'd14;
    Data_Memory[5] = 8'd15;
    Data_Memory[6] = 8'd14;
    Data_Memory[7] = 8'd15;
    Data_Memory[8] = 8'd14;
    Data_Memory[9] = 8'd15;
    Data_Memory[10] = 8'd14;
    Data_Memory[11] = 8'd15;
    Data_Memory[12] = 8'd14;
    Data_Memory[13] = 8'd15;
    Data_Memory[14] = 8'd14;
    Data_Memory[15] = 8'd15;
    Data_Memory[16] = 8'd14;
    Data_Memory[17] = 8'd15;
    Data_Memory[18] = 8'd14;
    Data_Memory[19] = 8'd15;
    Data_Memory[20] = 8'd14;
    Data_Memory[21] = 8'd15;
    Data_Memory[22] = 8'd14;
    Data_Memory[23] = 8'd15;
    Data_Memory[24] = 8'd14;
    Data_Memory[25] = 8'd15;
    Data_Memory[26] = 8'd14;
    Data_Memory[27] = 8'd15;
    Data_Memory[28] = 8'd14;
    Data_Memory[29] = 8'd15;
    Data_Memory[30] = 8'd14;
    Data_Memory[31] = 8'd15;
    Data_Memory[32] = 8'd14;
    Data_Memory[33] = 8'd15;
    Data_Memory[34] = 8'd14;
    Data_Memory[35] = 8'd15;
    Data_Memory[36] = 8'd14;
    Data_Memory[37] = 8'd15;
    Data_Memory[38] = 8'd14;
    Data_Memory[39] = 8'd15;
    Data_Memory[40] = 8'd14;
    Data_Memory[41] = 8'd15;
    Data_Memory[42] = 8'd14;
    Data_Memory[43] = 8'd15;
    Data_Memory[44] = 8'd14;
    Data_Memory[45] = 8'd15;
    Data_Memory[46] = 8'd14;
    Data_Memory[47] = 8'd15;
    Data_Memory[48] = 8'd14;
    Data_Memory[49] = 8'd15;
    Data_Memory[50] = 8'd14;
    Data_Memory[51] = 8'd15;
    Data_Memory[52] = 8'd15;
    Data_Memory[53] = 8'd14;
    Data_Memory[54] = 8'd15;
    Data_Memory[55] = 8'd14;
    Data_Memory[56] = 8'd15;
    Data_Memory[57] = 8'd14;
    Data_Memory[58] = 8'd15;
    Data_Memory[59] = 8'd14;
    Data_Memory[60] = 8'd15;
    Data_Memory[61] = 8'd14;
    Data_Memory[62] = 8'd15;
    Data_Memory[63] = 8'd14;

	
	always@(posedge clk && MemWrite)
	begin
		Data_Memory[Mem_Addr] = Write_Data[7:0]; 
		Data_Memory[Mem_Addr+1] = Write_Data[15:8];
		Data_Memory[Mem_Addr+2] = Write_Data[23:16];
		Data_Memory[Mem_Addr+3] = Write_Data[31:24];
		Data_Memory[Mem_Addr+4] = Write_Data[39:32];
		Data_Memory[Mem_Addr+5] = Write_Data[47:40];
		Data_Memory[Mem_Addr+6] = Write_Data[55:48];
		Data_Memory[Mem_Addr+7] = Write_Data[63:56];
	
	end
	
	always@(posedge Mem_Addr && MemRead)
	begin
		Read_Data[7:0] = Data_Memory[Mem_Addr];
		Read_Data[15:8] = Data_Memory[Mem_Addr+1];
		Read_Data[23:16] = Data_Memory[Mem_Addr+2];
		Read_Data[31:24] = Data_Memory[Mem_Addr+3];
		Read_Data[39:32] = Data_Memory[Mem_Addr+4];
		Read_Data[47:40] = Data_Memory[Mem_Addr+5];
		Read_Data[55:48] = Data_Memory[Mem_Addr+6];
		Read_Data[63:56] = Data_Memory[Mem_Addr+7];
	end