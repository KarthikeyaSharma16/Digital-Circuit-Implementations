`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module WallaceTreeMult(a,b,p);
	input [3:0] a,b;
	output [7:0] p;
	
	wire [15:0] pp; //pp - partial products
	and(pp[0],a[0],b[0]);
	and(pp[1],a[1],b[0]);
	and(pp[2],a[2],b[0]);
	and(pp[3],a[3],b[0]);
	
	and(pp[4],a[0],b[1]);
	and(pp[5],a[1],b[1]);
	and(pp[6],a[2],b[1]);
	and(pp[7],a[3],b[1]);
	
	and(pp[8],a[0],b[2]);
	and(pp[9],a[1],b[2]);
	and(pp[10],a[2],b[2]);
	and(pp[11],a[3],b[2]);
	
	and(pp[12],a[0],b[3]);
	and(pp[13],a[1],b[3]);
	and(pp[14],a[2],b[3]);
	and(pp[15],a[3],b[3]);
	
	//INITIALIZING INTERMEDIATE SUM AND CARRY
	wire [12:1] int_s;
	wire [12:1] int_c;
	
	//FIRST STAGE
	HA h1(pp[1],pp[4],int_s[1],int_c[1]);
	FA f1(pp[2],pp[5],pp[8],int_s[2],int_c[2]);
	FA f2(pp[3],pp[6],pp[9],int_s[3],int_c[3]);
	HA h2(pp[7],pp[10],int_s[4],int_c[4]);
	
	//SECOND STAGE
	HA h3(int_s[2],int_c[1],int_s[5],int_c[5]);
	FA f3(int_s[3],int_c[2],pp[12],int_s[6],int_c[6]);
	FA f4(int_s[4],int_c[3],pp[13],int_s[7],int_c[7]);
	FA f5(pp[11],pp[14],int_c[4],int_s[8],int_c[8]);
	
	//THIRD STAGE
	HA h4(int_s[6],int_c[5],int_s[9],int_c[9]);
	FA f6(int_s[7],int_c[6],int_c[9],int_s[10],int_c[10]);
	FA f7(int_s[8],int_c[7],int_c[10],int_s[11],int_c[11]);
	FA f8(int_c[8],int_c[11],pp[15],int_s[12],int_c[12]);
	
	//ASSIGNING OUTPUTS
	buf(p[0],pp[0]);
	buf(p[1],int_s[1]);
	buf(p[2],int_s[5]);
	buf(p[3],int_s[9]);
	buf(p[4],int_s[10]);
	buf(p[5],int_s[11]);
	buf(p[6],int_s[12]);
	buf(p[7],int_c[12]);
	
endmodule
