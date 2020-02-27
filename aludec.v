module aludec (
	input  [31:0] instr     ,
	output [5:0] alucontrol
);

   assign alucontrol = instr[5:0];

endmodule
