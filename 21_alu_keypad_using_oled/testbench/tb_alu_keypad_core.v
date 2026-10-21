`timescale 1ns/1ps
module tb_alu_keypad_core;reg clk=0,reset_n=0,key_valid=0;reg [3:0] key=0;wire [7:0] result;wire result_valid;wire [1:0] entry_state;alu_keypad_core dut(clk,reset_n,key_valid,key,result,result_valid,entry_state);always #5 clk=~clk;
task press(input [3:0] k);begin @(negedge clk);key=k;key_valid=1;@(negedge clk);key_valid=0;end endtask
initial begin #12;reset_n=1;press(4'd8);press(4'hA);press(4'd3);#1;if(result!==11)$fatal(1,"8+3 expected 11 got %d",result);$display("PASS");$finish;end endmodule
