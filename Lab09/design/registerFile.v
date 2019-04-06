module registerFile
(
	input [63:0] WriteData,
	input [4:0] RS1, RS2, RD,
	input RegWrite, clk, reset,
	output reg [63:0] ReadData1, ReadData2
);

reg [63:0] Registers [31:0];

initial
	begin
		Registers[0] = 64'd31;
		Registers[1] = 64'd65;
		Registers[2] = 64'd73;
		Registers[3] = 64'd88;
		Registers[4] = 64'd1000;
		Registers[5] = 64'd1848732648;
		Registers[6] = 64'd46328765;
		Registers[7] = 64'd32718564965;
		Registers[8] = 64'd1892468172956;
		Registers[9] = 64'd9;
		Registers[10] = 64'd10;
		Registers[11] = 64'd34217856;
		Registers[12] = 64'd872315;
		Registers[13] = 64'd3271856;
		Registers[14] = 64'd128375;
		Registers[15] = 64'd21746534;
		Registers[16] = 64'd010210340124;
		Registers[17] = 64'd12357;
		Registers[18] = 64'd23152;
		Registers[19] = 64'd1253415;
		Registers[20] = 64'd125245;
		Registers[21] = 64'd1;
		Registers[22] = 64'd213541325;
		Registers[23] = 64'd2151435;
		Registers[24] = 64'd125432;
		Registers[25] = 64'd2134235;
		Registers[26] = 64'd2346536;
		Registers[27] = 64'd2153425;
		Registers[28] = 64'd21543;
		Registers[29] = 64'd214235;
		Registers[30] = 64'd21534;
		Registers[31] = 64'd123452;
		
	end


always @ (reset)
	begin
		if (reset)
			begin
				ReadData1 = 64'b0;
				ReadData2 = 64'b0;
			end
	end
	
always @ (RS1 or RS2 or RegWrite)
	begin
		ReadData1 = Registers[RS1];
		ReadData2 = Registers[RS2];
	end


always @(posedge clk)
begin
	if (RegWrite)
		Registers[RD] = WriteData;
end
	

endmodule