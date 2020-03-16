`timescale 1ns / 1ps

module JkFlipFlop(J, K, Clock, Q);
	input J, K, Clock;
	output reg Q;
	
	initial Q = 1;
	always @ (negedge Clock)
		Q = (J & ~Q) | (~K & Q);

endmodule

module ripple_counter(J, K, Clock, Q);
	input J,K,Clock;
	output [3:0] Q;
	wire t0, t1, t2, t3;
	JkFlipFlop JK1(J,K,Clock, t0);
	JkFlipFlop JK2(J,K,t0, t1);
	JkFlipFlop JK3(J,K,t1, t2);
	JkFlipFlop JK4(J,K,t2, t3);
	assign Q[0] = t0;
	assign Q[1] = t1;
	assign Q[2] = t2;
	assign Q[3] = t3;
	
endmodule