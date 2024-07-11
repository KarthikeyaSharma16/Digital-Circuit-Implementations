`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module FourBitComp_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire l;
	wire e;
	wire m;

	// Instantiate the Unit Under Test (UUT)
	FourBitComp uut (
		.a(a), 
		.b(b), 
		.l(l), 
		.e(e), 
		.m(m)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#50; a=4'b0000; b = 4'b0001;
		#50; a=4'b0011; b = 4'b0010;
      #50; a=4'b0110; b = 4'b0011;
		#50; a=4'b0010; b = 4'b0100;
      #50; a=4'b1100; b = 4'b0101;
		#50; a=4'b0101; b = 4'b0110;
      #50; a=4'b0100; b = 4'b0111;
		#50; a=4'b0000; b = 4'b1000;
      #50; a=4'b1010; b = 4'b1011;
		#50; a=4'b1111; b = 4'b0111;
      #50; a=4'b1100; b = 4'b1101;
		#50; a=4'b1110; b = 4'b0101;
		#50; $finish;
        
		// Add stimulus here

	end
      
endmodule

