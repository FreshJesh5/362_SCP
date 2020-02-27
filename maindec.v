module maindec (
	input  [31:0] instr     ,
	//
	output        branch_eq  ,
	output        branch_ne  ,
	output        jump      ,
	output        mem_to_reg,
	output        mem_write ,
	output        reg_dst   ,
	output        reg_write ,
	output        alu_src
);

	wire [5:0] opcode;
	assign opcode = instr[31:26];

	wire [5:0] func;
	assign func = instr[5:0];

	wire wadd = ((opcode == 6'h00) & (func == 6'h20));
	wire waddu = ((opcode == 6'h00) & (func == 6'h21));
	wire wsub = ((opcode == 6'h00) & (func == 6'h22));
	wire wsubu = ((opcode == 6'h00) & (func == 6'h23));
	wire wandd = ((opcode == 6'h00) & (func == 6'h24));
	wire worr  = ((opcode == 6'h00) & (func == 6'h25));
	wire wxorr = ((opcode == 6'h00) & (func == 6'h26));
	wire wseq = ((opcode == 6'h00) & (func == 6'h28));
	wire wsne = ((opcode == 6'h00) & (func == 6'h29));
	wire wslt = ((opcode == 6'h00) & (func == 6'h2A));
	wire wsgt = ((opcode == 6'h00) & (func == 6'h2B));
	wire wsle = ((opcode == 6'h00) & (func == 6'h2C));
	wire wsge = ((opcode == 6'h00) & (func == 6'h2D));
	wire wsll = ((opcode == 6'h00) & (func == 6'h04));
   wire wsrl = ((opcode == 6'h00) & (func == 6'h06));
	wire wsra = ((opcode == 6'h00) & (func == 6'h07));
	
	wire wmult = ((opcode == 6'h01) & (func == 6'h0e));
	wire wmultu = ((opcode == 6'h01) & (func == 6'h16));
	
	
	wire wlw = (opcode == 6'h23);
	wire wsw = (opcode == 6'h2B);

	
	wire wj    = (opcode == 6'h02);
   wire wjal    = (opcode == 6'h03);
   wire wbeqz  = (opcode == 6'h04);
	wire wbnez  = (opcode == 6'h05);
	wire wjr = (opcode == 6'h12);
	wire wjalr = (opcode == 6'h13);
	
	wire waddi = (opcode == 6'h08);
	wire waddui = (opcode == 6'h09);
	wire wsubi = (opcode == 6'h0a);
	wire wsubui = (opcode == 6'h0b);
	wire wandi = (opcode == 6'h0c);
	wire wori  = (opcode == 6'h0d);
	wire wxori = (opcode == 6'h0e);
	wire wseqi = (opcode == 6'h18);
	wire wsnei = (opcode == 6'h19);
	wire wslti = (opcode == 6'h1a);
	wire wsgti = (opcode == 6'h1b);
	wire wslei = (opcode == 6'h1c);
	wire wsgei = (opcode == 6'h1d);
	wire wslli = (opcode == 6'h14);
   wire wsrli = (opcode == 6'h16);
	wire wsrai = (opcode == 6'h17);
	
	
	assign branch_eq  = wbeqz;
	assign branch_ne  = wbnez;    
	assign jump       = wj|wjalr|wjr|wjal;
	assign mem_to_reg = wlw;
	assign mem_write  = wsw;
	assign reg_dst    = wadd|waddu|wsub|wsubu|wandd|worr|wxorr|wseq|wsne|wslt|wsgt|wsle|wsge|wsll|wsrl|wsra|wmult|wmultu;
	assign reg_write  = wadd|waddu|wsub|wsubu|wandd|worr|wxorr|wseq|wsne|wslt|wsgt|wsle|wsge|wsll|wsrl|wsra|wmult|wmultu|waddi|waddui|wsubi|wsubui|wandi|wori|wxori|wseqi|wsnei|wslti|wsgti|wslei|wsgei|wslli|wsrli|wsrai|wlw;
	assign alu_src    = waddi|waddui|wsubi|wsubui|wandi|wori|wxori|wslli|wsrli|wsrai|wseqi|wsnei|wslti|wsgti|wslei|wsgei|wlw|wsw|wj|wjal|wbeqz|wbnez|wjr|wjalr;

endmodule