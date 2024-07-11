`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA 

module BoothMult(a,b,p);
	input [3:0] a,b; //a is multiplicand and b is multiplier
	output reg [7:0] p;
	
	reg [3:0] acc;
	reg q0;
	integer ii;
	
	reg [3:0] Q,M;
	
	reg [1:0] check_1;
	reg [8:0] SAR;
	reg SAR_MSB;
	
	always@(a,b)
		begin
			M = a; //M is multiplicand
			Q = b; //Q is multiplier
			acc = 0; //initialize accumulator to 0
			q0 = 0;
			
			
			for (ii = 4; ii > 0; ii = ii - 1) begin
				check_1 = {Q[0],q0};
				if (check_1 == 2'b10)
					acc = acc + (~M + 1);	
				else if (check_1 == 2'b01)
					acc = acc + M;
				
				SAR = {acc,Q,q0};
				SAR_MSB = SAR[8];
				SAR = SAR >> 1;
				SAR[8] = SAR_MSB;
				
				q0 = SAR[0];
				Q = SAR[4:1];
				acc = SAR[8:5];
			end
			
			p = SAR[8:1];
		end
endmodule
