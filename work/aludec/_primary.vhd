library verilog;
use verilog.vl_types.all;
entity aludec is
    port(
        instr           : in     vl_logic_vector(31 downto 0);
        alucontrol      : out    vl_logic_vector(5 downto 0)
    );
end aludec;
