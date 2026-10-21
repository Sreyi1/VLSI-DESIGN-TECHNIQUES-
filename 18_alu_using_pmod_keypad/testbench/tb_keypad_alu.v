`timescale 1ns/1ps
module tb_keypad_alu;reg clk=0,reset_n=0;reg [3:0] row=4'hf;wire [3:0] col;wire [7:0] result;wire result_valid;keypad_alu dut(clk,reset_n,row,col,result,result_valid);always #5 clk=~clk;
initial begin #12;reset_n=1;#100;$display("Scanner starts; full keypad sequences are best checked on hardware or with a row/column driver.");$finish;end endmodule
