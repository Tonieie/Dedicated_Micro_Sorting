-- Copyright (C) 1991-2008 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 8.1 Build 163 10/28/2008 SJ Web Edition"

-- DATE "03/30/2020 18:35:25"

-- 
-- Device: Altera EP3C25F324A7 Package FBGA324
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
-- 

LIBRARY IEEE, cycloneiii;
LIBRARY altera;
USE IEEE.std_logic_1164.all;
USE altera.altera_primitives_components.all;
USE cycloneiii.cycloneiii_components.all;

ENTITY 	Assem IS
    PORT (
	Done : OUT std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	start : IN std_logic;
	AD : IN std_logic;
	Din : IN std_logic_vector(7 DOWNTO 0);
	Dout : OUT std_logic_vector(7 DOWNTO 0)
	);
END Assem;

ARCHITECTURE structure OF Assem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Done : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_AD : std_logic;
SIGNAL ww_Din : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Dout : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|inst2~combout\ : std_logic;
SIGNAL \inst3|process_1~53_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~306_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~308_combout\ : std_logic;
SIGNAL \inst2|inst22~combout\ : std_logic;
SIGNAL \Din[7]~input_o\ : std_logic;
SIGNAL \Din[6]~input_o\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \AD~input_o\ : std_logic;
SIGNAL \inst2|A/D|lpm_ff_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \Dout[7]~output_o\ : std_logic;
SIGNAL \Dout[6]~output_o\ : std_logic;
SIGNAL \Dout[5]~output_o\ : std_logic;
SIGNAL \Dout[4]~output_o\ : std_logic;
SIGNAL \Dout[3]~output_o\ : std_logic;
SIGNAL \Dout[2]~output_o\ : std_logic;
SIGNAL \Dout[1]~output_o\ : std_logic;
SIGNAL \Dout[0]~output_o\ : std_logic;
SIGNAL \Done~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \inst3|reg_fstate.state1~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state1~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state3~23_combout\ : std_logic;
SIGNAL \inst3|fstate.state3~q\ : std_logic;
SIGNAL \inst3|Selector1~15_combout\ : std_logic;
SIGNAL \inst3|fstate.state4~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state5~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state5~q\ : std_logic;
SIGNAL \inst3|Selector2~53_combout\ : std_logic;
SIGNAL \inst3|fstate.state6~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state7~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state7~q\ : std_logic;
SIGNAL \inst3|RBE~42_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|Reg_j|D[0]~35_combout\ : std_logic;
SIGNAL \inst3|Load_j~24_combout\ : std_logic;
SIGNAL \inst3|reg_fstate.state13~8_combout\ : std_logic;
SIGNAL \inst3|fstate.state13~q\ : std_logic;
SIGNAL \inst3|WideOr10~82_combout\ : std_logic;
SIGNAL \inst3|Selector8~15_combout\ : std_logic;
SIGNAL \inst3|fstate.state18~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state14~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state14~q\ : std_logic;
SIGNAL \inst3|Sel_num~60_combout\ : std_logic;
SIGNAL \inst3|Sel_num~61_combout\ : std_logic;
SIGNAL \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ : std_logic;
SIGNAL \inst3|Add_Sub~58_combout\ : std_logic;
SIGNAL \inst3|Add_Sub~59_combout\ : std_logic;
SIGNAL \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\ : std_logic;
SIGNAL \inst2|inst15|lpm_mux_component|auto_generated|result_node[1]~120_combout\ : std_logic;
SIGNAL \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\ : std_logic;
SIGNAL \inst2|inst15|lpm_mux_component|auto_generated|result_node[2]~121_combout\ : std_logic;
SIGNAL \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~75_combout\ : std_logic;
SIGNAL \inst3|Selector7~42_combout\ : std_logic;
SIGNAL \inst3|fstate.state15~q\ : std_logic;
SIGNAL \inst3|WideOr10~81_combout\ : std_logic;
SIGNAL \inst3|Load_i~11_combout\ : std_logic;
SIGNAL \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\ : std_logic;
SIGNAL \inst2|inst17|lpm_mux_component|auto_generated|result_node[0]~116_combout\ : std_logic;
SIGNAL \inst2|inst17|lpm_mux_component|auto_generated|result_node[1]~117_combout\ : std_logic;
SIGNAL \inst2|inst17|lpm_mux_component|auto_generated|result_node[2]~118_combout\ : std_logic;
SIGNAL \inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1600_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1601_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~303_combout\ : std_logic;
SIGNAL \inst2|Buffer|D[1]~302_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1602_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1603_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1604_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1605_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~305_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1606_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1607_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1608_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1609_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1610_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1611_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1612_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1613_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1614_combout\ : std_logic;
SIGNAL \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1615_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~301_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~304_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~307_combout\ : std_logic;
SIGNAL \inst2|Buffer|D~309_combout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~105_cout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~107_cout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~109_cout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~111_cout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~113_cout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~115_cout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~117_cout\ : std_logic;
SIGNAL \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~118_combout\ : std_logic;
SIGNAL \inst3|process_1~54_combout\ : std_logic;
SIGNAL \inst3|reg_fstate.state8~35_combout\ : std_logic;
SIGNAL \inst3|fstate.state8~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state9~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state9~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state10~53_combout\ : std_logic;
SIGNAL \inst3|fstate.state10~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state11~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state11~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state12~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state12~q\ : std_logic;
SIGNAL \inst3|reg_fstate.state16~11_combout\ : std_logic;
SIGNAL \inst3|fstate.state16~q\ : std_logic;
SIGNAL \inst3|CLR~24_combout\ : std_logic;
SIGNAL \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~296_combout\ : std_logic;
SIGNAL \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~297_combout\ : std_logic;
SIGNAL \inst2|inst15|lpm_mux_component|auto_generated|result_node[3]~119_combout\ : std_logic;
SIGNAL \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\ : std_logic;
SIGNAL \inst3|Selector0~42_combout\ : std_logic;
SIGNAL \inst3|fstate.state2~q\ : std_logic;
SIGNAL \inst3|WE~30_combout\ : std_logic;
SIGNAL \inst3|RAE~34_combout\ : std_logic;
SIGNAL \inst3|OE~25_combout\ : std_logic;
SIGNAL \inst3|reg_fstate.state17~10_combout\ : std_logic;
SIGNAL \inst3|fstate.state17~q\ : std_logic;
SIGNAL \inst3|Done~25_combout\ : std_logic;
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Buffer|D\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|inst15|lpm_mux_component|auto_generated|result_node\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Reg_i|D\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|A/D|lpm_ff_component|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|Reg_j|D\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_CLR~24_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_inst2~combout\ : std_logic;

