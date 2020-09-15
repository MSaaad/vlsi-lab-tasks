`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:52:26 09/08/2020 
// Design Name: 
// Module Name:    decoder3x8_code 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dec_3x8(
	input in0,
	input in1,
	input in2,
	output out0,
	output out1,
	output out2,
	output out3,
	output out4,
	output out5,
	output out6,
	output out7
    );

	dec_2x4 m1(~in2,{in1,in0},{out0,out1,out2,out3});
	dec_2x4 m2(in2,{in1,in0},{out4,out5,out6,out7});

endmodule
