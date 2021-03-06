`timescale 1ns / 1ps

module grayTb;

	// Inputs
	reg J;
	reg K;
	reg Clock;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	grayCounter uut (
		.J(J), 
		.K(K), 
		.Clock(Clock), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		J = 1;
		K = 1;
		Clock = 0;
		#100;
	end
	always #30 Clock = ~Clock;	
      
endmodule