BEGIN

Done <= ww_Done;
ww_reset <= reset;
ww_clock <= clock;
ww_start <= start;
ww_AD <= AD;
ww_Din <= Din;
Dout <= ww_Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1601_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1603_combout\ & 
\inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1605_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1607_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1609_combout\ & 
\inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1611_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1613_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1615_combout\);

\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|inst17|lpm_mux_component|auto_generated|result_node[2]~118_combout\ & 
\inst2|inst17|lpm_mux_component|auto_generated|result_node[1]~117_combout\ & \inst2|inst17|lpm_mux_component|auto_generated|result_node[0]~116_combout\);

\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst2|Reg_i|D\(2) & \inst2|Reg_i|D\(1) & \inst2|Reg_i|D\(0));

\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(0) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(1) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(2) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(3) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(4) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(5) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(6) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(7) <= \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1601_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1603_combout\ & 
\inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1605_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1607_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1609_combout\ & 
\inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1611_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1613_combout\ & \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1615_combout\);

\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|inst17|lpm_mux_component|auto_generated|result_node[2]~118_combout\ & 
\inst2|inst17|lpm_mux_component|auto_generated|result_node[1]~117_combout\ & \inst2|inst17|lpm_mux_component|auto_generated|result_node[0]~116_combout\);

\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\ & 
\inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ & \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\);

\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(0) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7) <= \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst3|ALT_INV_CLR~24_combout\ <= NOT \inst3|CLR~24_combout\;
\inst2|ALT_INV_inst2~combout\ <= NOT \inst2|inst2~combout\;

\inst2|A/D|lpm_ff_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|inst22~combout\,
	d => \inst2|A/D|lpm_ff_component|dffs[0]~feeder_combout\,
	clrn => \inst2|ALT_INV_inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|A/D|lpm_ff_component|dffs\(0));

\inst2|Buffer|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~306_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(3));

\inst2|Buffer|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~308_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(1));

\inst2|inst2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst2~combout\ = !\inst2|inst22~combout\ & !\reset~input_o\ & (\inst3|fstate.state16~q\ # !\inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state1~q\,
	datab => \inst3|fstate.state16~q\,
	datac => \inst2|inst22~combout\,
	datad => \reset~input_o\,
	combout => \inst2|inst2~combout\);

\inst3|process_1~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_1~53_combout\ = !\inst2|Reg_j|D\(0) # !\inst2|Reg_j|D\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_j|D\(1),
	datad => \inst2|Reg_j|D\(0),
	combout => \inst3|process_1~53_combout\);

\inst2|Buffer|D~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~306_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3) & (\reset~input_o\ # !\inst3|fstate.state16~q\ & \inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state16~q\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state1~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3),
	combout => \inst2|Buffer|D~306_combout\);

\inst2|Buffer|D~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~308_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1) & (\reset~input_o\ # \inst3|fstate.state1~q\ & !\inst3|fstate.state16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state1~q\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state16~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1),
	combout => \inst2|Buffer|D~308_combout\);

\inst2|inst22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst22~combout\ = LCELL(\clock~input_o\ & \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock~input_o\,
	datad => \start~input_o\,
	combout => \inst2|inst22~combout\);

\Din[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(7),
	o => \Din[7]~input_o\);

\Din[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(6),
	o => \Din[6]~input_o\);

\Din[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

\Din[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

\Din[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

\Din[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

\Din[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

\Din[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

\AD~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD,
	o => \AD~input_o\);

\inst2|A/D|lpm_ff_component|dffs[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|A/D|lpm_ff_component|dffs[0]~feeder_combout\ = \AD~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \AD~input_o\,
	combout => \inst2|A/D|lpm_ff_component|dffs[0]~feeder_combout\);

\Dout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(7),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[7]~output_o\);

\Dout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(6),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[6]~output_o\);

\Dout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(5),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[5]~output_o\);

\Dout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(4),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[4]~output_o\);

\Dout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(3),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[3]~output_o\);

\Dout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(2),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[2]~output_o\);

\Dout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(1),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[1]~output_o\);

\Dout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|q_b\(0),
	oe => \inst3|OE~25_combout\,
	devoe => ww_devoe,
	o => \Dout[0]~output_o\);

