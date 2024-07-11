`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module NOTL(a,y);
	input a;
	output y;
	nor (y,a,a);
endmodule
