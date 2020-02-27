module tb();

    reg clock;
    reg reset;
    
    wire clk;
    wire rst;
    
    assign clk = clock;
    assign rst = reset;

    top uut (.clk(clock), .reset(reset));

    // generate clock
    always begin
        #5 clock = ~clock;
    end

    initial begin
        // initialize all variables
        clock = 0; reset = 1;
        // now set reset to 0 and begin performing test in inst mem
        @(negedge clock) reset = 0;
        #1000
        $finish;
    end

endmodule
