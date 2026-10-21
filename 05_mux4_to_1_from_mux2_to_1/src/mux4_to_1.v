module mux2_to_1(input wire d0,d1,s, output wire y);
assign y=s?d1:d0;
endmodule
module mux4_to_1(input wire d0,d1,d2,d3,input wire [1:0] sel,output wire y);
wire x0,x1;
mux2_to_1 m0(.d0(d0),.d1(d1),.s(sel[0]),.y(x0));
mux2_to_1 m1(.d0(d2),.d1(d3),.s(sel[0]),.y(x1));
mux2_to_1 m2(.d0(x0),.d1(x1),.s(sel[1]),.y(y));
endmodule
