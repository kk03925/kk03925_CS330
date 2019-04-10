module tb
(


);

	wire Inst_Address;
	reg Instruction;
	
	Instruction_Memory Imtb
	(
		.Inst_Address(Inst_Address),
		.Instruction(Instruction)
	);
	
	initial
	begin
	Inst_Address = 63'd5;
	#10 Inst_Address = 63'd7;
	#20 Inst_Address = 63'd12;
	end
	