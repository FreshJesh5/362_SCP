library verilog;
use verilog.vl_types.all;
entity sub32 is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0);
        cout            : out    vl_logic;
        ovf             : out    vl_logic
    );
end sub32;
