`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module CSA(a,b,cin,s,cout);
	input [3:0] a,b;
	input cin;
	output [3:0] s;
	output cout;
	
	wire [4:1] c; //carry out of the full adder
	wire [3:0] p; //carry propagate
	wire select; //multiplexer select
	
	xor (p[0], a[0], b[0]);
	xor (p[1], a[1], b[1]);
	xor (p[2], a[2], b[2]);
	xor (p[3], a[3], b[3]);
	and (select,p[0],p[1],p[2],p[3]);
	
	FA f1 (a[0],b[0],cin,s[0],c[1]);
	FA f2 (a[1],b[1],c[1],s[1],c[2]);
	FA f3 (a[2],b[2],c[2],s[2],c[3]);
	FA f4 (a[3],b[3],c[3],s[3],c[4]);
	
	MUX m1(c[4],cin,select,cout);
	
endmodule
