library verilog;
use verilog.vl_types.all;
entity ALU_Control is
    port(
        ALUOp           : in     vl_logic_vector(0 to 1);
        Funct           : in     vl_logic_vector(0 to 3);
        Operation       : out    vl_logic_vector(0 to 3)
    );
end ALU_Control;
