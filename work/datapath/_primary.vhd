library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        alucontrol      : in     vl_logic_vector(5 downto 0);
        alu_src         : in     vl_logic;
        branch_eq       : in     vl_logic;
        branch_ne       : in     vl_logic;
        jump            : in     vl_logic;
        mem_to_reg      : in     vl_logic;
        mem_write       : in     vl_logic;
        reg_dst         : in     vl_logic;
        reg_write       : in     vl_logic;
        instr           : in     vl_logic_vector(31 downto 0);
        pc              : out    vl_logic_vector(31 downto 0);
        read_data       : in     vl_logic_vector(31 downto 0);
        alu_result      : out    vl_logic_vector(31 downto 0);
        write_data      : out    vl_logic_vector(31 downto 0)
    );
end datapath;
