library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        d1              : in     vl_logic_vector(31 downto 0);
        d2              : in     vl_logic_vector(31 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        s               : out    vl_logic_vector(31 downto 0);
        cout            : out    vl_logic;
        zero_detect     : out    vl_logic
    );
end alu;
