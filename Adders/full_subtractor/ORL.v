`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module ORL(a,b,y);
	input a,b;
	output y;
	wire w;
	nor (w,a,b);
	nor (y,w,w);
endmodule
