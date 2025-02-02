`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module FA_TB;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	FA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100; a = 0; b = 0; cin = 1;
		#100; a = 0; b = 1; cin = 0;
		#100; a = 0; b = 1; cin = 1;
		#100; a = 1; b = 0; cin = 0;
		#100; a = 1; b = 0; cin = 1;
		#100; a = 1; b = 1; cin = 1;
		#100; a = 1; b = 1; cin = 1;
      #100; $finish;  
		// Add stimulus here

	end
      
endmodule

