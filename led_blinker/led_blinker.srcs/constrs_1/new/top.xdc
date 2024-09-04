create_clock -period 8.000 -name clk [get_ports clk125_p_i]

set_property PACKAGE_PIN F23 [get_ports clk125_p_i]
set_property PACKAGE_PIN E23 [get_ports clk125_n_i]
set_property IOSTANDARD DIFF_SSTL15 [get_ports {clk125_p_i clk125_n_i}]

set_property PACKAGE_PIN C3 [get_ports btn_in]
set_property IOSTANDARD LVCMOS33 [get_ports btn_in]
set_property PACKAGE_PIN A5 [get_ports led_out]
set_property IOSTANDARD LVCMOS33 [get_ports led_out]
set_property PACKAGE_PIN B3 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]