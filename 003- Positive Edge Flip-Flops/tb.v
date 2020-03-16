`timescale 1ns / 1ps
module tb;
    reg Clk;
    reg X;
    wire Y;
    sequenceDetector uut (
        .Y(Y), 
        .Clk(Clk), 
        .X(X)
    );
    initial begin
        Clk = 0;
        X=0;
        #100;
        X=1;
        #100;
        X=0;
        #100;
        X=0;
        #100;
        X=1;
        #100;
		  X=1;
		  #100;
		  X=0;
		  #100;
		  X=0;
		  #100;
		  X=1;
		  #100;
    end
   always#100 Clk=~Clk;
endmodule