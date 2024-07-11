module RAM_Test_v;

// Inputs
reg [3:0] Data; reg RD;
reg WR;
reg [3:0] Address;

// Outputs
wire [3:0] Output;

// Instantiate the Unit Under Test (UUT)
RAM uut 
(.Data(Data),.RD(RD),.WR(WR),.Address(Address),.Output(Output));
initial begin

Data = 4'b0000; RD = 0; WR = 1; Address = 4'b0000; 
#30; Data = 4'b0001; RD = 0; WR = 1; Address = 4'b0001; 
#30; Data = 4'b0010; RD = 0; WR = 1; Address = 4'b0010; 
#30; Data = 4'b0011; RD = 0; WR = 1; Address = 4'b0011; 
#30; Data = 4'b0100; RD = 0; WR = 1; Address = 4'b0100; 
#30; Data = 4'b0101; RD = 0; WR = 1; Address = 4'b0101; 
#30; Data = 4'b0110; RD = 0; WR = 1; Address = 4'b0110; 
#30; Data = 4'b0111; RD = 0; WR = 1; Address = 4'b0111; 
#30; Data = 4'b1000;RD = 0; WR = 1; Address = 4'b1000; 
#30; Data = 4'b1001; RD = 0; WR = 1; Address = 4'b1001; 
#30; Data = 4'b1010; RD = 0; WR = 1; Address = 4'b1010; 
#30; Data = 4'b1011; RD = 0; WR = 1; Address = 4'b1011; 
#30; Data = 4'b1100; RD = 0; WR = 1; Address = 4'b1100; 
#30; Data = 4'b1101; RD = 0; WR = 1; Address = 4'b1101; 
#30; Data = 4'b1110; RD = 0; WR = 1; Address = 4'b1110; 
#30; Data = 4'b1111; RD = 0; WR = 1; Address = 4'b1111; 

#30; RD = 1; WR = 0; Address = 4'b0000; 
#30; RD = 1; WR = 0; Address = 4'b0001; 
#30; RD = 1; WR = 0; Address = 4'b0010; 
#30; RD = 1; WR = 0; Address = 4'b0011; 
#30; RD = 1; WR = 0; Address = 4'b0100; 
#30; RD = 1; WR = 0; Address = 4'b0101; 
#30; RD = 1; WR = 0; Address = 4'b0110; 
#30; RD = 1; WR = 0; Address = 4'b0111; 
#30; RD = 1; WR = 0; Address = 4'b1000; 
#30; RD = 1; WR = 0; Address = 4'b1001; 
#30; RD = 1; WR = 0; Address = 4'b1010; 
#30; RD = 1; WR = 0; Address = 4'b1011; 
#30; RD = 1; WR = 0; Address = 4'b1100; 
#30; RD = 1; WR = 0; Address = 4'b1101; 
#30; RD = 1; WR = 0; Address = 4'b1110; 
#30; RD = 1; WR = 0; Address = 4'b1111; 

end
endmodule







