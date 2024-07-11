`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module CSA_TestBench;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	CSA uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

	initial begin
	$dumpfile("power_test.vcd");
	$dumpvars();
		
		$monitor ($time, "a = %b, b = %b, cin = %b, s = %b, cout = %b",a,b,cin,s,cout);
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#50; a = 4'b0011; b = 4'b0100; cin = 0;
		#50; a = 4'b0011; b = 4'b0101; cin = 0;
		#50; a = 4'b1001; b = 4'b0110; cin = 0;
		#50; a = 4'b0011; b = 4'b0001; cin = 0;
		#50; a = 4'b1011; b = 4'b1000; cin = 0;
		#50; a = 4'b0111; b = 4'b1011; cin = 0;
		#50; a = 4'b0011; b = 4'b0101; cin = 0;
		#50; a = 4'b0010; b = 4'b0100; cin = 0;
		#50; a = 4'b1001; b = 4'b0110; cin = 0;
		#50; a = 4'b1111; b = 4'b1111; cin = 0;
		#50; a = 4'b0100; b = 4'b1010; cin = 0;
      #50 $finish; 
		// Add stimulus here

	end
      
endmodule

