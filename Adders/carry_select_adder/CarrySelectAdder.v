`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module CarrySelectAdder(a,b,cin,s,cout);
	input [3:0] a,b;
	input cin;
	output [3:0] s;
	output cout;
	wire [7:0] c;
	wire [7:0] int_sum;
	
	FA f1 (a[0], b[0], 1'b0, int_sum[0], c[0]);
	FA f2 (a[1], b[1], c[0], int_sum[1], c[1]);
	FA f3 (a[2], b[2], c[1], int_sum[2], c[2]);
	FA f4 (a[3], b[3], c[2], int_sum[3], c[3]);
	
	FA f5 (a[0], b[0], 1'b1, int_sum[4], c[4]);
	FA f6 (a[1], b[1], c[4], int_sum[5], c[5]);
	FA f7 (a[2], b[2], c[5], int_sum[6], c[6]);
	FA f8 (a[3], b[3], c[6], int_sum[7], c[7]);
	
	MUX m1 (int_sum[0], int_sum[4], cin, s[0]);
	MUX m2 (int_sum[1], int_sum[5], cin, s[1]);
	MUX m3 (int_sum[2], int_sum[6], cin, s[2]);
	MUX m4 (int_sum[3], int_sum[7], cin, s[3]);
	
	MUX m5 (c[3],c[7],cin,cout);


endmodule
