`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module FS(a,b,bin,d,bout);
	input a,b,bin;
	output d,bout;
	wire [4:0] w;
	
	XRL X1(a,b,w[0]);
	XRL X2(bin,w[0],d);
	NOTL N1(a,w[1]); //a'
	NOTL N2(w[0],w[2]); //(a^b)'	
	ANL A1(w[1],b,w[3]);
	ANL A2(w[2],bin,w[4]);
	ORL O1(w[3],w[4],bout);
endmodule
