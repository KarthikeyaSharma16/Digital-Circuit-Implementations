`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA 

module Decoder_2_4(e,d,en);
	input [1:0] e;
	output [3:0] d;
	input en;
	and (d[0],en,~e[1],~e[0]);
	and (d[1],en,~e[1],e[0]);
	and (d[2],en,e[1],~e[0]);
	and (d[3],en,e[1],e[0]);
endmodule
