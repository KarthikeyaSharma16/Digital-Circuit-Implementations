`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module XRL(a,b,y);
	input a,b;
	output y;
	wire [3:0] w;
	nor (w[0],a,b);
	nor (w[1],a,w[0]);
	nor (w[2],b,w[0]);
	nor (w[3],w[1],w[2]);
	nor (y,w[3],w[3]);
endmodule
