// file: pipelined_datapath_tb.v
// author: @refaay
// Testbench for pipelined_datapath

`timescale 1ns/1ns

module pipelined_datapath_tb;

	//Inputs
	reg clk;
	reg rst;


	//Outputs


	//Instantiation of Unit Under Test
	pipelined_datapath uut (
		.clk(clk),
		.rst(rst)
	);

always #5 clk = !clk;
	initial begin
	//Inputs initialization
		clk = 0;
		rst = 1;


	
	//Wait for the reset
		
      #20;
      rst = 1;
      $dumpfile("dump.vcd"); 
      $dumpvars;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      $display("$3=%h", uut.Regs.regFile[3]);
      $display("$7=%h", uut.Regs.regFile[7]);
      $display("$4=%h", uut.Regs.regFile[4]);
      #10;
      rst = 0;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      $display("$3=%h", uut.Regs.regFile[3]);
      $display("$7=%h", uut.Regs.regFile[7]);
      $display("$4=%h", uut.Regs.regFile[4]);
      #10;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      $display("$3=%h", uut.Regs.regFile[3]);
      $display("$7=%h", uut.Regs.regFile[7]);
      $display("$4=%h", uut.Regs.regFile[4]);
       #5;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      $display("$3=%h", uut.Regs.regFile[3]);
      $display("$7=%h", uut.Regs.regFile[7]);
      $display("$4=%h", uut.Regs.regFile[4]);
      #5;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
       #5;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      $display("$3=%h", uut.Regs.regFile[3]);
      $display("$7=%h", uut.Regs.regFile[7]);
      $display("$4=%h", uut.Regs.regFile[4]);
      #5;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
       #5;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      $display("$3=%h", uut.Regs.regFile[3]);
      $display("$7=%h", uut.Regs.regFile[7]);
      $display("$4=%h", uut.Regs.regFile[4]);
      #5;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      #5;
      $display("PC=%h", uut.PC_F_dp);
      $display("$2=%h", uut.Regs.regFile[2]);
      $display("$3=%h", uut.Regs.regFile[3]);
      $display("$7=%h", uut.Regs.regFile[7]);
      $display("$4=%h", uut.Regs.regFile[4]);
      #1000;
		$finish;

	end

endmodule