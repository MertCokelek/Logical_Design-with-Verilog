`timescale 1ns / 1ps
module jk_tb;

	// Inputs
	reg J;
	reg K;
	reg Clck;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	jk uut (
		.J(J), 
		.K(K), 
		.Clck(Clck), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		Clck = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #3 J = ~J;
	always #5 K = ~K;
	always #7 Clck = ~Clck;
	
	initial #100 $stop;
      
endmodule

