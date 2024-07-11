`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module ROM_Tb;

	// Inputs
	reg [3:0] address;
	reg rd;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	ROM uut (
		.address(address), 
		.rd(rd), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		address = 0;
		rd = 1;

		// Wait 100 ns for global reset to finish
		#50; address = 4'b0001; rd = 1;
		#50; address = 4'b0010; rd = 1;
		#50; address = 4'b0011; rd = 1;
		#50; address = 4'b0100; rd = 1;
		#50; address = 4'b0101; rd = 1;
		#50; address = 4'b0110; rd = 1;
		#50; address = 4'b0111; rd = 1;
		#50; address = 4'b1000; rd = 1;
		#50; address = 4'b1001; rd = 1;
		#50; address = 4'b1010; rd = 1;
		#50; address = 4'b1011; rd = 1;
		#50; address = 4'b1100; rd = 1;
		#50; address = 4'b1101; rd = 1;
		#50; address = 4'b1110; rd = 1;
		#50; address = 4'b1111; rd = 1;
      #50; address = 4'b0110; rd = 0;
		#50; $finish;
		// Add stimulus here

	end
      
endmodule

