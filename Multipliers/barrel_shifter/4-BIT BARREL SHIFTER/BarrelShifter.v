`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA
// Design Name:   BarrelShifter

module BarrelShifter(A,s,y);
	input [3:0] A;
	output [3:0] y;
	input [1:0] s; //select line
	wire [3:0] p; //intermediate output
	MUX m1 (A[0],A[2],s[1],p[0]);
	MUX m2 (A[1],A[3],s[1],p[1]);
	MUX m3 (A[2],A[0],s[1],p[2]);
	MUX m4 (A[3],A[1],s[1],p[3]);
	
	MUX m5 (p[0],p[3],s[0],y[0]);
	MUX m6 (p[1],p[0],s[0],y[1]);
	MUX m7 (p[2],p[1],s[0],y[2]);
	MUX m8 (p[3],p[2],s[0],y[3]);
endmodule
