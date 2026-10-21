`timescale 1ns/1ps
module tb_seven_segment; reg [3:0] hex; wire [6:0] seg; integer i;
seven_segment dut(hex,seg); initial begin for(i=0;i<16;i=i+1) begin hex=i; #5; if(^seg===1'bx)$fatal; end $display("PASS: all hex codes decoded"); $finish; end endmodule
