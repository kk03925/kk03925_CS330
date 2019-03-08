module registerFile
(
	input [63:0] WriteData,
	input [4:0] rs1,
	input [4:0] rs2,
	input [4:0] rd,
	
	input RegWrite,
	
	input clk, reset,
	
	output reg [63:0] ReadData1, ReadData2,

	
);
	reg [63:0] Registers [31:0]];

	initial
	Register [0] = 64'b0
	Register [1] = 64'b0
	Register [2] = 64'b0
	Register [3] = 64'b0
	Register [4] = 64'b0
	Register [5] = 64'b0
	Register [6] = 64'b0
	Register [7] = 64'b0
	Register [8] = 64'b0
	Register [9] = 64'b0
	Register [10] = 64'b0
	Register [11] = 64'b0
	Register [12] = 64'b0
	Register [13] = 64'b0
	Register [14] = 64'b0
	Register [15] = 64'b0
	Register [16] = 64'b0
	Register [17] = 64'b0
	Register [18] = 64'b0
	Register [19] = 64'b0
	Register [20] = 64'b0
	Register [21] = 64'b0
	Register [22] = 64'b0
	Register [23] = 64'b0
	Register [24] = 64'b0
	Register [25] = 64'b0
	Register [26] = 64'b0
	Register [27] = 64'b0
	Register [28] = 64'b0
	Register [29] = 64'b0
	Register [30] = 64'b0
	Register [31] = 64'b0
	
	always@(*)
	begin
		ReadData2 = Register[rs2];
		ReadData1= Register[rs1];
		if (clk)
			if (RegWrite)
				Register[rd] = WriteData;
		else if (reset)
			index = 2'd0;
			always@(reset)
				begin
					if(index < 32)
						begin 
							Register[index] <= 64'b0;
							index <= index + 1;
						end
				end
	end
	
endmodule