`timescale 1ns/1ps
module tb_d_flip_flop;reg d=0,clk=0,reset=0;wire q;d_flip_flop dut(d,clk,reset,q);always #5 clk=~clk;
initial begin reset=1;#2;if(q!==0)$fatal;reset=0;d=1;@(posedge clk);#1;if(q!==1)$fatal;d=0;@(posedge clk);#1;if(q!==0)$fatal;$display("PASS");$finish;end endmodule
