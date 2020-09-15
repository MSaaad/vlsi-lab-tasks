`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:23 09/08/2020
// Design Name:   mooreVM_code
// Module Name:   E:/Downloads_2/Xilinx/14.7/ISE_DS/myprojs/mooreVendingMachine/mooreVM_tb.v
// Project Name:  mooreVendingMachine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mooreVM_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mooremachine_tb;

	// Inputs
	reg [1:0] Inp;
	reg reset;
	reg clk;

	// Outputs
	wire [1:0] Out_state;
	wire y;

	// Instantiate the Unit Under Test (UUT)
	moore_machine uut (
		.Inp(Inp), 
		.reset(reset), 
		.clk(clk), 
		.Out_state(Out_state), 
		.y(y)
	);
	always #5 clk = ~clk;

	initial begin
		Inp = 0;
		reset = 1;
		clk = 0;
		#20;
		Inp = 1;
		reset = 0;
		#20;
		Inp = 1;
		reset = 0;
		#20;
		Inp = 1;
		reset = 0;
		#20;	
		Inp = 1;
		reset = 0;
		#20;
		Inp = 0;
		reset = 1;
		#20;
		Inp = 1;
		reset = 0;
		#20;
   end
      
endmodule