\Done~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Done~25_combout\,
	devoe => ww_devoe,
	o => \Done~output_o\);

\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

\inst3|reg_fstate.state1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state1~10_combout\ = !\reset~input_o\ & (\inst3|fstate.state1~q\ # \start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst3|fstate.state1~q\,
	datad => \start~input_o\,
	combout => \inst3|reg_fstate.state1~10_combout\);

\inst3|fstate.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state1~q\);

\inst3|reg_fstate.state3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state3~23_combout\ = !\reset~input_o\ & \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\ & \inst3|fstate.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\,
	datad => \inst3|fstate.state2~q\,
	combout => \inst3|reg_fstate.state3~23_combout\);

\inst3|fstate.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state3~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state3~q\);

\inst3|Selector1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~15_combout\ = \inst3|fstate.state3~q\ # !\inst2|Reg_i|D\(3) & \inst3|fstate.state12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Reg_i|D\(3),
	datac => \inst3|fstate.state3~q\,
	datad => \inst3|fstate.state12~q\,
	combout => \inst3|Selector1~15_combout\);

\inst3|fstate.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector1~15_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state4~q\);

\inst3|reg_fstate.state5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state5~10_combout\ = \inst3|fstate.state4~q\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.state4~q\,
	datad => \reset~input_o\,
	combout => \inst3|reg_fstate.state5~10_combout\);

\inst3|fstate.state5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state5~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state5~q\);

\inst3|Selector2~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~53_combout\ = \inst3|fstate.state5~q\ # \inst3|fstate.state9~q\ & \inst3|process_1~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.state9~q\,
	datac => \inst3|fstate.state5~q\,
	datad => \inst3|process_1~54_combout\,
	combout => \inst3|Selector2~53_combout\);

\inst3|fstate.state6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector2~53_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state6~q\);

\inst3|reg_fstate.state7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state7~10_combout\ = \inst3|fstate.state6~q\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.state6~q\,
	datad => \reset~input_o\,
	combout => \inst3|reg_fstate.state7~10_combout\);

\inst3|fstate.state7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state7~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state7~q\);

\inst3|RBE~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|RBE~42_combout\ = !\reset~input_o\ & (\inst3|fstate.state4~q\ # \inst3|fstate.state6~q\ # \inst3|fstate.state7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state4~q\,
	datab => \inst3|fstate.state6~q\,
	datac => \inst3|fstate.state7~q\,
	datad => \reset~input_o\,
	combout => \inst3|RBE~42_combout\);

\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

\inst2|Reg_j|D[0]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Reg_j|D[0]~35_combout\ = !\inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\,
	combout => \inst2|Reg_j|D[0]~35_combout\);

\inst3|Load_j~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Load_j~24_combout\ = !\reset~input_o\ & (\inst3|fstate.state4~q\ # \inst3|fstate.state9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst3|fstate.state4~q\,
	datad => \inst3|fstate.state9~q\,
	combout => \inst3|Load_j~24_combout\);

\inst2|Reg_j|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Reg_j|D[0]~35_combout\,
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_j~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_j|D\(0));

\inst2|inst15|lpm_mux_component|auto_generated|result_node[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|lpm_mux_component|auto_generated|result_node\(0) = !\reset~input_o\ & \inst3|fstate.state3~q\ # !\inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\,
	datac => \inst3|fstate.state3~q\,
	combout => \inst2|inst15|lpm_mux_component|auto_generated|result_node\(0));

\inst3|reg_fstate.state13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state13~8_combout\ = !\inst2|A/D|lpm_ff_component|dffs\(0) & \inst2|Reg_i|D\(3) & \inst3|fstate.state12~q\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|A/D|lpm_ff_component|dffs\(0),
	datab => \inst2|Reg_i|D\(3),
	datac => \inst3|fstate.state12~q\,
	datad => \reset~input_o\,
	combout => \inst3|reg_fstate.state13~8_combout\);

\inst3|fstate.state13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state13~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state13~q\);

\inst3|WideOr10~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~82_combout\ = \inst3|fstate.state3~q\ # \inst3|fstate.state13~q\ # \inst3|fstate.state10~q\ # \inst3|fstate.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state3~q\,
	datab => \inst3|fstate.state13~q\,
	datac => \inst3|fstate.state10~q\,
	datad => \inst3|fstate.state2~q\,
	combout => \inst3|WideOr10~82_combout\);

\inst3|Selector8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector8~15_combout\ = \inst3|fstate.state17~q\ # !\inst2|Reg_i|D\(3) & \inst3|fstate.state18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state17~q\,
	datab => \inst2|Reg_i|D\(3),
	datac => \inst3|fstate.state18~q\,
	combout => \inst3|Selector8~15_combout\);

\inst3|fstate.state18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector8~15_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state18~q\);

\inst3|reg_fstate.state14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state14~10_combout\ = \inst3|fstate.state13~q\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|fstate.state13~q\,
	datad => \reset~input_o\,
	combout => \inst3|reg_fstate.state14~10_combout\);

\inst3|fstate.state14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state14~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state14~q\);

\inst3|Sel_num~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Sel_num~60_combout\ = \inst3|fstate.state7~q\ # \inst3|fstate.state8~q\ # \inst3|fstate.state12~q\ # \inst3|fstate.state9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state7~q\,
	datab => \inst3|fstate.state8~q\,
	datac => \inst3|fstate.state12~q\,
	datad => \inst3|fstate.state9~q\,
	combout => \inst3|Sel_num~60_combout\);

