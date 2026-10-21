`timescale 1ns/1ps
module tb_alu_display;reg [3:0] a,b;reg [1:0] sel;wire [7:0] result;wire [6:0] seg;wire [7:0] an;wire dp;
alu_display dut(a,b,sel,result,seg,an,dp);initial begin a=5;b=3;sel=0;#10;if(result!=8)$fatal;sel=2;#10;if(result!=15)$fatal;$display("PASS");$finish;end endmodule
