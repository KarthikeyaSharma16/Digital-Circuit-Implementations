`timescale 1ns / 1ps

// Engineer: KARTHIKEYA SHARMA

module Decoder_2_4_TB;
	reg [1:0] e_tb;
	reg en_tb;
	wire [3:0] d_tb;
	Decoder_2_4 uut (.e(e_tb), .en(en_tb),.d(d_tb));
	initial
	begin
		$monitor("At time ",$time,", e_tb = %b, en_tb = %b, d_tb = %b",e_tb,en_tb,d_tb);
		e_tb = 2'b00; en_tb = 1;
		#50 e_tb = 2'b01; en_tb = 1;
		#50 e_tb = 2'b10; en_tb = 1;
		#50 e_tb = 2'b11; en_tb = 1;
		#50 e_tb = 2'b11; en_tb = 0;
		#50 $finish;
	end
endmodule

