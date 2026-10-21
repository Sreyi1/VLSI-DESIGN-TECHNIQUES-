`timescale 1ns/1ps
module tb_full_adder_display; reg [3:0] a,b;reg cin;wire [6:0] seg;wire [7:0] an;wire dp,carry_out;
full_adder_display dut(a,b,cin,seg,an,dp,carry_out);
initial begin a=4'd9;b=4'd7;cin=0;#10;if(!carry_out || seg!==7'b1000000)$fatal(1,"expected sum 16 => low hex digit 0 and carry");$display("PASS");$finish;end endmodule
