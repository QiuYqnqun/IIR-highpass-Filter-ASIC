#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Tue Dec  7 16:32:48 2021                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.28-s033_1 (64bit) 03/21/2016 13:34 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.28-s005 NR160313-1959/14_28-UB (database version 2.30, 267.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.28-s006_1 (64bit) 03/08/2016 00:08:23 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.28-s002 (64bit) 03/21/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.28-s007_1 (64bit) Mar  7 2016 23:11:05 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.28-s006
#@(#)CDS: IQRC/TQRC 14.2.2-s217 (64bit) Wed Apr 15 23:10:24 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
save_global Default.globals
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_design_settop 0
set init_gnd_net VSS
set init_io_file ../Source/Module_pins
set init_lef_file {/Cadence/Libs/X_FAB/XKIT/xt018/cadence/v5_0/techLEF/v5_0_2/xt018_xx43_HD_MET4_METMID_METTHK.lef /Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_5V/v5_0/LEF/v5_0_1/xt018_D_CELLS_5V.lef}
set init_mmmc_file ../Source/MMMC.tcl
set init_pwr_net VDD
set init_verilog ../Source/Top_synth.v
set lsgOCPGainMult 1.000000
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set timing_library_float_precision_tol 0.000010
set timing_library_load_pin_cap_indices {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
fit
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -fplanOrigin center -site core_5v -r 1 0.7 10.08 10.37 10.08 10.37
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
clearGlobalNets
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -type core_rings -jog_distance 2.8 -threshold 2.8 -nets {VSS VDD} -follow core -stacked_via_bottom_layer MET1 -layer {bottom MET1 top MET1 right MET2 left MET2} -width 3 -spacing {bottom 0.23 top 0.23 right 0.28 left 0.28} -offset 3.15
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeSpacing 2.0
set sprCreateIeStripeThreshold 1.0
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit MET3 -max_same_layer_jog_length 6 -padcore_ring_bottom_layer_limit MET1 -set_to_set_distance 20 -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -padcore_ring_top_layer_limit MET3 -spacing 2.5 -merge_stripes_value 2.8 -layer MET2 -block_ring_bottom_layer_limit MET1 -width 3 -nets {VDD VSS} -stacked_via_bottom_layer MET1
fit
fit
fit
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { MET1 METTPL } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { MET1 METTPL } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { MET1 METTPL }
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -prePlace -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix subsystem_prePlace -outDir timingReports
setPlaceMode -fp false
placeDesign -inPlaceOpt
selectWire 194.7050 252.7000 209.5450 252.9800 3 {u_IIR_High_pass_Filter_fix_point_p/Delay12_out1[33]}
deselectAll
selectWire 379.6850 -426.0200 382.6850 426.0200 2 VDD
windowSelect 350.419 -375.569 375.491 -364.354
deselectAll
selectWire 379.6850 -426.0200 382.6850 426.0200 2 VDD
deselectAll
selectWire 379.6850 -426.0200 382.6850 426.0200 2 VDD
deselectAll
selectInst u_IIR_High_pass_Filter_fix_point_p/const_mul_307_50_g6527
deselectAll
selectWire 372.7850 -377.8600 373.0650 -342.6430 2 {u_IIR_High_pass_Filter_fix_point_p/a_2_3_cast[12]}
deselectAll
fit
windowSelect -880.167 201.052 -902.946 260.530
saveDesign -cellview {ChoiM subsystem layout}
fit
zoomBox 53.010 -12.506 43.048 -69.638
zoomBox 43.720 -25.042 39.606 -33.922
fit
fit
selectWire -184.9750 40.6790 -184.6950 95.6200 2 u_IIR_High_pass_Filter_fix_point_p/n_5766
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -slackReports -numPaths 50 -prefix subsystem_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix subsystem_preCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -preCTS
queryPlaceDensity
fit
windowSelect 176.117 117.935 683.260 -1.611
deselectAll
windowSelect 61.238 113.339 337.334 -35.989
deselectAll
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postCTS -incr
optDesign -postCTS -hold -incr
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
fit
fit
selectWire -140.3150 -426.0200 -137.3150 426.0200 2 VDD
deselectAll
selectMarker -418.0750 -215.0400 -414.1550 -210.5600 -1 12 92
deselectAll
selectMarker -418.0750 -215.0400 -414.1550 -210.5600 -1 12 92
deselectAll
selectMarker 5.2850 -371.8400 27.1250 -367.3600 -1 12 91
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
zoomBox -5.635 -382.76 38.045 -356.44
zoomBox -5.635 -382.76 38.045 -356.44
fit
fit
deselectAll
selectMarker -172.2350 107.5200 -167.1950 112.0000 -1 12 92
deselectAll
selectMarker 181.6850 -147.8400 187.8450 -143.3600 -1 12 91
fit
getFillerMode -quiet
addFiller -cell FEED7_5V FEED5_5V FEED3_5V FEED2_5V FEED25_5V FEED1_5V FEED15_5V FEED10_5V -prefix FILLER
setExtractRCMode -engine postRoute -effortLevel signoff
extractRC
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix subsystem_signOff -outDir timingReports
deselectAll
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf -view MAXview  -ideal_clock_network subsystem.sdf
saveNetlist subsystem1209.v
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -routing subsystem1209.def
set dbgLefDefOutVersion 5.8
write_sdf -view MAXview  -ideal_clock_network /OutPut/subsystem.sdf
write_sdf -view MAXview  -ideal_clock_network /OutPut/subsystem.sdf
write_sdf -view MAXview  -ideal_clock_network /OutPut/subsystem.sdf
