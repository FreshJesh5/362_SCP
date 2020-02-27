library verilog;
use verilog.vl_types.all;
entity mips is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        imem_data       : in     vl_logic_vector(31 downto 0);
        imem_addr       : out    vl_logic_vector(31 downto 0);
        dmem_rdata      : in     vl_logic_vector(31 downto 0);
        dmem_we         : out    vl_logic;
        dmem_addr       : out    vl_logic_vector(31 downto 0);
        dmem_wdata      : out    vl_logic_vector(31 downto 0)
    );
end mips;
