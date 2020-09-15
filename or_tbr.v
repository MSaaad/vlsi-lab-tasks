`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:44:05 08/25/2020
// Design Name:   lab2_or
// Module Name:   C:/Users/Muhammad Saad/Desktop/VLSI lab/lab2_or/lab2s_or.v
// Project Name:  lab2_or
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab2_or
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab2s_or;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire e;

	// Instantiate the Unit Under Test (UUT)
	lab2_or uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
      
		a = 1;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
      a = 0;
		b = 1;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
      a = 1;
		b = 1;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
      a = 0;
		b = 0;
		c = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
      		
		a = 1;
		b = 0;
		c = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
		a = 0;
		b = 1;
		c = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
		a = 1;
		b = 1;
		c = 1;
		d = 0;

		// Wait 100 ns for global reset to finish
		#20;
		a = 0;
		b = 0;
		c = 0;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
		a = 1;
		b = 0;
		c = 0;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
		a = 0;
		b = 1;
		c = 0;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
		a = 1;
		b = 1;
		c = 0;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
		a = 0;
		b = 0;
		c = 1;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
		a = 1;
		b = 0;
		c = 1;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
		a = 0;
		b = 1;
		c = 1;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
		a = 1;
		b = 1;
		c = 1;
		d = 1;

		// Wait 100 ns for global reset to finish
		#20;
	end
      
endmodule

