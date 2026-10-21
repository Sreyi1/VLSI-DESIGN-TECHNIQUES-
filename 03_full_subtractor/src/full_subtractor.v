module full_subtractor(input wire a,b,bin, output wire diff,bout);
assign diff = a ^ b ^ bin;
assign bout = (~a & b) | (~a & bin) | (b & bin);
endmodule
