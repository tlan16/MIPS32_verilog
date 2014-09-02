-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Full Version"

-- DATE "09/02/2014 16:36:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS32 IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END MIPS32;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~6\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[1]~8\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[1]~7_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~12\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~14\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \auto_hub|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][6]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][7]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|Equal6~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~6_combout\ : std_logic;
SIGNAL \auto_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|word_counter[3]~10_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR~15_combout\ : std_logic;
SIGNAL \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|tdo~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|bypass_reg_out~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|tdo~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|tdo~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|tdo~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|tdo~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|trigger_out_ff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|run~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|bypass_reg_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|reset_all~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|state_status[2]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|state_status[2]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|trigger_out_ff~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|collect_data~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|reset_all~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|Add0~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|run~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|regoutff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|run~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~15_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|offload_shift_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|_~16_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~q\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~10_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~1_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~0_combout\ : std_logic;
SIGNAL \auto_signaltap_0|~GND~combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|reset_all~clkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[21]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[15]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \LEDR[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[0]~reg0_q\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \LEDR[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0_q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \LEDR[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[2]~reg0_q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \LEDR[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[3]~reg0_q\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \LEDR[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[4]~reg0_q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \LEDR[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[5]~reg0_q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \LEDR[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[6]~reg0_q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \LEDR[7]~reg0_q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \LEDR[8]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[8]~reg0_q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \LEDR[9]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[9]~reg0_q\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \LEDR[10]~reg0_q\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \LEDR[11]~reg0_q\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \LEDR[12]~reg0_q\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \LEDR[13]~reg0_q\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \LEDR[14]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[14]~reg0_q\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \LEDR[15]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[15]~reg0_q\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \LEDR[16]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[16]~reg0_q\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \LEDR[17]~reg0_q\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|tdo~4_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[5]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_ir_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~1_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~3_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[4]~1_combout\ : std_logic;
SIGNAL \auto_hub|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~4_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][3]~1_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|shadow_irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|tdo~q\ : std_logic;
SIGNAL \auto_hub|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|current_segment_delayed\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|status_register|dffs\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \auto_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~8_combout\ : std_logic;
SIGNAL \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ALT_INV_offload_shift_ena~combout\ : std_logic;
SIGNAL \auto_hub|shadow_jsm|ALT_INV_state\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \auto_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~q\ & \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~q\ & \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~q\ & 
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~q\ & \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~q\ & \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~q\ & 
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~q\ & \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~q\);

\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(6) & 
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(5) & \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(4) & \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(3) & 
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(2) & \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(1) & \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(0));

\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(6) & 
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(5) & 
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(4) & 
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(3) & 
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(2) & 
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(1) & 
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(0));

\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a7\ <= \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\auto_signaltap_0|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \auto_signaltap_0|sld_signaltap_body|reset_all~q\);
\auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\ <= NOT \auto_signaltap_0|sld_signaltap_body|reset_all~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~8_combout\ <= NOT \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\;
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ALT_INV_offload_shift_ena~combout\ <= NOT \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|offload_shift_ena~combout\;
\auto_hub|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|shadow_jsm|state\(8);
\auto_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;

-- Location: JTAG_X1_Y37_N0
altera_internal_jtag : cycloneive_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: FF_X68_Y30_N15
\auto_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|word_counter[1]~7_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[3]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|word_counter\(1));

-- Location: FF_X68_Y30_N13
\auto_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|word_counter[0]~5_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[3]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|word_counter\(0));

-- Location: FF_X68_Y30_N17
\auto_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|word_counter[2]~11_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[3]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|word_counter\(2));

-- Location: FF_X68_Y30_N19
\auto_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|word_counter[3]~13_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[3]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X68_Y30_N12
\auto_hub|hub_info_reg|word_counter[0]~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|hub_info_reg|word_counter[0]~5_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[0]~6\);

-- Location: LCCOMB_X68_Y30_N14
\auto_hub|hub_info_reg|word_counter[1]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[0]~6\,
	combout => \auto_hub|hub_info_reg|word_counter[1]~7_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[1]~8\);

-- Location: FF_X68_Y30_N21
\auto_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|word_counter[4]~15_combout\,
	sclr => \auto_hub|hub_info_reg|word_counter[3]~9_combout\,
	ena => \auto_hub|hub_info_reg|word_counter[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X68_Y30_N16
\auto_hub|hub_info_reg|word_counter[2]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[1]~8\,
	combout => \auto_hub|hub_info_reg|word_counter[2]~11_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[2]~12\);

-- Location: LCCOMB_X68_Y30_N18
\auto_hub|hub_info_reg|word_counter[3]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|hub_info_reg|word_counter[2]~12\,
	combout => \auto_hub|hub_info_reg|word_counter[3]~13_combout\,
	cout => \auto_hub|hub_info_reg|word_counter[3]~14\);

-- Location: LCCOMB_X68_Y30_N20
\auto_hub|hub_info_reg|word_counter[4]~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|hub_info_reg|word_counter[3]~14\,
	combout => \auto_hub|hub_info_reg|word_counter[4]~15_combout\);

-- Location: FF_X74_Y31_N31
\auto_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~6_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][3]~q\);

-- Location: FF_X74_Y31_N17
\auto_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~7_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][4]~q\);

-- Location: FF_X74_Y31_N11
\auto_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~8_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][5]~q\);

-- Location: FF_X74_Y31_N29
\auto_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~9_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][6]~q\);

-- Location: FF_X74_Y31_N23
\auto_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~10_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][7]~q\);

-- Location: FF_X72_Y31_N1
\auto_hub|node_ena[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|node_ena~3_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|node_ena[1]~reg0_q\);

-- Location: FF_X72_Y30_N7
\auto_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(15));

-- Location: FF_X72_Y30_N19
\auto_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|WORD_SR~6_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X74_Y30_N26
\auto_hub|tdo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo~3_combout\ = (\auto_hub|virtual_ir_scan_reg~q\ & (((\auto_hub|irsr_reg\(0))))) # (!\auto_hub|virtual_ir_scan_reg~q\ & (\auto_signaltap_0|sld_signaltap_body|tdo~4_combout\ & ((\auto_hub|irsr_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|tdo~4_combout\,
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|tdo~3_combout\);

-- Location: FF_X73_Y31_N15
\auto_hub|shadow_irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~3_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][1]~q\);

-- Location: FF_X73_Y31_N1
\auto_hub|shadow_irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~4_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][2]~q\);

-- Location: FF_X73_Y31_N3
\auto_hub|shadow_irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~5_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][3]~q\);

-- Location: LCCOMB_X74_Y31_N30
\auto_hub|irf_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~6_combout\ = (\auto_hub|hub_mode_reg\(1) & ((\auto_hub|shadow_irf_reg[1][3]~q\))) # (!\auto_hub|hub_mode_reg\(1) & (\auto_hub|irsr_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(3),
	datad => \auto_hub|shadow_irf_reg[1][3]~q\,
	combout => \auto_hub|irf_reg~6_combout\);

-- Location: FF_X73_Y31_N29
\auto_hub|shadow_irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~6_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][4]~q\);

-- Location: FF_X74_Y31_N7
\auto_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(4));

-- Location: LCCOMB_X74_Y31_N16
\auto_hub|irf_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~7_combout\ = (\auto_hub|hub_mode_reg\(1) & (\auto_hub|shadow_irf_reg[1][4]~q\)) # (!\auto_hub|hub_mode_reg\(1) & ((\auto_hub|irsr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_irf_reg[1][4]~q\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(4),
	combout => \auto_hub|irf_reg~7_combout\);

-- Location: FF_X73_Y31_N23
\auto_hub|shadow_irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~7_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][5]~q\);

-- Location: FF_X74_Y31_N1
\auto_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(5));

-- Location: LCCOMB_X74_Y31_N10
\auto_hub|irf_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~8_combout\ = (\auto_hub|hub_mode_reg\(1) & (\auto_hub|shadow_irf_reg[1][5]~q\)) # (!\auto_hub|hub_mode_reg\(1) & ((\auto_hub|irsr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_irf_reg[1][5]~q\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irf_reg~8_combout\);

-- Location: FF_X73_Y31_N17
\auto_hub|shadow_irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~8_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][6]~q\);

-- Location: FF_X74_Y31_N3
\auto_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(6));

-- Location: LCCOMB_X74_Y31_N28
\auto_hub|irf_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~9_combout\ = (\auto_hub|hub_mode_reg\(1) & (\auto_hub|shadow_irf_reg[1][6]~q\)) # (!\auto_hub|hub_mode_reg\(1) & ((\auto_hub|irsr_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_irf_reg[1][6]~q\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|irf_reg~9_combout\);

-- Location: FF_X73_Y31_N11
\auto_hub|shadow_irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~9_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][7]~q\);

-- Location: FF_X74_Y31_N5
\auto_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(7));

-- Location: LCCOMB_X74_Y31_N22
\auto_hub|irf_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~10_combout\ = (\auto_hub|hub_mode_reg\(1) & (\auto_hub|shadow_irf_reg[1][7]~q\)) # (!\auto_hub|hub_mode_reg\(1) & ((\auto_hub|irsr_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_irf_reg[1][7]~q\,
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|hub_mode_reg\(1),
	combout => \auto_hub|irf_reg~10_combout\);

