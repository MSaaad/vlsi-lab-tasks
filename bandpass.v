`timescale 1 ns / 1 ns

module filter (clk, clk_en, reset, xin, xout );

input clk;
input clk_en;
input reset;
input signed [15:0] xin; 
output signed [15:0] xout; 

parameter signed [15:0] constant_scale = 45;
parameter signed [15:0] co_b1sec = 16'b0000000000000011; 
parameter signed [15:0] co_b2sec = 16'b0000000000000000; 
parameter signed [15:0] co_b3sec = 16'b0000000000000001; 
parameter signed [15:0] co_a2sec = 16'b0000000000000010; 
parameter signed [15:0] co_a3sec = 16'b0000000000000111; 

wire signed [15:0] in_data_convert; 
wire signed [15:0] scale1;
wire signed [31:0] multemp;

wire signed [33:0] a1sum1; 
wire signed [33:0] a2sum1; 
wire signed [33:0] b1sum1; 
wire signed [33:0] b2sum1; 
wire signed [15:0] num_data_conv; 
wire signed [15:0] den_data_conv; 
reg signed [15:0] num_delay_sec [0:1] ;
reg signed [15:0] den_delay_sec [0:1] ;
wire signed [31:0] a2mul1; 
wire signed [31:0] a3mul1; 
wire signed [31:0] b1mul1; 
wire signed [31:0] b3mul1; 
wire signed [16:0] single_neg_temp; 
wire signed [33:0] b1_mul_conv1;
wire signed [33:0] addcast; 
wire signed [33:0] addcast1;
wire signed [34:0] addtemp; 
wire signed [33:0] subcast; 
wire signed [33:0] subcast1;
wire signed [34:0] subtemp; 
wire signed [33:0] subcast2;
wire signed [33:0] subcast3;
wire signed [34:0] subtemp1;
wire signed [15:0] out_data_conv;


assign in_data_convert = xin;
assign multemp = in_data_convert * constant_scale;
assign scale1 = (multemp[29:13] + 1)>>>1;
assign num_data_conv = scale1;
assign den_data_conv = (a1sum1[29:13] + 1)>>>1;
always @( posedge clk or posedge reset)
begin: num_delay_process_sec
if (reset == 1'b1) begin
num_delay_sec[0] <= 0;
num_delay_sec[1] <= 0;
end
else begin
if (clk_en == 1'b1) begin
num_delay_sec[0] <= num_data_conv;
num_delay_sec[1] <= num_delay_sec[0];
end
end
end 

always @( posedge clk or posedge reset)
begin: den_delay_process_sec
if (reset == 1'b1) begin
den_delay_sec[0] <= 0;
den_delay_sec[1] <= 0;
end
else begin
if (clk_en == 1'b1) begin
den_delay_sec[0] <= den_data_conv;
den_delay_sec[1] <= den_delay_sec[0];
end
end
end 

assign a2mul1 = den_delay_sec[0] * co_a2sec;
assign a3mul1 = den_delay_sec[1] * co_a3sec;
assign b1mul1 = $signed({num_data_conv[15:0], 14'b00000000000000});
assign single_neg_temp = (num_delay_sec[1]==16'b0000000000000001) ? $signed({1'b0, num_delay_sec[1]}) : -num_delay_sec[1];
assign b3mul1 = $signed({single_neg_temp[16:0], 14'b0});
assign b1_mul_conv1 = $signed({{2{b1mul1[31]}}, b1mul1});
assign b1sum1 = b1_mul_conv1;
assign addcast = b1sum1;
assign addcast1 = $signed({{2{b3mul1[31]}}, b3mul1});
assign addtemp = addcast + addcast1;
assign b2sum1 = addtemp[33:0];
assign subcast = b2sum1;
assign subcast1 = $signed({{2{a2mul1[31]}}, a2mul1});
assign subtemp = subcast - subcast1;
assign a2sum1 = subtemp[33:0];
assign subcast2 = a2sum1;
assign subcast3 = $signed({{2{a3mul1[31]}}, a3mul1});
assign subtemp1 = subcast2 - subcast3;
assign a1sum1 = subtemp1[33:0];
assign out_data_conv = ({{4{den_data_conv[15]}}, den_data_conv[15:3]} + 1)>>>1;

assign xout = out_data_conv;

endmodule 
