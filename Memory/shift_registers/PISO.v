`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA 

module PISO(d,clk,y);
	input [3:0] d;
	input clk;
	output reg y;
	reg [3:0] temp;
	
	initial temp = 4'b0000;
	
	always@(posedge clk)
	begin
		if (temp == 4'b0000) begin
			temp = d;
		end
		else begin
			y = temp[0];
			temp = {1'b0,temp[3:1]};
		end
	end
endmodule
