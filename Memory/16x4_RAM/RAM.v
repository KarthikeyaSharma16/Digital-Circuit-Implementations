`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module RAM(Data,RD,WR,Address,Output);
	input[3:0] Data;
	input RD,WR;
	input[3:0] Address;
	output reg[3:0] Output;
	reg[3:0]RAM_16x4[15:0];
	reg[3:0] Temp;
	
	always@(Address)
		begin
			if(WR)
				begin
					RAM_16x4[Address]=Data;
					Temp = RAM_16x4[Address];
				end
			if(RD)
				begin
					Output = RAM_16x4[Address];
				end
		end
endmodule
