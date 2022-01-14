
# Timing Specification Constraints
create_clock -name clk  -period 50.000 [get_ports clk]

set_clock_uncertainty -setup 5 [get_ports clk]
set_clock_uncertainty -hold 5 [get_ports clk]

#CREATE IN/OUT DELAYS according to clk default 0.5 or 0.333 of Tclk
#input/output delays for data input/output
set_input_delay -clock [get_clocks clk] -min -add_delay 5.0 [get_ports {{input_rsvd[0]} {input_rsvd[1]} {input_rsvd[2]} {input_rsvd[3]} {input_rsvd[4]} {input_rsvd[5]} {input_rsvd[6]} {input_rsvd[7]} {input_rsvd[8]} {input_rsvd[9]} {input_rsvd[10]} {input_rsvd[11]} {input_rsvd[12]} {input_rsvd[13]} {input_rsvd[14]} {input_rsvd[15]}}]
set_input_delay -clock [get_clocks clk] -max -add_delay 16.0 [get_ports {{input_rsvd[0]} {input_rsvd[1]} {input_rsvd[2]} {input_rsvd[3]} {input_rsvd[4]} {input_rsvd[5]} {input_rsvd[6]} {input_rsvd[7]} {input_rsvd[8]} {input_rsvd[9]} {input_rsvd[10]} {input_rsvd[11]} {input_rsvd[12]} {input_rsvd[13]} {input_rsvd[14]} {input_rsvd[15]}}]

set_output_delay -clock [get_clocks clk] -min -add_delay 5.0  [get_ports {{output_rsvd[0]} {output_rsvd[1]} {output_rsvd[2]} {output_rsvd[3]} {output_rsvd[4]} {output_rsvd[5]} {output_rsvd[6]} {output_rsvd[7]} {output_rsvd[8]} {output_rsvd[9]} {output_rsvd[10]} {output_rsvd[11]} {output_rsvd[12]} {output_rsvd[13]} {output_rsvd[14]} {output_rsvd[15]}}]
set_output_delay -clock [get_clocks clk] -max -add_delay 16.0 [get_ports {{output_rsvd[0]} {output_rsvd[1]} {output_rsvd[2]} {output_rsvd[3]} {output_rsvd[4]} {output_rsvd[5]} {output_rsvd[6]} {output_rsvd[7]} {output_rsvd[8]} {output_rsvd[9]} {output_rsvd[10]} {output_rsvd[11]} {output_rsvd[12]} {output_rsvd[13]} {output_rsvd[14]} {output_rsvd[15]}}]

#input/output delays for aux in/out signals
#set_input_delay -clock [get_clocks clk] -min -add_delay 5.0  [get_ports {clk} #{reset_Subsystem_timigcontroller}}]
#set_input_delay -clock [get_clocks clk] -max -add_delay 16.0 [get_ports {clk} #{reset_Subsystem_timigcontroller}}]

set_output_delay -clock [get_clocks clk] -min -add_delay 5.0  [get_ports {clk}]
set_output_delay -clock [get_clocks clk] -max -add_delay 16.0 [get_ports {clk}]


#create tets case constraints if test case CHANGES the design itself