\inst3|Sel_num~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Sel_num~61_combout\ = !\reset~input_o\ & (\inst3|fstate.state11~q\ # \inst3|Sel_num~60_combout\ # \inst3|fstate.state6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state11~q\,
	datab => \reset~input_o\,
	datac => \inst3|Sel_num~60_combout\,
	datad => \inst3|fstate.state6~q\,
	combout => \inst3|Sel_num~61_combout\);

\inst2|Reg_j|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\,
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_j~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_j|D\(1));

\inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ = \inst3|Sel_num~61_combout\ & (\inst2|Reg_j|D\(1)) # !\inst3|Sel_num~61_combout\ & \inst2|Reg_i|D\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_i|D\(1),
	datac => \inst3|Sel_num~61_combout\,
	datad => \inst2|Reg_j|D\(1),
	combout => \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\);

\inst3|Add_Sub~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add_Sub~58_combout\ = \inst3|fstate.state13~q\ # \inst3|fstate.state4~q\ # \inst3|fstate.state14~q\ # \inst3|fstate.state9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state13~q\,
	datab => \inst3|fstate.state4~q\,
	datac => \inst3|fstate.state14~q\,
	datad => \inst3|fstate.state9~q\,
	combout => \inst3|Add_Sub~58_combout\);

\inst3|Add_Sub~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Add_Sub~59_combout\ = !\reset~input_o\ & (\inst3|fstate.state15~q\ # \inst3|Add_Sub~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state15~q\,
	datac => \inst3|Add_Sub~58_combout\,
	datad => \reset~input_o\,
	combout => \inst3|Add_Sub~59_combout\);

\inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\ = \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ $ \inst3|Add_Sub~59_combout\ $ \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\,
	datac => \inst3|Add_Sub~59_combout\,
	datad => \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\,
	combout => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\);

\inst2|inst15|lpm_mux_component|auto_generated|result_node[1]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|lpm_mux_component|auto_generated|result_node[1]~120_combout\ = \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\ & (\reset~input_o\ # !\inst3|fstate.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state3~q\,
	datac => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\,
	datad => \reset~input_o\,
	combout => \inst2|inst15|lpm_mux_component|auto_generated|result_node[1]~120_combout\);

\inst2|Reg_i|D[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst15|lpm_mux_component|auto_generated|result_node[1]~120_combout\,
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_i~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_i|D\(1));

\inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\ = \inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\ $ (\inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ & !\inst3|Add_Sub~59_combout\ & 
-- \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\ # !\inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ & \inst3|Add_Sub~59_combout\ & 
-- !\inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\,
	datab => \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\,
	datac => \inst3|Add_Sub~59_combout\,
	datad => \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\,
	combout => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\);

\inst2|inst15|lpm_mux_component|auto_generated|result_node[2]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|lpm_mux_component|auto_generated|result_node[2]~121_combout\ = \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\ & (\reset~input_o\ # !\inst3|fstate.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state3~q\,
	datac => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\,
	datad => \reset~input_o\,
	combout => \inst2|inst15|lpm_mux_component|auto_generated|result_node[2]~121_combout\);

\inst2|Reg_i|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst15|lpm_mux_component|auto_generated|result_node[2]~121_combout\,
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_i~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_i|D\(2));

\inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~75_combout\ = \inst2|Reg_i|D\(1) & \inst2|Reg_i|D\(0) & \inst2|Reg_i|D\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Reg_i|D\(1),
	datac => \inst2|Reg_i|D\(0),
	datad => \inst2|Reg_i|D\(2),
	combout => \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~75_combout\);

\inst3|Selector7~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~42_combout\ = \inst3|fstate.state14~q\ # \inst3|fstate.state15~q\ & (!\inst2|Reg_i|D\(3) # !\inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state14~q\,
	datab => \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~75_combout\,
	datac => \inst3|fstate.state15~q\,
	datad => \inst2|Reg_i|D\(3),
	combout => \inst3|Selector7~42_combout\);

\inst3|fstate.state15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector7~42_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state15~q\);

\inst3|WideOr10~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|WideOr10~81_combout\ = !\inst3|fstate.state17~q\ & !\inst3|fstate.state18~q\ & !\inst3|fstate.state14~q\ & !\inst3|fstate.state15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state17~q\,
	datab => \inst3|fstate.state18~q\,
	datac => \inst3|fstate.state14~q\,
	datad => \inst3|fstate.state15~q\,
	combout => \inst3|WideOr10~81_combout\);

\inst3|Load_i~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Load_i~11_combout\ = !\reset~input_o\ & (\inst3|WideOr10~82_combout\ # !\inst3|WideOr10~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|WideOr10~82_combout\,
	datac => \inst3|WideOr10~81_combout\,
	datad => \reset~input_o\,
	combout => \inst3|Load_i~11_combout\);

\inst2|Reg_i|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst15|lpm_mux_component|auto_generated|result_node\(0),
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_i~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_i|D\(0));

\inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\ = \inst3|Sel_num~61_combout\ & \inst2|Reg_j|D\(0) # !\inst3|Sel_num~61_combout\ & (\inst2|Reg_i|D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Sel_num~61_combout\,
	datac => \inst2|Reg_j|D\(0),
	datad => \inst2|Reg_i|D\(0),
	combout => \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\);

