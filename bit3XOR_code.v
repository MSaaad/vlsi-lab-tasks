`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:00 09/08/2020 
// Design Name: 
// Module Name:    bit3XOR_code 
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
module xor_gate(
    input x1,
    input x2,
    input x3,
    output y
    );
wire y1;

assign y1 = x1^x2;
assign y = y1^x3;

endmodule
