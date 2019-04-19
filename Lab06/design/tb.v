module tb
(

);

	reg [63:0] Inst_address;
	wire [31:0] Instruction;
	
	Instruction_Memory IM1
	(
		.Inst_address(Inst_address),
		.Instruction(Instruction)
	);

	
	initial
	begin
		Inst_address=64'd0;
		#10 Inst_address=64'd8;
	end
		
endmodule