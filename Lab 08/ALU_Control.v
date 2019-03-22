module ALU_Control
(
	input [0:1] ALUOp,
	input [0:3] Funct,
	output reg [0:3] Operation
);

	always@(ALUOp or Funct)
	begin
		if (ALUOp == 00)
		begin
			Operation = 4'b0010;
		end
		else if (ALUOp == 01)
		begin
			Operation = 4'b0110;
		end
		else 
		begin
			if (Funct == 0000)
			begin
				Operation = 4'b0010;
			end
			else if (Funct == 1000)
			begin
				Operation = 4'b0110;
			end
			else if (Funct == 0111)
			begin
				Operation = 4'b0000;
			end
			else if (Funct == 0110)
			begin
				Operation = 4'b0001;
			end
		end
	end