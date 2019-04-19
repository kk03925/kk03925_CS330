module tb
(

);

	reg [63:0] Mem_Addr, Write_Data;
	reg clk, MemWrite, MemRead;
	wire [63:0] Read_Data;
	
	Data_Memory DM1
	(
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.Mem_Addr(Mem_Addr),
		.clk(clk),
		.Read_Data(Read_Data),
		.Write_Data(Write_Data)
	);

	initial
	clk = 1'b0;
	
	always
	#5 clk = ~clk;
	
	initial
	begin
		MemRead<=1;
		Write_Data<=64'd0;
		MemWrite<=0;
		Mem_Addr<=64'd16;
		#10 Mem_Addr<=64'd0;
		MemWrite<=1;
		#10 MemRead<=0;
		Mem_Addr<=20;

	end
		
endmodule