`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:21 09/08/2020 
// Design Name: 
// Module Name:    alu_code 
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
module alu_code(
    input [7:0] a,
    input [7:0] b,
    output [7:0] x,
    output [3:0] flag,
    input [2:0] opcode
    );


reg [7:0] regis;
	reg carry;

always @(a or b or opcode)
begin
	regis <= 8'b0;
	carry <= 1'b0;
	case(opcode)
	3'b000:{carry,regis} <= a+b;
	3'b001:{carry,regis} <= a - b;
	3'b010:regis <= a<<1;
	3'b011:regis <= a>>1;
	3'b100:regis <= a&b;
	3'b101:regis <= a^b;
	3'b110:regis <= ~a;
	3'b111:regis <= a|b;
	endcase
end
assign x = regis;
assign flag[0] = regis[7];
assign flag[1] = carry;
assign flag[2] = (regis == 8'b0);
assign flag[3] = (a[7] & b[7] & ~regis[7]) | (a[7] & ~b[7] & regis[7]);

endmodule
