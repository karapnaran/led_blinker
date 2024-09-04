module top (clk125_p_i, clk125_n_i, reset, btn_in, led_out);
input clk125_p_i, clk125_n_i;
input reset, btn_in;
output led_out;

reg [28:0] counter_r;
wire [28:0] counter_nxt;

assign led_out = btn_in ? counter_r[28]: 1'b0;
assign counter_nxt = counter_r + 29'd1;

clk_wiz_0 clk_wiz_inst (
   .clk_in1_n(clk125_n_i),
   .clk_in1_p(clk125_p_i),
   .clk_out1(clk_fast),
   .reset(reset),
   .locked()
);

always @(posedge clk_fast) begin
    if (reset) begin
        counter_r <= 29'd0;
    end
    else begin
        counter_r <= counter_nxt;
    end
    end
endmodule