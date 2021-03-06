######################################################################
#
# File name : NIU_compile.do
# Created on: Wed Jan 03 10:04:27 +0800 2018
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
set fpga_proj_name   NIU_test_vc709
set repo_dir         ../BOE
set fpga_proj_dir    ../imp/$fpga_proj_name

vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/fifo_generator_v13_1_1
vlib msim/ten_gig_eth_pcs_pma_v6_0_5
vlib msim/ten_gig_eth_mac_v15_1_1
vlib msim/axis_infrastructure_v1_1_0
vlib msim/axis_data_fifo_v1_1_10
vlib msim/axis_register_slice_v1_1_9

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap fifo_generator_v13_1_1 msim/fifo_generator_v13_1_1
vmap ten_gig_eth_pcs_pma_v6_0_5 msim/ten_gig_eth_pcs_pma_v6_0_5
vmap ten_gig_eth_mac_v15_1_1 msim/ten_gig_eth_mac_v15_1_1
vmap axis_infrastructure_v1_1_0 msim/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v1_1_10 msim/axis_data_fifo_v1_1_10
vmap axis_register_slice_v1_1_9 msim/axis_register_slice_v1_1_9

vlog -64 -incr -sv -work xil_defaultlib  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -64 -93 -work xpm  \
"D:/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -64 -incr -work fifo_generator_v13_1_1  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/fifo_generator_v13_1_1/simulation/fifo_generator_vlog_beh.v" \

vcom -64 -93 -work fifo_generator_v13_1_1  \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -64 -incr -work fifo_generator_v13_1_1  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/fifo_generator_v13_1_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -64 -incr -work xil_defaultlib  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/axis_sync_fifo/sim/axis_sync_fifo.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/cmd_fifo_xgemac_rxif/sim/cmd_fifo_xgemac_rxif.v" \

vlog -64 -incr -work ten_gig_eth_pcs_pma_v6_0_5  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/ten_gig_eth_pcs_pma_v6_0_5/hdl/ten_gig_eth_pcs_pma_v6_0_rfs.v" \

vlog -64 -incr -work xil_defaultlib  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_gtwizard_gth_10gbaser_gt.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_gtwizard_gth_10gbaser_multi_gt.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_ff_synchronizer_rst.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_ff_synchronizer.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_local_clock_and_reset.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_sim_speedup_controller.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_cable_pull_logic.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip_block.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_pcs_pma_ip/synth/ten_gig_eth_pcs_pma_ip.v" \

vlog -64 -incr -work ten_gig_eth_mac_v15_1_1  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/ten_gig_eth_mac_v15_1_1/hdl/ten_gig_eth_mac_v15_1_rfs.v" \

vlog -64 -incr -work xil_defaultlib  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_mac_ip/ten_gig_eth_mac_v15_1_1/hdl/ten_gig_eth_mac_ip_core.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_mac_ip/synth/ten_gig_eth_mac_ip_block.v" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/ten_gig_eth_mac_ip/synth/ten_gig_eth_mac_ip.v" \

vlog -64 -incr -work axis_infrastructure_v1_1_0  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_mux_enc.v" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_aclken_converter.v" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_aclken_converter_wrapper.v" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_axis2vector.v" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_util_vector2axis.v" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_clock_synchronizer.v" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog/axis_infrastructure_v1_1_cdc_handshake.v" \

vlog -64 -incr -work axis_data_fifo_v1_1_10  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_data_fifo_v1_1_10/hdl/verilog/axis_data_fifo_v1_1_axis_data_fifo.v" \

vlog -64 -incr -work xil_defaultlib  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/axis_pkt_fifo/sim/axis_pkt_fifo.v" \

vlog -64 -incr -work axis_register_slice_v1_1_9  "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_register_slice_v1_1_9/hdl/verilog/axis_register_slice_v1_1_axisc_register_slice.v" \
"$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_register_slice_v1_1_9/hdl/verilog/axis_register_slice_v1_1_axis_register_slice.v" \

vlog -64 -incr -work xil_defaultlib  +define+SIMULATION "+incdir+$fpga_proj_dir/$fpga_proj_name.ip_user_files/ipstatic/axis_infrastructure_v1_1_0/hdl/verilog" \
"$fpga_proj_dir/$fpga_proj_name.srcs/sources_1/ip/axis_register_slice_64/sim/axis_register_slice_64.v" \
"$repo_dir/rtl/NIU/xgbaser_gt_same_quad_wrapper.v" \
"$repo_dir/rtl/NIU/niu_single.v" \
"$repo_dir/rtl/NIU/vc709/NIU.v" \
"$repo_dir/rtl/NIU/ten_gig_eth_pcs_pma_ip_GT_Common_wrapper.v" \
"$repo_dir/rtl/NIU/niu_rx.v" \

# compile glbl module
vlog -work xil_defaultlib "$repo_dir/sim/other/glbl.v"

vlog -64 -incr -sv -work xil_defaultlib +incdir+$repo_dir/sim/tm  \
"$repo_dir/sim/tm/pkt_tm/*.sv"  \
"$repo_dir/sim/tb/NIU/*.sv" \
"$repo_dir/sim/tc/NIU/*.sv" \