-- Location: LCCOMB_X73_Y30_N28
\auto_hub|node_ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|node_ena~0_combout\ = (\auto_hub|shadow_jsm|state\(4) & ((\altera_internal_jtag~TMSUTAP\ & (\altera_internal_jtag~TDIUTAP\)) # (!\altera_internal_jtag~TMSUTAP\ & ((\auto_hub|irsr_reg\(8)))))) # (!\auto_hub|shadow_jsm|state\(4) & 
-- (((\auto_hub|irsr_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|node_ena~0_combout\);

-- Location: LCCOMB_X73_Y30_N14
\auto_hub|node_ena~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|node_ena~1_combout\ = (!\auto_hub|hub_mode_reg\(1) & (\auto_hub|node_ena~0_combout\ & ((!\auto_hub|shadow_jsm|state\(2)) # (!\altera_internal_jtag~TMSUTAP\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|node_ena~0_combout\,
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|node_ena~1_combout\);

-- Location: FF_X69_Y30_N3
\auto_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|Equal0~2_combout\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	ena => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X72_Y30_N28
\auto_hub|node_ena_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|node_ena_proc~0_combout\ = (\altera_internal_jtag~TMSUTAP\ & \auto_hub|shadow_jsm|state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X73_Y30_N0
\auto_hub|node_ena~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|node_ena~2_combout\ = (\auto_hub|node_ena_proc~0_combout\ & (\auto_hub|virtual_ir_scan_reg~q\)) # (!\auto_hub|node_ena_proc~0_combout\ & (\auto_hub|shadow_jsm|state\(15) & ((\auto_hub|virtual_ir_scan_reg~q\) # 
-- (\auto_hub|virtual_dr_scan_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|shadow_jsm|state\(15),
	combout => \auto_hub|node_ena~2_combout\);

-- Location: LCCOMB_X72_Y31_N0
\auto_hub|node_ena~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|node_ena~3_combout\ = (\auto_hub|node_ena~2_combout\ & (\auto_hub|node_ena~1_combout\)) # (!\auto_hub|node_ena~2_combout\ & (((!\auto_hub|node_ena_proc~1_combout\ & \auto_hub|node_ena[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|node_ena~1_combout\,
	datab => \auto_hub|node_ena_proc~1_combout\,
	datac => \auto_hub|node_ena[1]~reg0_q\,
	datad => \auto_hub|node_ena~2_combout\,
	combout => \auto_hub|node_ena~3_combout\);

-- Location: FF_X69_Y32_N1
\auto_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_mode_reg[2]~6_combout\,
	clrn => \auto_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X70_Y30_N30
\auto_hub|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|Equal0~0_combout\ = (!\auto_hub|jtag_ir_reg\(7) & (!\auto_hub|jtag_ir_reg\(6) & (!\auto_hub|jtag_ir_reg\(9) & !\auto_hub|jtag_ir_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(7),
	datab => \auto_hub|jtag_ir_reg\(6),
	datac => \auto_hub|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_ir_reg\(8),
	combout => \auto_hub|Equal0~0_combout\);

-- Location: FF_X73_Y30_N11
\auto_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X69_Y30_N12
\auto_hub|hub_info_reg|WORD_SR~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: LCCOMB_X72_Y30_N30
\auto_hub|hub_info_reg|WORD_SR~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~4_combout\,
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|hub_info_reg|word_counter\(0),
	datad => \auto_hub|hub_info_reg|word_counter\(2),
	combout => \auto_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: FF_X69_Y30_N31
\auto_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|WORD_SR~10_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X69_Y30_N0
\auto_hub|hub_info_reg|clear_signal\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|shadow_jsm|state\(8),
	combout => \auto_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X72_Y30_N18
\auto_hub|hub_info_reg|WORD_SR~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~5_combout\,
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|hub_info_reg|WORD_SR\(1),
	combout => \auto_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X73_Y30_N26
\auto_hub|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|Equal6~0_combout\ = (\auto_hub|irsr_reg\(1) & (!\auto_hub|irsr_reg\(2) & \auto_hub|irsr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(1),
	datac => \auto_hub|irsr_reg\(2),
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|Equal6~0_combout\);

-- Location: LCCOMB_X73_Y31_N30
\auto_hub|hub_mode_reg[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[1]~2_combout\ = (\auto_hub|irf_proc~0_combout\ & (!\auto_hub|Equal6~0_combout\ & (\auto_hub|virtual_ir_scan_reg~q\ & \auto_hub|hub_mode_reg[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_proc~0_combout\,
	datab => \auto_hub|Equal6~0_combout\,
	datac => \auto_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|hub_mode_reg[1]~0_combout\,
	combout => \auto_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X73_Y31_N14
\auto_hub|shadow_irf_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~3_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][1]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|irf_reg[1][1]~q\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~3_combout\);

-- Location: LCCOMB_X73_Y31_N0
\auto_hub|shadow_irf_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~4_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][2]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|irf_reg[1][2]~q\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~4_combout\);

-- Location: LCCOMB_X73_Y31_N2
\auto_hub|shadow_irf_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~5_combout\ = (\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irf_reg[1][3]~q\)) # (!\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][3]~q\,
	datab => \auto_hub|irsr_reg\(3),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~5_combout\);

-- Location: LCCOMB_X73_Y30_N22
\auto_hub|irsr_reg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg[3]~6_combout\ = (\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irf_reg[1][3]~q\ & ((\auto_hub|irsr_reg[4]~1_combout\)))) # (!\auto_hub|shadow_jsm|state\(3) & (((\auto_hub|irsr_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|irf_reg[1][3]~q\,
	datac => \auto_hub|irsr_reg\(4),
	datad => \auto_hub|irsr_reg[4]~1_combout\,
	combout => \auto_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X73_Y30_N16
\auto_hub|irsr_reg[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg[3]~7_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|hub_mode_reg\(0)))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|shadow_jsm|state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|hub_mode_reg\(0),
	combout => \auto_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X73_Y31_N28
\auto_hub|shadow_irf_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~6_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][4]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(4),
	datab => \auto_hub|irf_reg[1][4]~q\,
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~6_combout\);

-- Location: LCCOMB_X74_Y31_N6
\auto_hub|irsr_reg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~10_combout\ = (\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irf_reg[1][4]~q\)) # (!\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[1][4]~q\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(5),
	combout => \auto_hub|irsr_reg~10_combout\);

-- Location: LCCOMB_X73_Y31_N22
\auto_hub|shadow_irf_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~7_combout\ = (\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irf_reg[1][5]~q\)) # (!\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irf_reg[1][5]~q\,
	datac => \auto_hub|irsr_reg\(5),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|shadow_irf_reg~7_combout\);

-- Location: LCCOMB_X74_Y31_N0
\auto_hub|irsr_reg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~11_combout\ = (\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irf_reg[1][5]~q\)) # (!\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][5]~q\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(6),
	combout => \auto_hub|irsr_reg~11_combout\);

-- Location: LCCOMB_X73_Y31_N16
\auto_hub|shadow_irf_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~8_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][6]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(6),
	datab => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[1][6]~q\,
	combout => \auto_hub|shadow_irf_reg~8_combout\);

-- Location: LCCOMB_X74_Y31_N2
\auto_hub|irsr_reg~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~12_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][6]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(7),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[1][6]~q\,
	combout => \auto_hub|irsr_reg~12_combout\);

-- Location: LCCOMB_X73_Y31_N10
\auto_hub|shadow_irf_reg~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~9_combout\ = (\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irf_reg[1][7]~q\)) # (!\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][7]~q\,
	datab => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(7),
	combout => \auto_hub|shadow_irf_reg~9_combout\);

-- Location: LCCOMB_X74_Y31_N4
\auto_hub|irsr_reg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~13_combout\ = (\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irf_reg[1][7]~q\)) # (!\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][7]~q\,
	datab => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|irsr_reg~13_combout\);

-- Location: LCCOMB_X69_Y30_N2
\auto_hub|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|Equal0~2_combout\ = (\auto_hub|Equal0~0_combout\ & (\auto_hub|Equal0~1_combout\ & (!\auto_hub|jtag_ir_reg\(1) & !\auto_hub|jtag_ir_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal0~0_combout\,
	datab => \auto_hub|Equal0~1_combout\,
	datac => \auto_hub|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_ir_reg\(0),
	combout => \auto_hub|Equal0~2_combout\);

-- Location: LCCOMB_X73_Y30_N4
\auto_hub|hub_mode_reg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[2]~5_combout\ = (!\auto_hub|hub_mode_reg\(1) & !\auto_hub|irsr_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X73_Y30_N7
\auto_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X69_Y32_N0
\auto_hub|hub_mode_reg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[2]~6_combout\ = (\auto_hub|reset_ena_reg~q\ & (\auto_hub|hub_mode_reg[2]~5_combout\ & ((\auto_hub|hub_mode_reg[2]~3_combout\)))) # (!\auto_hub|reset_ena_reg~q\ & (((\auto_hub|hub_mode_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|reset_ena_reg~q\,
	datab => \auto_hub|hub_mode_reg[2]~5_combout\,
	datac => \auto_hub|hub_mode_reg\(2),
	datad => \auto_hub|hub_mode_reg[2]~3_combout\,
	combout => \auto_hub|hub_mode_reg[2]~6_combout\);

-- Location: LCCOMB_X73_Y30_N6
\auto_hub|reset_ena_reg_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|reset_ena_reg_proc~0_combout\ = (\auto_hub|virtual_ir_scan_reg~q\ & (\altera_internal_jtag~TMSUTAP\ & ((\auto_hub|shadow_jsm|state\(5)) # (\auto_hub|shadow_jsm|state\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(7),
	combout => \auto_hub|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X73_Y30_N10
\auto_hub|hub_mode_reg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[0]~7_combout\ = (\auto_hub|reset_ena_reg_proc~0_combout\ & (\auto_hub|Equal6~0_combout\ & (!\auto_hub|irsr_reg\(8)))) # (!\auto_hub|reset_ena_reg_proc~0_combout\ & (((\auto_hub|hub_mode_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal6~0_combout\,
	datab => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|hub_mode_reg\(0),
	datad => \auto_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|hub_mode_reg[0]~7_combout\);

-- Location: LCCOMB_X69_Y30_N18
\auto_hub|hub_info_reg|WORD_SR~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datad => \auto_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: LCCOMB_X69_Y30_N4
\auto_hub|hub_info_reg|word_counter[3]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|hub_info_reg|WORD_SR~7_combout\,
	datac => \auto_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|hub_info_reg|word_counter[3]~9_combout\);

-- Location: LCCOMB_X69_Y30_N22
\auto_hub|hub_info_reg|word_counter[3]~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|hub_info_reg|word_counter[3]~10_combout\);

-- Location: FF_X69_Y30_N25
\auto_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X69_Y30_N26
\auto_hub|hub_info_reg|WORD_SR~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_hub|hub_info_reg|WORD_SR\(2),
	combout => \auto_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X69_Y30_N28
\auto_hub|hub_info_reg|WORD_SR~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(0),
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X69_Y30_N30
\auto_hub|hub_info_reg|WORD_SR~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_info_reg|WORD_SR~9_combout\,
	datac => \auto_hub|hub_info_reg|WORD_SR~8_combout\,
	datad => \auto_hub|hub_info_reg|WORD_SR~4_combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X69_Y30_N14
\auto_hub|hub_info_reg|WORD_SR~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(2),
	datab => \auto_hub|hub_info_reg|WORD_SR~7_combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X69_Y30_N9
\auto_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_info_reg|WORD_SR~15_combout\,
	ena => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X69_Y30_N24
\auto_hub|hub_info_reg|WORD_SR~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|hub_info_reg|WORD_SR~11_combout\,
	datad => \auto_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X69_Y30_N10
\auto_hub|hub_info_reg|WORD_SR~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|word_counter\(1),
	datab => \auto_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|hub_info_reg|word_counter\(4),
	combout => \auto_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X69_Y30_N20
\auto_hub|hub_info_reg|WORD_SR~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR~13_combout\,
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X69_Y30_N8
\auto_hub|hub_info_reg|WORD_SR~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|hub_info_reg|WORD_SR~14_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|hub_info_reg|WORD_SR~15_combout\);

-- Location: LCCOMB_X69_Y30_N6
\auto_hub|hub_info_reg|WORD_SR[0]~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|hub_info_reg|clear_signal~combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|hub_info_reg|WORD_SR[0]~16_combout\);

-- Location: FF_X72_Y31_N15
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3));

-- Location: FF_X72_Y31_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1));

-- Location: FF_X72_Y31_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2));

-- Location: FF_X72_Y31_N9
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: FF_X72_Y33_N13
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1));

-- Location: FF_X72_Y33_N15
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2));

-- Location: FF_X72_Y33_N17
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3));

-- Location: FF_X72_Y33_N19
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4));

-- Location: FF_X72_Y33_N21
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5));

-- Location: FF_X72_Y33_N23
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6));

-- Location: FF_X72_Y33_N25
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7));

-- Location: LCCOMB_X72_Y31_N8
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X72_Y31_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X72_Y31_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X72_Y31_N14
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X72_Y31_N16
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X75_Y34_N8
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\,
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\);

-- Location: LCCOMB_X75_Y34_N10
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~1\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\);

-- Location: LCCOMB_X75_Y34_N12
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\);

-- Location: LCCOMB_X75_Y34_N14
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~5\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\);

-- Location: LCCOMB_X75_Y34_N16
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~7\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\);

-- Location: LCCOMB_X75_Y34_N18
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\,
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\);

-- Location: LCCOMB_X75_Y34_N20
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~11\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\);

-- Location: LCCOMB_X73_Y33_N0
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\);

-- Location: LCCOMB_X73_Y33_N2
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~1\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\);

-- Location: LCCOMB_X73_Y33_N4
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~3\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\);

-- Location: LCCOMB_X73_Y33_N6
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~6\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\);

-- Location: LCCOMB_X73_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~9\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\);

-- Location: LCCOMB_X73_Y33_N10
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~12\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\);

-- Location: LCCOMB_X73_Y33_N12
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~15\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\);

-- Location: LCCOMB_X73_Y33_N14
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~20\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~18\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\);

-- Location: LCCOMB_X72_Y33_N12
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~7_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8\);

