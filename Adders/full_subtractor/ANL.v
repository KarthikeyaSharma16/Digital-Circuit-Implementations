`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module ANL(a,b,y);
	input a,b;
	output y;
	wire [1:0] w;
	nor (w[0],a,a);
	nor (w[1],b,b);
	nor (y,w[0],w[1]);
endmodule
