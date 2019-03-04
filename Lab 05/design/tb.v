module tb
(



);

	reg a, b, CarryIn;
	reg [3:0] ALUOp;
	wire Result;
	wire CarryOut;
	
	ALU_1_bit alutb
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
		a = 1'b0;
		b = 1'b1;
		ALUOp = 4'b1100;
		#15 ALUOp = 4'b0010;
		#30 ALUOp = 4'b0110;
		#45 ALUOp = 4'b0000;
	end
	
endmodule