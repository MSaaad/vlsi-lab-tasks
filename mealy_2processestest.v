`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:45:38 08/27/2020
// Design Name:   mealy_2processes
// Module Name:   C:/Users/Muhammad Saad/Desktop/VLSI lab/mealy_2processes/mealy_2processestest.v
// Project Name:  mealy_2processes
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mealy_2processes
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mealy_2processestest;

	// Inputs
	reg clk;
	reg reset;
	reg x;

	// Outputs
	wire parity;

	// Instantiate the Unit Under Test (UUT)
	mealy_2processes uut (
		.clk(clk), 
		.reset(reset), 
		.x(x), 
		.parity(parity)
	);

always
		#5 clk = ~clk;

	initial
		begin
			clk = 1'b0;
			reset = 1'b1;
			#11 reset = 1'b0;
		end
	initial 
		begin
			#10 x = 1;
		
		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here

	end
      
endmodule

