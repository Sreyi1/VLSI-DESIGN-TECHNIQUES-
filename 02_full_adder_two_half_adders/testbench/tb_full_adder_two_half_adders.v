`timescale 1ns/1ps
module tb_full_adder_two_half_adders;
reg a,b,cin; wire sum,cout; integer i; reg [1:0] expected;
full_adder_two_half_adders dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin for(i=0;i<8;i=i+1) begin {a,b,cin}=i; #10;
expected = a + b + cin; if({cout,sum} !== expected) $fatal(1,"mismatch"); end
$display("PASS"); $finish; end
endmodule
