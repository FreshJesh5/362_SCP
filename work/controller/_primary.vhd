library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        instr           : in     vl_logic_vector(31 downto 0);
        branch_eq       : out    vl_logic;
        branch_ne       : out    vl_logic;
        jump            : out    vl_logic;
        mem_to_reg      : out    vl_logic;
        mem_write       : out    vl_logic;
        reg_dst         : out    vl_logic;
        reg_write       : out    vl_logic;
        alucontrol      : out    vl_logic_vector(5 downto 0);
        alu_src         : out    vl_logic
    );
end controller;
