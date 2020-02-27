
module add32(
    input  [31:0] A,B,
    output [31:0] out,
    output cout,
    output ovf
    );
    assign out = A+B;
    assign cout = 0;
    assign ovf = 0;
endmodule

module sub32(
    input [31:0] A,B,
    output [31:0] out,
    output cout,
    output ovf
    );
    assign out = A-B;
    assign cout = 0;
    assign ovf = 0;
endmodule

module and32(
    input [31:0] A,B,
    output [31:0] out
    );
    assign out = (A&B);
endmodule

module or32(
    input [31:0] A,B,
    output [31:0] out
    );
    assign out = (A|B);
endmodule

module xor32(
    input signed [31:0] A,B,
    output [31:0] out
    );
    assign out = (A^B);
endmodule

module seq32(
    input [31:0] A,B,
    output [31:0]out
    );
    assign out = (A==B);
endmodule

module sle32(
    input [31:0] A,B,
    output [31:0]out
    );
    assign out = (A<=B);
endmodule

module sge32(
    input [31:0] A,B,
    output [31:0]out
    );
    assign out = (A>=B);
endmodule

module sne32(
    input [31:0] A,B,
    output [31:0]out
    );
    assign out = (A!=B);
endmodule

module slt32(
    input signed [31:0] A,B,
    output [31:0]out
    );
    assign out = (A<B);
endmodule

module sgt32(
    input signed [31:0] A,B,
    output [31:0]out
    );
    assign out = (A>B);
endmodule

module sll32(
    input [31:0] A,B,
    output [31:0] out
    );
    assign out = (A<<B);
endmodule

module srl32(
    input [31:0] A,B,
    output [31:0] out
    );
    assign out = (A>>B);
endmodule

module sra32(
    input signed [31:0] A,B,
    output [31:0] out
    );
    assign out = ($signed(A)>>>B);
endmodule