-- Location: LCCOMB_X72_Y33_N14
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[1]~8\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~9_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10\);

-- Location: LCCOMB_X72_Y33_N16
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[2]~10\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~11_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12\);

-- Location: LCCOMB_X72_Y33_N18
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[3]~12\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~13_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14\);

-- Location: LCCOMB_X72_Y33_N20
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[4]~14\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~15_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16\);

-- Location: LCCOMB_X72_Y33_N22
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[5]~16\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~17_combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18\);

-- Location: LCCOMB_X72_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[6]~18\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[7]~19_combout\);

-- Location: FF_X72_Y32_N29
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X72_Y32_N28
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X72_Y32_N30
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\);

-- Location: M9K_X78_Y34_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sld_signaltap:auto_signaltap_0|sld_signaltap_impl:sld_signaltap_body|altsyncram:\stp_non_zero_ram_gen:stp_buffer_ram|altsyncram_gr14:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~q\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	ena0 => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~q\,
	ena1 => \auto_hub|irf_reg[1][4]~q\,
	portadatain => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X70_Y32_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ALT_INV_offload_shift_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: FF_X70_Y32_N5
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ALT_INV_offload_shift_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2));

-- Location: FF_X70_Y32_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ALT_INV_offload_shift_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1));

-- Location: FF_X77_Y34_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(0));

-- Location: FF_X77_Y34_N5
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(1));

-- Location: FF_X77_Y34_N7
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(2));

-- Location: FF_X77_Y34_N9
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(3));

-- Location: FF_X77_Y34_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(4));

-- Location: FF_X77_Y34_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(5));

-- Location: FF_X77_Y34_N15
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\,
	asdata => \auto_signaltap_0|~GND~combout\,
	sload => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X70_Y32_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X70_Y32_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X70_Y32_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_comb_bita2~combout\);

-- Location: LCCOMB_X77_Y34_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X77_Y34_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita0~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X77_Y34_N6
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita1~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X77_Y34_N8
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita2~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X77_Y34_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita3~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X77_Y34_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita4~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~combout\,
	cout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X77_Y34_N14
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_reg_bit\(6),
	cin => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita5~COUT\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter|auto_generated|counter_comb_bita6~combout\);

-- Location: LCCOMB_X74_Y30_N22
\auto_signaltap_0|sld_signaltap_body|tdo~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][7]~q\,
	datab => \auto_hub|irf_reg[1][4]~q\,
	datac => \auto_hub|irf_reg[1][3]~q\,
	datad => \auto_hub|irf_reg[1][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|tdo~0_combout\);

-- Location: FF_X75_Y33_N17
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~0_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(0));

-- Location: FF_X75_Y31_N25
\auto_signaltap_0|sld_signaltap_body|bypass_reg_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|bypass_reg_out~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|bypass_reg_out~q\);

-- Location: LCCOMB_X74_Y30_N24
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|node_ena[1]~reg0_q\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|virtual_ir_scan_reg~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0_combout\);

-- Location: LCCOMB_X74_Y30_N2
\auto_signaltap_0|sld_signaltap_body|status_shift_enable~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][1]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_hub|irf_reg[1][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\);

-- Location: LCCOMB_X74_Y30_N28
\auto_signaltap_0|sld_signaltap_body|tdo~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|bypass_reg_out~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|tdo~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|tdo~1_combout\);

-- Location: FF_X73_Y32_N9
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0));

-- Location: FF_X74_Y34_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(0));

-- Location: FF_X75_Y30_N17
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(0));

-- Location: LCCOMB_X75_Y30_N2
\auto_signaltap_0|sld_signaltap_body|tdo~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(0),
	datab => \auto_hub|irf_reg[1][5]~q\,
	datac => \auto_hub|irf_reg[1][4]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|tdo~2_combout\);

-- Location: LCCOMB_X74_Y30_N30
\auto_signaltap_0|sld_signaltap_body|tdo~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][7]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(0),
	datac => \auto_hub|irf_reg[1][3]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|tdo~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|tdo~3_combout\);

-- Location: FF_X74_Y30_N9
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0));

-- Location: LCCOMB_X74_Y30_N8
\auto_signaltap_0|sld_signaltap_body|tdo~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|tdo~3_combout\,
	datab => \auto_hub|irf_reg[1][3]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|tdo~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|tdo~4_combout\);

-- Location: FF_X74_Y33_N9
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\);

-- Location: FF_X74_Y33_N3
\auto_signaltap_0|sld_signaltap_body|run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_hub|irf_reg[1][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|run~q\);

-- Location: FF_X75_Y33_N19
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~1_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(1));

-- Location: LCCOMB_X72_Y31_N6
\auto_signaltap_0|sld_signaltap_body|sdr~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|node_ena[1]~reg0_q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\);

-- Location: LCCOMB_X72_Y31_N26
\auto_signaltap_0|sld_signaltap_body|status_load_on~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irf_reg[1][6]~q\,
	datad => \auto_hub|irf_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\);

-- Location: LCCOMB_X75_Y33_N16
\auto_signaltap_0|sld_signaltap_body|status_register|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|run~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~0_combout\);

-- Location: LCCOMB_X75_Y31_N24
\auto_signaltap_0|sld_signaltap_body|bypass_reg_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|node_ena[1]~reg0_q\,
	datac => \auto_signaltap_0|sld_signaltap_body|bypass_reg_out~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|bypass_reg_out~0_combout\);

-- Location: FF_X70_Y31_N9
\auto_signaltap_0|sld_signaltap_body|reset_all\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|reset_all~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|reset_all~q\);

-- Location: FF_X73_Y32_N19
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1));

-- Location: FF_X73_Y32_N21
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0));

-- Location: LCCOMB_X72_Y31_N28
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\);

-- Location: LCCOMB_X72_Y31_N22
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal3~0_combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|irf_reg[1][7]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\);

-- Location: LCCOMB_X73_Y32_N8
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~0_combout\);

-- Location: FF_X74_Y34_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1));

-- Location: FF_X74_Y33_N13
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\);

-- Location: LCCOMB_X74_Y34_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~0_combout\);

-- Location: FF_X75_Y30_N21
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~11_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(1));

-- Location: LCCOMB_X75_Y30_N14
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|shadow_jsm|state\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal~combout\);

-- Location: FF_X75_Y30_N1
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0));

-- Location: FF_X75_Y30_N11
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(1));

-- Location: FF_X75_Y30_N13
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(2));

-- Location: FF_X76_Y30_N17
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~7_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|ALT_INV_word_counter[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3));

-- Location: LCCOMB_X75_Y30_N30
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\);

-- Location: LCCOMB_X75_Y30_N16
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~4_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~5_combout\);

-- Location: FF_X72_Y33_N1
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(1));

-- Location: LCCOMB_X72_Y31_N24
\auto_signaltap_0|sld_signaltap_body|trigger_setup_ena\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|node_ena[1]~reg0_q\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|irf_reg[1][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\);

-- Location: FF_X76_Y33_N23
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0));

-- Location: FF_X76_Y33_N3
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\);

-- Location: FF_X76_Y33_N31
\auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~q\);

-- Location: FF_X74_Y33_N31
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\);

-- Location: FF_X76_Y34_N1
\auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~q\);

-- Location: LCCOMB_X74_Y33_N0
\auto_signaltap_0|sld_signaltap_body|state_status[2]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|state_status[2]~0_combout\);

-- Location: FF_X73_Y33_N25
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\);

-- Location: LCCOMB_X75_Y33_N12
\auto_signaltap_0|sld_signaltap_body|state_status[2]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|run~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|state_status[2]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:collecting_post_data_var~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|state_status[2]~1_combout\);

-- Location: LCCOMB_X76_Y33_N0
\auto_signaltap_0|sld_signaltap_body|trigger_out_ff~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|state_status[2]~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|trigger_out_ff~0_combout\);

-- Location: FF_X74_Y33_N11
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(0));

-- Location: FF_X74_Y33_N5
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(1));

-- Location: FF_X74_Y33_N23
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(2));

-- Location: FF_X74_Y33_N25
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(3));

-- Location: LCCOMB_X73_Y33_N26
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\);

-- Location: FF_X74_Y33_N19
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(4));

-- Location: FF_X74_Y33_N21
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(5));

-- Location: FF_X73_Y33_N29
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(6));

-- Location: FF_X73_Y33_N23
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(7));

-- Location: LCCOMB_X73_Y33_N16
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\);

-- Location: LCCOMB_X73_Y33_N18
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\);

-- Location: FF_X73_Y34_N9
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\);

-- Location: FF_X72_Y33_N11
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0));

-- Location: LCCOMB_X72_Y33_N10
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\);

-- Location: LCCOMB_X72_Y33_N28
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\);

-- Location: LCCOMB_X72_Y33_N30
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\);

-- Location: LCCOMB_X72_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(7),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|modified_post_count\(6),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\);

-- Location: LCCOMB_X70_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~1_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~3_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\);

-- Location: LCCOMB_X74_Y33_N8
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|collecting_post_data_var~0_combout\);

-- Location: FF_X74_Y33_N15
\auto_signaltap_0|sld_signaltap_body|condition_delay_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(3));

-- Location: LCCOMB_X74_Y33_N16
\auto_signaltap_0|sld_signaltap_body|collect_data\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|run~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\);

-- Location: FF_X75_Y33_N7
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~2_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(2));

-- Location: LCCOMB_X75_Y33_N18
\auto_signaltap_0|sld_signaltap_body|status_register|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|run~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|state_status[2]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~1_combout\);

-- Location: LCCOMB_X70_Y31_N8
\auto_signaltap_0|sld_signaltap_body|reset_all~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|clr_reg~q\,
	datad => \auto_hub|irf_reg[1][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|reset_all~0_combout\);

-- Location: FF_X73_Y32_N23
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2));

-- Location: FF_X73_Y32_N17
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1));

-- Location: LCCOMB_X73_Y32_N18
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~1_combout\);

-- Location: FF_X74_Y32_N9
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~q\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~q\);

-- Location: FF_X74_Y32_N27
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~q\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~q\);

-- Location: FF_X73_Y32_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0));

-- Location: LCCOMB_X73_Y32_N20
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][0]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X72_Y31_N18
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_comb_bita3~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit[3]~0_combout\);

-- Location: FF_X74_Y34_N21
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2));

-- Location: FF_X74_Y34_N23
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0));

-- Location: LCCOMB_X74_Y34_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(0),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~1_combout\);

-- Location: LCCOMB_X76_Y33_N22
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\);

-- Location: LCCOMB_X74_Y33_N26
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\);

-- Location: LCCOMB_X74_Y33_N28
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\);

-- Location: FF_X74_Y33_N7
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\);

-- Location: LCCOMB_X73_Y33_N20
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\);

-- Location: LCCOMB_X74_Y33_N6
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|base_address~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\);

-- Location: LCCOMB_X74_Y33_N12
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|base_address~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped_once_sig~1_combout\);

-- Location: FF_X75_Y30_N25
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(2));

-- Location: LCCOMB_X75_Y30_N18
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~2_combout\);

-- Location: LCCOMB_X75_Y30_N28
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~2_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\);

-- Location: LCCOMB_X75_Y30_N0
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~3_combout\);

-- Location: LCCOMB_X75_Y30_N22
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~2_combout\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~4_combout\);

-- Location: LCCOMB_X75_Y30_N10
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~5_combout\);

-- Location: LCCOMB_X75_Y30_N12
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~6_combout\);

-- Location: LCCOMB_X76_Y30_N2
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|Add0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|Add0~0_combout\);

-- Location: LCCOMB_X76_Y30_N16
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|Add0~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter~7_combout\);

-- Location: FF_X72_Y33_N3
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2));

-- Location: FF_X76_Y33_N5
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(1));

