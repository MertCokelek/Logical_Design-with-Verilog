`timescale 1ns / 1ps
module jk(J, K, Clck, Q);
	input J, K, Clck;
	output Q;
	reg Q;
	
	always @ (posedge Clck)
		Q = (J & ~Q) | (~K & Q);
endmodule
