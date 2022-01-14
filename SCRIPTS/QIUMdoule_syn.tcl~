## Setup technology files
include ../SCRIPTS/X-FAB_typ.tcl

## Setup variables
set DESIGN subsystem;
set PARAMS {}
## Read in Verilog HDL files
# IIR filter
read_hdl -v2001 ../SOURCE/IIR_High_pass_Filter_fix_point_p.v
# Top module
read_hdl -v2001 ../SOURCE/subsystem.v
## Compile our code (create a technology-independent schematic)
elaborate -parameters $PARAMS $DESIGN
## Setup design constraints
read_sdc ../SCRIPTS/constraints.sdc
## Synthesize our schematic (create a technology-dependent schematic)
#synthesize -to_generic
synthesize -to_mapped
synthesize -incremental
## Write out area and timing reports
report timing > ../Reports/Top_synth_timing_report
report area > ../Reports/Top_synth_area_report
## Write out synthesized Verilog netlist
write_hdl -mapped > ../Source/Top/Synthesis/Top_synth.v
## Write out the SDC file we will take into the place n route tool
write_sdc > ../Source/Top/Synthesis/Top_out.sdc
gui_show

