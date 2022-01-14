onbreak resume
onerror resume
vsim -voptargs=+acc work.subsystem_tb

add wave sim:/subsystem_tb/u_subsystem/clk
add wave sim:/subsystem_tb/u_subsystem/reset_x
add wave sim:/subsystem_tb/u_subsystem/clk_enable
add wave sim:/subsystem_tb/u_subsystem/input_rsvd
add wave sim:/subsystem_tb/u_subsystem/ce_out
add wave sim:/subsystem_tb/u_subsystem/output_rsvd
add wave sim:/subsystem_tb/output_rsvd_ref
run -all