-- Location: FF_X76_Y33_N27
\auto_signaltap_0|sld_signaltap_body|ela_control|run\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|run~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|run~q\);

-- Location: FF_X77_Y33_N7
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|regoutff~q\);

-- Location: FF_X77_Y33_N5
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|regoutff~q\);

-- Location: FF_X77_Y33_N1
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|regoutff~q\);

-- Location: FF_X79_Y33_N7
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|regoutff~q\);

-- Location: LCCOMB_X76_Y33_N14
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|regoutff~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|regoutff~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|regoutff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|regoutff~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0_combout\);

-- Location: FF_X76_Y31_N23
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|regoutff~q\);

-- Location: FF_X76_Y31_N3
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|regoutff~q\);

-- Location: FF_X76_Y31_N7
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|regoutff~q\);

-- Location: FF_X79_Y33_N23
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|regoutff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|regoutff~q\);

-- Location: LCCOMB_X76_Y33_N24
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|regoutff~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|regoutff~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|regoutff~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|regoutff~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~1_combout\);

-- Location: LCCOMB_X76_Y33_N2
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|run~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|last_level_delayed~2_combout\);

-- Location: FF_X76_Y33_N9
\auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0));

-- Location: LCCOMB_X76_Y33_N30
\auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][1]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|trigger_out_mode_ff~0_combout\);

-- Location: LCCOMB_X74_Y33_N30
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|done~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|done~0_combout\);

-- Location: FF_X75_Y34_N25
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\);

-- Location: FF_X75_Y34_N11
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\);

-- Location: FF_X75_Y34_N13
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\);

-- Location: FF_X75_Y34_N15
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\);

-- Location: LCCOMB_X74_Y34_N8
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\);

-- Location: FF_X75_Y34_N17
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\);

-- Location: FF_X75_Y34_N19
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\);

-- Location: FF_X75_Y34_N21
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\);

-- Location: LCCOMB_X75_Y34_N26
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\);

-- Location: LCCOMB_X73_Y33_N30
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\);

-- Location: LCCOMB_X73_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|is_buffer_wrapped~3_combout\);

-- Location: LCCOMB_X74_Y33_N10
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter~2_combout\);

-- Location: LCCOMB_X74_Y33_N4
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~2_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~4_combout\);

-- Location: LCCOMB_X74_Y33_N22
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~5_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~7_combout\);

-- Location: LCCOMB_X74_Y33_N24
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~8_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~10_combout\);

-- Location: LCCOMB_X74_Y33_N18
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~11_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~13_combout\);

-- Location: LCCOMB_X74_Y33_N20
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~14_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~16_combout\);

-- Location: LCCOMB_X73_Y33_N28
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~19\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~17_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~19_combout\);

-- Location: LCCOMB_X73_Y33_N22
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~22\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~20_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal0~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add3~22_combout\);

-- Location: FF_X72_Y33_N27
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(3));

-- Location: FF_X72_Y33_N5
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(4));

-- Location: FF_X72_Y33_N7
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5));

-- Location: FF_X76_Y33_N29
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6));

-- Location: FF_X70_Y34_N25
\auto_signaltap_0|sld_signaltap_body|condition_delay_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(2));

-- Location: FF_X75_Y33_N25
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~3_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(3));

-- Location: LCCOMB_X75_Y33_N6
\auto_signaltap_0|sld_signaltap_body|status_register|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|state_status[2]~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~2_combout\);

-- Location: FF_X73_Y32_N29
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3));

-- Location: FF_X73_Y32_N15
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2));

-- Location: LCCOMB_X73_Y32_N22
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~2_combout\);

-- Location: FF_X74_Y32_N5
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~q\);

-- Location: FF_X74_Y32_N31
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~q\);

-- Location: LCCOMB_X73_Y32_N16
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[1]~1_combout\);

-- Location: FF_X74_Y35_N9
\auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~q\);

-- Location: FF_X76_Y34_N19
\auto_signaltap_0|sld_signaltap_body|current_segment_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:base_address[0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|current_segment_delayed\(0));

-- Location: FF_X74_Y33_N27
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|segment_shift_var~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|collect_data~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\);

-- Location: LCCOMB_X76_Y34_N18
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\,
	datab => \auto_hub|irf_reg[1][2]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|current_segment_delayed\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\);

-- Location: LCCOMB_X76_Y34_N20
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:segment_shift_var~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~q\,
	datac => \auto_hub|irf_reg[1][2]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|current_segment_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\);

-- Location: FF_X74_Y34_N27
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3));

-- Location: FF_X74_Y34_N29
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1));

-- Location: LCCOMB_X74_Y34_N20
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(3),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~2_combout\);

-- Location: LCCOMB_X75_Y34_N24
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\);

-- Location: LCCOMB_X74_Y33_N14
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|run~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\);

-- Location: LCCOMB_X75_Y30_N8
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(0),
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\);

-- Location: FF_X75_Y30_N27
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(3));

-- Location: LCCOMB_X75_Y30_N24
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR\(3),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~7_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~8_combout\);

-- Location: FF_X76_Y33_N19
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(2));

-- Location: LCCOMB_X76_Y33_N26
\auto_signaltap_0|sld_signaltap_body|ela_control|run~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	datac => \auto_hub|irf_reg[1][1]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|run~0_combout\);

-- Location: FF_X77_Y33_N3
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(13));

-- Location: FF_X77_Y33_N15
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(4));

-- Location: FF_X77_Y33_N29
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(13),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(12));

-- Location: FF_X77_Y33_N31
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14));

-- Location: FF_X77_Y33_N17
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|holdff~q\);

-- Location: FF_X77_Y33_N25
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(10));

-- Location: FF_X77_Y33_N23
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(3));

-- Location: FF_X77_Y33_N21
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(10),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(9));

-- Location: FF_X77_Y33_N27
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(12),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11));

-- Location: FF_X77_Y33_N11
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|holdff~q\);

-- Location: FF_X77_Y33_N19
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(8),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(7));

-- Location: FF_X80_Y35_N9
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(2));

-- Location: FF_X77_Y33_N13
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(7),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(6));

-- Location: FF_X77_Y33_N9
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(8));

-- Location: FF_X79_Y35_N17
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|holdff~q\);

-- Location: FF_X79_Y33_N1
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(5),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(4));

-- Location: FF_X79_Y33_N3
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(1));

-- Location: FF_X79_Y33_N5
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(4),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(3));

-- Location: FF_X79_Y33_N13
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[5]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(5));

-- Location: FF_X79_Y33_N11
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff~q\);

-- Location: FF_X76_Y31_N25
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(23),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(22));

-- Location: FF_X76_Y31_N21
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(7));

-- Location: FF_X76_Y31_N5
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[21]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(21));

-- Location: FF_X76_Y31_N9
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(23));

-- Location: FF_X76_Y31_N17
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff~q\);

-- Location: FF_X76_Y31_N1
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(19));

-- Location: FF_X76_Y31_N27
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(6));

-- Location: FF_X76_Y31_N19
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(18));

-- Location: FF_X76_Y31_N15
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20));

-- Location: FF_X76_Y31_N31
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff~q\);

-- Location: FF_X76_Y31_N29
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(16));

-- Location: FF_X82_Y34_N17
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(5));

-- Location: FF_X76_Y31_N13
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[15]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(15));

-- Location: FF_X76_Y31_N11
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17));

-- Location: FF_X77_Y31_N25
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|holdff~q\);

-- Location: FF_X79_Y33_N21
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(1));

-- Location: FF_X79_Y33_N9
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(0));

-- Location: FF_X79_Y33_N27
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(1),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(0));

-- Location: FF_X79_Y33_N15
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(3),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2));

-- Location: FF_X79_Y33_N29
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\);

-- Location: FF_X76_Y33_N21
\auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1));

-- Location: LCCOMB_X74_Y34_N28
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~2_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\);

-- Location: LCCOMB_X74_Y34_N30
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~4_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\);

-- Location: LCCOMB_X74_Y34_N16
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~6_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\);

-- Location: LCCOMB_X75_Y34_N4
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~8_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\);

-- Location: LCCOMB_X74_Y34_N10
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~10_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\);

-- Location: LCCOMB_X75_Y34_N6
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Equal1~4_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~1_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|Add2~12_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\);

-- Location: FF_X70_Y34_N3
\auto_signaltap_0|sld_signaltap_body|condition_delay_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(1));

-- Location: FF_X75_Y33_N3
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~4_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(4));

-- Location: LCCOMB_X75_Y33_N24
\auto_signaltap_0|sld_signaltap_body|status_register|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~3_combout\);

-- Location: FF_X73_Y32_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4));

-- Location: FF_X73_Y32_N27
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3));

-- Location: LCCOMB_X73_Y32_N28
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~3_combout\);

-- Location: FF_X74_Y32_N25
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~q\);

-- Location: FF_X74_Y32_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~q\);

-- Location: LCCOMB_X73_Y32_N14
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[2]~2_combout\);

-- Location: FF_X75_Y32_N17
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(0));

-- Location: LCCOMB_X74_Y30_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][1]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|reset_all~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\);

-- Location: LCCOMB_X72_Y32_N8
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_comb_bita0~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0),
	datac => \auto_hub|irf_reg[1][7]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit[0]~0_combout\);

-- Location: LCCOMB_X72_Y32_N18
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(3),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|Equal2~0_combout\);

-- Location: FF_X74_Y34_N5
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4));

-- Location: FF_X74_Y34_N31
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2));

-- Location: LCCOMB_X74_Y34_N26
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(2),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~3_combout\);

-- Location: LCCOMB_X75_Y30_N26
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|clear_signal~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~9_combout\);

-- Location: FF_X76_Y33_N17
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[3]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(3));

-- Location: FF_X76_Y33_N7
\auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2));

-- Location: FF_X70_Y34_N13
\auto_signaltap_0|sld_signaltap_body|condition_delay_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(0));

-- Location: FF_X75_Y33_N29
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~5_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(5));

-- Location: LCCOMB_X75_Y33_N2
\auto_signaltap_0|sld_signaltap_body|status_register|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|current_segment_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~4_combout\);

-- Location: FF_X73_Y32_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5));

-- Location: FF_X73_Y32_N7
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4));

-- Location: LCCOMB_X73_Y32_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(5),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~4_combout\);

-- Location: FF_X74_Y32_N21
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~q\);

-- Location: FF_X74_Y32_N7
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~q\);

-- Location: LCCOMB_X73_Y32_N26
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[3]~3_combout\);

-- Location: FF_X75_Y32_N19
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(1));

-- Location: FF_X75_Y34_N23
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\);

-- Location: FF_X74_Y34_N15
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5));

-- Location: FF_X74_Y34_N17
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3));

-- Location: LCCOMB_X74_Y34_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~4_combout\);

-- Location: FF_X76_Y33_N13
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[4]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(4));

-- Location: FF_X76_Y33_N11
\auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3));

-- Location: FF_X75_Y33_N23
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~6_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(6));

-- Location: LCCOMB_X75_Y33_N28
\auto_signaltap_0|sld_signaltap_body|status_register|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~5_combout\);

-- Location: FF_X73_Y32_N25
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6));

-- Location: FF_X73_Y32_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5));

-- Location: LCCOMB_X73_Y32_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(6),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~5_combout\);

-- Location: FF_X74_Y32_N17
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~q\);

-- Location: FF_X74_Y32_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~q\);

-- Location: LCCOMB_X73_Y32_N6
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[4]~4_combout\);

-- Location: FF_X75_Y32_N5
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(2));

-- Location: FF_X75_Y34_N1
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\);

-- Location: FF_X74_Y34_N25
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6));

-- Location: FF_X74_Y34_N19
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4));

-- Location: LCCOMB_X74_Y34_N14
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~5_combout\);

-- Location: FF_X79_Y32_N1
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(6),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(5));

-- Location: FF_X75_Y33_N1
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~7_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(7));

