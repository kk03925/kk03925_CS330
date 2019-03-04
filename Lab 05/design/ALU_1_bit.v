module ALU_1_bit
(
	input a,b,CarryIn,
	input [3:0] ALUOp,
	output reg Result,
	output reg CarryOut
);
	assign mux1out = ALUOp[3] ? ~a : a ;
	assign mux2out = ALUOp[2] ? ~b : b ;

	always@(*)
		begin
			if (ALUOp == 4'b0000)
				begin
					Result = mux1out & mux2out;
				end
			else if (ALUOp == 4'b0001)
				begin
					Result = mux1out | mux2out;				
				end
			else if (ALUOp == 4'b1100)
				begin
					Result = ~(mux1out | mux2out);
				end
			else
				begin
					Result = ~(mux1out)*(mux2out) + (~(mux2out)*(mux1out)) + (mux1out)*(mux2out);
					CarryOut = (mux1out & CarryIn) | (mux2out & CarryIn) | (mux1out & mux2out); 
				end
		end	
	
endmodule