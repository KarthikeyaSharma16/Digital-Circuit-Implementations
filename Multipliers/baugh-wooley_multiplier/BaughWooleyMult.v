`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module BaughWooleyMult(a,b,p);
	input [3:0] a,b;
	output [7:0] p;
	wire [11:0] int_s;
	wire [19:0] int_c;
	
	WhiteCell W1 (a[0],b[0],1'b0,1'b0,p[0],int_c[0]);
	WhiteCell W2 (a[1],b[0],1'b0,1'b0,int_s[0],int_c[1]);
	WhiteCell W3 (a[2],b[0],1'b0,1'b0,int_s[1],int_c[2]);
	GrayCell G1 (a[3],b[0],1'b0,1'b0,int_s[2],int_c[3]);
	
	WhiteCell W4 (a[0],b[1],int_s[0],int_c[0],p[1],int_c[4]);
	WhiteCell W5 (a[1],b[1],int_s[1],int_c[1],int_s[3],int_c[5]);
	WhiteCell W6 (a[2],b[1],int_s[2],int_c[2],int_s[4],int_c[6]);
	GrayCell G2 (a[3],b[1],1'b0,int_c[3],int_s[5],int_c[7]);
	
	WhiteCell W7 (a[0],b[2],int_s[3],int_c[4],p[2],int_c[8]);
	WhiteCell W8 (a[1],b[2],int_s[4],int_c[5],int_s[6],int_c[9]);
	WhiteCell W9 (a[2],b[2],int_s[5],int_c[6],int_s[7],int_c[10]);
	GrayCell G3 (a[3],b[2],1'b0,int_c[7],int_s[8],int_c[11]);
	
	GrayCell G4 (a[0],b[3],int_s[6],int_c[8],p[3],int_c[12]);
	GrayCell G5 (a[1],b[3],int_s[7],int_c[9],int_s[9],int_c[13]);
	GrayCell G6 (a[2],b[3],int_s[8],int_c[10],int_s[10],int_c[14]);
	WhiteCell W10 (a[3],b[3],1'b0,int_c[11],int_s[11],int_c[15]);
	
	FA F1(1'b1,int_c[12],int_s[9],p[4],int_c[16]);
	FA F2(int_c[16],int_c[13],int_s[10],p[5],int_c[17]);
	FA F3(int_c[17],int_c[14],int_s[11],p[6],int_c[18]);
	FA F4(int_c[18],int_c[15],1'b1,p[7],int_c[19]);

endmodule
