module sr_flip_flop(input wire s,r,clk,reset,output reg q);
always @(posedge clk or posedge reset) begin
 if(reset) q<=1'b0; else case({s,r})
 2'b00:q<=q; 2'b01:q<=1'b0; 2'b10:q<=1'b1; 2'b11:q<=1'bx;
 endcase
end
endmodule