-- Location: LCCOMB_X75_Y33_N22
\auto_signaltap_0|sld_signaltap_body|status_register|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~6_combout\);

-- Location: FF_X73_Y32_N5
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7));

-- Location: FF_X73_Y32_N31
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6));

-- Location: LCCOMB_X73_Y32_N24
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~6_combout\);

-- Location: FF_X74_Y32_N29
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~q\);

-- Location: FF_X74_Y32_N23
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~q\);

-- Location: LCCOMB_X73_Y32_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[5]~5_combout\);

-- Location: FF_X75_Y32_N7
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(3));

-- Location: FF_X75_Y34_N3
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\);

-- Location: FF_X74_Y34_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7));

-- Location: FF_X74_Y34_N11
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5));

-- Location: LCCOMB_X74_Y34_N24
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(5),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~6_combout\);

-- Location: FF_X79_Y33_N31
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[6]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(6));

-- Location: FF_X75_Y33_N27
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~8_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(8));

-- Location: LCCOMB_X75_Y33_N0
\auto_signaltap_0|sld_signaltap_body|status_register|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~7_combout\);

-- Location: FF_X76_Y32_N9
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8));

-- Location: FF_X76_Y32_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7));

-- Location: LCCOMB_X73_Y32_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~7_combout\);

-- Location: FF_X74_Y32_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~q\);

-- Location: FF_X74_Y32_N19
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~q\);

-- Location: LCCOMB_X73_Y32_N30
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[6]~6_combout\);

-- Location: FF_X75_Y32_N25
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(4));

-- Location: FF_X75_Y34_N29
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\);

-- Location: FF_X75_Y32_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8));

-- Location: FF_X74_Y34_N7
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6));

-- Location: LCCOMB_X74_Y34_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig\(6),
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(8),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~7_combout\);

-- Location: FF_X79_Y33_N17
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(8),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(7));

-- Location: FF_X75_Y33_N5
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~9_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(9));

-- Location: LCCOMB_X75_Y33_N26
\auto_signaltap_0|sld_signaltap_body|status_register|_~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(9),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~8_combout\);

-- Location: FF_X76_Y32_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9));

-- Location: FF_X76_Y32_N7
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8));

-- Location: LCCOMB_X76_Y32_N8
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(8),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~8_combout\);

-- Location: FF_X76_Y34_N31
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~q\);

-- Location: FF_X77_Y32_N25
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~q\);

-- Location: LCCOMB_X76_Y32_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][7]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[7]~7_combout\);

-- Location: FF_X75_Y32_N29
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(5));

-- Location: FF_X75_Y34_N5
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\);

-- Location: FF_X75_Y32_N23
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9));

-- Location: LCCOMB_X75_Y32_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(9),
	datab => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~q\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~8_combout\);

-- Location: FF_X79_Y33_N19
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(8));

-- Location: FF_X75_Y33_N15
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~10_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(10));

-- Location: LCCOMB_X75_Y33_N4
\auto_signaltap_0|sld_signaltap_body|status_register|_~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(10),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~9_combout\);

-- Location: FF_X76_Y32_N17
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10));

-- Location: FF_X76_Y32_N19
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9));

-- Location: LCCOMB_X76_Y32_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(9),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(10),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~9_combout\);

-- Location: FF_X76_Y34_N17
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~q\);

-- Location: FF_X77_Y32_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~q\);

-- Location: LCCOMB_X76_Y32_N6
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[8]~8_combout\);

-- Location: FF_X75_Y32_N9
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(6));

-- Location: FF_X75_Y34_N31
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~feeder_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\);

-- Location: FF_X75_Y32_N27
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10));

-- Location: LCCOMB_X75_Y32_N22
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(10),
	datab => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~9_combout\);

-- Location: FF_X79_Y33_N25
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(0),
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|trigger_setup_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(9));

-- Location: FF_X75_Y33_N9
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~11_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(11));

-- Location: LCCOMB_X75_Y33_N14
\auto_signaltap_0|sld_signaltap_body|status_register|_~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(11),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~10_combout\);

-- Location: FF_X76_Y32_N5
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11));

-- Location: FF_X76_Y32_N15
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10));

-- Location: LCCOMB_X76_Y32_N16
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(10),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~10_combout\);

-- Location: FF_X76_Y34_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(1),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~q\);

-- Location: FF_X77_Y32_N5
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~q\);

-- Location: LCCOMB_X76_Y32_N18
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][9]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[9]~9_combout\);

-- Location: FF_X76_Y34_N13
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(0));

-- Location: FF_X75_Y34_N7
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	ena => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\);

-- Location: FF_X75_Y32_N21
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11));

-- Location: LCCOMB_X75_Y32_N26
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(11),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~10_combout\);

-- Location: FF_X75_Y33_N11
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~12_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(12));

-- Location: LCCOMB_X75_Y33_N8
\auto_signaltap_0|sld_signaltap_body|status_register|_~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~11_combout\);

-- Location: FF_X76_Y32_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12));

-- Location: FF_X76_Y32_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11));

-- Location: LCCOMB_X76_Y32_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(11),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~11_combout\);

-- Location: FF_X76_Y34_N23
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~q\);

-- Location: FF_X77_Y32_N7
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~q\);

-- Location: LCCOMB_X76_Y32_N14
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[10]~10_combout\);

-- Location: FF_X76_Y34_N9
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(1));

-- Location: FF_X75_Y32_N31
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12));

-- Location: LCCOMB_X75_Y32_N20
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(12),
	datab => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[3]~q\,
	datad => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~11_combout\);

-- Location: FF_X75_Y33_N21
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~13_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(13));

-- Location: LCCOMB_X75_Y33_N10
\auto_signaltap_0|sld_signaltap_body|status_register|_~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~12_combout\);

-- Location: FF_X76_Y32_N21
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13));

-- Location: FF_X76_Y32_N23
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12));

-- Location: LCCOMB_X76_Y32_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(12),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(13),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~12_combout\);

-- Location: FF_X76_Y34_N27
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~q\);

-- Location: FF_X77_Y32_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(3),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~q\);

-- Location: LCCOMB_X76_Y32_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][11]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[11]~11_combout\);

-- Location: FF_X76_Y34_N29
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(2));

-- Location: FF_X75_Y32_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13));

-- Location: LCCOMB_X75_Y32_N30
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(13),
	datac => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~12_combout\);

-- Location: FF_X75_Y33_N31
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~14_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(14));

-- Location: LCCOMB_X75_Y33_N20
\auto_signaltap_0|sld_signaltap_body|status_register|_~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(14),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~13_combout\);

-- Location: FF_X76_Y32_N25
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14));

-- Location: FF_X76_Y32_N27
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13));

-- Location: LCCOMB_X76_Y32_N20
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(13),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|dffs\(14),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~13_combout\);

-- Location: FF_X74_Y32_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~q\);

-- Location: FF_X74_Y32_N15
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~q\);

-- Location: LCCOMB_X76_Y32_N22
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[12]~12_combout\);

-- Location: FF_X76_Y34_N7
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(3));

-- Location: FF_X75_Y32_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14));

-- Location: LCCOMB_X75_Y32_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|dffs\(14),
	datab => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~13_combout\);

-- Location: FF_X75_Y31_N11
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~15_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(15));

-- Location: LCCOMB_X75_Y33_N30
\auto_signaltap_0|sld_signaltap_body|status_register|_~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(15),
	datac => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~14_combout\);

-- Location: FF_X76_Y32_N29
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\,
	ena => \auto_hub|irf_reg[1][7]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14));

-- Location: LCCOMB_X76_Y32_N24
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_ram_shift_load~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xq\(14),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_data_shift_out|_~14_combout\);

-- Location: FF_X76_Y34_N25
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(5),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~q\);

-- Location: FF_X77_Y32_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~q\);

-- Location: LCCOMB_X76_Y32_N26
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][13]~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[13]~13_combout\);

-- Location: FF_X72_Y34_N9
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(4));

-- Location: FF_X79_Y34_N17
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0));

-- Location: LCCOMB_X75_Y32_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_signaltap_0|sld_signaltap_body|sdr~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[6]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|info_data_shift_out|_~14_combout\);

-- Location: FF_X75_Y31_N13
\auto_signaltap_0|sld_signaltap_body|status_register|dffs[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|status_register|_~16_combout\,
	ena => \auto_signaltap_0|sld_signaltap_body|status_shift_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(16));

-- Location: LCCOMB_X75_Y31_N10
\auto_signaltap_0|sld_signaltap_body|status_register|_~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_register|dffs\(16),
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~15_combout\);

-- Location: FF_X76_Y34_N3
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~q\);

-- Location: FF_X77_Y32_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(6),
	sload => VCC,
	ena => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|wdecoder|auto_generated|eq_node[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~q\);

-- Location: LCCOMB_X76_Y32_N28
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][14]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr\(0),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][14]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|mux|auto_generated|result_node[14]~14_combout\);

-- Location: FF_X76_Y34_N5
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(5));

-- Location: FF_X79_Y34_N11
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1));

-- Location: LCCOMB_X72_Y31_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|offload_shift_ena\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|node_ena[1]~reg0_q\,
	datac => \auto_hub|shadow_jsm|state\(4),
	datad => \auto_hub|irf_reg[1][4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|offload_shift_ena~combout\);

-- Location: LCCOMB_X72_Y31_N30
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|offload_shift_ena~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\);

-- Location: LCCOMB_X79_Y34_N16
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(1),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a0~portbdataout\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~0_combout\);

-- Location: LCCOMB_X75_Y31_N12
\auto_signaltap_0|sld_signaltap_body|status_register|_~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_signaltap_0|sld_signaltap_body|status_load_on~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|status_register|_~16_combout\);

-- Location: FF_X76_Y34_N15
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(6));

-- Location: FF_X80_Y35_N19
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~q\);

-- Location: FF_X79_Y34_N29
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2));

-- Location: LCCOMB_X79_Y34_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a1\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~1_combout\);

-- Location: FF_X80_Y35_N13
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~q\);

-- Location: LCCOMB_X74_Y30_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irf_reg[1][1]~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	datac => \auto_hub|irf_reg[1][4]~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|reset_all~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\);

-- Location: LCCOMB_X74_Y30_N14
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|adv_point_3_and_more:advance_pointer_counter|auto_generated|counter_reg_bit\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|acq_buf_read_reset~combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|read_pointer_counter_clk_ena~combout\);

-- Location: FF_X80_Y35_N31
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~q\);

-- Location: FF_X79_Y34_N7
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3));

-- Location: LCCOMB_X79_Y34_N28
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a2\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~2_combout\);

-- Location: FF_X80_Y35_N17
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~q\);

-- Location: FF_X80_Y35_N3
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~q\);

-- Location: FF_X80_Y35_N21
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][2]~q\);

-- Location: FF_X79_Y34_N1
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4));

-- Location: LCCOMB_X79_Y34_N6
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a3\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~3_combout\);

-- Location: FF_X80_Y35_N7
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~q\);

-- Location: FF_X80_Y35_N1
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~q\);

-- Location: FF_X80_Y35_N27
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~q\);

-- Location: FF_X82_Y34_N11
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~q\);

-- Location: FF_X79_Y34_N27
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5));

-- Location: LCCOMB_X79_Y34_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a4\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~4_combout\);

-- Location: FF_X80_Y35_N5
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(0));

-- Location: FF_X80_Y35_N23
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~q\);

-- Location: FF_X80_Y35_N25
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~q\);

-- Location: FF_X82_Y34_N29
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~q\);

-- Location: FF_X82_Y34_N23
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~q\);

-- Location: FF_X79_Y34_N13
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6));

-- Location: LCCOMB_X79_Y34_N26
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a5\,
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~5_combout\);

-- Location: FF_X80_Y35_N11
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(1));

