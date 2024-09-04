`timescale 1ns / 1ps

module tb_top;
    // Inputs/Output
    reg clk125_p_i;
    reg clk125_n_i;
    reg reset;
    reg btn_in;
    wire led_out;
    // Instantiate the Unit Under Test
    top uut (
        .clk125_p_i(clk125_p_i),
        .clk125_n_i(clk125_n_i),
        .reset(reset),
        .btn_in(btn_in),
        .led_out(led_out)
     );
     //Clock generation
     initial begin 
        clk125_p_i = 0;
        clk125_n_i = 1;
        forever begin
            #4 clk125_p_i = ~clk125_p_i;
            clk125_n_i = ~clk125_n_i;
        end
     end
      
     initial begin
        reset = 1;
        btn_in = 0;
        #100
        reset = 0;
        #100
        btn_in = 1;
        #10e6;
        btn_in = 0;
        #5e6
        btn_in = 1;
        #15e6
        btn_in = 0;
        #10e6
        btn_in = 1;
        #40e6
        $stop;
     end
     
     initial begin
        $monitor("Time: $0t | reset: %b | btn_in: %b | led_out: %b", $time, reset, btn_in, led_out);
     end
       
endmodule
