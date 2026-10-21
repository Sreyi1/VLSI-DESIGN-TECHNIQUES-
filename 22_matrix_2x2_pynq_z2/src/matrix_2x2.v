module matrix_2x2(input wire clk,input wire [31:0] A,B,output reg [67:0] Res);
reg [7:0] a00,a01,a10,a11,b00,b01,b10,b11;
reg [16:0] r00,r01,r10,r11;
always @(posedge clk) begin
 {a00,a01,a10,a11} <= A;
 {b00,b01,b10,b11} <= B;
 r00 <= ({8'b0,a00} * {8'b0,b00}) + ({8'b0,a01} * {8'b0,b10});
 r01 <= ({8'b0,a00} * {8'b0,b01}) + ({8'b0,a01} * {8'b0,b11});
 r10 <= ({8'b0,a10} * {8'b0,b00}) + ({8'b0,a11} * {8'b0,b10});
 r11 <= ({8'b0,a10} * {8'b0,b01}) + ({8'b0,a11} * {8'b0,b11});
 Res <= {r00,r01,r10,r11};
end
endmodule
