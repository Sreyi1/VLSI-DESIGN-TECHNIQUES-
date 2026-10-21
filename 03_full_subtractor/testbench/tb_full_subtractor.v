`timescale 1ns/1ps
module tb_full_subtractor;
reg a,b,bin; wire diff,bout; integer i; reg [1:0] expected;
full_subtractor dut(.a(a),.b(b),.bin(bin),.diff(diff),.bout(bout));
initial begin for(i=0;i<8;i=i+1) begin {a,b,bin}=i; #10;
expected = a - b - bin;
if({bout,diff} !== expected) $fatal(1,"mismatch A=%b B=%b Bin=%b",a,b,bin); end
$display("PASS"); $finish; end
endmodule
