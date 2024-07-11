`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module FS_TB;

	// Inputs
	reg a;
	reg b;
	reg bin;

	// Outputs
	wire d;
	wire bout;

	// Instantiate the Unit Under Test (UUT)
	FS uut (
		.a(a), 
		.b(b), 
		.bin(bin), 
		.d(d), 
		.bout(bout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		bin = 0;

		// Wait 100 ns for global reset to finish
		#50; a = 0; b = 0; bin = 1;
		#50; a = 0; b = 1; bin = 0;
		#50; a = 0; b = 1; bin = 1;
		#50; a = 1; b = 0; bin = 0;
		#50; a = 1; b = 0; bin = 1;
		#50; a = 1; b = 1; bin = 0;
		#50; a = 1; b = 1; bin = 1;
      #50; $finish;  
		// Add stimulus here

	end
      
endmodule

