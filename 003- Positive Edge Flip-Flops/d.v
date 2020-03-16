`timescale 1ns / 1ps

module DFlipFlop(D, Q, Clk);
    input Clk;
    input D;
    output reg Q;
	 
	 always @ (posedge Clk)
		begin
			Q = D;
		end 
endmodule

module sequenceDetector(X, Clk, Y);
	input X;
	input Clk;
	output Y;
	
	wire cable1, cable2, cable3;
	
	DFlipFlop d1(X,cable1,Clk); 
	
	assign cable2 = cable1 && ~X;
	
	DFlipFlop d2(cable2,cable3,Clk
	);
	
	assign Y = cable3 && ~cable1 && ~X;
	
	endmodule