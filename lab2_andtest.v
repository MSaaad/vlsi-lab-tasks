`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:34 08/25/2020
// Design Name:   lab2_and
// Module Name:   C:/Users/Muhammad Saad/Desktop/VLSI lab/lab_2/lab2_andtest.v
// Project Name:  lab_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab2_and
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lab2_andtest;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire c;

	// Instantiate the Unit Under Test (UUT)
	lab2_and uut (
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		#30;
        
		a = 1;
		b = 0;

		#30;
        
		a = 0;
		b = 1;

		#30;
        
		a = 1;
		b = 1;

		#30;
		
        
		
	end
      
endmodule

