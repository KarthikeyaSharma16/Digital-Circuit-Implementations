`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA 

module SISO(d,clk,y);
	input d, clk;
	output reg y;
	reg [3:0] temp;
	
	always @(posedge clk)
	begin
		temp = temp >> 1;
		temp[3] = d;
		y = temp[0];
	end
endmodule