\inst2|inst17|lpm_mux_component|auto_generated|result_node[0]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst17|lpm_mux_component|auto_generated|result_node[0]~116_combout\ = \reset~input_o\ & !\inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\ # !\reset~input_o\ & (\inst3|fstate.state2~q\ & (\inst2|Reg_i|D\(0)) # 
-- !\inst3|fstate.state2~q\ & !\inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\,
	datac => \inst2|Reg_i|D\(0),
	datad => \inst3|fstate.state2~q\,
	combout => \inst2|inst17|lpm_mux_component|auto_generated|result_node[0]~116_combout\);

\inst2|inst17|lpm_mux_component|auto_generated|result_node[1]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst17|lpm_mux_component|auto_generated|result_node[1]~117_combout\ = \inst3|fstate.state2~q\ & (\reset~input_o\ & \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\ # !\reset~input_o\ & (\inst2|Reg_i|D\(1))) # 
-- !\inst3|fstate.state2~q\ & \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~294_combout\,
	datab => \inst3|fstate.state2~q\,
	datac => \inst2|Reg_i|D\(1),
	datad => \reset~input_o\,
	combout => \inst2|inst17|lpm_mux_component|auto_generated|result_node[1]~117_combout\);

\inst2|inst17|lpm_mux_component|auto_generated|result_node[2]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst17|lpm_mux_component|auto_generated|result_node[2]~118_combout\ = \reset~input_o\ & (\inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\) # !\reset~input_o\ & (\inst3|fstate.state2~q\ & \inst2|Reg_i|D\(2) # 
-- !\inst3|fstate.state2~q\ & (\inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst3|fstate.state2~q\,
	datac => \inst2|Reg_i|D\(2),
	datad => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\,
	combout => \inst2|inst17|lpm_mux_component|auto_generated|result_node[2]~118_combout\);

\inst2|Reg_j|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~295_combout\,
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_j~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_j|D\(2));

\inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\ = \inst3|Sel_num~61_combout\ & (\inst2|Reg_j|D\(2)) # !\inst3|Sel_num~61_combout\ & \inst2|Reg_i|D\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_i|D\(2),
	datab => \inst2|Reg_j|D\(2),
	datac => \inst3|Sel_num~61_combout\,
	combout => \inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\);

\~QUARTUS_CREATED_GND~I\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1600\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1600_combout\ = \reset~input_o\ & \Din[7]~input_o\ # !\reset~input_o\ & (\inst3|fstate.state8~q\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7)) # 
-- !\inst3|fstate.state8~q\ & \Din[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[7]~input_o\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state8~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1600_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1601\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1601_combout\ = \reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1600_combout\) # !\reset~input_o\ & (\inst3|fstate.state12~q\ & \inst2|Buffer|D\(7) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1600_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(7),
	datab => \reset~input_o\,
	datac => \inst3|fstate.state12~q\,
	datad => \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1600_combout\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[7]~1601_combout\);

\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sorting:inst2|alt3pram0:Reg_File|alt3pram:alt3pram_component|altdpram:altdpram_component2|altsyncram:ram_block|altsyncram_41q1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear0",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst3|WE~30_combout\,
	portbre => \inst3|RBE~42_combout\,
	clk0 => \clock~inputclkctrl_outclk\,
	clr0 => \inst3|CLR~24_combout\,
	portadatain => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\inst2|Buffer|D~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~303_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6) & (\reset~input_o\ # !\inst3|fstate.state16~q\ & \inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state16~q\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state1~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6),
	combout => \inst2|Buffer|D~303_combout\);

\inst2|Buffer|D[1]~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D[1]~302_combout\ = !\reset~input_o\ & (\inst3|fstate.state16~q\ # \inst3|fstate.state5~q\ # !\inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state1~q\,
	datab => \inst3|fstate.state16~q\,
	datac => \inst3|fstate.state5~q\,
	datad => \reset~input_o\,
	combout => \inst2|Buffer|D[1]~302_combout\);

\inst2|Buffer|D[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~303_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(6));

\inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1602\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1602_combout\ = \inst3|fstate.state8~q\ & (\reset~input_o\ & \Din[6]~input_o\ # !\reset~input_o\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6))) # 
-- !\inst3|fstate.state8~q\ & \Din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[6]~input_o\,
	datab => \inst3|fstate.state8~q\,
	datac => \reset~input_o\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1602_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1603\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1603_combout\ = \inst3|fstate.state12~q\ & (\reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1602_combout\) # !\reset~input_o\ & \inst2|Buffer|D\(6)) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1602_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state12~q\,
	datab => \reset~input_o\,
	datac => \inst2|Buffer|D\(6),
	datad => \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1602_combout\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[6]~1603_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1604\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1604_combout\ = \reset~input_o\ & \Din[5]~input_o\ # !\reset~input_o\ & (\inst3|fstate.state8~q\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5)) # 
-- !\inst3|fstate.state8~q\ & \Din[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[5]~input_o\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state8~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1604_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1605\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1605_combout\ = \reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1604_combout\) # !\reset~input_o\ & (\inst3|fstate.state12~q\ & \inst2|Buffer|D\(5) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1604_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(5),
	datab => \reset~input_o\,
	datac => \inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1604_combout\,
	datad => \inst3|fstate.state12~q\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[5]~1605_combout\);

\inst2|Buffer|D~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~305_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4) & (\reset~input_o\ # !\inst3|fstate.state16~q\ & \inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state16~q\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state1~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4),
	combout => \inst2|Buffer|D~305_combout\);

