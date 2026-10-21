module up_counter #(parameter integer CLK_HZ=100_000_000, parameter integer TICK_HZ=1)(input wire clk,reset,output reg [3:0] count);
localparam integer DIVISOR = CLK_HZ/(2*TICK_HZ);
localparam integer CW = (DIVISOR<=1)?1:$clog2(DIVISOR);
reg [CW-1:0] divider;
wire tick = (divider == DIVISOR-1);
always @(posedge clk or posedge reset) begin
 if(reset) begin divider<=0; count<=0; end
 else if(tick) begin divider<=0; count<=count+1'b1; end
 else divider<=divider+1'b1;
end
endmodule
