`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:45 09/08/2020
// Design Name:   dec3x8_code
// Module Name:   E:/Downloads_2/Xilinx/14.7/ISE_DS/myprojs/decoder3x8/decoder3x8_tb.v
// Project Name:  decoder3x8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec3x8_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec_3x8_tb;

	// Inputs
	reg in0;
	reg in1;
	reg in2;

	// Outputs
	wire out0;
	wire out1;
	wire out2;
	wire out3;
	wire out4;
	wire out5;
	wire out6;
	wire out7;

	// Instantiate the Unit Under Test (UUT)
	dec_3x8 uut (
		.in0(in0), 
		.in1(in1), 
		.in2(in2), 
		.out0(out0), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
		.out6(out6), 
		.out7(out7)
	);

	initial begin
		// Initialize Inputs
		in0 = 0;
		in1 = 0;
		in2 = 0;
		#20;
		in0 = 1;
		in1 = 0;
		in2 = 0;
		#20;
		in0 = 0;
		in1 = 1;
		in2 = 0;
		#20;
		in0 = 1;
		in1 = 1;
		in2 = 0;
		#20;
		in0 = 0;
		in1 = 0;
		in2 = 1;
		#20;
		in0 = 1;
		in1 = 0;
		in2 = 1;
		#20;
		in0 = 0;
		in1 = 1;
		in2 = 1;
		#20;
		in0 = 1;
		in1 = 1;
		in2 = 1;
		#20;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
endmodule

