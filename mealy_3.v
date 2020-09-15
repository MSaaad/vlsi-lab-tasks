`timescale 1ns / 1ns

module source(y, stateReg, nextStateReg, x, rst, clk);

output reg [1:0]y;
input wire x;
input wire rst;
input wire clk;
parameter S0 = 2'b00,
	S1 = 2'b01,
	S2 = 2'b10,
	S3 = 2'b11;

	
output reg [1:0] stateReg;
output reg [1:0] nextStateReg;

initial begin
	stateReg <= S0;
end

always@(x, stateReg) begin
	case(stateReg)
		S0: begin
			if(x == 0) begin
				nextStateReg <= S0;
				y <= 2'b01;
			end
			else begin
				nextStateReg <= S2;
				y <= 2'b00;
			end
		end
		S1: begin
			if(x == 0) begin
				nextStateReg <= S0;
				y <= 2'b00;
			end
			else begin
				nextStateReg <= S1;
				y <= 2'b01;
			end
		end
		S2: begin
			if(x == 0) begin
				nextStateReg <= S1;
				y <= 2'b10;
			end
			else begin
				nextStateReg <= S0;
				y <= 2'b00;
			end
		end
		S3: begin
			if(x == 0) begin
				nextStateReg <= S3;
				y <= 2'b10;
			end
			else begin
				nextStateReg <= S3;
				y <= 2'b00;
			end

		end
	endcase
end
		
always@(posedge clk) begin
	if(rst) begin
		stateReg <= S0;
	end
	else begin
		stateReg <= nextStateReg;
	end
end

endmodule