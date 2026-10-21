`timescale 1ns/1ps
module tb_jk_flip_flop;reg j=0,k=0,clk=0,reset=0;wire q;jk_flip_flop dut(j,k,clk,reset,q);always #5 clk=~clk;
initial begin reset=1;#2;reset=0;j=1;k=0;@(posedge clk);#1;if(q!==1)$fatal;j=0;k=1;@(posedge clk);#1;if(q!==0)$fatal;j=1;k=1;@(posedge clk);#1;if(q!==1)$fatal;$display("PASS");$finish;end endmodule
