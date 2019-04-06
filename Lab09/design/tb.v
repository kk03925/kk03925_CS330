module tb
(

);

	reg clk, reset;
	
	
	RISC_V_Processor risc
	(
		.clk(clk),
		.reset(reset)
	);
	
	initial
	clk=0;
	
	always
	#5 clk=~clk;
	
	initial
	begin
		reset=1;
		#10 reset=0;
	end
		
endmodule