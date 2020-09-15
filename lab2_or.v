`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:08 08/25/2020 
// Design Name: 
// Module Name:    lab2_or 
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
module lab2_or(
    input a,
    input b,
    input c,
    input d,
    output e
    );
wire x1,x2;
and(x1,a,b);
and(x2,c,d);
or(e,x1,x2);
endmodule
