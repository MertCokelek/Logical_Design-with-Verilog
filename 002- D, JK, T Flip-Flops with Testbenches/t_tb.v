`timescale 1ns / 1ps
module t_tb;

	// Inputs
	reg T;
	reg Clck;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	t uut (
		.T(T), 
		.Clck(Clck), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		T = 0;
		Clck = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #3 Clck = ~Clck;
	always #5 T = ~T;
	initial #100 $stop;      
endmodule

