module half_subtractor(input wire a,b, output wire diff,borrow);
assign diff=a^b; assign borrow=(~a)&b;
endmodule
module full_subtractor_two_half_subtractors(input wire a,b,bin, output wire diff,bout);
wire d1,b1,b2;
half_subtractor hs1(.a(a),.b(b),.diff(d1),.borrow(b1));
half_subtractor hs2(.a(d1),.b(bin),.diff(diff),.borrow(b2));
assign bout=b1|b2;
endmodule
