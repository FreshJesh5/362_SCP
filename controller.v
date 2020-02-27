module controller (
	input  [31:0] instr     ,
	// other side
	output        branch_eq  ,
	output        branch_ne ,
	output        jump      ,
	output        mem_to_reg,
	output        mem_write ,
	output        reg_dst   ,
	output        reg_write ,
	// alu side
	output [ 5:0] alucontrol,
	output        alu_src
);

	maindec maindec_inst (
		.instr     (instr     ),
		.branch_eq (branch_eq ),
		.branch_ne (branch_ne),
		.jump      (jump      ),
		.mem_to_reg(mem_to_reg),
		.mem_write (mem_write ),
		.reg_dst   (reg_dst   ),
		.reg_write (reg_write ),
		.alu_src   (alu_src   )
	);

	aludec aludec_inst (
		.instr     (instr     ),
		.alucontrol(alucontrol)
	);

endmodule