\inst2|Buffer|D[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~305_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(4));

\inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1606\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1606_combout\ = \reset~input_o\ & \Din[4]~input_o\ # !\reset~input_o\ & (\inst3|fstate.state8~q\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4)) # 
-- !\inst3|fstate.state8~q\ & \Din[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[4]~input_o\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state8~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1606_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1607\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1607_combout\ = \inst3|fstate.state12~q\ & (\reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1606_combout\) # !\reset~input_o\ & \inst2|Buffer|D\(4)) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1606_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state12~q\,
	datab => \inst2|Buffer|D\(4),
	datac => \reset~input_o\,
	datad => \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1606_combout\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[4]~1607_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1608\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1608_combout\ = \inst3|fstate.state8~q\ & (\reset~input_o\ & \Din[3]~input_o\ # !\reset~input_o\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3))) # 
-- !\inst3|fstate.state8~q\ & \Din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[3]~input_o\,
	datab => \inst3|fstate.state8~q\,
	datac => \reset~input_o\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1608_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1609\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1609_combout\ = \reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1608_combout\) # !\reset~input_o\ & (\inst3|fstate.state12~q\ & \inst2|Buffer|D\(3) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1608_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(3),
	datab => \reset~input_o\,
	datac => \inst3|fstate.state12~q\,
	datad => \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1608_combout\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[3]~1609_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1610\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1610_combout\ = \inst3|fstate.state8~q\ & (\reset~input_o\ & \Din[2]~input_o\ # !\reset~input_o\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2))) # 
-- !\inst3|fstate.state8~q\ & \Din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[2]~input_o\,
	datab => \inst3|fstate.state8~q\,
	datac => \reset~input_o\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1610_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1611\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1611_combout\ = \inst3|fstate.state12~q\ & (\reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1610_combout\) # !\reset~input_o\ & \inst2|Buffer|D\(2)) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1610_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(2),
	datab => \inst3|fstate.state12~q\,
	datac => \reset~input_o\,
	datad => \inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1610_combout\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[2]~1611_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1612\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1612_combout\ = \inst3|fstate.state8~q\ & (\reset~input_o\ & \Din[1]~input_o\ # !\reset~input_o\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1))) # 
-- !\inst3|fstate.state8~q\ & \Din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[1]~input_o\,
	datab => \inst3|fstate.state8~q\,
	datac => \reset~input_o\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1612_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1613\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1613_combout\ = \reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1612_combout\) # !\reset~input_o\ & (\inst3|fstate.state12~q\ & \inst2|Buffer|D\(1) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1612_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(1),
	datab => \reset~input_o\,
	datac => \inst3|fstate.state12~q\,
	datad => \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1612_combout\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[1]~1613_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1614\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1614_combout\ = \reset~input_o\ & \Din[0]~input_o\ # !\reset~input_o\ & (\inst3|fstate.state8~q\ & (\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(0)) # 
-- !\inst3|fstate.state8~q\ & \Din[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Din[0]~input_o\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state8~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(0),
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1614_combout\);

\inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1615\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1615_combout\ = \inst3|fstate.state12~q\ & (\reset~input_o\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1614_combout\) # !\reset~input_o\ & \inst2|Buffer|D\(0)) # 
-- !\inst3|fstate.state12~q\ & (\inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1614_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(0),
	datab => \inst3|fstate.state12~q\,
	datac => \reset~input_o\,
	datad => \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1614_combout\,
	combout => \inst2|inst18|lpm_mux_component|auto_generated|result_node[0]~1615_combout\);

\inst2|Buffer|D~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~301_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7) & (\reset~input_o\ # !\inst3|fstate.state16~q\ & \inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state16~q\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state1~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7),
	combout => \inst2|Buffer|D~301_combout\);

\inst2|Buffer|D[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~301_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(7));

\inst2|Buffer|D~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~304_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5) & (\reset~input_o\ # !\inst3|fstate.state16~q\ & \inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state16~q\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state1~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5),
	combout => \inst2|Buffer|D~304_combout\);

\inst2|Buffer|D[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~304_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(5));

\inst2|Buffer|D~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~307_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2) & (\reset~input_o\ # !\inst3|fstate.state16~q\ & \inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state16~q\,
	datab => \reset~input_o\,
	datac => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2),
	datad => \inst3|fstate.state1~q\,
	combout => \inst2|Buffer|D~307_combout\);

\inst2|Buffer|D[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~307_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(2));

\inst2|Buffer|D~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Buffer|D~309_combout\ = \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(0) & (\reset~input_o\ # !\inst3|fstate.state16~q\ & \inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state16~q\,
	datab => \reset~input_o\,
	datac => \inst3|fstate.state1~q\,
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(0),
	combout => \inst2|Buffer|D~309_combout\);