-- Location: FF_X80_Y35_N29
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~q\);

-- Location: FF_X82_Y34_N9
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~q\);

-- Location: FF_X82_Y34_N3
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~q\);

-- Location: FF_X82_Y34_N5
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][5]~q\);

-- Location: FF_X79_Y34_N23
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7_combout\,
	clrn => \auto_signaltap_0|sld_signaltap_body|ALT_INV_reset_all~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(7));

-- Location: LCCOMB_X79_Y34_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|dffs\(7),
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a6\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~6_combout\);

-- Location: FF_X80_Y35_N15
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(2));

-- Location: FF_X82_Y34_N7
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~q\);

-- Location: FF_X82_Y34_N1
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~q\);

-- Location: FF_X82_Y34_N27
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~q\);

-- Location: FF_X80_Y34_N25
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~q\);

-- Location: LCCOMB_X79_Y34_N22
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_shift_load~combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:stp_buffer_ram|auto_generated|ram_block1a7\,
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|ram_data_shift_out|_~7_combout\);

-- Location: FF_X82_Y34_N13
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(3));

-- Location: FF_X82_Y34_N31
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~q\);

-- Location: FF_X82_Y34_N25
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~q\);

-- Location: FF_X80_Y34_N3
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~q\);

-- Location: FF_X80_Y34_N13
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~q\);

-- Location: FF_X82_Y34_N19
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(4));

-- Location: FF_X82_Y34_N21
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~q\);

-- Location: FF_X80_Y34_N23
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~q\);

-- Location: FF_X80_Y34_N1
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~q\);

-- Location: FF_X82_Y34_N15
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(5));

-- Location: FF_X80_Y34_N11
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~q\);

-- Location: FF_X80_Y34_N21
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~q\);

-- Location: FF_X80_Y34_N7
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(6));

-- Location: FF_X80_Y34_N17
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~q\);

-- Location: FF_X80_Y34_N19
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(7));

-- Location: LCCOMB_X75_Y30_N4
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR[3]~10_combout\);

-- Location: LCCOMB_X75_Y30_N20
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~6_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|WORD_SR~11_combout\);

-- Location: LCCOMB_X75_Y30_N6
\auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|shadow_jsm|state\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr_ena~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|crc_rom_sr|word_counter[3]~8_combout\);

-- Location: LCCOMB_X74_Y33_N2
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|run~q\,
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|counter[4]~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~4_combout\);

-- Location: LCCOMB_X79_Y33_N20
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(0),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(1),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X79_Y33_N22
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|holdff~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(2),
	datac => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(0),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:0:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X76_Y31_N28
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(15),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(16),
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X76_Y31_N6
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(17),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|holdff~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:5:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X76_Y31_N0
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(19),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(18),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X76_Y31_N2
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(20),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~0_combout\,
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X76_Y31_N24
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(21),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(23),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(22),
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X76_Y31_N22
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~0_combout\,
	datab => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(7),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(23),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X79_Y33_N0
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(5),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(3),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X79_Y33_N6
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(5),
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X77_Y33_N18
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(6),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(8),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(7),
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X77_Y33_N0
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|holdff~q\,
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~0_combout\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(8),
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:2:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X77_Y33_N24
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(9),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(10),
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X77_Y33_N4
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(3),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|holdff~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(11),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:3:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X77_Y33_N2
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14),
	datab => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(4),
	datac => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(13),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(12),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~0_combout\);

-- Location: LCCOMB_X77_Y33_N6
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(14),
	datab => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|holdff~q\,
	datac => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(4),
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:4:sm1|p_match_out~1_combout\);

-- Location: LCCOMB_X76_Y34_N0
\auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:done~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_enable_delayed~0_combout\);

-- Location: LCCOMB_X72_Y32_N4
\auto_signaltap_0|~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_signaltap_0|~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|~GND~combout\);

-- Location: CLKCTRL_G3
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: CLKCTRL_G5
\auto_signaltap_0|sld_signaltap_body|reset_all~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_signaltap_0|sld_signaltap_body|reset_all~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_signaltap_0|sld_signaltap_body|reset_all~clkctrl_outclk\);

-- Location: LCCOMB_X79_Y33_N8
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[0]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N10
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[1]~feeder_combout\);

-- Location: LCCOMB_X79_Y33_N2
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[1]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N8
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[2]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N14
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[2]~feeder_combout\);

-- Location: LCCOMB_X77_Y33_N22
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[3]~feeder_combout\);

-- Location: LCCOMB_X77_Y33_N14
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[4]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N16
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[5]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N14
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[5]~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N26
\auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg[6]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N6
\auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg[6]~feeder_combout\);

-- Location: LCCOMB_X73_Y32_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_depth_offload_gen:stp_offload_buff_mgr_inst|status_read_pointer_counter|auto_generated|counter_reg_bit\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|xraddr[0]~feeder_combout\);

-- Location: LCCOMB_X74_Y35_N8
\auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:is_buffer_wrapped~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|segment_wrapped_delayed~feeder_combout\);

-- Location: LCCOMB_X72_Y33_N0
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N12
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[0]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N8
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[1]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N28
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[2]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N6
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[3]~feeder_combout\);

-- Location: LCCOMB_X72_Y34_N8
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[4]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N4
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[5]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N14
\auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:next_address[6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed[6]~feeder_combout\);

-- Location: LCCOMB_X72_Y33_N4
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X72_Y33_N6
\auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|segment_offset_config_deserialize|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X75_Y34_N22
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[0]~feeder_combout\);

-- Location: LCCOMB_X74_Y34_N22
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~0_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[0]~feeder_combout\);

-- Location: LCCOMB_X76_Y33_N4
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X77_Y33_N8
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[8]~feeder_combout\);

-- Location: LCCOMB_X79_Y33_N12
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[5]~feeder_combout\);

-- Location: LCCOMB_X79_Y33_N10
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:1:sm1|holdff~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N4
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[21]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(22),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[21]~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N16
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:7:sm1|holdff~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N14
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(21),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[20]~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N18
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(19),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[18]~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N30
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_trigger_in_reg\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_modules_gen:0:trigger_match|gen_sbpmg_pipeline_less_than_two:sm0:6:sm1|holdff~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N10
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(18),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[17]~feeder_combout\);

-- Location: LCCOMB_X76_Y31_N12
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[15]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(16),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[15]~feeder_combout\);

-- Location: LCCOMB_X77_Y33_N30
\auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs\(15),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|basic_multi_level_mbpm_trigger_gen:multi_level_mbpm|trigger_condition_deserialize|dffs[14]~feeder_combout\);

-- Location: LCCOMB_X76_Y33_N8
\auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[0]~feeder_combout\);

-- Location: LCCOMB_X75_Y34_N0
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~1_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~feeder_combout\);

-- Location: LCCOMB_X75_Y34_N2
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~2_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[2]~feeder_combout\);

-- Location: LCCOMB_X74_Y34_N18
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~4_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[4]~feeder_combout\);

-- Location: LCCOMB_X75_Y34_N30
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~5_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~feeder_combout\);

-- Location: LCCOMB_X74_Y34_N6
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|offset_count~6_combout\,
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|last_buffer_write_address_sig[6]~feeder_combout\);

-- Location: LCCOMB_X70_Y34_N24
\auto_signaltap_0|sld_signaltap_body|condition_delay_reg[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[2]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][1]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N30
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][1]~feeder_combout\);

-- Location: LCCOMB_X76_Y33_N18
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X76_Y33_N20
\auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X70_Y34_N2
\auto_signaltap_0|sld_signaltap_body|condition_delay_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[1]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N24
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][2]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][2]~feeder_combout\);

-- Location: LCCOMB_X76_Y33_N16
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X76_Y33_N6
\auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|trigger_config_deserialize|dffs[2]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N20
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][3]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N6
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][3]~feeder_combout\);

-- Location: LCCOMB_X75_Y32_N18
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[1]~feeder_combout\);

-- Location: LCCOMB_X76_Y33_N12
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N16
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][4]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][4]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N28
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][5]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N22
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][5]~feeder_combout\);

-- Location: LCCOMB_X79_Y33_N30
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[6]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N0
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][6]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N18
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][6]~feeder_combout\);

-- Location: LCCOMB_X75_Y32_N24
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[4]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N30
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][7]~feeder_combout\);

-- Location: LCCOMB_X75_Y32_N28
\auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|buffer_manager:last_trigger_address_var[5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|last_trigger_address_delayed[5]~feeder_combout\);

-- Location: LCCOMB_X79_Y33_N18
\auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs\(9),
	combout => \auto_signaltap_0|sld_signaltap_body|ela_control|builtin:ela_trigger_flow_mgr_entity|trigger_config_deserialize|dffs[8]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N16
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][8]~feeder_combout\);

-- Location: LCCOMB_X77_Y32_N10
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(0),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][8]~feeder_combout\);

-- Location: LCCOMB_X77_Y32_N4
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][9]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N22
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][10]~feeder_combout\);

-- Location: LCCOMB_X77_Y32_N6
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(2),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][10]~feeder_combout\);

-- Location: LCCOMB_X76_Y34_N26
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][11]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N12
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[1][12]~feeder_combout\);

-- Location: LCCOMB_X74_Y32_N14
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][12]~feeder_combout\);

-- Location: LCCOMB_X77_Y32_N2
\auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|buffer_write_address_delayed\(5),
	combout => \auto_signaltap_0|sld_signaltap_body|stp_non_zero_ram_gen:attribute_mem_gen:attribute_mem|cells[0][13]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N18
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][0]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N12
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][0]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N30
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][1]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N16
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][0]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][0]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N2
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][1]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][1]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N26
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][2]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N10
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][3]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N22
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(1),
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][1]~feeder_combout\);

-- Location: LCCOMB_X80_Y35_N24
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][2]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N22
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][4]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N8
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][3]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N2
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][4]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][4]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N6
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(3),
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][3]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N26
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][5]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N24
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][6]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N30
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(4),
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][4]~feeder_combout\);

-- Location: LCCOMB_X82_Y34_N24
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][5]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][5]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N12
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[3][7]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N22
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][6]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N0
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[2][7]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N10
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(6),
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][6]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N20
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~q\,
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X80_Y34_N16
\auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_signaltap_0|sld_signaltap_body|acq_data_in_reg\(7),
	combout => \auto_signaltap_0|sld_signaltap_body|acq_data_in_pipe_reg[0][7]~feeder_combout\);

-- Location: LCCOMB_X73_Y34_N8
\auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|sld_signaltap_body|sld_buffer_manager_inst|final_trigger_set~feeder_combout\);

-- Location: LCCOMB_X70_Y34_N12
\auto_signaltap_0|sld_signaltap_body|condition_delay_reg[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \auto_signaltap_0|sld_signaltap_body|condition_delay_reg[0]~feeder_combout\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(10));

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(11));

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(12));

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(13));

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(14));

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(15));

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(16));

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(17));

-- Location: IOOBUF_X0_Y37_N1
\altera_reserved_tdo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y50_N24
\LEDR[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[0]~reg0feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \LEDR[0]~reg0feeder_combout\);

-- Location: FF_X114_Y50_N25
\LEDR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[0]~reg0_q\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X99_Y50_N0
\LEDR[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[1]~reg0feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \LEDR[1]~reg0feeder_combout\);

-- Location: FF_X99_Y50_N1
\LEDR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[1]~reg0_q\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X106_Y43_N8
\LEDR[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[2]~reg0feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \LEDR[2]~reg0feeder_combout\);

