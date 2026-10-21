`timescale 1ns/1ps
module tb_t_flip_flop;reg t=0,clk=0,reset=0;wire q;t_flip_flop dut(t,clk,reset,q);always #5 clk=~clk;
initial begin reset=1;#2;reset=0;t=1;@(posedge clk);#1;if(q!==1)$fatal;t=0;@(posedge clk);#1;if(q!==1)$fatal;t=1;@(posedge clk);#1;if(q!==0)$fatal;$display("PASS");$finish;end endmodule
