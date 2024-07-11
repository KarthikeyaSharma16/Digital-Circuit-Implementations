`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module JKFF_Tb;

	// Inputs
	reg j;
	reg k;
	reg clk;
	reg rst;

	// Outputs
	wire q;
	wire qb;

	// Instantiate the Unit Under Test (UUT)
	JKFF uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.rst(rst), 
		.q(q), 
		.qb(qb)
	);

	initial begin
		clk = 0;
		forever #50 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		j = 1;
		k = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100; j = 0; k = 1;
		#100; j = 0; k = 0;
		#100; j = 1; k = 1;
		#300; j = 1; k = 0; rst = 0;
		#100; $finish;
        
		// Add stimulus here

	end
      
endmodule

