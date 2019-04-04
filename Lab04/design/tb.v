module tb
(





);

	reg[63:0] WriteData;
	reg[4:0] RS1;
	reg[4:0] RS2;
	reg [4:0] RD;
	reg RegWrite, clk, reset;
	wire [63:0] ReadData1;
	wire [63:0] ReadData2;
	
	registerFile rstb
	(
		.WriteData(WriteData),
		.RS1(RS1),
		.RS2(RS2),
		.RD (RD),
		.RegWrite(RegWrite),
		.clk(clk),
		.reset(reset),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);
	
	initial
	begin 
	clk = 1'b0;
	reset = 1'b0;
	end
	
	initial
	RegWrite = 1'b0;
	
	always
	#5 clk = ~clk;
	
	always
	begin
		RS1 = 5'd3;
		RS2 = 5'd2;
		#54 reset= 1'b1;
		#5 RegWrite = 1'b1;
		WriteData = 64'd19;
		RD = 5'd24;
		#5 RS1 = 5'd24;
	end
	
endmodule