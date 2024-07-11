`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module ArrayMult(a,b,p);
	input [3:0] a, b;
	output [7:0] p;
	
	wire [15:1] pp; //pp - partial products
	wire [5:0] sum;
	wire [11:0] c;
	
	and(p[0],a[0],b[0]);
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
	
	HA h1(pp[1],pp[4],p[1],c[0]);
	FA f1(pp[2],pp[5],c[0],sum[0],c[1]); 
	FA f2(pp[3],pp[6],c[1],sum[1],c[2]); 
	HA h2(pp[7],c[2],sum[2],c[3]);       
	
	HA h3(sum[0],pp[8],p[2],c[4]);       
	FA f3(sum[1],pp[9],c[4],sum[3],c[5]); 
	FA f4(sum[2],pp[10],c[5],sum[4],c[6]); 
	FA f5(c[3],pp[11],c[6],sum[5],c[7]);   
	
	HA h4(sum[3],pp[12],p[3],c[8]);        
	FA f6(sum[4],pp[13],c[8],p[4],c[9]);   
	FA f7(sum[5],pp[14],c[9],p[5],c[10]);  
	FA f8(c[7],pp[15],c[10],p[6],c[11]);
	buf(p[7],c[11]);
	
endmodule
