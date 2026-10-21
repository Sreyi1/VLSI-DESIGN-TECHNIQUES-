`timescale 1ns/1ps
module tb_full_subtractor_two_half_subtractors;
reg a,b,bin; wire diff,bout; integer i; reg [1:0] expected;
full_subtractor_two_half_subtractors dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
initial begin for(i=0;i<8;i=i+1) begin {a,b,bin}=i; #10; expected=a-b-bin;
if({bout,diff} !== expected) $fatal(1,"mismatch"); end $display("PASS"); $finish; end
endmodule
