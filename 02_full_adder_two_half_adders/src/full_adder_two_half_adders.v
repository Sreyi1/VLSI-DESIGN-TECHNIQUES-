module half_adder(input wire a,b, output wire sum,carry);
assign sum=a^b; assign carry=a&b;
endmodule
module full_adder_two_half_adders(input wire a,b,cin, output wire sum,cout);
wire s1,c1,c2;
half_adder ha1(.a(a),.b(b),.sum(s1),.carry(c1));
half_adder ha2(.a(s1),.b(cin),.sum(sum),.carry(c2));
assign cout=c1|c2;
endmodule
