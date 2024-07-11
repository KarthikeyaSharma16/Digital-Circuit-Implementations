`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module PIPO(d,y,clk);
	input [3:0] d;
	input clk;
	output [3:0] y;
	
	always @(posedge clk)
	begin
		y = d;
	end

endmodule
