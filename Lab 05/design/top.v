module top
(
	input [5:0] a, b, 
	input CarryIn,
	input [3:0] ALUOp,
	output [5:0] Result, 
	output CarryOut
);

	wire carry0, carry1, carry2, carry3, carry4;

	ALU_1_bit alu0
	(
		.a(a[0]),
		.b(b[0]),
		.CarryIn(CarryIn),
		.ALUOp(ALUOp),
		.Result(Result[0]),
		.CarryOut(carry0)
	);
	
	ALU_1_bit alu1
	(
		.a(a[1]),
		.b(b[1]),
		.CarryIn(carry0),
		.ALUOp(ALUOp),
		.Result(Result[1]),
		.CarryOut(carry1)
	);
	
	ALU_1_bit alu2
	(
		.a(a[2]),
		.b(b[2]),
		.CarryIn(carry1),
		.ALUOp(ALUOp),
		.Result(Result[2]),
		.CarryOut(carry2)
	);
	
	ALU_1_bit alu3
	(
		.a(a[3]),
		.b(b[3]),
		.CarryIn(carry2),
		.ALUOp(ALUOp),
		.Result(Result[3]),
		.CarryOut(carry3)
	);
	
	ALU_1_bit alu4
	(
		.a(a[4]),
		.b(b[4]),
		.CarryIn(carry3),
		.ALUOp(ALUOp),
		.Result(Result[4]),
		.CarryOut(carry4)
	);
	
	ALU_1_bit alu5
	(
		.a(a[5]),
		.b(b[5]),
		.CarryIn(carry4),
		.ALUOp(ALUOp),
		.Result(Result[5]),
		.CarryOut(CarryOut)
	);

endmodule