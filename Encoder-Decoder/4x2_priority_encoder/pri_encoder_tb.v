`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module pri_encoder_tb;

	// Inputs
	reg [3:0] d;

	// Outputs
	wire [1:0] y;
	wire v;

	// Instantiate the Unit Under Test (UUT)
	pri_encoder uut (
		.d(d), 
		.y(y), 
		.v(v)
	);

	initial begin
		// Initialize Inputs
		d = 0;  
		
		// Wait 100 ns for global reset to finish
		#100; d = 4'b0001;
		#100; d = 4'b001x;
		#100; d = 4'b01xx;
		#100; d = 4'b1xxx;
		#100; $finish;
        
		// Add stimulus here

	end
      
endmodule

