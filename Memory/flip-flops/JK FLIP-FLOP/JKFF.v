`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module JKFF(j,k,clk,rst,q,qb);
	input j,k,clk,rst;
	output reg q,qb;
	reg [1:0] jk;
	always@(posedge clk)
	begin
	jk = {j,k};
		if (!rst) begin
			q = 0;
			qb = 1;
		end
		else begin
			case(jk)
				2'b00: begin
					q = q;
					qb = qb;
				end
				2'b01: begin
					q = 0;
					qb = 1;
				end
				2'b10: begin
					q = 1;
					qb = 0;
				end
				2'b11: begin
					q = ~q;
					qb = ~qb;
				end
			endcase
		end
	end
endmodule
