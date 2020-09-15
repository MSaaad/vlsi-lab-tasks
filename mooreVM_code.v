`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:45 09/08/2020 
// Design Name: 
// Module Name:    mooreVM_code 
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
module moore_machine(
   input [1 :0] Inp,
	input reset,
	input clk,
	output [1 :0] Out_state,
	output y
    );

localparam S0 = 0, S1 = 1,S2 = 2, S3 = 3;
				
reg [1:0] state, nxtState;
reg Out;

always@(posedge clk)
begin
	if (reset) state <= S0;
	else state <= nxtState;
end

always@(*)
begin
	//nxtState = state;
	case(state)
	S0: begin
	if (~Inp[1]&~Inp[0]) nxtState <= S0;
	else if (~Inp[1]&Inp[0]) nxtState <= S1;
	else if (Inp[1]&~Inp[0]) nxtState <= S2;
	else if (Inp[1]&Inp[0]) nxtState <= S3;
	else nxtState <= S0;
	end
	
	S1: begin
	if (~Inp[1]&~Inp[0]) nxtState <= S1;
	else if (~Inp[1]&Inp[0]) nxtState <= S2;
	else if (Inp[1]&~Inp[0]) nxtState <= S3;
	else nxtState <= S1;
	end
	
	S2: begin
	if (~Inp[1]&~Inp[0]) nxtState <= S2;
	else if (~Inp[1]&Inp[0]) nxtState <= S3;
	else nxtState <= S2;
	end
	
	S3: begin
	nxtState <= S0;
	end
	
	default:begin
	end
	endcase
end

always@(*)
begin
//nxtState = state;
Out <= 0;
	case(state)
	S0: Out <= 0;
	S1: Out <= 0;
	S2: Out <= 0;
	S3: Out <= 1;
	default: Out <=0;
	endcase
end
assign y = Out;
assign Out_state = state;
endmodule
