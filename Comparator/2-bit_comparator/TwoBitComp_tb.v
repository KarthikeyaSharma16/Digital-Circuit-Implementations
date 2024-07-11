`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module TwoBitComp_tb;

	// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire L;
	wire E;
	wire M;

	// Instantiate the Unit Under Test (UUT)
	TwoBitComp uut (
		.a(a), 
		.b(b), 
		.L(L), 
		.E(E), 
		.M(M)
	);

	initial begin
		// Initialize Inputs
		a = 0; b = 0;

		// Wait 100 ns for global reset to finish
		#50; a = 2'b00; b = 2'b01;
		#50; a = 2'b00; b = 2'b10;
		#50; a = 2'b00; b = 2'b11;
		
		#50; a = 2'b01; b = 2'b00;
		#50; a = 2'b01; b = 2'b01;
		#50; a = 2'b01; b = 2'b10;
		#50; a = 2'b01; b = 2'b11;
		
		#50; a = 2'b10; b = 2'b00;
		#50; a = 2'b10; b = 2'b01;
		#50; a = 2'b10; b = 2'b10;		
		#50; a = 2'b10; b = 2'b11;
		
		#50; a = 2'b11; b = 2'b00;
		#50; a = 2'b11; b = 2'b01;
		#50; a = 2'b11; b = 2'b10;
		#50; a = 2'b11; b = 2'b11;
		
		#50; $finish;
        
		// Add stimulus here

	end
      
endmodule

