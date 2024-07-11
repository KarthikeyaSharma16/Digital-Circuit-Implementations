`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module TwoBitComp(a,b,L,E,M);
	input [1:0] a,b;
	output L,E,M;
	wire [7:0] w;
	
	//A<B
	and (w[0],~a[1],b[1]);
	and (w[1],b[1],b[0],~a[0]);
	and (w[2],~a[1],~a[0],b[0]);
	or (L,w[0],w[1],w[2]);
	
	//A=B
	xnor (w[3],a[0],b[0]);
	xnor (w[4],a[1],b[1]);
	and (E,w[3],w[4]);
	
	//A>B
	and (w[5], a[1], ~b[1]);
	and (w[6], a[0], ~b[1], ~b[0]);
	and (w[7], a[1], a[0], ~b[0]);
	or (M, w[5], w[6], w[7]);
endmodule
