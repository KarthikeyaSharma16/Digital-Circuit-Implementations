`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module CarrySaveAdder(a,b,s,cout);
	input [3:0] a,b;
	output [4:0] s;
	output cout;
	wire [3:1] int_s;
	wire [3:0] int_c;
	wire [3:1] c;
	
	HA h1 (a[0],b[0],s[0],int_c[0]);
	HA h2 (a[1],b[1],int_s[1],int_c[1]);
	HA h3 (a[2],b[2],int_s[2],int_c[2]);
	HA h4 (a[3],b[3],int_s[3],int_c[3]);
	
	HA h5 (int_s[1],int_c[0],s[1],c[1]);
	FA f1 (int_s[2],int_c[1],c[1],s[2],c[2]);
	FA f2 (int_s[3],int_c[2],c[2],s[3],c[3]);
	HA h6 (c[3],int_c[3],s[4],cout);

endmodule