-- Location: FF_X106_Y43_N9
\LEDR[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[2]~reg0_q\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X107_Y50_N16
\LEDR[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[3]~reg0feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \LEDR[3]~reg0feeder_combout\);

-- Location: FF_X107_Y50_N17
\LEDR[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[3]~reg0_q\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X87_Y50_N0
\LEDR[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[4]~reg0feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \LEDR[4]~reg0feeder_combout\);

-- Location: FF_X87_Y50_N1
\LEDR[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[4]~reg0_q\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X92_Y43_N0
\LEDR[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[5]~reg0feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \LEDR[5]~reg0feeder_combout\);

-- Location: FF_X92_Y43_N1
\LEDR[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[5]~reg0_q\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X97_Y43_N16
\LEDR[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[6]~reg0feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \LEDR[6]~reg0feeder_combout\);

-- Location: FF_X97_Y43_N17
\LEDR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[6]~reg0_q\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X103_Y43_N17
\LEDR[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[7]~reg0_q\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X103_Y50_N24
\LEDR[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[8]~reg0feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \LEDR[8]~reg0feeder_combout\);

-- Location: FF_X103_Y50_N25
\LEDR[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[8]~reg0_q\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X91_Y50_N0
\LEDR[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[9]~reg0feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \LEDR[9]~reg0feeder_combout\);

-- Location: FF_X91_Y50_N1
\LEDR[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[9]~reg0_q\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X88_Y50_N1
\LEDR[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[10]~reg0_q\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: FF_X110_Y50_N9
\LEDR[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[11]~reg0_q\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: FF_X114_Y43_N17
\LEDR[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[12]~reg0_q\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: FF_X96_Y43_N9
\LEDR[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[13]~reg0_q\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X89_Y43_N24
\LEDR[14]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[14]~reg0feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \LEDR[14]~reg0feeder_combout\);

-- Location: FF_X89_Y43_N25
\LEDR[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[14]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[14]~reg0_q\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X112_Y43_N8
\LEDR[15]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[15]~reg0feeder_combout\ = \SW[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[15]~input_o\,
	combout => \LEDR[15]~reg0feeder_combout\);

-- Location: FF_X112_Y43_N9
\LEDR[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[15]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[15]~reg0_q\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X91_Y41_N16
\LEDR[16]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDR[16]~reg0feeder_combout\ = \SW[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[16]~input_o\,
	combout => \LEDR[16]~reg0feeder_combout\);

-- Location: FF_X91_Y41_N17
\LEDR[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \LEDR[16]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[16]~reg0_q\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: FF_X88_Y43_N9
\LEDR[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[17]~reg0_q\);

-- Location: IOIBUF_X0_Y38_N1
\altera_reserved_tms~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y39_N1
\altera_reserved_tck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y40_N1
\altera_reserved_tdi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: LCCOMB_X70_Y30_N16
\auto_hub|shadow_jsm|tms_cnt~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X70_Y30_N17
\auto_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X70_Y29_N2
\auto_hub|shadow_jsm|tms_cnt~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X70_Y29_N3
\auto_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X70_Y29_N0
\auto_hub|shadow_jsm|tms_cnt~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X70_Y29_N1
\auto_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X70_Y30_N18
\auto_hub|node_ena_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|node_ena_proc~1_combout\ = (\altera_internal_jtag~TMSUTAP\ & \auto_hub|shadow_jsm|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|node_ena_proc~1_combout\);

-- Location: FF_X70_Y30_N19
\auto_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X70_Y30_N8
\auto_hub|shadow_jsm|state~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|shadow_jsm|state\(0),
	datad => \auto_hub|shadow_jsm|state\(9),
	combout => \auto_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X70_Y30_N9
\auto_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(0));

-- Location: LCCOMB_X72_Y30_N26
\auto_hub|shadow_jsm|state~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \auto_hub|shadow_jsm|state\(7),
	datac => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X72_Y30_N27
\auto_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X72_Y30_N20
\auto_hub|shadow_jsm|state~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(3),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(4),
	combout => \auto_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X72_Y30_N21
\auto_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X72_Y30_N12
\auto_hub|shadow_jsm|state~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|state\(6),
	datad => \auto_hub|shadow_jsm|state\(5),
	combout => \auto_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X72_Y30_N13
\auto_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X72_Y30_N14
\auto_hub|shadow_jsm|state~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(6),
	combout => \auto_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X72_Y30_N15
\auto_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X73_Y31_N26
\auto_hub|irf_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_proc~0_combout\ = (\altera_internal_jtag~TMSUTAP\ & ((\auto_hub|shadow_jsm|state\(5)) # (\auto_hub|shadow_jsm|state\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(5),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(7),
	combout => \auto_hub|irf_proc~0_combout\);

-- Location: FF_X73_Y31_N27
\auto_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X72_Y30_N0
\auto_hub|shadow_jsm|state~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(15),
	datab => \auto_hub|shadow_jsm|state\(0),
	datac => \auto_hub|shadow_jsm|state\(1),
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \auto_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X72_Y30_N1
\auto_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X72_Y30_N2
\auto_hub|shadow_jsm|state~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(15),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(1),
	datad => \auto_hub|shadow_jsm|state\(8),
	combout => \auto_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X72_Y30_N3
\auto_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X72_Y31_N2
\auto_hub|shadow_jsm|state~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(2),
	combout => \auto_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X72_Y31_N3
\auto_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X74_Y30_N4
\auto_hub|tdo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo~4_combout\ = (!\auto_hub|shadow_jsm|state\(4) & !\auto_hub|shadow_jsm|state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|tdo~4_combout\);

-- Location: LCCOMB_X72_Y30_N24
\auto_hub|tdo_bypass_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo_bypass_reg~0_combout\ = (\auto_hub|shadow_jsm|state\(4) & (\altera_internal_jtag~TDIUTAP\)) # (!\auto_hub|shadow_jsm|state\(4) & ((\auto_hub|tdo_bypass_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X72_Y30_N25
\auto_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X73_Y30_N24
\auto_hub|irsr_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~5_combout\ = (\auto_hub|shadow_jsm|state\(4) & (\altera_internal_jtag~TDIUTAP\)) # (!\auto_hub|shadow_jsm|state\(4) & ((\auto_hub|irsr_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \altera_internal_jtag~TDIUTAP\,
	datac => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X69_Y31_N24
\~QIC_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X73_Y31_N8
\auto_hub|clr_reg_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|clr_reg_proc~0_combout\ = (\auto_hub|hub_mode_reg\(2) & \auto_hub|shadow_jsm|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(2),
	datad => \auto_hub|shadow_jsm|state\(1),
	combout => \auto_hub|clr_reg_proc~0_combout\);

-- Location: FF_X73_Y31_N9
\auto_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|clr_reg~q\);

-- Location: LCCOMB_X72_Y30_N8
\auto_hub|shadow_jsm|state~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(9),
	combout => \auto_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X72_Y30_N9
\auto_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X72_Y30_N10
\auto_hub|shadow_jsm|state~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(11),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(10),
	combout => \auto_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X72_Y30_N11
\auto_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X72_Y30_N16
\auto_hub|shadow_jsm|state~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|state\(13),
	datad => \auto_hub|shadow_jsm|state\(12),
	combout => \auto_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X72_Y30_N17
\auto_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X72_Y30_N4
\auto_hub|shadow_jsm|state~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|shadow_jsm|state\(13),
	combout => \auto_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X72_Y30_N5
\auto_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X72_Y30_N22
\auto_hub|shadow_jsm|state~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(14),
	datac => \auto_hub|shadow_jsm|state\(11),
	datad => \auto_hub|shadow_jsm|state\(10),
	combout => \auto_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X72_Y30_N23
\auto_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_jsm|state\(11));

-- Location: FF_X70_Y30_N31
\auto_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(9));

-- Location: FF_X70_Y30_N25
\auto_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X70_Y30_N10
\auto_hub|jtag_ir_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|jtag_ir_reg[7]~feeder_combout\ = \auto_hub|jtag_ir_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X70_Y30_N11
\auto_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X70_Y30_N20
\auto_hub|jtag_ir_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|jtag_ir_reg[6]~feeder_combout\ = \auto_hub|jtag_ir_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(7),
	combout => \auto_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X70_Y30_N21
\auto_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(6));

-- Location: LCCOMB_X70_Y30_N26
\auto_hub|jtag_ir_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|jtag_ir_reg[5]~feeder_combout\ = \auto_hub|jtag_ir_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(6),
	combout => \auto_hub|jtag_ir_reg[5]~feeder_combout\);

-- Location: FF_X70_Y30_N27
\auto_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_ir_reg[5]~feeder_combout\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(5));

-- Location: FF_X70_Y30_N5
\auto_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_ir_reg\(5),
	clrn => \auto_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(4));

-- Location: FF_X70_Y30_N23
\auto_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_ir_reg\(4),
	clrn => \auto_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(3));

-- Location: FF_X70_Y30_N1
\auto_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_ir_reg\(3),
	clrn => \auto_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X70_Y30_N22
\auto_hub|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|Equal0~1_combout\ = (!\auto_hub|jtag_ir_reg\(5) & (!\auto_hub|jtag_ir_reg\(4) & (\auto_hub|jtag_ir_reg\(3) & \auto_hub|jtag_ir_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_ir_reg\(5),
	datab => \auto_hub|jtag_ir_reg\(4),
	datac => \auto_hub|jtag_ir_reg\(3),
	datad => \auto_hub|jtag_ir_reg\(2),
	combout => \auto_hub|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y30_N12
\auto_hub|jtag_ir_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|jtag_ir_reg[1]~feeder_combout\ = \auto_hub|jtag_ir_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X70_Y30_N13
\auto_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X70_Y30_N6
\auto_hub|jtag_ir_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|jtag_ir_reg[0]~feeder_combout\ = \auto_hub|jtag_ir_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_ir_reg[0]~feeder_combout\);

-- Location: FF_X70_Y30_N7
\auto_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_ir_reg[0]~feeder_combout\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	ena => \auto_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X69_Y30_N16
\auto_hub|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|Equal1~0_combout\ = (\auto_hub|Equal0~0_combout\ & (\auto_hub|Equal0~1_combout\ & (\auto_hub|jtag_ir_reg\(1) & !\auto_hub|jtag_ir_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|Equal0~0_combout\,
	datab => \auto_hub|Equal0~1_combout\,
	datac => \auto_hub|jtag_ir_reg\(1),
	datad => \auto_hub|jtag_ir_reg\(0),
	combout => \auto_hub|Equal1~0_combout\);

-- Location: LCCOMB_X72_Y30_N6
\auto_hub|virtual_ir_dr_scan_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|virtual_ir_dr_scan_proc~0_combout\ = (\altera_internal_jtag~TMSUTAP\ & ((\auto_hub|shadow_jsm|state\(12)) # (\auto_hub|shadow_jsm|state\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(12),
	datab => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|shadow_jsm|state\(14),
	combout => \auto_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X69_Y30_N17
\auto_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|Equal1~0_combout\,
	clrn => \auto_hub|shadow_jsm|state\(0),
	ena => \auto_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|virtual_ir_scan_reg~q\);

-- Location: FF_X73_Y30_N25
\auto_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|shadow_jsm|state\(3),
	ena => \auto_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(8));

-- Location: LCCOMB_X74_Y31_N12
\auto_hub|irf_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~5_combout\ = (\auto_hub|hub_mode_reg\(1) & (\auto_hub|shadow_irf_reg[1][2]~q\)) # (!\auto_hub|hub_mode_reg\(1) & ((\auto_hub|irsr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_irf_reg[1][2]~q\,
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|irf_reg~5_combout\);

-- Location: LCCOMB_X73_Y31_N24
\auto_hub|irf_reg[1][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg[1][0]~1_combout\ = (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|virtual_ir_scan_reg~q\ & ((\auto_hub|irsr_reg\(8)) # (\auto_hub|hub_mode_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(8),
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|hub_mode_reg\(1),
	combout => \auto_hub|irf_reg[1][0]~1_combout\);

-- Location: LCCOMB_X73_Y31_N18
\auto_hub|irf_reg[1][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg[1][0]~2_combout\ = ((\auto_hub|irsr_reg\(2)) # ((\auto_hub|irsr_reg\(0)) # (\auto_hub|irsr_reg\(8)))) # (!\auto_hub|irsr_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|irsr_reg\(2),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irsr_reg\(8),
	combout => \auto_hub|irf_reg[1][0]~2_combout\);

-- Location: LCCOMB_X73_Y31_N4
\auto_hub|irf_reg[1][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg[1][0]~3_combout\ = (\auto_hub|irf_reg[1][0]~1_combout\ & (\auto_hub|irf_proc~0_combout\ & ((!\auto_hub|irf_reg[1][0]~2_combout\) # (!\auto_hub|hub_mode_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|irf_reg[1][0]~1_combout\,
	datac => \auto_hub|irf_proc~0_combout\,
	datad => \auto_hub|irf_reg[1][0]~2_combout\,
	combout => \auto_hub|irf_reg[1][0]~3_combout\);

-- Location: FF_X74_Y31_N13
\auto_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~5_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][2]~q\);

-- Location: LCCOMB_X74_Y31_N26
\auto_hub|irsr_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~3_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][2]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(3),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[1][2]~q\,
	combout => \auto_hub|irsr_reg~3_combout\);

-- Location: LCCOMB_X73_Y30_N18
\auto_hub|irsr_reg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg[3]~8_combout\ = (\auto_hub|irsr_reg[3]~7_combout\) # ((\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg\(8)) # (!\auto_hub|irsr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[3]~7_combout\,
	datab => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg\(3),
	combout => \auto_hub|irsr_reg[3]~8_combout\);

-- Location: LCCOMB_X73_Y30_N2
\auto_hub|irsr_reg[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg[3]~9_combout\ = (\auto_hub|irsr_reg[3]~8_combout\ & ((\auto_hub|virtual_ir_scan_reg~q\ & (\auto_hub|irsr_reg[3]~6_combout\)) # (!\auto_hub|virtual_ir_scan_reg~q\ & ((\auto_hub|irsr_reg\(3)))))) # (!\auto_hub|irsr_reg[3]~8_combout\ & 
-- (((\auto_hub|irsr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg[3]~6_combout\,
	datab => \auto_hub|irsr_reg[3]~8_combout\,
	datac => \auto_hub|irsr_reg\(3),
	datad => \auto_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X73_Y30_N3
\auto_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(3));

-- Location: LCCOMB_X73_Y30_N12
\auto_hub|irsr_reg[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg[4]~1_combout\ = (\auto_hub|hub_mode_reg\(0) & ((\auto_hub|irsr_reg\(3)))) # (!\auto_hub|hub_mode_reg\(0) & (\auto_hub|irsr_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(0),
	datab => \auto_hub|irsr_reg\(8),
	datad => \auto_hub|irsr_reg\(3),
	combout => \auto_hub|irsr_reg[4]~1_combout\);

-- Location: LCCOMB_X73_Y30_N30
\auto_hub|irsr_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg[0]~2_combout\ = (\auto_hub|virtual_ir_scan_reg~q\ & ((\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irsr_reg[4]~1_combout\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|shadow_jsm|state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_jsm|state\(4),
	datab => \auto_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irsr_reg[4]~1_combout\,
	combout => \auto_hub|irsr_reg[0]~2_combout\);

-- Location: FF_X74_Y31_N27
\auto_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(2));

-- Location: LCCOMB_X73_Y30_N20
\auto_hub|hub_mode_reg[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[2]~3_combout\ = (\auto_hub|irsr_reg\(1) & (\auto_hub|irsr_reg\(2) & \auto_hub|irsr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(1),
	datac => \auto_hub|irsr_reg\(2),
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|hub_mode_reg[2]~3_combout\);

-- Location: LCCOMB_X73_Y30_N8
\auto_hub|hub_mode_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[1]~1_combout\ = (!\auto_hub|irsr_reg\(1) & (!\auto_hub|irsr_reg\(2) & \auto_hub|irsr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(1),
	datac => \auto_hub|irsr_reg\(2),
	datad => \auto_hub|irsr_reg\(0),
	combout => \auto_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X73_Y31_N6
\auto_hub|hub_mode_reg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[1]~4_combout\ = (\auto_hub|hub_mode_reg[1]~2_combout\ & ((\auto_hub|hub_mode_reg[1]~1_combout\) # ((\auto_hub|hub_mode_reg[2]~3_combout\ & \auto_hub|hub_mode_reg\(1))))) # (!\auto_hub|hub_mode_reg[1]~2_combout\ & 
-- (((\auto_hub|hub_mode_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg[1]~2_combout\,
	datab => \auto_hub|hub_mode_reg[2]~3_combout\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|hub_mode_reg[1]~1_combout\,
	combout => \auto_hub|hub_mode_reg[1]~4_combout\);

-- Location: FF_X73_Y31_N7
\auto_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|hub_mode_reg[1]~4_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X74_Y31_N18
\auto_hub|irf_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~4_combout\ = (\auto_hub|hub_mode_reg\(1) & (\auto_hub|shadow_irf_reg[1][1]~q\)) # (!\auto_hub|hub_mode_reg\(1) & ((\auto_hub|irsr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|shadow_irf_reg[1][1]~q\,
	datac => \auto_hub|hub_mode_reg\(1),
	datad => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|irf_reg~4_combout\);

-- Location: FF_X74_Y31_N19
\auto_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~4_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X74_Y31_N20
\auto_hub|irsr_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~4_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][1]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(2),
	datab => \auto_hub|irf_reg[1][1]~q\,
	datac => \auto_hub|shadow_jsm|state\(3),
	combout => \auto_hub|irsr_reg~4_combout\);

-- Location: FF_X74_Y31_N21
\auto_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(1));

-- Location: LCCOMB_X73_Y31_N20
\auto_hub|shadow_irf_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg~0_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][0]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irf_reg[1][0]~q\,
	combout => \auto_hub|shadow_irf_reg~0_combout\);

-- Location: LCCOMB_X72_Y31_N20
\auto_hub|shadow_irf_reg[1][3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg[1][3]~1_combout\ = (!\auto_hub|shadow_jsm|state\(3) & (((!\auto_hub|irf_proc~0_combout\) # (!\auto_hub|irsr_reg\(8))) # (!\auto_hub|hub_mode_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|irsr_reg\(8),
	datad => \auto_hub|irf_proc~0_combout\,
	combout => \auto_hub|shadow_irf_reg[1][3]~1_combout\);

-- Location: LCCOMB_X73_Y31_N12
\auto_hub|shadow_irf_reg[1][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|shadow_irf_reg[1][0]~2_combout\ = (\auto_hub|virtual_ir_scan_reg~q\ & (!\auto_hub|shadow_irf_reg[1][3]~1_combout\ & ((!\auto_hub|shadow_jsm|state\(3)) # (!\auto_hub|hub_mode_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_mode_reg\(1),
	datab => \auto_hub|shadow_jsm|state\(3),
	datac => \auto_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|shadow_irf_reg[1][3]~1_combout\,
	combout => \auto_hub|shadow_irf_reg[1][0]~2_combout\);

-- Location: FF_X73_Y31_N21
\auto_hub|shadow_irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|shadow_irf_reg~0_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|shadow_irf_reg[1][0]~q\);

-- Location: LCCOMB_X74_Y31_N24
\auto_hub|irf_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irf_reg~0_combout\ = (\auto_hub|hub_mode_reg\(1) & ((\auto_hub|shadow_irf_reg[1][0]~q\))) # (!\auto_hub|hub_mode_reg\(1) & (\auto_hub|irsr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|hub_mode_reg\(1),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|shadow_irf_reg[1][0]~q\,
	combout => \auto_hub|irf_reg~0_combout\);

-- Location: FF_X74_Y31_N25
\auto_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irf_reg~0_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X74_Y31_N8
\auto_hub|irsr_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|irsr_reg~0_combout\ = (\auto_hub|shadow_jsm|state\(3) & ((\auto_hub|irf_reg[1][0]~q\))) # (!\auto_hub|shadow_jsm|state\(3) & (\auto_hub|irsr_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|irsr_reg\(1),
	datac => \auto_hub|shadow_jsm|state\(3),
	datad => \auto_hub|irf_reg[1][0]~q\,
	combout => \auto_hub|irsr_reg~0_combout\);

-- Location: FF_X74_Y31_N9
\auto_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|irsr_reg\(0));

-- Location: LCCOMB_X74_Y30_N18
\auto_hub|hub_mode_reg[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|hub_mode_reg[1]~0_combout\ = (!\auto_hub|irsr_reg\(8) & ((\auto_hub|irsr_reg\(1)) # ((\auto_hub|irsr_reg\(0)) # (\auto_hub|irsr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(1),
	datab => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|irsr_reg\(0),
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X74_Y30_N20
\auto_hub|tdo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo~0_combout\ = (\auto_hub|irsr_reg\(0)) # ((\auto_hub|irsr_reg\(8)) # (\auto_hub|irsr_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|irsr_reg\(0),
	datab => \auto_hub|irsr_reg\(8),
	datac => \auto_hub|irsr_reg\(1),
	combout => \auto_hub|tdo~0_combout\);

-- Location: LCCOMB_X74_Y30_N6
\auto_hub|tdo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo~1_combout\ = (\auto_hub|hub_info_reg|WORD_SR\(0) & (!\auto_hub|tdo~0_combout\ & !\auto_hub|irsr_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|hub_info_reg|WORD_SR\(0),
	datab => \auto_hub|tdo~0_combout\,
	datad => \auto_hub|irsr_reg\(2),
	combout => \auto_hub|tdo~1_combout\);

-- Location: LCCOMB_X74_Y30_N16
\auto_hub|tdo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo~2_combout\ = (!\auto_hub|virtual_ir_scan_reg~q\ & ((\auto_hub|tdo~1_combout\) # ((\auto_hub|tdo_bypass_reg~q\ & \auto_hub|hub_mode_reg[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|tdo_bypass_reg~q\,
	datac => \auto_hub|hub_mode_reg[1]~0_combout\,
	datad => \auto_hub|tdo~1_combout\,
	combout => \auto_hub|tdo~2_combout\);

-- Location: LCCOMB_X74_Y30_N0
\auto_hub|tdo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo~5_combout\ = (\auto_hub|tdo~4_combout\ & (((\auto_hub|tdo~q\)))) # (!\auto_hub|tdo~4_combout\ & (!\auto_hub|tdo~3_combout\ & ((!\auto_hub|tdo~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|tdo~3_combout\,
	datab => \auto_hub|tdo~4_combout\,
	datac => \auto_hub|tdo~q\,
	datad => \auto_hub|tdo~2_combout\,
	combout => \auto_hub|tdo~5_combout\);

-- Location: FF_X74_Y30_N1
\auto_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|tdo~5_combout\,
	clrn => \auto_hub|shadow_jsm|ALT_INV_state\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|tdo~q\);

-- Location: LCCOMB_X62_Y34_N24
\auto_hub|tdo~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \auto_hub|tdo~_wirecell_combout\ = !\auto_hub|tdo~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|tdo~q\,
	combout => \auto_hub|tdo~_wirecell_combout\);

-- Location: LCCOMB_X74_Y31_N14
\auto_hub|clr_reg~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|clr_reg~q\,
	combout => \auto_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X70_Y30_N2
\auto_hub|shadow_jsm|state[0]~_wirecell\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|shadow_jsm|state\(0),
	combout => \auto_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: FF_X76_Y33_N1
\auto_signaltap_0|sld_signaltap_body|trigger_out_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \auto_signaltap_0|sld_signaltap_body|trigger_out_ff~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_signaltap_0|sld_signaltap_body|trigger_out_ff~q\);
END structure;


