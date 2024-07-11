`timescale 1ns / 1ps

//ENGINEER : KARTHIKEYA SHARMA

module TFF(t,rst,clk,q,qb);
	input t,rst,clk;
	output reg q,qb;
	
	always@(posedge clk)
	begin
		if (!rst) begin
			q = 0;
			qb = 1;
		end
		else begin
			if (t) begin	
				q = ~q;
				qb = ~qb;
			end
			else begin
				q = q;
				qb = qb;
			end
		end
	end
endmodule
