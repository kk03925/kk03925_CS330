module tb
(



);
	reg clk;
	reg reset;
	wire [31:0] Instruction;
	
	Instruction_Fetch IF_tb
	(
		.clk(clk),
		.reset(reset),
		.Instruction(Instruction)
	);

	initial 
	clk = 1'b0;
	
	always
	#5 clk = ~clk;
	
	initial
	begin
		reset = 1'b0;
		#15 reset = 1'b1;
		#80 reset = 1'b0;
		#80 reset = 1'b0;
	end
endmodule