`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA
// Design Name: BarrelShifter


module BarrelShifterTestBench;

	// Inputs
	reg [3:0] A;
	reg [1:0] s;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	BarrelShifter uut (
		.A(A), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100; A = 4'b1010; s = 2'b01;
		#100; A = 4'b1110; s = 2'b10;
		#100; A = 4'b1000; s = 2'b11;
		#100; A = 4'b0110; s = 2'b00;
		#100; A = 4'b0111; s = 2'b01;
		#100; A = 4'b0001; s = 2'b10;
		#100; A = 4'b0101; s = 2'b11;
      #100; $finish;
		
		// Add stimulus here

	end
      
endmodule

