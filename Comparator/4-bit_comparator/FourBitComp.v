`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module FourBitComp(a,b,l,e,m);
	input [3:0] a,b;
	output l,e,m;
	wire [11:0] w;
	
	and (w[0],a[3],~b[3]);
	and (w[1],~a[3],b[3]);
	xnor (w[2],a[3], b[3]);
	
	and (w[3],a[2],~b[2]);
	and (w[4],~a[2],b[2]);
	xnor (w[5],a[2], b[2]);
	
	and (w[6],a[1],~b[1]);
	and (w[7],~a[1],b[1]);
	xnor (w[8],a[1], b[1]);
	
	and (w[9],a[0],~b[0]);
	and (w[10],~a[0],b[0]);
	xnor (w[11],a[0], b[0]);
	
	//A>B
	or (m,w[0],w[2]&w[3],w[2]&w[5]&w[6],w[2]&w[5]&w[8]&w[9]);
	
	//A=B
	and(e,w[2],w[5],w[8],w[11]);
	
	//A>B
	or (l,w[1],w[2]&w[4],w[2]&w[5]&w[7],w[2]&w[5]&w[8]&w[10]);

endmodule
