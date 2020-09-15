`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:56:32 09/08/2020
// Design Name:   bit3XOR_code
// Module Name:   E:/Downloads_2/Xilinx/14.7/ISE_DS/myprojs/lab4_3b_xor/bit3XOR_tb.v
// Project Name:  lab4_3b_xor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit3XOR_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module xor_gate_tb;

	// Inputs
	reg x1;
	reg x2;
	reg x3;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	xor_gate uut (
		.x1(x1), 
		.x2(x2), 
		.x3(x3), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x1 = 0;
		x2 = 0;
		x3 = 0;
		#20;
		x1 = 1;
		x2 = 0;
		x3 = 0;
		#20;
		x1 = 0;
		x2 = 1;
		x3 = 0;
		#20;
		x1 = 1;
		x2 = 1;
		x3 = 0;
		#20;
		//4
		x1 = 0;
		x2 = 0;
		x3 = 1;
		#20;
		x1 = 1;
		x2 = 0;
		x3 = 1;
		#20;
		x1 = 0;
		x2 = 1;
		x3 = 1;
		#20;
		x1 = 1;
		x2 = 1;
		x3 = 1;
		#20;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

