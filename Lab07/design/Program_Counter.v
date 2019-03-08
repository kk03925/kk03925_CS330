module Program_Counter
(
	input clk, reset,
	input [63:0] PC_In,
	output reg [63:0] PC_Out
);


		
	always@(posedge clk)
	begin
		if (reset == 1)
			PC_Out <= 1'b0;	
		else
			PC_Out = PC_In;
	end

endmodule
