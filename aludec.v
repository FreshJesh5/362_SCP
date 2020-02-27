module aludec (
	input  [31:0] instr     ,
	output reg [5:0] alucontrol
);
   always @(*) begin
      case(instr[31:26])
         6'h00: alucontrol = instr[5:0];
         6'h01: alucontrol = instr[5:0];
         6'h08: alucontrol = 6'h20;
         6'h09: alucontrol = 6'h21;
         6'h0a: alucontrol = 6'h22;
         6'h0b: alucontrol = 6'h23;
         6'h0c: alucontrol = 6'h24;
         6'h0d: alucontrol = 6'h25;
         6'h0e: alucontrol = 6'h26;
         6'h14: alucontrol = 6'h04;    
         6'h16: alucontrol = 6'h06;
         6'h17: alucontrol = 6'h07;
         6'h18: alucontrol = 6'h28;
         6'h19: alucontrol = 6'h29;
         6'h1a: alucontrol = 6'h2a;
         6'h1b: alucontrol = 6'h2b;
         6'h1c: alucontrol = 6'h2c;
         6'h1d: alucontrol = 6'h2d;
         6'h23: alucontrol = 6'h20;
         6'h2b: alucontrol = 6'h20;
         default: alucontrol = 6'h00;
      endcase    
   end


endmodule
