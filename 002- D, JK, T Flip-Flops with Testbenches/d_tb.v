`timescale 1ns / 1ps
module d_tb;

	// Inputs
	reg D;
	reg Clck;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	d uut (
		.D(D), 
		.Clck(Clck), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		Clck = 0;

		// Wait 100 ns for global reset to finish
		#100;
    
		// Add stimulus here

	end
	always #3 Clck = ~Clck;
	always #5 D = ~D;
	initial #100 $stop;

      
endmodule

