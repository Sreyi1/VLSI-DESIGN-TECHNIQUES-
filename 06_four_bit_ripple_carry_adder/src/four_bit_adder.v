module full_adder_1bit(input wire a,b,cin,output wire sum,cout);
assign sum=a^b^cin; assign cout=(a&b)|(a&cin)|(b&cin);
endmodule
module four_bit_adder(input wire [3:0] a,b,input wire cin,output wire [3:0] sum,output wire cout);
wire c1,c2,c3;
full_adder_1bit f0(a[0],b[0],cin,sum[0],c1);
full_adder_1bit f1(a[1],b[1],c1,sum[1],c2);
full_adder_1bit f2(a[2],b[2],c2,sum[2],c3);
full_adder_1bit f3(a[3],b[3],c3,sum[3],cout);
endmodule
