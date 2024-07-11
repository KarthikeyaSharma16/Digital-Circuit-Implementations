`timescale 1ns / 1ps

//ENGINEER : KARTHIKEYA SHARMA

module SRFF(s,r,clk,rst,q,qb);
	input s,r,clk,rst;
	output reg q,qb;
	always@(posedge clk)
	begin
		if(!rst) begin
			q = 0;
			qb = 1;
		end
		else begin
			if (s == 1 && r == 0) begin
				q = 1;
				qb = 0;
			end
			else if (s == 0 && r == 1) begin
				q = 0;
				qb = 1;
			end
			else if (s == 1 && r == 1) begin
				q = q;
				qb = qb;
			end
			else if (s == 0 && r == 0) begin
				q = 1'bx;
				qb = 1'bx;
			end
		end
	end
endmodule
