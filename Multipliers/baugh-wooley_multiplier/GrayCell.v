module GrayCell(a,b,si,ci,so,co);
	input a,b,si,ci;
	output so,co;
	wire x;
	nand (x,a,b);
	FA f1(x,si,ci,so,co);
endmodule