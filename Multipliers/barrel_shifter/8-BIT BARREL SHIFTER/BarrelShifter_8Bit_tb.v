`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA
// Design Name:   BarrelShifter_8bit

module BarrelShifter_8Bit_tb;

	// Inputs
	reg [7:0] a;
	reg [2:0] s;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	BarrelShifter_8bit uut (
		.a(a), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		#100; a = 8'b10101010; s = 3'b001;
		#100; a = 8'b10101110; s = 3'b010;
		#100; a = 8'b11101011; s = 3'b011;
		#100; a = 8'b10100010; s = 3'b100;
		#100; a = 8'b10111110; s = 3'b101;
		#100; a = 8'b00101000; s = 3'b110;
		#100; a = 8'b00010100; s = 3'b111;
		#100; $finish;
        
		// Add stimulus here

	end
      
endmodule

