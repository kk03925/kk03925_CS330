module tb
(


);

	initial 
	clk = 1'b0;
	
	always
	#5 clk = ~clk;

	
	//checking writing
	
	initial
	begin 
		RegWrite = 1'b1;
		WriteData = 64'b000000000001111101010101010101;
		rd = 5'b00101;
	end
	
endmodule