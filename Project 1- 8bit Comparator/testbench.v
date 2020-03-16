`timescale 1ns / 1ps

module testbench;
	//Inputs
	reg [7:0] ain;
	reg [7:0] bin;
	reg cin;

	// Outputs
	wire leq;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	eigthBitComparator uut (
		.leq(leq),
		.zero(zero),
		.a(ain), 
		.b(bin), 
		.cin(cin) 
	);	
	initial begin
		// ain > bin
		// ain = 144, bin = 24, 
		ain = 8'b10010000; bin = 8'b00011000; cin = 1;
		#100;
		// ain = 36, bin = 12; 
		ain = 8'b00100100; bin = 8'b00001100; cin = 1;
		// ain < bin
		ain = 8'b10100011; bin = 8'b11101101; cin = 1;
		#100;
		ain = 8'b00110001; bin = 8'b11100101; cin = 1;
		#100;
		ain = 8'b10111110; bin = 8'b11110011; cin = 1;
		#100;
		ain = 8'b10000111; bin = 8'b11011010; cin = 1;
		#100;
		ain = 8'b10111111; bin = 8'b11000000; cin = 1;
		#100;

		// ain = bin
		ain = 8'b10100011; bin = 8'b10100011; cin = 1;
		#100;
		ain = 8'b11110111; bin = 8'b11110111; cin = 1;
		#100;
		ain = 8'b10000110; bin = 8'b10000110; cin = 1;
		#100;
		ain = 8'b11001100; bin = 8'b11001100; cin = 1;
		#100;
	end
      
endmodule
