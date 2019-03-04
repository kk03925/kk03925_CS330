module tb2
(

);
	
	reg [5:0] a, b;
	reg CarryIn;
	reg [3:0] ALUOp;
	wire [5:0] Result;
	wire CarryOut;
	
	top alu2
	(
		.a(a),
		.b(b),
		.CarryIn(CarryIn),
		.ALUOp(ALUOp),
		.Result(Result),
		.CarryOut(CarryOut)
	);

	
	initial
	begin
		a=5'd1;
		b=5'd4;
		CarryIn=1;
		ALUOp=4'b0000;
		#10 ALUOp=4'b0001;
		#20 ALUOp=4'b0010;
		#30 ALUOp=4'b0110;
		#40 ALUOp=4'b1100;
	end
		
endmodule