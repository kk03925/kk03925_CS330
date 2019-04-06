module Data_Memory
(
	input [63:0] Mem_Addr, Write_Data,
	input clk, MemWrite, MemRead,
	output reg [63:0] Read_Data
);

reg [7:0] data_mem [63:0];

initial
	begin
		data_mem[0] = 8'b10000011;
		data_mem[1] = 8'b00110100;
		data_mem[2] = 8'b00000101;
		data_mem[3] = 8'b00001111;
		data_mem[4] = 8'b10110011;
		data_mem[5] = 8'b10000100;
		data_mem[6] = 8'b10011010;
		data_mem[7] = 8'b00000000;
		data_mem[8] = 8'b10010011;
		data_mem[9] = 8'b10000100;
		data_mem[10] = 8'b00010100;
		data_mem[11] = 8'b00000000;
		data_mem[12] = 8'b00100011;
		data_mem[13] = 8'b00111000;
		data_mem[14] = 8'b10010101;
		data_mem[15] = 8'b00001110;
		data_mem[16] = 8'd1;
		data_mem[17] = 8'd2;
		data_mem[18] = 8'd3;
		data_mem[19] = 8'd4;
		data_mem[20] = 8'd5;
		data_mem[21] = 8'd6;
		data_mem[22] = 8'd7;
		data_mem[23] = 8'd8;
		data_mem[24] = 8'd24;
		data_mem[25] = 8'd25;
		data_mem[26] = 8'd26;
		data_mem[27] = 8'd27;
		data_mem[28] = 8'd28;
		data_mem[29] = 8'd29;
		data_mem[30] = 8'd30;
		data_mem[31] = 8'd31;
		data_mem[32] = 8'd32;
		data_mem[33] = 8'd33;
		data_mem[34] = 8'd34;
		data_mem[35] = 8'd35;
		data_mem[36] = 8'd36;
		data_mem[37] = 8'd37;
		data_mem[38] = 8'd38;
		data_mem[39] = 8'd39;
		data_mem[40] = 8'd40;
		data_mem[41] = 8'd41;
		data_mem[42] = 8'd42;
		data_mem[43] = 8'd43;
		data_mem[44] = 8'd44;
		data_mem[45] = 8'd45;
		data_mem[46] = 8'd46;
		data_mem[47] = 8'd47;
		data_mem[48] = 8'd48;
		data_mem[49] = 8'd49;
		data_mem[50] = 8'd1;
		data_mem[51] = 8'd0;
		data_mem[52] = 8'd0;
		data_mem[53] = 8'd0;
		data_mem[54] = 8'd0;
		data_mem[55] = 8'd0;
		data_mem[56] = 8'd0;
		data_mem[57] = 8'd0;
		data_mem[58] = 8'd0;
		data_mem[59] = 8'd0;
		data_mem[60] = 8'd60;
		data_mem[61] = 8'd61;
		data_mem[62] = 8'd62;
		data_mem[63] = 8'd63;
	end

	always@(posedge clk)
	begin
		if(MemWrite)
		begin
			data_mem[Mem_Addr]<=Write_Data[7:0];
			data_mem[Mem_Addr+1]<=Write_Data[15:8];
			data_mem[Mem_Addr+2]<=Write_Data[23:16];
			data_mem[Mem_Addr+3]<=Write_Data[31:24];
			data_mem[Mem_Addr+4]<=Write_Data[39:32];
			data_mem[Mem_Addr+5]<=Write_Data[47:40];
			data_mem[Mem_Addr+6]<=Write_Data[55:48];
			data_mem[Mem_Addr+7]<=Write_Data[63:56];
		end
	
	end
	
	always@(MemRead or Mem_Addr or data_mem)
	begin
	if (MemRead)
		Read_Data<={data_mem[Mem_Addr+7],
		data_mem[Mem_Addr+6],data_mem[Mem_Addr+5],
		data_mem[Mem_Addr+4],data_mem[Mem_Addr+3],
		data_mem[Mem_Addr+2],data_mem[Mem_Addr+1],
		data_mem[Mem_Addr]};
	end

endmodule