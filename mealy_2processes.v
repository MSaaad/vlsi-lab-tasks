module mealy_2processes(input clk, input reset, input x, output reg parity); 
	reg state, nextstate; 
	parameter S0=0, S1=1; 
always @(posedge clk or posedge reset) // always block to update state 
	if (reset) 
		state <= S0; 
	else 
	state <= nextstate;
always @(state or x) // always block to compute output 
begin 
 parity = 1'b0; 
 case(state) 
 S0: if(x) 
 parity = 1; 
 S1: if(!x) 
 parity = 1; 
 endcase 
end 
always @(state or x) // always block to compute nextstate 
begin 
 nextstate = S0; 
 case(state) 
 S0: if(x) 
 nextstate = S1; 
 S1: if(!x) 
 nextstate = S1; 
 endcase 
end 
endmodule 