`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA 

module CLATestBench;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CLA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
	
$dumpfile("power_test.vcd");
$dumpvars();
	
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#50; a = 4'b0010; b = 4'b0111; cin = 0;
		#50; a = 4'b1010; b = 4'b1110; cin = 0;
		#50; a = 4'b1110; b = 4'b1011; cin = 0;
		#50; a = 4'b0110; b = 4'b0101; cin = 0;
		#50; a = 4'b0101; b = 4'b0000; cin = 0;
		#50; a = 4'b0011; b = 4'b0001; cin = 0;
		#50; a = 4'b0111; b = 4'b0101; cin = 0;
		#50; a = 4'b1011; b = 4'b1101; cin = 0;
		#50; a = 4'b0011; b = 4'b1111; cin = 0;
		#50; a = 4'b0110; b = 4'b1001; cin = 0;
                #50; a = 4'b0100; b = 4'b0011; cin = 0;
		#50; a = 4'b1110; b = 4'b1101; cin = 0;
		#50; a = 4'b0010; b = 4'b1001; cin = 0;
		#50; a = 4'b1110; b = 4'b0110; cin = 0;
		#50; a = 4'b0010; b = 4'b1111; cin = 0;
		#50; a = 4'b0111; b = 4'b0101; cin = 0;
		#50; a = 4'b1011; b = 4'b0100; cin = 1;
		#50; a = 4'b0101; b = 4'b1101; cin = 1;
		#50; $finish;
		// Add stimulus here

	end
      
endmodule

