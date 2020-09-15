`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:39:07 08/25/2020 
// Design Name: 
// Module Name:    twoxfourdec 
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
module twoxfourdec(En,Inp,Outp);
	input En;
	input [1:0] Inp;
	output [3:0] Outp;
	
	reg [3:0] Out;
	always@ (En or Inp)
	begin
		if (~En)
			Out <= 4'b1111;
		else
		begin
			case (Inp)
			2'b00: Out <= 4'b0111;
			2'b01: Out <= 4'b1011;
			2'b10: Out <= 4'b1101;
			2'b11: Out <= 4'b1110;
			default: Out <= 4'b0000;
			endcase
		end
	end
		assign Outp = Out;
endmodule
