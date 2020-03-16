`timescale 1ns / 1ps
module d(D, Clck, Q);
	input D;
	input Clck; 
	output Q;
	reg Q;
	
	always @(posedge Clck)
		Q = D;
endmodule
