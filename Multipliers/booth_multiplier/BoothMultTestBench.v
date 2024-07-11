`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module BoothMultTestBench;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	BoothMult uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		
		$monitor($time,"a = %b, b = %b, p = %b",a,b,p);
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#50 a = 4'b1011; b = 4'b0110;
		#50 a = 4'b1011; b = 4'b0111;
		#50 a = 4'b1100; b = 4'b0111;
		#50 a = 4'b0100; b = 4'b1010;
		#50 a = 4'b1000; b = 4'b1000;
		#50 a = 4'b1011; b = 4'b1110;
		#50 a = 4'b0000; b = 4'b0010;
		#50 a = 4'b0001; b = 4'b0001;
		#50 a = 4'b0101; b = 4'b0101;
		#50 a = 4'b1111; b = 4'b0011;
		#50 $finish;
        
		// Add stimulus here

	end
      
endmodule