\inst2|Buffer|D[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Buffer|D~309_combout\,
	ena => \inst2|Buffer|D[1]~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Buffer|D\(0));

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~105_cout\ = CARRY(\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(0) & !\inst2|Buffer|D\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(0),
	datab => \inst2|Buffer|D\(0),
	datad => VCC,
	cout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~105_cout\);

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~107_cout\ = CARRY(\inst2|Buffer|D\(1) & (!\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~105_cout\ # 
-- !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1)) # !\inst2|Buffer|D\(1) & !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1) & 
-- !\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~105_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(1),
	datab => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(1),
	datad => VCC,
	cin => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~105_cout\,
	cout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~107_cout\);

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~109_cout\ = CARRY(\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2) & (!\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~107_cout\ 
-- # !\inst2|Buffer|D\(2)) # !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2) & !\inst2|Buffer|D\(2) & !\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~107_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(2),
	datab => \inst2|Buffer|D\(2),
	datad => VCC,
	cin => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~107_cout\,
	cout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~109_cout\);

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~111_cout\ = CARRY(\inst2|Buffer|D\(3) & (!\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~109_cout\ # 
-- !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3)) # !\inst2|Buffer|D\(3) & !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3) & 
-- !\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~109_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Buffer|D\(3),
	datab => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(3),
	datad => VCC,
	cin => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~109_cout\,
	cout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~111_cout\);

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~113_cout\ = CARRY(\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4) & (!\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~111_cout\ 
-- # !\inst2|Buffer|D\(4)) # !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4) & !\inst2|Buffer|D\(4) & !\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~111_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(4),
	datab => \inst2|Buffer|D\(4),
	datad => VCC,
	cin => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~111_cout\,
	cout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~113_cout\);

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~115_cout\ = CARRY(\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5) & \inst2|Buffer|D\(5) & 
-- !\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~113_cout\ # !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5) & (\inst2|Buffer|D\(5) # 
-- !\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~113_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(5),
	datab => \inst2|Buffer|D\(5),
	datad => VCC,
	cin => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~113_cout\,
	cout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~115_cout\);

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~117_cout\ = CARRY(\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6) & (!\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~115_cout\ 
-- # !\inst2|Buffer|D\(6)) # !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6) & !\inst2|Buffer|D\(6) & !\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~115_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(6),
	datab => \inst2|Buffer|D\(6),
	datad => VCC,
	cin => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~115_cout\,
	cout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~117_cout\);

\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~118_combout\ = \inst2|Buffer|D\(7) & (\inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~117_cout\ # 
-- !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7)) # !\inst2|Buffer|D\(7) & \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~117_cout\ & 
-- !\inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Buffer|D\(7),
	datad => \inst2|Reg_File|alt3pram_component|altdpram_component2|ram_block|auto_generated|q_b\(7),
	cin => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~117_cout\,
	combout => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~118_combout\);

\inst3|process_1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|process_1~54_combout\ = \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~118_combout\ & (\inst3|process_1~53_combout\ # !\inst2|Reg_j|D\(2) # !\inst2|Reg_j|D\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|process_1~53_combout\,
	datab => \inst2|Reg_j|D\(3),
	datac => \inst2|buffer_less_result|lpm_compare_component|auto_generated|op_1~118_combout\,
	datad => \inst2|Reg_j|D\(2),
	combout => \inst3|process_1~54_combout\);

\inst3|reg_fstate.state8~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state8~35_combout\ = \inst3|fstate.state7~q\ & !\reset~input_o\ & \inst3|process_1~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state7~q\,
	datac => \reset~input_o\,
	datad => \inst3|process_1~54_combout\,
	combout => \inst3|reg_fstate.state8~35_combout\);

\inst3|fstate.state8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state8~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state8~q\);

\inst3|reg_fstate.state9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state9~10_combout\ = !\reset~input_o\ & \inst3|fstate.state8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst3|fstate.state8~q\,
	combout => \inst3|reg_fstate.state9~10_combout\);

\inst3|fstate.state9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state9~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state9~q\);

\inst3|reg_fstate.state10~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state10~53_combout\ = !\reset~input_o\ & !\inst3|process_1~54_combout\ & (\inst3|fstate.state7~q\ # \inst3|fstate.state9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state7~q\,
	datab => \inst3|fstate.state9~q\,
	datac => \reset~input_o\,
	datad => \inst3|process_1~54_combout\,
	combout => \inst3|reg_fstate.state10~53_combout\);

\inst3|fstate.state10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state10~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state10~q\);

\inst3|reg_fstate.state11~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state11~10_combout\ = \inst3|fstate.state10~q\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.state10~q\,
	datad => \reset~input_o\,
	combout => \inst3|reg_fstate.state11~10_combout\);

\inst3|fstate.state11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state11~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state11~q\);

\inst3|reg_fstate.state12~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state12~10_combout\ = \inst3|fstate.state11~q\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|fstate.state11~q\,
	datad => \reset~input_o\,
	combout => \inst3|reg_fstate.state12~10_combout\);

\inst3|fstate.state12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state12~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state12~q\);

\inst3|reg_fstate.state16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state16~11_combout\ = \inst2|A/D|lpm_ff_component|dffs\(0) & \inst2|Reg_i|D\(3) & \inst3|fstate.state12~q\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|A/D|lpm_ff_component|dffs\(0),
	datab => \inst2|Reg_i|D\(3),
	datac => \inst3|fstate.state12~q\,
	datad => \reset~input_o\,
	combout => \inst3|reg_fstate.state16~11_combout\);

\inst3|fstate.state16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state16~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state16~q\);

\inst3|CLR~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|CLR~24_combout\ = !\reset~input_o\ & (\inst3|fstate.state16~q\ # !\inst3|fstate.state1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \inst3|fstate.state16~q\,
	datad => \inst3|fstate.state1~q\,
	combout => \inst3|CLR~24_combout\);

\inst2|Reg_j|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~297_combout\,
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_j~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_j|D\(3));

