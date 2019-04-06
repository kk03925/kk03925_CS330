library verilog;
use verilog.vl_types.all;
entity module64 is
    port(
        a               : in     vl_logic_vector(63 downto 0);
        b               : in     vl_logic_vector(63 downto 0);
        ALUop           : in     vl_logic_vector(3 downto 0);
        ZERO            : out    vl_logic;
        Result          : out    vl_logic_vector(63 downto 0)
    );
end module64;
