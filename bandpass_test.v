`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:41 09/01/2020
// Design Name:   bandpass
// Module Name:   C:/Users/Muhammad Saad/Desktop/VLSI lab/band-pass-filter/bandpass_test.v
// Project Name:  band-pass-filter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bandpass
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bandpass_test;

// Inputs
reg clk;
reg rst;
reg [7:0] x;

// Outputs
wire [9:0] dataout;

// Instantiate the Unit Under Test (UUT)
bandpass uut (
.clk(clk),
.rst(rst),
.x(x),
.dataout(dataout)
);

initial begin
// Initialize Inputs
clk = 0;
rst = 0;
x = 0;
#100;

rst = 1;
#100;

rst = 0;
x = 8'd5;
#100;
x = 8'd10;
#100;
x = 8'd12;
#100;
x = 8'd15;
#100;
x = 8'd16;
#100;



end
always begin #50 clk=~clk; 
end
endmodule 