\inst2|inst10|lpm_add_sub_component|auto_generated|op_1~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~296_combout\ = \inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\ & \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ & !\inst3|Add_Sub~59_combout\ & 
-- \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\ # !\inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\ & !\inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\ & 
-- \inst3|Add_Sub~59_combout\ & !\inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst16|lpm_mux_component|auto_generated|result_node[2]~342_combout\,
	datab => \inst2|inst16|lpm_mux_component|auto_generated|result_node[1]~341_combout\,
	datac => \inst3|Add_Sub~59_combout\,
	datad => \inst2|inst16|lpm_mux_component|auto_generated|result_node[0]~340_combout\,
	combout => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~296_combout\);

\inst2|inst10|lpm_add_sub_component|auto_generated|op_1~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~297_combout\ = \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~296_combout\ $ (\inst3|Sel_num~61_combout\ & (\inst2|Reg_j|D\(3)) # !\inst3|Sel_num~61_combout\ & \inst2|Reg_i|D\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Sel_num~61_combout\,
	datab => \inst2|Reg_i|D\(3),
	datac => \inst2|Reg_j|D\(3),
	datad => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~296_combout\,
	combout => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~297_combout\);

\inst2|inst15|lpm_mux_component|auto_generated|result_node[3]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst15|lpm_mux_component|auto_generated|result_node[3]~119_combout\ = \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~297_combout\ & (\reset~input_o\ # !\inst3|fstate.state3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst2|inst10|lpm_add_sub_component|auto_generated|op_1~297_combout\,
	datac => \inst3|fstate.state3~q\,
	combout => \inst2|inst15|lpm_mux_component|auto_generated|result_node[3]~119_combout\);

\inst2|Reg_i|D[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|inst15|lpm_mux_component|auto_generated|result_node[3]~119_combout\,
	clrn => \inst3|ALT_INV_CLR~24_combout\,
	ena => \inst3|Load_i~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Reg_i|D\(3));

\inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\ = \inst2|Reg_i|D\(3) # \inst2|Reg_i|D\(1) & \inst2|Reg_i|D\(2) & \inst2|Reg_i|D\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Reg_i|D\(1),
	datab => \inst2|Reg_i|D\(3),
	datac => \inst2|Reg_i|D\(2),
	datad => \inst2|Reg_i|D\(0),
	combout => \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\);

\inst3|Selector0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~42_combout\ = \inst3|fstate.state1~q\ & !\inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\ & \inst3|fstate.state2~q\ # !\inst3|fstate.state1~q\ & (\start~input_o\ # 
-- !\inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\ & \inst3|fstate.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state1~q\,
	datab => \inst2|i_lessthan_8|lpm_compare_component|auto_generated|op_1~76_combout\,
	datac => \inst3|fstate.state2~q\,
	datad => \start~input_o\,
	combout => \inst3|Selector0~42_combout\);

\inst3|fstate.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|Selector0~42_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state2~q\);

\inst3|WE~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|WE~30_combout\ = !\reset~input_o\ & (\inst3|fstate.state8~q\ # \inst3|fstate.state2~q\ # \inst3|fstate.state12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state8~q\,
	datab => \inst3|fstate.state2~q\,
	datac => \inst3|fstate.state12~q\,
	datad => \reset~input_o\,
	combout => \inst3|WE~30_combout\);

\inst3|RAE~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|RAE~34_combout\ = !\inst3|WideOr10~81_combout\ & !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|WideOr10~81_combout\,
	datac => \reset~input_o\,
	combout => \inst3|RAE~34_combout\);

\inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sorting:inst2|alt3pram0:Reg_File|alt3pram:alt3pram_component|altdpram:altdpram_component1|altsyncram:ram_block|altsyncram_41q1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 8,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "clear0",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 8,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \inst3|WE~30_combout\,
	portbre => \inst3|RAE~34_combout\,
	clk0 => \clock~inputclkctrl_outclk\,
	clr0 => \inst3|CLR~24_combout\,
	portadatain => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \inst2|Reg_File|alt3pram_component|altdpram_component1|ram_block|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\inst3|OE~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|OE~25_combout\ = !\reset~input_o\ & (\inst3|fstate.state18~q\ # \inst3|fstate.state15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|fstate.state18~q\,
	datac => \reset~input_o\,
	datad => \inst3|fstate.state15~q\,
	combout => \inst3|OE~25_combout\);

\inst3|reg_fstate.state17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|reg_fstate.state17~10_combout\ = !\reset~input_o\ & \inst3|fstate.state16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \inst3|fstate.state16~q\,
	combout => \inst3|reg_fstate.state17~10_combout\);

\inst3|fstate.state17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst3|reg_fstate.state17~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|fstate.state17~q\);

\inst3|Done~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Done~25_combout\ = !\reset~input_o\ & (\inst3|fstate.state14~q\ # \inst3|fstate.state17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|fstate.state14~q\,
	datab => \reset~input_o\,
	datad => \inst3|fstate.state17~q\,
	combout => \inst3|Done~25_combout\);

ww_Done <= \Done~output_o\;

ww_Dout(7) <= \Dout[7]~output_o\;

ww_Dout(6) <= \Dout[6]~output_o\;

ww_Dout(5) <= \Dout[5]~output_o\;

ww_Dout(4) <= \Dout[4]~output_o\;

ww_Dout(3) <= \Dout[3]~output_o\;

ww_Dout(2) <= \Dout[2]~output_o\;

ww_Dout(1) <= \Dout[1]~output_o\;

ww_Dout(0) <= \Dout[0]~output_o\;
END structure;


