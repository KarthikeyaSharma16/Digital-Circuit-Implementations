`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA
// Module Name:    BarrelShifter_8bit 

module BarrelShifter_8bit(a,s,y);
	input [7:0] a;
	input [2:0] s;
	output [7:0] y;
	wire [7:0] p,d;
	
	MUX m1 (a[0],a[5],s[2],p[0]);
	MUX m2 (a[1],a[6],s[2],p[1]);
	MUX m3 (a[2],a[7],s[2],p[2]);
	MUX m4 (a[3],a[0],s[2],p[3]);
	MUX m5 (a[4],a[1],s[2],p[4]);
	MUX m6 (a[5],a[2],s[2],p[5]);
	MUX m7 (a[6],a[3],s[2],p[6]);
	MUX m8 (a[7],a[4],s[2],p[7]);
	
	MUX m9  (p[0],p[6],s[1],d[0]);
	MUX m10 (p[1],p[7],s[1],d[1]);
	MUX m11 (p[2],p[0],s[1],d[2]);
	MUX m12 (p[3],p[1],s[1],d[3]);
	MUX m13 (p[4],p[2],s[1],d[4]);
	MUX m14 (p[5],p[3],s[1],d[5]);
	MUX m15 (p[6],p[4],s[1],d[6]);
	MUX m16 (p[7],p[5],s[1],d[7]);
	
	MUX m17 (d[0],d[7],s[0],y[0]);
	MUX m18 (d[1],d[0],s[0],y[1]);
	MUX m19 (d[2],d[1],s[0],y[2]);
	MUX m20 (d[3],d[2],s[0],y[3]);
	MUX m21 (d[4],d[3],s[0],y[4]);
	MUX m22 (d[5],d[4],s[0],y[5]);
	MUX m23 (d[6],d[5],s[0],y[6]);
	MUX m24 (d[7],d[6],s[0],y[7]);
	
endmodule
