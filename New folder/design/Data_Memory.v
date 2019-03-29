module Data_memory
(
	input[63:0] Write_Data,
	input[63:0] Mem_Addr,
	input clk, MemWrite, MemRead
	output reg [63:0] Read_Data	
);
	reg [7:0] Data_Memory [63:0];
    Data_Memory[0] = 7'b14;
    Data_Memory[1] = 7'b15;
	Data_Memory[2] = 7'b14;
    Data_Memory[3] = 7'b15;
	Data_Memory[4] = 7'b14;
    Data_Memory[5] = 7'b15;
	Data_Memory[6] = 7'b14;
    Data_Memory[7] = 7'b15;
	Data_Memory[8] = 7'b14;
    Data_Memory[9] = 7'b15;
	Data_Memory[10] = 7'b14;
    Data_Memory[11] = 7'b15;
	Data_Memory[12] = 7'b14;	
    Data_Memory[13] = 7'b15;
	Data_Memory[14] = 7'b14;
    Data_Memory[15] = 7'b15;
    Data_Memory[16] = 7'b14;
    Data_Memory[17] = 7'b15;
	Data_Memory[18] = 7'b14;
    Data_Memory[19] = 7'b15;
	Data_Memory[20] = 7'b14;
    Data_Memory[21] = 7'b15;
	Data_Memory[22] = 7'b14;
    Data_Memory[23] = 7'b15;
	Data_Memory[24] = 7'b14;
    Data_Memory[25] = 7'b15;
	Data_Memory[26] = 7'b14;
    Data_Memory[27] = 7'b15;
	Data_Memory[28] = 7'b14;	
    Data_Memory[29] = 7'b15;
	Data_Memory[30] = 7'b14;
    Data_Memory[31] = 7'b15;
    Data_Memory[32] = 7'b14;
    Data_Memory[33] = 7'b15;
	Data_Memory[34] = 7'b14;
    Data_Memory[35] = 7'b15;
	Data_Memory[36] = 7'b14;
    Data_Memory[37] = 7'b15;
	Data_Memory[38] = 7'b14;
    Data_Memory[39] = 7'b15;
	Data_Memory[40] = 7'b14;
    Data_Memory[41] = 7'b15;
	Data_Memory[42] = 7'b14;
    Data_Memory[43] = 7'b15;
	Data_Memory[44] = 7'b14;	
    Data_Memory[45] = 7'b15;
	Data_Memory[46] = 7'b14;
    Data_Memory[47] = 7'b15;
    Data_Memory[48] = 7'b14;
    Data_Memory[49] = 7'b15;
	Data_Memory[50] = 7'b14;
    Data_Memory[51] = 7'b15;
	Data_Memory[52] = 7'b14;
    Data_Memory[53] = 7'b15;
	Data_Memory[54] = 7'b14;
    Data_Memory[55] = 7'b15;
	Data_Memory[56] = 7'b14;
    Data_Memory[57] = 7'b15;
	Data_Memory[58] = 7'b14;
    Data_Memory[59] = 7'b15;
	Data_Memory[60] = 7'b14;	
    Data_Memory[61] = 7'b15;
	Data_Memory[62] = 7'b14;
    Data_Memory[63] = 7'b15;

	
	always@(posedge clk and MemWrite)
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
	
	always@(posedge Mem_Addr and MemRead)
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