module oled_spi_byte #(parameter integer CLK_DIV=4)(input wire clk,reset_n,input wire start,input wire dc_in,input wire [7:0] data_in,output reg busy,output reg sclk,output reg mosi,output reg cs_n,output reg dc,output reg done);
localparam integer CW=(CLK_DIV<=1)?1:$clog2(CLK_DIV); reg [CW-1:0] divcnt; reg [2:0] bitcnt; reg [7:0] shift;
always @(posedge clk or negedge reset_n) begin
 if(!reset_n) begin busy<=0;sclk<=0;mosi<=0;cs_n<=1;dc<=0;done<=0;divcnt<=0;bitcnt<=0;shift<=0;end
 else begin done<=0;
 if(!busy) begin sclk<=0;cs_n<=1;if(start) begin busy<=1;cs_n<=0;dc<=dc_in;shift<=data_in;bitcnt<=7;divcnt<=0;mosi<=data_in[7];end end
 else if(divcnt==CLK_DIV-1) begin divcnt<=0;sclk<=~sclk;if(!sclk) begin if(bitcnt==0) begin busy<=0;cs_n<=1;done<=1;sclk<=0;end else begin bitcnt<=bitcnt-1'b1;shift<={shift[6:0],1'b0};mosi<=shift[6];end end end else divcnt<=divcnt+1'b1;
 end end
endmodule
