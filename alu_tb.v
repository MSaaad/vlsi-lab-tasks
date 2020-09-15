`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:19:10 09/08/2020
// Design Name:   alu_code
// Module Name:   E:/Downloads_2/Xilinx/14.7/ISE_DS/myprojs/aludesign/alu_tb.v
// Project Name:  aludesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [2:0] opcode;

	// Outputs
	wire [7:0] x;
	wire [3:0] flag;

	// Instantiate the Unit Under Test (UUT)
	alu_code uut (
		.a(a), 
		.b(b), 
		.x(x), 
		.flag(flag), 
		.opcode(opcode)
	);

	initial begin
		// Initialize Inputs
		a = 10;
		b = 5;
		opcode = 0;
		#20;
		a = 10;
		b = 5;
		opcode = 1;
		#20;
		a = 10;
		b = 5;
		opcode = 2;
		#20;
		a = 10;
		b = 5;
		opcode = 3;
		#20;
		a = 10;
		b = 5;
		opcode = 4;
		#20;
		a = 10;
		b = 5;
		opcode = 5;
		#20;
		a = 10;
		b = 5;
		opcode = 6;
		#20;
		a = 10;
		b = 5;
		opcode = 7;
		#20;
	end
endmodule

