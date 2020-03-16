`timescale 1ns / 1ps
module t(T, Clck, Q);
	input T;
	input Clck;
	output Q;
	reg Q;
	
	initial Q = 0;
	always@(posedge Clck)
		Q = Q ^ T;
endmodule
