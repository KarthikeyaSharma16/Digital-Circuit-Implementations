`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module CarrySaveAdder_Tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [4:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CarrySaveAdder uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100; a = 4'b1010; b = 4'b1011;
		#100; a = 4'b1110; b = 4'b1100;
		#100; a = 4'b1111; b = 4'b1101;
		#100; a = 4'b1000; b = 4'b1001;
		#100; a = 4'b0011; b = 4'b1110;
		#100; a = 4'b0010; b = 4'b0011;
		#100; a = 4'b0001; b = 4'b1110;
		#100; a = 4'b0000; b = 4'b1111;
		#100; a = 4'b1111; b = 4'b1111;
		#100; $finish;
        
		// Add stimulus here

	end
      
endmodule

