module NonRestoringDivisionAlgo(Q,M,Quot,Rem);
	input [3:0] Q;
	input [4:0] M; //As the no.of bits = 4
	output reg [3:0] Quot;
	output reg [4:0] Rem; //Remainder
	reg [4:0] A;
	reg [8:0] AQ;
	integer ii;
	
	always@(Q,M)
	begin
		A = 0;
		AQ = {A,Q};
		
		for(ii = 4; ii > 0; ii = ii - 1) begin
			if (AQ[8] == 0) begin
				AQ = AQ << 1;
				AQ[8:4] = AQ[8:4] - M;
			end
			else if (AQ[8] == 1) begin
				AQ = AQ << 1;
				AQ[8:4] = AQ[8:4] + M;
			end
			
			if (AQ[8] == 0)
				AQ[0] = 1;
			else if (AQ[8] == 1)
				AQ[0] = 0;
		end
		
		if (AQ[8] == 1)
			AQ[8:4] = AQ[8:4] + M;
			
		Quot = AQ[3:0];
		Rem = AQ[8:4];
	end
endmodule
