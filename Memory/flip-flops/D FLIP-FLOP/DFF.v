`timescale 1ns / 1ps

//ENGINEER: KARTHIKEYA SHARMA

module DFF(d,clk,rst,q,qb);
	input d,clk,rst;
	output reg q,qb;
	always@(posedge clk)
	begin
		if (!rst) begin
			q = 0;
			qb = 1;
		end
		else begin
			q = d;
			qb = ~d;
		end
	end
endmodule
