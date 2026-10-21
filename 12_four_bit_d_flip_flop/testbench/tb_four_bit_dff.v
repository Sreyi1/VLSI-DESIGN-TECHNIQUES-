`timescale 1ns/1ps
module tb_four_bit_dff;reg [3:0] d;reg clk=0,reset=0;wire [3:0] q;four_bit_dff dut(d,clk,reset,q);always #5 clk=~clk;
initial begin reset=1;#2;reset=0;d=4'hA;@(posedge clk);#1;if(q!==4'hA)$fatal;d=4'h5;@(posedge clk);#1;if(q!==4'h5)$fatal;$display("PASS");$finish;end endmodule
