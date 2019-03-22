library verilog;
use verilog.vl_types.all;
entity top_control is
    port(
        Opcode          : in     vl_logic_vector(0 to 6);
        Funct           : in     vl_logic_vector(0 to 3);
        Branch          : out    vl_logic;
        MemRead         : out    vl_logic;
        MemtoReg        : out    vl_logic;
        MemWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        RegWrite        : out    vl_logic;
        Operation       : out    vl_logic_vector(0 to 3)
    );
end top_control;
