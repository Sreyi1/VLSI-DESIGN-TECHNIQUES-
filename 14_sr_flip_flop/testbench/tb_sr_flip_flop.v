`timescale 1ns/1ps
module tb_sr_flip_flop;reg s=0,r=0,clk=0,reset=0;wire q;sr_flip_flop dut(s,r,clk,reset,q);always #5 clk=~clk;
initial begin reset=1;#2;reset=0;s=1;@(posedge clk);#1;if(q!==1)$fatal;s=0;r=1;@(posedge clk);#1;if(q!==0)$fatal;s=0;r=0;@(posedge clk);#1;if(q!==0)$fatal;$display("PASS");$finish;end endmodule
