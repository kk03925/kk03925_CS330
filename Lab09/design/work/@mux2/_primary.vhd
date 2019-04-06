library verilog;
use verilog.vl_types.all;
entity Mux2 is
    port(
        a               : in     vl_logic_vector(11 downto 0);
        b               : in     vl_logic_vector(11 downto 0);
        c               : in     vl_logic_vector(11 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        data_out        : out    vl_logic_vector(11 downto 0)
    );
end Mux2;
