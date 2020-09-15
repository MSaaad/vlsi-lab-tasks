`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:45:06 08/25/2020
// Design Name:   twoxfourdec
// Module Name:   C:/Users/Muhammad Saad/Desktop/VLSI lab/lab3_2x4dec/twoxfourdec_test.v
// Project Name:  lab3_2x4dec
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: twoxfourdec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module twoxfourdec_test;

	// Inputs
	reg En;
	reg [1:0] Inp;

	// Outputs
	wire [3:0] Outp;

	// Instantiate the Unit Under Test (UUT)
	twoxfourdec uut (
		.En(En), 
		.Inp(Inp), 
		.Outp(Outp)
	);

	initial begin
		En = 0;
		Inp = 0;
		#30;
      
		En = 1;
		Inp = 0;
		#30;
      
		En = 1;
		Inp = 1;
		#30;
      
		En = 1;
		Inp = 2;
		#30;
      
		En = 1;
		Inp = 3;
		#30;
      
		En = 0;
		Inp = 3;
		#30;
      
	end
      
endmodule

