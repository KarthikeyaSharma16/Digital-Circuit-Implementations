module NonRestoringDivisionAlgoTestBench;
	// Inputs
	reg [3:0] Q;
	reg [4:0] M;
	// Outputs
	wire [3:0] Quot;
	wire [4:0] Rem;
	// Instantiate the Unit Under Test (UUT)
	NonRestoringDivisionAlgo uut (
		.Q(Q), 
		.M(M), 
		.Quot(Quot), 
		.Rem(Rem)
	);
	initial begin
	$monitor($time, "Dividend = %d, Divisor = %d, Quotient = %d, Remainder = %d",Q,M,Quot,Rem);
		// Initialize Inputs
		Q = 4'b0110;
		M = 5'b0010;
		// Wait 100 ns for global reset to finish
		#50; Q = 4'b1011; M = 5'b0010;
		#50; Q = 4'b1110; M = 5'b0100;
		#50; Q = 4'b1000; M = 5'b1000;
		#50; Q = 4'b1011; M = 5'b0010;
		#50; Q = 4'b1101; M = 5'b0110;
		#50; Q = 4'b1111; M = 5'b0101;
		#50; Q = 4'b0110; M = 5'b0011;
		#50; Q = 4'b0111; M = 5'b0001;
		#50; Q = 4'b1001; M = 5'b0111;
		#50; Q = 4'b1111; M = 5'b1101;
		#50; Q = 4'b1010; M = 5'b0000;
		#50; $finish;
	end
endmodule

