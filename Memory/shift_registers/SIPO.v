`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA 

module SIPO(d,y,clk);
	input d,clk;
	output reg [3:0] y;
	reg [3:0] temp;
	
	always@(posedge clk)
	begin
		temp[3] = d;
		temp = temp >> 1;
		y = temp;
	end

endmodule
