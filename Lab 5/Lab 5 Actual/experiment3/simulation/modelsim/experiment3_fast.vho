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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Full Version"

-- DATE "10/15/2013 20:29:09"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE experiment3_data_type IS

TYPE SEVEN_SEGMENT_N_O_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE SEVEN_SEGMENT_N_O_6_0_7_0_type IS ARRAY (7 DOWNTO 0) OF SEVEN_SEGMENT_N_O_6_0_type;
SUBTYPE SEVEN_SEGMENT_N_O_type IS SEVEN_SEGMENT_N_O_6_0_7_0_type;

END experiment3_data_type;

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.EXPERIMENT3_DATA_TYPE.ALL;

ENTITY 	experiment3 IS
    PORT (
	CLOCK_27_I : IN std_logic;
	CLOCK_50_I : IN std_logic;
	PUSH_BUTTON_I : IN std_logic_vector(3 DOWNTO 0);
	SWITCH_I : IN std_logic_vector(17 DOWNTO 0);
	SEVEN_SEGMENT_N_O : OUT SEVEN_SEGMENT_N_O_type;
	LED_GREEN_O : OUT std_logic_vector(8 DOWNTO 0);
	UART_RX_I : IN std_logic;
	UART_TX_O : OUT std_logic;
	TD_RESET : OUT std_logic
	);
END experiment3;

-- Design Ports Information
-- PUSH_BUTTON_I[0]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[1]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[2]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[3]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEVEN_SEGMENT_N_O[0][0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TX_O	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TD_RESET	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50_I	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27_I	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RX_I	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF experiment3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_27_I : std_logic;
SIGNAL ww_CLOCK_50_I : std_logic;
SIGNAL ww_PUSH_BUTTON_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SWITCH_I : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SEVEN_SEGMENT_N_O : SEVEN_SEGMENT_N_O_type;
SIGNAL ww_LED_GREEN_O : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_UART_RX_I : std_logic;
SIGNAL ww_UART_TX_O : std_logic;
SIGNAL ww_TD_RESET : std_logic;
SIGNAL \UART_clock_inst|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \UART_clock_inst|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLOCK_50_I~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_clock_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART_clock_inst|altpll_component|pll~CLK1\ : std_logic;
SIGNAL \UART_clock_inst|altpll_component|pll~CLK2\ : std_logic;
SIGNAL \UART_tx_clock_div[2]~12_combout\ : std_logic;
SIGNAL \UART_tx_clock_div[3]~15\ : std_logic;
SIGNAL \UART_tx_clock_div[4]~17\ : std_logic;
SIGNAL \UART_tx_clock_div[4]~16_combout\ : std_logic;
SIGNAL \UART_tx_clock_div[5]~19\ : std_logic;
SIGNAL \UART_tx_clock_div[5]~18_combout\ : std_logic;
SIGNAL \UART_tx_clock_div[6]~21\ : std_logic;
SIGNAL \UART_tx_clock_div[6]~20_combout\ : std_logic;
SIGNAL \UART_tx_clock_div[7]~22_combout\ : std_logic;
SIGNAL \UART_RX|Frame_error~regout\ : std_logic;
SIGNAL \UART_RX|Empty~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \UART_RX|Frame_error~0_combout\ : std_logic;
SIGNAL \UART_RX|Overrun~0_combout\ : std_logic;
SIGNAL \UART_RX|always0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \TX_state~15_combout\ : std_logic;
SIGNAL \UART_rx_address[0]~9_combout\ : std_logic;
SIGNAL \switch_0_buf~regout\ : std_logic;
SIGNAL \UART_rx_address[8]~11_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \UART_rx_address[2]~16\ : std_logic;
SIGNAL \UART_rx_address[3]~18\ : std_logic;
SIGNAL \UART_rx_address[4]~20\ : std_logic;
SIGNAL \UART_rx_address[5]~22\ : std_logic;
SIGNAL \UART_rx_address[6]~24\ : std_logic;
SIGNAL \UART_rx_address[7]~25_combout\ : std_logic;
SIGNAL \UART_RX_I~combout\ : std_logic;
SIGNAL \UART_RX|RX_data_in~regout\ : std_logic;
SIGNAL \UART_rx_unload_data~0_combout\ : std_logic;
SIGNAL \UART_rx_unload_data~regout\ : std_logic;
SIGNAL \UART_RX|Empty~1_combout\ : std_logic;
SIGNAL \UART_RX|Empty~regout\ : std_logic;
SIGNAL \UART_rx_address[8]~12_combout\ : std_logic;
SIGNAL \UART_rx_address[7]~26\ : std_logic;
SIGNAL \UART_rx_address[8]~27_combout\ : std_logic;
SIGNAL \UART_rx_address[1]~13_combout\ : std_logic;
SIGNAL \UART_rx_address[3]~17_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \UART_rx_address[6]~23_combout\ : std_logic;
SIGNAL \UART_rx_address[4]~19_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \RX_state~7_regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \RX_state~8_regout\ : std_logic;
SIGNAL \UART_rx_address[0]~10\ : std_logic;
SIGNAL \UART_rx_address[1]~14\ : std_logic;
SIGNAL \UART_rx_address[2]~15_combout\ : std_logic;
SIGNAL \unit0|WideOr6~0_combout\ : std_logic;
SIGNAL \unit0|WideOr5~0_combout\ : std_logic;
SIGNAL \unit0|WideOr4~0_combout\ : std_logic;
SIGNAL \unit0|WideOr3~0_combout\ : std_logic;
SIGNAL \unit0|WideOr2~0_combout\ : std_logic;
SIGNAL \unit0|WideOr1~0_combout\ : std_logic;
SIGNAL \unit0|WideOr0~0_combout\ : std_logic;
SIGNAL \UART_rx_address[5]~21_combout\ : std_logic;
SIGNAL \unit1|WideOr6~0_combout\ : std_logic;
SIGNAL \unit1|WideOr5~0_combout\ : std_logic;
SIGNAL \unit1|WideOr4~0_combout\ : std_logic;
SIGNAL \unit1|WideOr3~0_combout\ : std_logic;
SIGNAL \unit1|WideOr2~0_combout\ : std_logic;
SIGNAL \unit1|WideOr1~0_combout\ : std_logic;
SIGNAL \unit1|WideOr0~0_combout\ : std_logic;
SIGNAL \UART_tx_clock_div[0]~9\ : std_logic;
SIGNAL \UART_tx_clock_div[1]~10_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \UART_tx_clock_div[1]~11\ : std_logic;
SIGNAL \UART_tx_clock_div[2]~13\ : std_logic;
SIGNAL \UART_tx_clock_div[3]~14_combout\ : std_logic;
SIGNAL \UART_tx_clock_div[0]~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \UART_tx_clock~0_combout\ : std_logic;
SIGNAL \UART_tx_clock~regout\ : std_logic;
SIGNAL \UART_tx_clock_buf~regout\ : std_logic;
SIGNAL \UART_TX|TXC_state~10_combout\ : std_logic;
SIGNAL \UART_TX|TXC_state~9_regout\ : std_logic;
SIGNAL \UART_tx_clock_enable~0_combout\ : std_logic;
SIGNAL \switch_1_buf~regout\ : std_logic;
SIGNAL \UART_tx_address[0]~11_combout\ : std_logic;
SIGNAL \TX_state~12_combout\ : std_logic;
SIGNAL \TX_state~8_regout\ : std_logic;
SIGNAL \UART_tx_address[0]~10\ : std_logic;
SIGNAL \UART_tx_address[1]~13_combout\ : std_logic;
SIGNAL \TX_state.S_TX_TRANSMIT_DATA~0_combout\ : std_logic;
SIGNAL \UART_tx_address[0]~12_combout\ : std_logic;
SIGNAL \UART_tx_address[1]~14\ : std_logic;
SIGNAL \UART_tx_address[2]~15_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \UART_tx_address[2]~16\ : std_logic;
SIGNAL \UART_tx_address[3]~17_combout\ : std_logic;
SIGNAL \UART_tx_address[3]~18\ : std_logic;
SIGNAL \UART_tx_address[4]~20\ : std_logic;
SIGNAL \UART_tx_address[5]~21_combout\ : std_logic;
SIGNAL \UART_tx_address[5]~22\ : std_logic;
SIGNAL \UART_tx_address[6]~24\ : std_logic;
SIGNAL \UART_tx_address[7]~26\ : std_logic;
SIGNAL \UART_tx_address[8]~27_combout\ : std_logic;
SIGNAL \UART_tx_address[7]~25_combout\ : std_logic;
SIGNAL \UART_tx_address[4]~19_combout\ : std_logic;
SIGNAL \UART_tx_address[6]~23_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \UART_tx_done~1_combout\ : std_logic;
SIGNAL \TX_state~13_combout\ : std_logic;
SIGNAL \TX_state~14_combout\ : std_logic;
SIGNAL \TX_state~9_regout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \UART_tx_start~regout\ : std_logic;
SIGNAL \UART_TX|TXC_state~11_combout\ : std_logic;
SIGNAL \UART_TX|TXC_state~8_regout\ : std_logic;
SIGNAL \UART_TX|Empty~0_combout\ : std_logic;
SIGNAL \UART_TX|Empty~1_combout\ : std_logic;
SIGNAL \UART_TX|Empty~regout\ : std_logic;
SIGNAL \UART_tx_address[0]~9_combout\ : std_logic;
SIGNAL \unit3|WideOr6~0_combout\ : std_logic;
SIGNAL \unit3|WideOr5~0_combout\ : std_logic;
SIGNAL \unit3|WideOr4~0_combout\ : std_logic;
SIGNAL \unit3|WideOr3~0_combout\ : std_logic;
SIGNAL \unit3|WideOr2~0_combout\ : std_logic;
SIGNAL \unit3|WideOr1~0_combout\ : std_logic;
SIGNAL \unit3|WideOr0~0_combout\ : std_logic;
SIGNAL \unit4|WideOr6~0_combout\ : std_logic;
SIGNAL \unit4|WideOr5~0_combout\ : std_logic;
SIGNAL \unit4|WideOr4~0_combout\ : std_logic;
SIGNAL \unit4|WideOr3~0_combout\ : std_logic;
SIGNAL \unit4|WideOr2~0_combout\ : std_logic;
SIGNAL \unit4|WideOr1~0_combout\ : std_logic;
SIGNAL \unit4|WideOr0~0_combout\ : std_logic;
SIGNAL \CLOCK_50_I~combout\ : std_logic;
SIGNAL \CLOCK_50_I~clkctrl_outclk\ : std_logic;
SIGNAL \UART_rx_done~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \UART_rx_done~regout\ : std_logic;
SIGNAL \error_count[0]~0_combout\ : std_logic;
SIGNAL \error_count[1]~1_combout\ : std_logic;
SIGNAL \error_count[2]~2_combout\ : std_logic;
SIGNAL \UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[0]~11\ : std_logic;
SIGNAL \UART_RX|clock_count[1]~15_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[7]~27_combout\ : std_logic;
SIGNAL \UART_rx_enable~0_combout\ : std_logic;
SIGNAL \UART_rx_enable~regout\ : std_logic;
SIGNAL \UART_RX|clock_count[7]~13_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[7]~14_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[0]~10_combout\ : std_logic;
SIGNAL \UART_RX|Equal2~0_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[6]~25_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[8]~29_combout\ : std_logic;
SIGNAL \UART_RX|always0~1_combout\ : std_logic;
SIGNAL \UART_RX|always0~2_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[7]~12_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[1]~16\ : std_logic;
SIGNAL \UART_RX|clock_count[2]~18\ : std_logic;
SIGNAL \UART_RX|clock_count[3]~19_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[3]~20\ : std_logic;
SIGNAL \UART_RX|clock_count[4]~21_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[4]~22\ : std_logic;
SIGNAL \UART_RX|clock_count[5]~23_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[5]~24\ : std_logic;
SIGNAL \UART_RX|clock_count[6]~26\ : std_logic;
SIGNAL \UART_RX|clock_count[7]~28\ : std_logic;
SIGNAL \UART_RX|clock_count[8]~30\ : std_logic;
SIGNAL \UART_RX|clock_count[9]~31_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[2]~17_combout\ : std_logic;
SIGNAL \UART_RX|Equal2~1_combout\ : std_logic;
SIGNAL \UART_RX|Equal2~2_combout\ : std_logic;
SIGNAL \UART_RX|data_count[2]~8_combout\ : std_logic;
SIGNAL \UART_RX|data_count[2]~10_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[7]~33_combout\ : std_logic;
SIGNAL \UART_RX|clock_count[7]~34_combout\ : std_logic;
SIGNAL \UART_RX|data_count[2]~7_combout\ : std_logic;
SIGNAL \UART_RX|data_count[1]~9_combout\ : std_logic;
SIGNAL \UART_RX|data_count[0]~11_combout\ : std_logic;
SIGNAL \UART_RX|Add1~0_combout\ : std_logic;
SIGNAL \UART_RX|Selector3~0_combout\ : std_logic;
SIGNAL \UART_RX|RXC_state~13_combout\ : std_logic;
SIGNAL \UART_RX|RXC_state~14_combout\ : std_logic;
SIGNAL \UART_RX|RXC_state~9_regout\ : std_logic;
SIGNAL \UART_RX|Selector3~1_combout\ : std_logic;
SIGNAL \UART_RX|RXC_state~15_combout\ : std_logic;
SIGNAL \UART_RX|RXC_state~12_combout\ : std_logic;
SIGNAL \UART_RX|RXC_state~8_regout\ : std_logic;
SIGNAL \UART_RX|data_count[2]~6_combout\ : std_logic;
SIGNAL \UART_RX|Selector18~0_combout\ : std_logic;
SIGNAL \UART_RX|Overrun~1_combout\ : std_logic;
SIGNAL \UART_RX|Overrun~regout\ : std_logic;
SIGNAL \over_run_count[0]~0_combout\ : std_logic;
SIGNAL \over_run_count[1]~1_combout\ : std_logic;
SIGNAL \over_run_count[2]~2_combout\ : std_logic;
SIGNAL \CLOCK_27_I~combout\ : std_logic;
SIGNAL \UART_clock_inst|altpll_component|_clk0\ : std_logic;
SIGNAL \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \UART_tx_done~2_combout\ : std_logic;
SIGNAL \UART_tx_done~0_combout\ : std_logic;
SIGNAL \UART_tx_done~3_combout\ : std_logic;
SIGNAL \UART_tx_done~regout\ : std_logic;
SIGNAL \UART_TX|Selector0~0_combout\ : std_logic;
SIGNAL \UART_TX|UART_TX_O~regout\ : std_logic;
SIGNAL over_run_count : std_logic_vector(2 DOWNTO 0);
SIGNAL error_count : std_logic_vector(2 DOWNTO 0);
SIGNAL UART_tx_clock_div : std_logic_vector(7 DOWNTO 0);
SIGNAL UART_tx_address : std_logic_vector(8 DOWNTO 0);
SIGNAL UART_rx_address : std_logic_vector(8 DOWNTO 0);
SIGNAL \UART_RX|data_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART_RX|clock_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \unit3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \unit0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \ALT_INV_RX_state~8_regout\ : std_logic;
SIGNAL \UART_TX|ALT_INV_UART_TX_O~regout\ : std_logic;
SIGNAL \ALT_INV_UART_tx_done~regout\ : std_logic;
SIGNAL \ALT_INV_UART_rx_done~regout\ : std_logic;
SIGNAL \unit4|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_27_I <= CLOCK_27_I;
ww_CLOCK_50_I <= CLOCK_50_I;
ww_PUSH_BUTTON_I <= PUSH_BUTTON_I;
ww_SWITCH_I <= SWITCH_I;
SEVEN_SEGMENT_N_O <= ww_SEVEN_SEGMENT_N_O;
LED_GREEN_O <= ww_LED_GREEN_O;
ww_UART_RX_I <= UART_RX_I;
UART_TX_O <= ww_UART_TX_O;
TD_RESET <= ww_TD_RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\UART_clock_inst|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_27_I~combout\);

\UART_clock_inst|altpll_component|_clk0\ <= \UART_clock_inst|altpll_component|pll_CLK_bus\(0);
\UART_clock_inst|altpll_component|pll~CLK1\ <= \UART_clock_inst|altpll_component|pll_CLK_bus\(1);
\UART_clock_inst|altpll_component|pll~CLK2\ <= \UART_clock_inst|altpll_component|pll_CLK_bus\(2);

\CLOCK_50_I~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50_I~combout\);

\UART_clock_inst|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \UART_clock_inst|altpll_component|_clk0\);
\unit3|ALT_INV_WideOr0~0_combout\ <= NOT \unit3|WideOr0~0_combout\;
\unit1|ALT_INV_WideOr0~0_combout\ <= NOT \unit1|WideOr0~0_combout\;
\unit0|ALT_INV_WideOr0~0_combout\ <= NOT \unit0|WideOr0~0_combout\;
\ALT_INV_RX_state~8_regout\ <= NOT \RX_state~8_regout\;
\UART_TX|ALT_INV_UART_TX_O~regout\ <= NOT \UART_TX|UART_TX_O~regout\;
\ALT_INV_UART_tx_done~regout\ <= NOT \UART_tx_done~regout\;
\ALT_INV_UART_rx_done~regout\ <= NOT \UART_rx_done~regout\;
\unit4|ALT_INV_WideOr0~0_combout\ <= NOT \unit4|WideOr0~0_combout\;

-- Location: LCFF_X4_Y16_N17
\UART_tx_clock_div[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[2]~12_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(2));

-- Location: LCFF_X4_Y16_N21
\UART_tx_clock_div[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[4]~16_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(4));

-- Location: LCFF_X4_Y16_N23
\UART_tx_clock_div[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[5]~18_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(5));

-- Location: LCFF_X4_Y16_N25
\UART_tx_clock_div[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[6]~20_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(6));

-- Location: LCFF_X4_Y16_N27
\UART_tx_clock_div[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[7]~22_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(7));

-- Location: LCCOMB_X4_Y16_N16
\UART_tx_clock_div[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[2]~12_combout\ = (UART_tx_clock_div(2) & (\UART_tx_clock_div[1]~11\ $ (GND))) # (!UART_tx_clock_div(2) & (!\UART_tx_clock_div[1]~11\ & VCC))
-- \UART_tx_clock_div[2]~13\ = CARRY((UART_tx_clock_div(2) & !\UART_tx_clock_div[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_clock_div(2),
	datad => VCC,
	cin => \UART_tx_clock_div[1]~11\,
	combout => \UART_tx_clock_div[2]~12_combout\,
	cout => \UART_tx_clock_div[2]~13\);

-- Location: LCCOMB_X4_Y16_N18
\UART_tx_clock_div[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[3]~14_combout\ = (UART_tx_clock_div(3) & (!\UART_tx_clock_div[2]~13\)) # (!UART_tx_clock_div(3) & ((\UART_tx_clock_div[2]~13\) # (GND)))
-- \UART_tx_clock_div[3]~15\ = CARRY((!\UART_tx_clock_div[2]~13\) # (!UART_tx_clock_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_tx_clock_div(3),
	datad => VCC,
	cin => \UART_tx_clock_div[2]~13\,
	combout => \UART_tx_clock_div[3]~14_combout\,
	cout => \UART_tx_clock_div[3]~15\);

-- Location: LCCOMB_X4_Y16_N20
\UART_tx_clock_div[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[4]~16_combout\ = (UART_tx_clock_div(4) & (\UART_tx_clock_div[3]~15\ $ (GND))) # (!UART_tx_clock_div(4) & (!\UART_tx_clock_div[3]~15\ & VCC))
-- \UART_tx_clock_div[4]~17\ = CARRY((UART_tx_clock_div(4) & !\UART_tx_clock_div[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_clock_div(4),
	datad => VCC,
	cin => \UART_tx_clock_div[3]~15\,
	combout => \UART_tx_clock_div[4]~16_combout\,
	cout => \UART_tx_clock_div[4]~17\);

-- Location: LCCOMB_X4_Y16_N22
\UART_tx_clock_div[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[5]~18_combout\ = (UART_tx_clock_div(5) & (!\UART_tx_clock_div[4]~17\)) # (!UART_tx_clock_div(5) & ((\UART_tx_clock_div[4]~17\) # (GND)))
-- \UART_tx_clock_div[5]~19\ = CARRY((!\UART_tx_clock_div[4]~17\) # (!UART_tx_clock_div(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_tx_clock_div(5),
	datad => VCC,
	cin => \UART_tx_clock_div[4]~17\,
	combout => \UART_tx_clock_div[5]~18_combout\,
	cout => \UART_tx_clock_div[5]~19\);

-- Location: LCCOMB_X4_Y16_N24
\UART_tx_clock_div[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[6]~20_combout\ = (UART_tx_clock_div(6) & (\UART_tx_clock_div[5]~19\ $ (GND))) # (!UART_tx_clock_div(6) & (!\UART_tx_clock_div[5]~19\ & VCC))
-- \UART_tx_clock_div[6]~21\ = CARRY((UART_tx_clock_div(6) & !\UART_tx_clock_div[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_clock_div(6),
	datad => VCC,
	cin => \UART_tx_clock_div[5]~19\,
	combout => \UART_tx_clock_div[6]~20_combout\,
	cout => \UART_tx_clock_div[6]~21\);

-- Location: LCCOMB_X4_Y16_N26
\UART_tx_clock_div[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[7]~22_combout\ = \UART_tx_clock_div[6]~21\ $ (UART_tx_clock_div(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => UART_tx_clock_div(7),
	cin => \UART_tx_clock_div[6]~21\,
	combout => \UART_tx_clock_div[7]~22_combout\);

-- Location: LCFF_X63_Y1_N23
\UART_RX|Frame_error\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|Frame_error~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|Frame_error~regout\);

-- Location: LCCOMB_X63_Y1_N24
\UART_RX|Empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Empty~0_combout\ = (\UART_RX|RXC_state~8_regout\ & (\UART_RX|RXC_state~9_regout\ & \UART_RX|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~8_regout\,
	datab => \UART_RX|RXC_state~9_regout\,
	datad => \UART_RX|Equal2~2_combout\,
	combout => \UART_RX|Empty~0_combout\);

-- Location: LCCOMB_X4_Y16_N6
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!UART_tx_clock_div(7)) # (!UART_tx_clock_div(4))) # (!UART_tx_clock_div(5))) # (!UART_tx_clock_div(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_clock_div(6),
	datab => UART_tx_clock_div(5),
	datac => UART_tx_clock_div(4),
	datad => UART_tx_clock_div(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y1_N22
\UART_RX|Frame_error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Frame_error~0_combout\ = (\UART_RX|Empty~0_combout\ & (!\UART_RX|RX_data_in~regout\)) # (!\UART_RX|Empty~0_combout\ & (((\UART_RX|Frame_error~regout\ & \UART_RX|data_count[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~0_combout\,
	datab => \UART_RX|RX_data_in~regout\,
	datac => \UART_RX|Frame_error~regout\,
	datad => \UART_RX|data_count[2]~6_combout\,
	combout => \UART_RX|Frame_error~0_combout\);

-- Location: LCCOMB_X62_Y1_N20
\UART_RX|Overrun~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Overrun~0_combout\ = (\UART_RX|Empty~regout\ & ((\UART_RX|RXC_state~8_regout\) # (\UART_RX|RXC_state~9_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX|Empty~regout\,
	datac => \UART_RX|RXC_state~8_regout\,
	datad => \UART_RX|RXC_state~9_regout\,
	combout => \UART_RX|Overrun~0_combout\);

-- Location: LCCOMB_X63_Y1_N20
\UART_RX|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|always0~0_combout\ = (\UART_RX|clock_count\(1) & (!\UART_RX|clock_count\(5) & (\UART_RX|clock_count\(2) & !\UART_RX|RX_data_in~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(1),
	datab => \UART_RX|clock_count\(5),
	datac => \UART_RX|clock_count\(2),
	datad => \UART_RX|RX_data_in~regout\,
	combout => \UART_RX|always0~0_combout\);

-- Location: LCCOMB_X3_Y16_N12
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\) # ((UART_tx_address(8)) # (\Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => UART_tx_address(8),
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X3_Y16_N6
\TX_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \TX_state~15_combout\ = (\TX_state~8_regout\) # ((\TX_state~9_regout\ & (\UART_tx_clock~regout\ & !\UART_tx_clock_buf~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_state~8_regout\,
	datab => \TX_state~9_regout\,
	datac => \UART_tx_clock~regout\,
	datad => \UART_tx_clock_buf~regout\,
	combout => \TX_state~15_combout\);

-- Location: LCCOMB_X60_Y1_N2
\UART_rx_address[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[0]~9_combout\ = UART_rx_address(0) $ (VCC)
-- \UART_rx_address[0]~10\ = CARRY(UART_rx_address(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => UART_rx_address(0),
	datad => VCC,
	combout => \UART_rx_address[0]~9_combout\,
	cout => \UART_rx_address[0]~10\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(17),
	combout => \SWITCH_I~combout\(17));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(0),
	combout => \SWITCH_I~combout\(0));

-- Location: LCFF_X61_Y1_N5
switch_0_buf : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \SWITCH_I~combout\(0),
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \switch_0_buf~regout\);

-- Location: LCCOMB_X61_Y1_N4
\UART_rx_address[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[8]~11_combout\ = ((\RX_state~7_regout\) # ((\switch_0_buf~regout\) # (\RX_state~8_regout\))) # (!\SWITCH_I~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SWITCH_I~combout\(0),
	datab => \RX_state~7_regout\,
	datac => \switch_0_buf~regout\,
	datad => \RX_state~8_regout\,
	combout => \UART_rx_address[8]~11_combout\);

-- Location: LCCOMB_X61_Y1_N24
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\UART_RX|Empty~regout\ & (((!\UART_rx_address[8]~11_combout\ & !\RX_state~7_regout\)))) # (!\UART_RX|Empty~regout\ & (!\RX_state~8_regout\ & ((\RX_state~7_regout\) # (!\UART_rx_address[8]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~regout\,
	datab => \RX_state~8_regout\,
	datac => \UART_rx_address[8]~11_combout\,
	datad => \RX_state~7_regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X60_Y1_N6
\UART_rx_address[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[2]~15_combout\ = (UART_rx_address(2) & (\UART_rx_address[1]~14\ $ (GND))) # (!UART_rx_address(2) & (!\UART_rx_address[1]~14\ & VCC))
-- \UART_rx_address[2]~16\ = CARRY((UART_rx_address(2) & !\UART_rx_address[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datad => VCC,
	cin => \UART_rx_address[1]~14\,
	combout => \UART_rx_address[2]~15_combout\,
	cout => \UART_rx_address[2]~16\);

-- Location: LCCOMB_X60_Y1_N8
\UART_rx_address[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[3]~17_combout\ = (UART_rx_address(3) & (!\UART_rx_address[2]~16\)) # (!UART_rx_address(3) & ((\UART_rx_address[2]~16\) # (GND)))
-- \UART_rx_address[3]~18\ = CARRY((!\UART_rx_address[2]~16\) # (!UART_rx_address(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(3),
	datad => VCC,
	cin => \UART_rx_address[2]~16\,
	combout => \UART_rx_address[3]~17_combout\,
	cout => \UART_rx_address[3]~18\);

-- Location: LCCOMB_X60_Y1_N10
\UART_rx_address[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[4]~19_combout\ = (UART_rx_address(4) & (\UART_rx_address[3]~18\ $ (GND))) # (!UART_rx_address(4) & (!\UART_rx_address[3]~18\ & VCC))
-- \UART_rx_address[4]~20\ = CARRY((UART_rx_address(4) & !\UART_rx_address[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(4),
	datad => VCC,
	cin => \UART_rx_address[3]~18\,
	combout => \UART_rx_address[4]~19_combout\,
	cout => \UART_rx_address[4]~20\);

-- Location: LCCOMB_X60_Y1_N12
\UART_rx_address[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[5]~21_combout\ = (UART_rx_address(5) & (!\UART_rx_address[4]~20\)) # (!UART_rx_address(5) & ((\UART_rx_address[4]~20\) # (GND)))
-- \UART_rx_address[5]~22\ = CARRY((!\UART_rx_address[4]~20\) # (!UART_rx_address(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datad => VCC,
	cin => \UART_rx_address[4]~20\,
	combout => \UART_rx_address[5]~21_combout\,
	cout => \UART_rx_address[5]~22\);

-- Location: LCCOMB_X60_Y1_N14
\UART_rx_address[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[6]~23_combout\ = (UART_rx_address(6) & (\UART_rx_address[5]~22\ $ (GND))) # (!UART_rx_address(6) & (!\UART_rx_address[5]~22\ & VCC))
-- \UART_rx_address[6]~24\ = CARRY((UART_rx_address(6) & !\UART_rx_address[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(6),
	datad => VCC,
	cin => \UART_rx_address[5]~22\,
	combout => \UART_rx_address[6]~23_combout\,
	cout => \UART_rx_address[6]~24\);

-- Location: LCCOMB_X60_Y1_N16
\UART_rx_address[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[7]~25_combout\ = (UART_rx_address(7) & (!\UART_rx_address[6]~24\)) # (!UART_rx_address(7) & ((\UART_rx_address[6]~24\) # (GND)))
-- \UART_rx_address[7]~26\ = CARRY((!\UART_rx_address[6]~24\) # (!UART_rx_address(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_rx_address(7),
	datad => VCC,
	cin => \UART_rx_address[6]~24\,
	combout => \UART_rx_address[7]~25_combout\,
	cout => \UART_rx_address[7]~26\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RX_I~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_UART_RX_I,
	combout => \UART_RX_I~combout\);

-- Location: LCFF_X63_Y1_N25
\UART_RX|RX_data_in\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \UART_RX_I~combout\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|RX_data_in~regout\);

-- Location: LCCOMB_X61_Y1_N2
\UART_rx_unload_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_unload_data~0_combout\ = (\UART_RX|Empty~regout\ & ((\UART_rx_unload_data~regout\) # ((!\RX_state~8_regout\ & \RX_state~7_regout\)))) # (!\UART_RX|Empty~regout\ & (!\RX_state~8_regout\ & (\UART_rx_unload_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~regout\,
	datab => \RX_state~8_regout\,
	datac => \UART_rx_unload_data~regout\,
	datad => \RX_state~7_regout\,
	combout => \UART_rx_unload_data~0_combout\);

-- Location: LCFF_X61_Y1_N3
UART_rx_unload_data : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_unload_data~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_rx_unload_data~regout\);

-- Location: LCCOMB_X63_Y1_N8
\UART_RX|Empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Empty~1_combout\ = (\UART_RX|Empty~0_combout\ & ((\UART_RX|RX_data_in~regout\) # ((\UART_RX|Empty~regout\ & !\UART_rx_unload_data~regout\)))) # (!\UART_RX|Empty~0_combout\ & (((\UART_RX|Empty~regout\ & !\UART_rx_unload_data~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~0_combout\,
	datab => \UART_RX|RX_data_in~regout\,
	datac => \UART_RX|Empty~regout\,
	datad => \UART_rx_unload_data~regout\,
	combout => \UART_RX|Empty~1_combout\);

-- Location: LCFF_X63_Y1_N9
\UART_RX|Empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|Empty~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|Empty~regout\);

-- Location: LCCOMB_X60_Y1_N22
\UART_rx_address[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[8]~12_combout\ = ((\RX_state~8_regout\ & (!\UART_RX|Empty~regout\ & !\LessThan1~2_combout\))) # (!\UART_rx_address[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX_state~8_regout\,
	datab => \UART_RX|Empty~regout\,
	datac => \LessThan1~2_combout\,
	datad => \UART_rx_address[8]~11_combout\,
	combout => \UART_rx_address[8]~12_combout\);

-- Location: LCFF_X60_Y1_N17
\UART_rx_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[7]~25_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(7));

-- Location: LCCOMB_X60_Y1_N18
\UART_rx_address[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[8]~27_combout\ = \UART_rx_address[7]~26\ $ (!UART_rx_address(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => UART_rx_address(8),
	cin => \UART_rx_address[7]~26\,
	combout => \UART_rx_address[8]~27_combout\);

-- Location: LCFF_X60_Y1_N19
\UART_rx_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[8]~27_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(8));

-- Location: LCCOMB_X60_Y1_N4
\UART_rx_address[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_address[1]~13_combout\ = (UART_rx_address(1) & (!\UART_rx_address[0]~10\)) # (!UART_rx_address(1) & ((\UART_rx_address[0]~10\) # (GND)))
-- \UART_rx_address[1]~14\ = CARRY((!\UART_rx_address[0]~10\) # (!UART_rx_address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(1),
	datad => VCC,
	cin => \UART_rx_address[0]~10\,
	combout => \UART_rx_address[1]~13_combout\,
	cout => \UART_rx_address[1]~14\);

-- Location: LCFF_X60_Y1_N5
\UART_rx_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[1]~13_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(1));

-- Location: LCFF_X60_Y1_N9
\UART_rx_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[3]~17_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(3));

-- Location: LCCOMB_X60_Y1_N20
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (UART_rx_address(2) & (UART_rx_address(1) & (UART_rx_address(3) & UART_rx_address(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \LessThan1~0_combout\);

-- Location: LCFF_X60_Y1_N15
\UART_rx_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[6]~23_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(6));

-- Location: LCFF_X60_Y1_N11
\UART_rx_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[4]~19_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(4));

-- Location: LCCOMB_X60_Y1_N30
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (UART_rx_address(5) & (UART_rx_address(6) & (UART_rx_address(7) & UART_rx_address(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X60_Y1_N24
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (UART_rx_address(8) & (\LessThan1~0_combout\ & \LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => UART_rx_address(8),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X61_Y1_N26
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((!\UART_RX|Empty~regout\ & (\RX_state~8_regout\ & !\LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~regout\,
	datab => \RX_state~8_regout\,
	datac => \Selector10~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCFF_X61_Y1_N27
\RX_state~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector10~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_state~7_regout\);

-- Location: LCCOMB_X61_Y1_N28
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\UART_RX|Empty~regout\ & ((\RX_state~7_regout\) # (\RX_state~8_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~regout\,
	datab => \RX_state~7_regout\,
	datac => \RX_state~8_regout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X61_Y1_N29
\RX_state~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RX_state~8_regout\);

-- Location: LCFF_X60_Y1_N3
\UART_rx_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[0]~9_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(0));

-- Location: LCFF_X60_Y1_N7
\UART_rx_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[2]~15_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(2));

-- Location: LCCOMB_X28_Y1_N12
\unit0|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr6~0_combout\ = (UART_rx_address(2) & (!UART_rx_address(1) & (UART_rx_address(3) $ (!UART_rx_address(0))))) # (!UART_rx_address(2) & (UART_rx_address(0) & (UART_rx_address(1) $ (!UART_rx_address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \unit0|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y1_N18
\unit0|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr5~0_combout\ = (UART_rx_address(1) & ((UART_rx_address(0) & ((UART_rx_address(3)))) # (!UART_rx_address(0) & (UART_rx_address(2))))) # (!UART_rx_address(1) & (UART_rx_address(2) & (UART_rx_address(3) $ (UART_rx_address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \unit0|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y1_N24
\unit0|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr4~0_combout\ = (UART_rx_address(2) & (UART_rx_address(3) & ((UART_rx_address(1)) # (!UART_rx_address(0))))) # (!UART_rx_address(2) & (UART_rx_address(1) & (!UART_rx_address(3) & !UART_rx_address(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \unit0|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y1_N26
\unit0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr3~0_combout\ = (UART_rx_address(0) & (UART_rx_address(2) $ ((!UART_rx_address(1))))) # (!UART_rx_address(0) & ((UART_rx_address(2) & (!UART_rx_address(1) & !UART_rx_address(3))) # (!UART_rx_address(2) & (UART_rx_address(1) & 
-- UART_rx_address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \unit0|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y1_N20
\unit0|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr2~0_combout\ = (UART_rx_address(1) & (((!UART_rx_address(3) & UART_rx_address(0))))) # (!UART_rx_address(1) & ((UART_rx_address(2) & (!UART_rx_address(3))) # (!UART_rx_address(2) & ((UART_rx_address(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \unit0|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y1_N2
\unit0|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr1~0_combout\ = (UART_rx_address(2) & (UART_rx_address(0) & (UART_rx_address(1) $ (UART_rx_address(3))))) # (!UART_rx_address(2) & (!UART_rx_address(3) & ((UART_rx_address(1)) # (UART_rx_address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \unit0|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y1_N16
\unit0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit0|WideOr0~0_combout\ = (UART_rx_address(0) & ((UART_rx_address(3)) # (UART_rx_address(2) $ (UART_rx_address(1))))) # (!UART_rx_address(0) & ((UART_rx_address(1)) # (UART_rx_address(2) $ (UART_rx_address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(2),
	datab => UART_rx_address(1),
	datac => UART_rx_address(3),
	datad => UART_rx_address(0),
	combout => \unit0|WideOr0~0_combout\);

-- Location: LCFF_X60_Y1_N13
\UART_rx_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_address[5]~21_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \ALT_INV_RX_state~8_regout\,
	ena => \UART_rx_address[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_rx_address(5));

-- Location: LCCOMB_X64_Y4_N16
\unit1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr6~0_combout\ = (UART_rx_address(6) & (!UART_rx_address(5) & (UART_rx_address(7) $ (!UART_rx_address(4))))) # (!UART_rx_address(6) & (UART_rx_address(4) & (UART_rx_address(5) $ (!UART_rx_address(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \unit1|WideOr6~0_combout\);

-- Location: LCCOMB_X64_Y4_N22
\unit1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr5~0_combout\ = (UART_rx_address(5) & ((UART_rx_address(4) & ((UART_rx_address(7)))) # (!UART_rx_address(4) & (UART_rx_address(6))))) # (!UART_rx_address(5) & (UART_rx_address(6) & (UART_rx_address(7) $ (UART_rx_address(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \unit1|WideOr5~0_combout\);

-- Location: LCCOMB_X64_Y4_N24
\unit1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr4~0_combout\ = (UART_rx_address(6) & (UART_rx_address(7) & ((UART_rx_address(5)) # (!UART_rx_address(4))))) # (!UART_rx_address(6) & (UART_rx_address(5) & (!UART_rx_address(7) & !UART_rx_address(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \unit1|WideOr4~0_combout\);

-- Location: LCCOMB_X64_Y4_N14
\unit1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr3~0_combout\ = (UART_rx_address(4) & (UART_rx_address(5) $ ((!UART_rx_address(6))))) # (!UART_rx_address(4) & ((UART_rx_address(5) & (!UART_rx_address(6) & UART_rx_address(7))) # (!UART_rx_address(5) & (UART_rx_address(6) & 
-- !UART_rx_address(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \unit1|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y4_N12
\unit1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr2~0_combout\ = (UART_rx_address(5) & (((!UART_rx_address(7) & UART_rx_address(4))))) # (!UART_rx_address(5) & ((UART_rx_address(6) & (!UART_rx_address(7))) # (!UART_rx_address(6) & ((UART_rx_address(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \unit1|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y4_N2
\unit1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr1~0_combout\ = (UART_rx_address(5) & (!UART_rx_address(7) & ((UART_rx_address(4)) # (!UART_rx_address(6))))) # (!UART_rx_address(5) & (UART_rx_address(4) & (UART_rx_address(6) $ (!UART_rx_address(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \unit1|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y4_N0
\unit1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit1|WideOr0~0_combout\ = (UART_rx_address(4) & ((UART_rx_address(7)) # (UART_rx_address(5) $ (UART_rx_address(6))))) # (!UART_rx_address(4) & ((UART_rx_address(5)) # (UART_rx_address(6) $ (UART_rx_address(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_rx_address(5),
	datab => UART_rx_address(6),
	datac => UART_rx_address(7),
	datad => UART_rx_address(4),
	combout => \unit1|WideOr0~0_combout\);

-- Location: LCCOMB_X4_Y16_N12
\UART_tx_clock_div[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[0]~8_combout\ = UART_tx_clock_div(0) $ (VCC)
-- \UART_tx_clock_div[0]~9\ = CARRY(UART_tx_clock_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_clock_div(0),
	datad => VCC,
	combout => \UART_tx_clock_div[0]~8_combout\,
	cout => \UART_tx_clock_div[0]~9\);

-- Location: LCCOMB_X4_Y16_N14
\UART_tx_clock_div[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_div[1]~10_combout\ = (UART_tx_clock_div(1) & (!\UART_tx_clock_div[0]~9\)) # (!UART_tx_clock_div(1) & ((\UART_tx_clock_div[0]~9\) # (GND)))
-- \UART_tx_clock_div[1]~11\ = CARRY((!\UART_tx_clock_div[0]~9\) # (!UART_tx_clock_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_tx_clock_div(1),
	datad => VCC,
	cin => \UART_tx_clock_div[0]~9\,
	combout => \UART_tx_clock_div[1]~10_combout\,
	cout => \UART_tx_clock_div[1]~11\);

-- Location: LCCOMB_X4_Y16_N4
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!\LessThan0~1_combout\ & !\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCFF_X4_Y16_N15
\UART_tx_clock_div[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[1]~10_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(1));

-- Location: LCFF_X4_Y16_N19
\UART_tx_clock_div[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[3]~14_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(3));

-- Location: LCFF_X4_Y16_N13
\UART_tx_clock_div[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock_div[0]~8_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_clock_div(0));

-- Location: LCCOMB_X4_Y16_N28
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!UART_tx_clock_div(2) & (!UART_tx_clock_div(1) & !UART_tx_clock_div(0)))) # (!UART_tx_clock_div(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_clock_div(2),
	datab => UART_tx_clock_div(3),
	datac => UART_tx_clock_div(1),
	datad => UART_tx_clock_div(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X4_Y16_N10
\UART_tx_clock~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock~0_combout\ = \UART_tx_clock~regout\ $ (((!\LessThan0~1_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datac => \UART_tx_clock~regout\,
	datad => \LessThan0~0_combout\,
	combout => \UART_tx_clock~0_combout\);

-- Location: LCFF_X4_Y16_N11
UART_tx_clock : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_clock~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_tx_clock~regout\);

-- Location: LCFF_X3_Y16_N29
UART_tx_clock_buf : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \UART_tx_clock~regout\,
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_tx_clock_buf~regout\);

-- Location: LCCOMB_X2_Y16_N28
\UART_TX|TXC_state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_TX|TXC_state~10_combout\ = \UART_TX|TXC_state~9_regout\ $ (((\UART_TX|TXC_state~8_regout\ & (!\UART_tx_clock_buf~regout\ & \UART_tx_clock~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|TXC_state~8_regout\,
	datab => \UART_tx_clock_buf~regout\,
	datac => \UART_TX|TXC_state~9_regout\,
	datad => \UART_tx_clock~regout\,
	combout => \UART_TX|TXC_state~10_combout\);

-- Location: LCFF_X2_Y16_N29
\UART_TX|TXC_state~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_TX|TXC_state~10_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_TX|TXC_state~9_regout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(1),
	combout => \SWITCH_I~combout\(1));

-- Location: LCCOMB_X3_Y16_N28
\UART_tx_clock_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_clock_enable~0_combout\ = (\UART_tx_clock~regout\ & !\UART_tx_clock_buf~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_tx_clock~regout\,
	datac => \UART_tx_clock_buf~regout\,
	combout => \UART_tx_clock_enable~0_combout\);

-- Location: LCFF_X3_Y16_N27
switch_1_buf : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \SWITCH_I~combout\(1),
	aclr => \SWITCH_I~combout\(17),
	sload => VCC,
	ena => \UART_tx_clock_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \switch_1_buf~regout\);

-- Location: LCCOMB_X3_Y16_N26
\UART_tx_address[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[0]~11_combout\ = (\SWITCH_I~combout\(1) & !\switch_1_buf~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SWITCH_I~combout\(1),
	datac => \switch_1_buf~regout\,
	combout => \UART_tx_address[0]~11_combout\);

-- Location: LCCOMB_X3_Y16_N20
\TX_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \TX_state~12_combout\ = (\TX_state~15_combout\ & (((\UART_TX|Empty~regout\) # (!\UART_tx_clock_enable~0_combout\)))) # (!\TX_state~15_combout\ & (\UART_tx_address[0]~11_combout\ & (\UART_tx_clock_enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_state~15_combout\,
	datab => \UART_tx_address[0]~11_combout\,
	datac => \UART_tx_clock_enable~0_combout\,
	datad => \UART_TX|Empty~regout\,
	combout => \TX_state~12_combout\);

-- Location: LCFF_X3_Y16_N21
\TX_state~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \TX_state~12_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TX_state~8_regout\);

-- Location: LCCOMB_X2_Y16_N0
\UART_tx_address[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[0]~9_combout\ = (UART_tx_address(0) & (\UART_TX|Empty~regout\ $ (VCC))) # (!UART_tx_address(0) & (\UART_TX|Empty~regout\ & VCC))
-- \UART_tx_address[0]~10\ = CARRY((UART_tx_address(0) & \UART_TX|Empty~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => \UART_TX|Empty~regout\,
	datad => VCC,
	combout => \UART_tx_address[0]~9_combout\,
	cout => \UART_tx_address[0]~10\);

-- Location: LCCOMB_X2_Y16_N2
\UART_tx_address[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[1]~13_combout\ = (UART_tx_address(1) & (!\UART_tx_address[0]~10\)) # (!UART_tx_address(1) & ((\UART_tx_address[0]~10\) # (GND)))
-- \UART_tx_address[1]~14\ = CARRY((!\UART_tx_address[0]~10\) # (!UART_tx_address(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_tx_address(1),
	datad => VCC,
	cin => \UART_tx_address[0]~10\,
	combout => \UART_tx_address[1]~13_combout\,
	cout => \UART_tx_address[1]~14\);

-- Location: LCCOMB_X3_Y16_N30
\TX_state.S_TX_TRANSMIT_DATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TX_state.S_TX_TRANSMIT_DATA~0_combout\ = (\TX_state~8_regout\) # (!\TX_state~9_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX_state~8_regout\,
	datad => \TX_state~9_regout\,
	combout => \TX_state.S_TX_TRANSMIT_DATA~0_combout\);

-- Location: LCCOMB_X3_Y16_N24
\UART_tx_address[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[0]~12_combout\ = (\UART_tx_clock_enable~0_combout\ & (!\TX_state~8_regout\ & ((\UART_tx_address[0]~11_combout\) # (\TX_state~9_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_tx_clock_enable~0_combout\,
	datab => \UART_tx_address[0]~11_combout\,
	datac => \TX_state~8_regout\,
	datad => \TX_state~9_regout\,
	combout => \UART_tx_address[0]~12_combout\);

-- Location: LCFF_X2_Y16_N3
\UART_tx_address[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[1]~13_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(1));

-- Location: LCCOMB_X2_Y16_N4
\UART_tx_address[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[2]~15_combout\ = (UART_tx_address(2) & (\UART_tx_address[1]~14\ $ (GND))) # (!UART_tx_address(2) & (!\UART_tx_address[1]~14\ & VCC))
-- \UART_tx_address[2]~16\ = CARRY((UART_tx_address(2) & !\UART_tx_address[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_tx_address(2),
	datad => VCC,
	cin => \UART_tx_address[1]~14\,
	combout => \UART_tx_address[2]~15_combout\,
	cout => \UART_tx_address[2]~16\);

-- Location: LCFF_X2_Y16_N5
\UART_tx_address[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[2]~15_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(2));

-- Location: LCCOMB_X2_Y16_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (UART_tx_address(3)) # ((UART_tx_address(0)) # ((UART_tx_address(2)) # (UART_tx_address(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(3),
	datab => UART_tx_address(0),
	datac => UART_tx_address(2),
	datad => UART_tx_address(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y16_N6
\UART_tx_address[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[3]~17_combout\ = (UART_tx_address(3) & (!\UART_tx_address[2]~16\)) # (!UART_tx_address(3) & ((\UART_tx_address[2]~16\) # (GND)))
-- \UART_tx_address[3]~18\ = CARRY((!\UART_tx_address[2]~16\) # (!UART_tx_address(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_tx_address(3),
	datad => VCC,
	cin => \UART_tx_address[2]~16\,
	combout => \UART_tx_address[3]~17_combout\,
	cout => \UART_tx_address[3]~18\);

-- Location: LCFF_X2_Y16_N7
\UART_tx_address[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[3]~17_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(3));

-- Location: LCCOMB_X2_Y16_N8
\UART_tx_address[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[4]~19_combout\ = (UART_tx_address(4) & (\UART_tx_address[3]~18\ $ (GND))) # (!UART_tx_address(4) & (!\UART_tx_address[3]~18\ & VCC))
-- \UART_tx_address[4]~20\ = CARRY((UART_tx_address(4) & !\UART_tx_address[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(4),
	datad => VCC,
	cin => \UART_tx_address[3]~18\,
	combout => \UART_tx_address[4]~19_combout\,
	cout => \UART_tx_address[4]~20\);

-- Location: LCCOMB_X2_Y16_N10
\UART_tx_address[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[5]~21_combout\ = (UART_tx_address(5) & (!\UART_tx_address[4]~20\)) # (!UART_tx_address(5) & ((\UART_tx_address[4]~20\) # (GND)))
-- \UART_tx_address[5]~22\ = CARRY((!\UART_tx_address[4]~20\) # (!UART_tx_address(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => UART_tx_address(5),
	datad => VCC,
	cin => \UART_tx_address[4]~20\,
	combout => \UART_tx_address[5]~21_combout\,
	cout => \UART_tx_address[5]~22\);

-- Location: LCFF_X2_Y16_N11
\UART_tx_address[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[5]~21_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(5));

-- Location: LCCOMB_X2_Y16_N12
\UART_tx_address[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[6]~23_combout\ = (UART_tx_address(6) & (\UART_tx_address[5]~22\ $ (GND))) # (!UART_tx_address(6) & (!\UART_tx_address[5]~22\ & VCC))
-- \UART_tx_address[6]~24\ = CARRY((UART_tx_address(6) & !\UART_tx_address[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(6),
	datad => VCC,
	cin => \UART_tx_address[5]~22\,
	combout => \UART_tx_address[6]~23_combout\,
	cout => \UART_tx_address[6]~24\);

-- Location: LCCOMB_X2_Y16_N14
\UART_tx_address[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[7]~25_combout\ = (UART_tx_address(7) & (!\UART_tx_address[6]~24\)) # (!UART_tx_address(7) & ((\UART_tx_address[6]~24\) # (GND)))
-- \UART_tx_address[7]~26\ = CARRY((!\UART_tx_address[6]~24\) # (!UART_tx_address(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datad => VCC,
	cin => \UART_tx_address[6]~24\,
	combout => \UART_tx_address[7]~25_combout\,
	cout => \UART_tx_address[7]~26\);

-- Location: LCCOMB_X2_Y16_N16
\UART_tx_address[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_address[8]~27_combout\ = UART_tx_address(8) $ (!\UART_tx_address[7]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(8),
	cin => \UART_tx_address[7]~26\,
	combout => \UART_tx_address[8]~27_combout\);

-- Location: LCFF_X2_Y16_N17
\UART_tx_address[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[8]~27_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(8));

-- Location: LCFF_X2_Y16_N15
\UART_tx_address[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[7]~25_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(7));

-- Location: LCFF_X2_Y16_N9
\UART_tx_address[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[4]~19_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(4));

-- Location: LCFF_X2_Y16_N13
\UART_tx_address[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[6]~23_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(6));

-- Location: LCCOMB_X2_Y16_N26
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (UART_tx_address(5)) # ((UART_tx_address(7)) # ((UART_tx_address(4)) # (UART_tx_address(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(5),
	datab => UART_tx_address(7),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X3_Y16_N4
\UART_tx_done~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_done~1_combout\ = (\TX_state~9_regout\ & (!\Equal0~0_combout\ & (!UART_tx_address(8) & !\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_state~9_regout\,
	datab => \Equal0~0_combout\,
	datac => UART_tx_address(8),
	datad => \Equal0~1_combout\,
	combout => \UART_tx_done~1_combout\);

-- Location: LCCOMB_X3_Y16_N0
\TX_state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \TX_state~13_combout\ = (\UART_tx_clock_enable~0_combout\ & ((\UART_TX|Empty~regout\ & (!\TX_state~8_regout\)) # (!\UART_TX|Empty~regout\ & (\TX_state~8_regout\ & !\UART_tx_done~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_tx_clock_enable~0_combout\,
	datab => \UART_TX|Empty~regout\,
	datac => \TX_state~8_regout\,
	datad => \UART_tx_done~1_combout\,
	combout => \TX_state~13_combout\);

-- Location: LCCOMB_X3_Y16_N2
\TX_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \TX_state~14_combout\ = (\TX_state~9_regout\ & ((\TX_state~12_combout\) # (\TX_state~8_regout\ $ (!\TX_state~13_combout\)))) # (!\TX_state~9_regout\ & (\TX_state~8_regout\ & ((\TX_state~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_state~8_regout\,
	datab => \TX_state~12_combout\,
	datac => \TX_state~9_regout\,
	datad => \TX_state~13_combout\,
	combout => \TX_state~14_combout\);

-- Location: LCFF_X3_Y16_N3
\TX_state~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \TX_state~14_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TX_state~9_regout\);

-- Location: LCCOMB_X3_Y16_N10
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\UART_tx_start~regout\ & (((\TX_state~8_regout\) # (!\UART_TX|Empty~regout\)) # (!\TX_state~9_regout\))) # (!\UART_tx_start~regout\ & (!\TX_state~9_regout\ & (\TX_state~8_regout\ & !\UART_TX|Empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_tx_start~regout\,
	datab => \TX_state~9_regout\,
	datac => \TX_state~8_regout\,
	datad => \UART_TX|Empty~regout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X3_Y16_N22
\Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\Selector30~0_combout\) # ((\Equal0~2_combout\ & (!\UART_TX|Empty~regout\ & \TX_state~8_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \UART_TX|Empty~regout\,
	datac => \TX_state~8_regout\,
	datad => \Selector30~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCFF_X3_Y16_N23
UART_tx_start : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \Selector30~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	ena => \UART_tx_clock_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_tx_start~regout\);

-- Location: LCCOMB_X3_Y16_N16
\UART_TX|TXC_state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_TX|TXC_state~11_combout\ = (\UART_tx_clock_enable~0_combout\ & (!\UART_TX|TXC_state~8_regout\ & ((\UART_TX|TXC_state~9_regout\) # (\UART_tx_start~regout\)))) # (!\UART_tx_clock_enable~0_combout\ & (((\UART_TX|TXC_state~8_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_tx_clock_enable~0_combout\,
	datab => \UART_TX|TXC_state~9_regout\,
	datac => \UART_TX|TXC_state~8_regout\,
	datad => \UART_tx_start~regout\,
	combout => \UART_TX|TXC_state~11_combout\);

-- Location: LCFF_X3_Y16_N17
\UART_TX|TXC_state~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_TX|TXC_state~11_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_TX|TXC_state~8_regout\);

-- Location: LCCOMB_X2_Y16_N30
\UART_TX|Empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_TX|Empty~0_combout\ = (!\UART_TX|TXC_state~9_regout\ & (!\UART_tx_clock_buf~regout\ & (!\UART_TX|TXC_state~8_regout\ & \UART_tx_clock~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|TXC_state~9_regout\,
	datab => \UART_tx_clock_buf~regout\,
	datac => \UART_TX|TXC_state~8_regout\,
	datad => \UART_tx_clock~regout\,
	combout => \UART_TX|Empty~0_combout\);

-- Location: LCCOMB_X2_Y16_N22
\UART_TX|Empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_TX|Empty~1_combout\ = (\UART_TX|Empty~0_combout\ & ((\UART_tx_start~regout\))) # (!\UART_TX|Empty~0_combout\ & (\UART_TX|Empty~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_TX|Empty~0_combout\,
	datac => \UART_TX|Empty~regout\,
	datad => \UART_tx_start~regout\,
	combout => \UART_TX|Empty~1_combout\);

-- Location: LCFF_X2_Y16_N23
\UART_TX|Empty\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_TX|Empty~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_TX|Empty~regout\);

-- Location: LCFF_X2_Y16_N1
\UART_tx_address[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_address[0]~9_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \TX_state.S_TX_TRANSMIT_DATA~0_combout\,
	ena => \UART_tx_address[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => UART_tx_address(0));

-- Location: LCCOMB_X1_Y14_N16
\unit3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|WideOr6~0_combout\ = (UART_tx_address(2) & (!UART_tx_address(1) & (UART_tx_address(0) $ (!UART_tx_address(3))))) # (!UART_tx_address(2) & (UART_tx_address(0) & (UART_tx_address(1) $ (!UART_tx_address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => UART_tx_address(2),
	datac => UART_tx_address(1),
	datad => UART_tx_address(3),
	combout => \unit3|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\unit3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|WideOr5~0_combout\ = (UART_tx_address(1) & ((UART_tx_address(0) & ((UART_tx_address(3)))) # (!UART_tx_address(0) & (UART_tx_address(2))))) # (!UART_tx_address(1) & (UART_tx_address(2) & (UART_tx_address(0) $ (UART_tx_address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => UART_tx_address(2),
	datac => UART_tx_address(1),
	datad => UART_tx_address(3),
	combout => \unit3|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y14_N28
\unit3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|WideOr4~0_combout\ = (UART_tx_address(2) & (UART_tx_address(3) & ((UART_tx_address(1)) # (!UART_tx_address(0))))) # (!UART_tx_address(2) & (!UART_tx_address(0) & (UART_tx_address(1) & !UART_tx_address(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => UART_tx_address(2),
	datac => UART_tx_address(1),
	datad => UART_tx_address(3),
	combout => \unit3|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y14_N30
\unit3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|WideOr3~0_combout\ = (UART_tx_address(0) & (UART_tx_address(2) $ ((!UART_tx_address(1))))) # (!UART_tx_address(0) & ((UART_tx_address(2) & (!UART_tx_address(1) & !UART_tx_address(3))) # (!UART_tx_address(2) & (UART_tx_address(1) & 
-- UART_tx_address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => UART_tx_address(2),
	datac => UART_tx_address(1),
	datad => UART_tx_address(3),
	combout => \unit3|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y14_N12
\unit3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|WideOr2~0_combout\ = (UART_tx_address(1) & (UART_tx_address(0) & ((!UART_tx_address(3))))) # (!UART_tx_address(1) & ((UART_tx_address(2) & ((!UART_tx_address(3)))) # (!UART_tx_address(2) & (UART_tx_address(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => UART_tx_address(2),
	datac => UART_tx_address(1),
	datad => UART_tx_address(3),
	combout => \unit3|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\unit3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|WideOr1~0_combout\ = (UART_tx_address(0) & (UART_tx_address(3) $ (((UART_tx_address(1)) # (!UART_tx_address(2)))))) # (!UART_tx_address(0) & (!UART_tx_address(2) & (UART_tx_address(1) & !UART_tx_address(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => UART_tx_address(2),
	datac => UART_tx_address(1),
	datad => UART_tx_address(3),
	combout => \unit3|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\unit3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit3|WideOr0~0_combout\ = (UART_tx_address(0) & ((UART_tx_address(3)) # (UART_tx_address(2) $ (UART_tx_address(1))))) # (!UART_tx_address(0) & ((UART_tx_address(1)) # (UART_tx_address(2) $ (UART_tx_address(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(0),
	datab => UART_tx_address(2),
	datac => UART_tx_address(1),
	datad => UART_tx_address(3),
	combout => \unit3|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y16_N16
\unit4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr6~0_combout\ = (UART_tx_address(7) & (UART_tx_address(4) & (UART_tx_address(5) $ (UART_tx_address(6))))) # (!UART_tx_address(7) & (!UART_tx_address(5) & (UART_tx_address(4) $ (UART_tx_address(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datab => UART_tx_address(5),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \unit4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y16_N10
\unit4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr5~0_combout\ = (UART_tx_address(7) & ((UART_tx_address(4) & (UART_tx_address(5))) # (!UART_tx_address(4) & ((UART_tx_address(6)))))) # (!UART_tx_address(7) & (UART_tx_address(6) & (UART_tx_address(5) $ (UART_tx_address(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datab => UART_tx_address(5),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \unit4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y16_N20
\unit4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr4~0_combout\ = (UART_tx_address(7) & (UART_tx_address(6) & ((UART_tx_address(5)) # (!UART_tx_address(4))))) # (!UART_tx_address(7) & (UART_tx_address(5) & (!UART_tx_address(4) & !UART_tx_address(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datab => UART_tx_address(5),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \unit4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y16_N14
\unit4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr3~0_combout\ = (UART_tx_address(4) & ((UART_tx_address(5) $ (!UART_tx_address(6))))) # (!UART_tx_address(4) & ((UART_tx_address(7) & (UART_tx_address(5) & !UART_tx_address(6))) # (!UART_tx_address(7) & (!UART_tx_address(5) & 
-- UART_tx_address(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datab => UART_tx_address(5),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \unit4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\unit4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr2~0_combout\ = (UART_tx_address(5) & (!UART_tx_address(7) & (UART_tx_address(4)))) # (!UART_tx_address(5) & ((UART_tx_address(6) & (!UART_tx_address(7))) # (!UART_tx_address(6) & ((UART_tx_address(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datab => UART_tx_address(5),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \unit4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y16_N30
\unit4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr1~0_combout\ = (UART_tx_address(5) & (!UART_tx_address(7) & ((UART_tx_address(4)) # (!UART_tx_address(6))))) # (!UART_tx_address(5) & (UART_tx_address(4) & (UART_tx_address(7) $ (!UART_tx_address(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datab => UART_tx_address(5),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \unit4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y16_N0
\unit4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \unit4|WideOr0~0_combout\ = (UART_tx_address(4) & ((UART_tx_address(7)) # (UART_tx_address(5) $ (UART_tx_address(6))))) # (!UART_tx_address(4) & ((UART_tx_address(5)) # (UART_tx_address(7) $ (UART_tx_address(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => UART_tx_address(7),
	datab => UART_tx_address(5),
	datac => UART_tx_address(4),
	datad => UART_tx_address(6),
	combout => \unit4|WideOr0~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50_I~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50_I,
	combout => \CLOCK_50_I~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50_I~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_I~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50_I~clkctrl_outclk\);

-- Location: LCCOMB_X61_Y1_N12
\UART_rx_done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_done~0_combout\ = !\RX_state~8_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_state~8_regout\,
	combout => \UART_rx_done~0_combout\);

-- Location: LCCOMB_X61_Y1_N10
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ((!\UART_RX|Empty~regout\ & (\RX_state~8_regout\ & \LessThan1~2_combout\))) # (!\UART_rx_address[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~regout\,
	datab => \RX_state~8_regout\,
	datac => \UART_rx_address[8]~11_combout\,
	datad => \LessThan1~2_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCFF_X61_Y1_N13
UART_rx_done : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_done~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_rx_done~regout\);

-- Location: LCCOMB_X60_Y1_N28
\error_count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \error_count[0]~0_combout\ = \UART_RX|Frame_error~regout\ $ (error_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Frame_error~regout\,
	datac => error_count(0),
	combout => \error_count[0]~0_combout\);

-- Location: LCFF_X60_Y1_N29
\error_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \error_count[0]~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_count(0));

-- Location: LCCOMB_X60_Y1_N0
\error_count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \error_count[1]~1_combout\ = error_count(1) $ (((\UART_RX|Frame_error~regout\ & error_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Frame_error~regout\,
	datab => error_count(0),
	datac => error_count(1),
	combout => \error_count[1]~1_combout\);

-- Location: LCFF_X60_Y1_N1
\error_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \error_count[1]~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_count(1));

-- Location: LCCOMB_X60_Y1_N26
\error_count[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \error_count[2]~2_combout\ = error_count(2) $ (((\UART_RX|Frame_error~regout\ & (error_count(0) & error_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Frame_error~regout\,
	datab => error_count(0),
	datac => error_count(2),
	datad => error_count(1),
	combout => \error_count[2]~2_combout\);

-- Location: LCFF_X60_Y1_N27
\error_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \error_count[2]~2_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => error_count(2));

-- Location: LCCOMB_X62_Y1_N28
\UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ = (\UART_RX|RXC_state~9_regout\ & !\UART_RX|RXC_state~8_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX|RXC_state~9_regout\,
	datac => \UART_RX|RXC_state~8_regout\,
	combout => \UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\);

-- Location: LCCOMB_X64_Y1_N4
\UART_RX|clock_count[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[0]~10_combout\ = \UART_RX|clock_count\(0) $ (VCC)
-- \UART_RX|clock_count[0]~11\ = CARRY(\UART_RX|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(0),
	datad => VCC,
	combout => \UART_RX|clock_count[0]~10_combout\,
	cout => \UART_RX|clock_count[0]~11\);

-- Location: LCCOMB_X64_Y1_N6
\UART_RX|clock_count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[1]~15_combout\ = (\UART_RX|clock_count\(1) & (!\UART_RX|clock_count[0]~11\)) # (!\UART_RX|clock_count\(1) & ((\UART_RX|clock_count[0]~11\) # (GND)))
-- \UART_RX|clock_count[1]~16\ = CARRY((!\UART_RX|clock_count[0]~11\) # (!\UART_RX|clock_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX|clock_count\(1),
	datad => VCC,
	cin => \UART_RX|clock_count[0]~11\,
	combout => \UART_RX|clock_count[1]~15_combout\,
	cout => \UART_RX|clock_count[1]~16\);

-- Location: LCCOMB_X64_Y1_N18
\UART_RX|clock_count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[7]~27_combout\ = (\UART_RX|clock_count\(7) & (!\UART_RX|clock_count[6]~26\)) # (!\UART_RX|clock_count\(7) & ((\UART_RX|clock_count[6]~26\) # (GND)))
-- \UART_RX|clock_count[7]~28\ = CARRY((!\UART_RX|clock_count[6]~26\) # (!\UART_RX|clock_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(7),
	datad => VCC,
	cin => \UART_RX|clock_count[6]~26\,
	combout => \UART_RX|clock_count[7]~27_combout\,
	cout => \UART_RX|clock_count[7]~28\);

-- Location: LCCOMB_X61_Y1_N16
\UART_rx_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_rx_enable~0_combout\ = !\RX_state~8_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RX_state~8_regout\,
	combout => \UART_rx_enable~0_combout\);

-- Location: LCFF_X61_Y1_N17
UART_rx_enable : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_rx_enable~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_rx_enable~regout\);

-- Location: LCCOMB_X63_Y1_N30
\UART_RX|clock_count[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[7]~13_combout\ = (!\UART_RX|RXC_state~9_regout\ & ((\UART_RX|RX_data_in~regout\) # ((!\UART_RX|RXC_state~8_regout\ & !\UART_rx_enable~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RX_data_in~regout\,
	datab => \UART_RX|RXC_state~9_regout\,
	datac => \UART_RX|RXC_state~8_regout\,
	datad => \UART_rx_enable~regout\,
	combout => \UART_RX|clock_count[7]~13_combout\);

-- Location: LCCOMB_X63_Y1_N16
\UART_RX|clock_count[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[7]~14_combout\ = (!\UART_RX|clock_count[7]~13_combout\ & (((!\UART_RX|Equal2~2_combout\) # (!\UART_RX|RXC_state~9_regout\)) # (!\UART_RX|RXC_state~8_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~8_regout\,
	datab => \UART_RX|RXC_state~9_regout\,
	datac => \UART_RX|Equal2~2_combout\,
	datad => \UART_RX|clock_count[7]~13_combout\,
	combout => \UART_RX|clock_count[7]~14_combout\);

-- Location: LCFF_X64_Y1_N19
\UART_RX|clock_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[7]~27_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(7));

-- Location: LCFF_X64_Y1_N5
\UART_RX|clock_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[0]~10_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(0));

-- Location: LCCOMB_X64_Y1_N28
\UART_RX|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Equal2~0_combout\ = (!\UART_RX|clock_count\(3) & (\UART_RX|clock_count\(7) & (\UART_RX|clock_count\(0) & \UART_RX|clock_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(3),
	datab => \UART_RX|clock_count\(7),
	datac => \UART_RX|clock_count\(0),
	datad => \UART_RX|clock_count\(4),
	combout => \UART_RX|Equal2~0_combout\);

-- Location: LCCOMB_X64_Y1_N16
\UART_RX|clock_count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[6]~25_combout\ = (\UART_RX|clock_count\(6) & (\UART_RX|clock_count[5]~24\ $ (GND))) # (!\UART_RX|clock_count\(6) & (!\UART_RX|clock_count[5]~24\ & VCC))
-- \UART_RX|clock_count[6]~26\ = CARRY((\UART_RX|clock_count\(6) & !\UART_RX|clock_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(6),
	datad => VCC,
	cin => \UART_RX|clock_count[5]~24\,
	combout => \UART_RX|clock_count[6]~25_combout\,
	cout => \UART_RX|clock_count[6]~26\);

-- Location: LCFF_X64_Y1_N17
\UART_RX|clock_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[6]~25_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(6));

-- Location: LCCOMB_X64_Y1_N20
\UART_RX|clock_count[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[8]~29_combout\ = (\UART_RX|clock_count\(8) & (\UART_RX|clock_count[7]~28\ $ (GND))) # (!\UART_RX|clock_count\(8) & (!\UART_RX|clock_count[7]~28\ & VCC))
-- \UART_RX|clock_count[8]~30\ = CARRY((\UART_RX|clock_count\(8) & !\UART_RX|clock_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(8),
	datad => VCC,
	cin => \UART_RX|clock_count[7]~28\,
	combout => \UART_RX|clock_count[8]~29_combout\,
	cout => \UART_RX|clock_count[8]~30\);

-- Location: LCFF_X64_Y1_N21
\UART_RX|clock_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[8]~29_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(8));

-- Location: LCCOMB_X64_Y1_N24
\UART_RX|always0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|always0~1_combout\ = (\UART_RX|clock_count\(6) & !\UART_RX|clock_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX|clock_count\(6),
	datad => \UART_RX|clock_count\(8),
	combout => \UART_RX|always0~1_combout\);

-- Location: LCCOMB_X63_Y1_N26
\UART_RX|always0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|always0~2_combout\ = (\UART_RX|always0~0_combout\ & (!\UART_RX|clock_count\(9) & (\UART_RX|Equal2~0_combout\ & \UART_RX|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|always0~0_combout\,
	datab => \UART_RX|clock_count\(9),
	datac => \UART_RX|Equal2~0_combout\,
	datad => \UART_RX|always0~1_combout\,
	combout => \UART_RX|always0~2_combout\);

-- Location: LCCOMB_X63_Y1_N0
\UART_RX|clock_count[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[7]~12_combout\ = (\UART_RX|RXC_state~8_regout\ & (!\UART_RX|RXC_state~9_regout\ & ((\UART_RX|always0~2_combout\)))) # (!\UART_RX|RXC_state~8_regout\ & (((\UART_RX|Equal2~2_combout\)) # (!\UART_RX|RXC_state~9_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~8_regout\,
	datab => \UART_RX|RXC_state~9_regout\,
	datac => \UART_RX|Equal2~2_combout\,
	datad => \UART_RX|always0~2_combout\,
	combout => \UART_RX|clock_count[7]~12_combout\);

-- Location: LCFF_X64_Y1_N7
\UART_RX|clock_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[1]~15_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(1));

-- Location: LCCOMB_X64_Y1_N8
\UART_RX|clock_count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[2]~17_combout\ = (\UART_RX|clock_count\(2) & (\UART_RX|clock_count[1]~16\ $ (GND))) # (!\UART_RX|clock_count\(2) & (!\UART_RX|clock_count[1]~16\ & VCC))
-- \UART_RX|clock_count[2]~18\ = CARRY((\UART_RX|clock_count\(2) & !\UART_RX|clock_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(2),
	datad => VCC,
	cin => \UART_RX|clock_count[1]~16\,
	combout => \UART_RX|clock_count[2]~17_combout\,
	cout => \UART_RX|clock_count[2]~18\);

-- Location: LCCOMB_X64_Y1_N10
\UART_RX|clock_count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[3]~19_combout\ = (\UART_RX|clock_count\(3) & (!\UART_RX|clock_count[2]~18\)) # (!\UART_RX|clock_count\(3) & ((\UART_RX|clock_count[2]~18\) # (GND)))
-- \UART_RX|clock_count[3]~20\ = CARRY((!\UART_RX|clock_count[2]~18\) # (!\UART_RX|clock_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX|clock_count\(3),
	datad => VCC,
	cin => \UART_RX|clock_count[2]~18\,
	combout => \UART_RX|clock_count[3]~19_combout\,
	cout => \UART_RX|clock_count[3]~20\);

-- Location: LCFF_X64_Y1_N11
\UART_RX|clock_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[3]~19_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(3));

-- Location: LCCOMB_X64_Y1_N12
\UART_RX|clock_count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[4]~21_combout\ = (\UART_RX|clock_count\(4) & (\UART_RX|clock_count[3]~20\ $ (GND))) # (!\UART_RX|clock_count\(4) & (!\UART_RX|clock_count[3]~20\ & VCC))
-- \UART_RX|clock_count[4]~22\ = CARRY((\UART_RX|clock_count\(4) & !\UART_RX|clock_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX|clock_count\(4),
	datad => VCC,
	cin => \UART_RX|clock_count[3]~20\,
	combout => \UART_RX|clock_count[4]~21_combout\,
	cout => \UART_RX|clock_count[4]~22\);

-- Location: LCFF_X64_Y1_N13
\UART_RX|clock_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[4]~21_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(4));

-- Location: LCCOMB_X64_Y1_N14
\UART_RX|clock_count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[5]~23_combout\ = (\UART_RX|clock_count\(5) & (!\UART_RX|clock_count[4]~22\)) # (!\UART_RX|clock_count\(5) & ((\UART_RX|clock_count[4]~22\) # (GND)))
-- \UART_RX|clock_count[5]~24\ = CARRY((!\UART_RX|clock_count[4]~22\) # (!\UART_RX|clock_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART_RX|clock_count\(5),
	datad => VCC,
	cin => \UART_RX|clock_count[4]~22\,
	combout => \UART_RX|clock_count[5]~23_combout\,
	cout => \UART_RX|clock_count[5]~24\);

-- Location: LCFF_X64_Y1_N15
\UART_RX|clock_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[5]~23_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(5));

-- Location: LCCOMB_X64_Y1_N22
\UART_RX|clock_count[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[9]~31_combout\ = \UART_RX|clock_count[8]~30\ $ (\UART_RX|clock_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX|clock_count\(9),
	cin => \UART_RX|clock_count[8]~30\,
	combout => \UART_RX|clock_count[9]~31_combout\);

-- Location: LCFF_X64_Y1_N23
\UART_RX|clock_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[9]~31_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(9));

-- Location: LCFF_X64_Y1_N9
\UART_RX|clock_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|clock_count[2]~17_combout\,
	aclr => \SWITCH_I~combout\(17),
	sclr => \UART_RX|clock_count[7]~12_combout\,
	ena => \UART_RX|clock_count[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|clock_count\(2));

-- Location: LCCOMB_X64_Y1_N26
\UART_RX|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Equal2~1_combout\ = (!\UART_RX|clock_count\(1) & (!\UART_RX|clock_count\(2) & (!\UART_RX|clock_count\(6) & \UART_RX|clock_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(1),
	datab => \UART_RX|clock_count\(2),
	datac => \UART_RX|clock_count\(6),
	datad => \UART_RX|clock_count\(5),
	combout => \UART_RX|Equal2~1_combout\);

-- Location: LCCOMB_X63_Y1_N14
\UART_RX|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Equal2~2_combout\ = (\UART_RX|clock_count\(8) & (!\UART_RX|clock_count\(9) & (\UART_RX|Equal2~1_combout\ & \UART_RX|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|clock_count\(8),
	datab => \UART_RX|clock_count\(9),
	datac => \UART_RX|Equal2~1_combout\,
	datad => \UART_RX|Equal2~0_combout\,
	combout => \UART_RX|Equal2~2_combout\);

-- Location: LCCOMB_X62_Y1_N22
\UART_RX|data_count[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|data_count[2]~8_combout\ = (\UART_RX|data_count[2]~7_combout\ & (((\UART_RX|data_count\(2))))) # (!\UART_RX|data_count[2]~7_combout\ & (\UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ & (\UART_RX|Add1~0_combout\ $ (\UART_RX|data_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\,
	datab => \UART_RX|Add1~0_combout\,
	datac => \UART_RX|data_count\(2),
	datad => \UART_RX|data_count[2]~7_combout\,
	combout => \UART_RX|data_count[2]~8_combout\);

-- Location: LCFF_X62_Y1_N23
\UART_RX|data_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|data_count[2]~8_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|data_count\(2));

-- Location: LCCOMB_X62_Y1_N14
\UART_RX|data_count[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|data_count[2]~10_combout\ = ((\UART_RX|data_count\(0) & (\UART_RX|data_count\(2) & \UART_RX|data_count\(1)))) # (!\UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|data_count\(0),
	datab => \UART_RX|data_count\(2),
	datac => \UART_RX|data_count\(1),
	datad => \UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\,
	combout => \UART_RX|data_count[2]~10_combout\);

-- Location: LCCOMB_X63_Y1_N18
\UART_RX|clock_count[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[7]~33_combout\ = (\UART_RX|RXC_state~8_regout\ & (!\UART_RX|RXC_state~9_regout\ & !\UART_RX|clock_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~8_regout\,
	datac => \UART_RX|RXC_state~9_regout\,
	datad => \UART_RX|clock_count\(9),
	combout => \UART_RX|clock_count[7]~33_combout\);

-- Location: LCCOMB_X63_Y1_N4
\UART_RX|clock_count[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|clock_count[7]~34_combout\ = (\UART_RX|always0~0_combout\ & (\UART_RX|clock_count[7]~33_combout\ & (\UART_RX|Equal2~0_combout\ & \UART_RX|always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|always0~0_combout\,
	datab => \UART_RX|clock_count[7]~33_combout\,
	datac => \UART_RX|Equal2~0_combout\,
	datad => \UART_RX|always0~1_combout\,
	combout => \UART_RX|clock_count[7]~34_combout\);

-- Location: LCCOMB_X62_Y1_N10
\UART_RX|data_count[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|data_count[2]~7_combout\ = (\UART_RX|data_count[2]~6_combout\ & (!\UART_RX|clock_count[7]~34_combout\ & ((\UART_RX|data_count[2]~10_combout\) # (!\UART_RX|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|data_count[2]~6_combout\,
	datab => \UART_RX|Equal2~2_combout\,
	datac => \UART_RX|data_count[2]~10_combout\,
	datad => \UART_RX|clock_count[7]~34_combout\,
	combout => \UART_RX|data_count[2]~7_combout\);

-- Location: LCCOMB_X62_Y1_N24
\UART_RX|data_count[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|data_count[1]~9_combout\ = (\UART_RX|data_count[2]~7_combout\ & (((\UART_RX|data_count\(1))))) # (!\UART_RX|data_count[2]~7_combout\ & (\UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ & (\UART_RX|data_count\(0) $ (\UART_RX|data_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|data_count\(0),
	datab => \UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\,
	datac => \UART_RX|data_count\(1),
	datad => \UART_RX|data_count[2]~7_combout\,
	combout => \UART_RX|data_count[1]~9_combout\);

-- Location: LCFF_X62_Y1_N25
\UART_RX|data_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|data_count[1]~9_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|data_count\(1));

-- Location: LCCOMB_X62_Y1_N6
\UART_RX|data_count[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|data_count[0]~11_combout\ = (\UART_RX|data_count\(0) & (((\UART_RX|data_count[2]~7_combout\)))) # (!\UART_RX|data_count\(0) & (\UART_RX|RXC_state~9_regout\ & (!\UART_RX|RXC_state~8_regout\ & !\UART_RX|data_count[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~9_regout\,
	datab => \UART_RX|RXC_state~8_regout\,
	datac => \UART_RX|data_count\(0),
	datad => \UART_RX|data_count[2]~7_combout\,
	combout => \UART_RX|data_count[0]~11_combout\);

-- Location: LCFF_X62_Y1_N7
\UART_RX|data_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|data_count[0]~11_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|data_count\(0));

-- Location: LCCOMB_X62_Y1_N0
\UART_RX|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Add1~0_combout\ = (\UART_RX|data_count\(1) & \UART_RX|data_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART_RX|data_count\(1),
	datad => \UART_RX|data_count\(0),
	combout => \UART_RX|Add1~0_combout\);

-- Location: LCCOMB_X63_Y1_N2
\UART_RX|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Selector3~0_combout\ = (\UART_RX|data_count\(2) & (\UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\ & (\UART_RX|Add1~0_combout\ & \UART_RX|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|data_count\(2),
	datab => \UART_RX|RXC_state.S_RXC_ASSEMBLE_DATA~0_combout\,
	datac => \UART_RX|Add1~0_combout\,
	datad => \UART_RX|Equal2~2_combout\,
	combout => \UART_RX|Selector3~0_combout\);

-- Location: LCCOMB_X63_Y1_N6
\UART_RX|RXC_state~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|RXC_state~13_combout\ = (\UART_RX|data_count[2]~6_combout\ & ((\UART_RX|Selector3~1_combout\ & ((\UART_RX|clock_count[7]~34_combout\))) # (!\UART_RX|Selector3~1_combout\ & (\UART_RX|RXC_state~9_regout\)))) # (!\UART_RX|data_count[2]~6_combout\ & 
-- (((\UART_RX|clock_count[7]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|data_count[2]~6_combout\,
	datab => \UART_RX|RXC_state~9_regout\,
	datac => \UART_RX|clock_count[7]~34_combout\,
	datad => \UART_RX|Selector3~1_combout\,
	combout => \UART_RX|RXC_state~13_combout\);

-- Location: LCCOMB_X63_Y1_N10
\UART_RX|RXC_state~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|RXC_state~14_combout\ = (!\UART_RX|Empty~0_combout\ & ((\UART_RX|Selector3~0_combout\) # (\UART_RX|RXC_state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~0_combout\,
	datac => \UART_RX|Selector3~0_combout\,
	datad => \UART_RX|RXC_state~13_combout\,
	combout => \UART_RX|RXC_state~14_combout\);

-- Location: LCFF_X63_Y1_N11
\UART_RX|RXC_state~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|RXC_state~14_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|RXC_state~9_regout\);

-- Location: LCCOMB_X63_Y1_N28
\UART_RX|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Selector3~1_combout\ = (\UART_RX|RXC_state~8_regout\ & (!\UART_RX|RXC_state~9_regout\ & ((\UART_RX|RX_data_in~regout\) # (\UART_RX|always0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~8_regout\,
	datab => \UART_RX|RXC_state~9_regout\,
	datac => \UART_RX|RX_data_in~regout\,
	datad => \UART_RX|always0~2_combout\,
	combout => \UART_RX|Selector3~1_combout\);

-- Location: LCCOMB_X62_Y1_N4
\UART_RX|RXC_state~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|RXC_state~15_combout\ = (\UART_RX|RXC_state~8_regout\) # ((!\UART_RX|RXC_state~9_regout\ & (!\UART_RX|RX_data_in~regout\ & \UART_rx_enable~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~9_regout\,
	datab => \UART_RX|RX_data_in~regout\,
	datac => \UART_RX|RXC_state~8_regout\,
	datad => \UART_rx_enable~regout\,
	combout => \UART_RX|RXC_state~15_combout\);

-- Location: LCCOMB_X63_Y1_N12
\UART_RX|RXC_state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|RXC_state~12_combout\ = (!\UART_RX|Empty~0_combout\ & ((\UART_RX|Selector3~0_combout\) # ((!\UART_RX|Selector3~1_combout\ & \UART_RX|RXC_state~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Empty~0_combout\,
	datab => \UART_RX|Selector3~1_combout\,
	datac => \UART_RX|RXC_state~15_combout\,
	datad => \UART_RX|Selector3~0_combout\,
	combout => \UART_RX|RXC_state~12_combout\);

-- Location: LCFF_X63_Y1_N13
\UART_RX|RXC_state~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|RXC_state~12_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|RXC_state~8_regout\);

-- Location: LCCOMB_X62_Y1_N2
\UART_RX|data_count[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|data_count[2]~6_combout\ = (\UART_RX|RXC_state~9_regout\) # ((\UART_RX|RX_data_in~regout\) # ((\UART_RX|RXC_state~8_regout\) # (!\UART_rx_enable~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~9_regout\,
	datab => \UART_RX|RX_data_in~regout\,
	datac => \UART_RX|RXC_state~8_regout\,
	datad => \UART_rx_enable~regout\,
	combout => \UART_RX|data_count[2]~6_combout\);

-- Location: LCCOMB_X62_Y1_N18
\UART_RX|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Selector18~0_combout\ = (\UART_RX|RXC_state~9_regout\ & (\UART_RX|RX_data_in~regout\ & (\UART_RX|Equal2~2_combout\ & \UART_RX|RXC_state~8_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|RXC_state~9_regout\,
	datab => \UART_RX|RX_data_in~regout\,
	datac => \UART_RX|Equal2~2_combout\,
	datad => \UART_RX|RXC_state~8_regout\,
	combout => \UART_RX|Selector18~0_combout\);

-- Location: LCCOMB_X62_Y1_N12
\UART_RX|Overrun~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_RX|Overrun~1_combout\ = (\UART_RX|data_count[2]~6_combout\ & ((\UART_RX|Selector18~0_combout\ & (\UART_RX|Overrun~0_combout\)) # (!\UART_RX|Selector18~0_combout\ & ((\UART_RX|Overrun~regout\))))) # (!\UART_RX|data_count[2]~6_combout\ & 
-- (\UART_RX|Overrun~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Overrun~0_combout\,
	datab => \UART_RX|data_count[2]~6_combout\,
	datac => \UART_RX|Overrun~regout\,
	datad => \UART_RX|Selector18~0_combout\,
	combout => \UART_RX|Overrun~1_combout\);

-- Location: LCFF_X62_Y1_N13
\UART_RX|Overrun\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \UART_RX|Overrun~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_RX|Overrun~regout\);

-- Location: LCCOMB_X61_Y1_N22
\over_run_count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \over_run_count[0]~0_combout\ = over_run_count(0) $ (\UART_RX|Overrun~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => over_run_count(0),
	datad => \UART_RX|Overrun~regout\,
	combout => \over_run_count[0]~0_combout\);

-- Location: LCFF_X61_Y1_N23
\over_run_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \over_run_count[0]~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => over_run_count(0));

-- Location: LCCOMB_X61_Y1_N0
\over_run_count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \over_run_count[1]~1_combout\ = over_run_count(1) $ (((over_run_count(0) & \UART_RX|Overrun~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => over_run_count(0),
	datac => over_run_count(1),
	datad => \UART_RX|Overrun~regout\,
	combout => \over_run_count[1]~1_combout\);

-- Location: LCFF_X61_Y1_N1
\over_run_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \over_run_count[1]~1_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => over_run_count(1));

-- Location: LCCOMB_X61_Y1_N18
\over_run_count[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \over_run_count[2]~2_combout\ = over_run_count(2) $ (((\UART_RX|Overrun~regout\ & (over_run_count(1) & over_run_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_RX|Overrun~regout\,
	datab => over_run_count(1),
	datac => over_run_count(2),
	datad => over_run_count(0),
	combout => \over_run_count[2]~2_combout\);

-- Location: LCFF_X61_Y1_N19
\over_run_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \over_run_count[2]~2_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => over_run_count(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27_I~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_27_I,
	combout => \CLOCK_27_I~combout\);

-- Location: PLL_3
\UART_clock_inst|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 8,
	c0_initial => 1,
	c0_low => 7,
	c0_mode => "odd",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 15,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 32,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 37037,
	inclk1_input_frequency => 37037,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 32,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 3582,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => \SWITCH_I~combout\(17),
	inclk => \UART_clock_inst|altpll_component|pll_INCLK_bus\,
	clk => \UART_clock_inst|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\UART_clock_inst|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART_clock_inst|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X3_Y16_N18
\UART_tx_done~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_done~2_combout\ = (((\TX_state~8_regout\) # (\TX_state~9_regout\)) # (!\UART_tx_address[0]~11_combout\)) # (!\UART_tx_clock_enable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_tx_clock_enable~0_combout\,
	datab => \UART_tx_address[0]~11_combout\,
	datac => \TX_state~8_regout\,
	datad => \TX_state~9_regout\,
	combout => \UART_tx_done~2_combout\);

-- Location: LCCOMB_X3_Y16_N14
\UART_tx_done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_done~0_combout\ = (\TX_state~8_regout\ & (!\UART_tx_clock_buf~regout\ & (\UART_tx_clock~regout\ & !\UART_TX|Empty~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX_state~8_regout\,
	datab => \UART_tx_clock_buf~regout\,
	datac => \UART_tx_clock~regout\,
	datad => \UART_TX|Empty~regout\,
	combout => \UART_tx_done~0_combout\);

-- Location: LCCOMB_X4_Y16_N8
\UART_tx_done~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_tx_done~3_combout\ = (\UART_tx_done~1_combout\ & (!\UART_tx_done~0_combout\ & ((\UART_tx_done~regout\) # (!\UART_tx_done~2_combout\)))) # (!\UART_tx_done~1_combout\ & (((\UART_tx_done~regout\)) # (!\UART_tx_done~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_tx_done~1_combout\,
	datab => \UART_tx_done~2_combout\,
	datac => \UART_tx_done~regout\,
	datad => \UART_tx_done~0_combout\,
	combout => \UART_tx_done~3_combout\);

-- Location: LCFF_X4_Y16_N9
UART_tx_done : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_tx_done~3_combout\,
	aclr => \SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_tx_done~regout\);

-- Location: LCCOMB_X3_Y16_N8
\UART_TX|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART_TX|Selector0~0_combout\ = (\UART_TX|TXC_state~8_regout\ & ((!\UART_TX|TXC_state~9_regout\))) # (!\UART_TX|TXC_state~8_regout\ & (\UART_TX|UART_TX_O~regout\ & \UART_TX|TXC_state~9_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART_TX|TXC_state~8_regout\,
	datac => \UART_TX|UART_TX_O~regout\,
	datad => \UART_TX|TXC_state~9_regout\,
	combout => \UART_TX|Selector0~0_combout\);

-- Location: LCFF_X3_Y16_N9
\UART_TX|UART_TX_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART_clock_inst|altpll_component|_clk0~clkctrl_outclk\,
	datain => \UART_TX|Selector0~0_combout\,
	aclr => \SWITCH_I~combout\(17),
	ena => \UART_tx_clock_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART_TX|UART_TX_O~regout\);

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(0));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(1));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(2));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(16));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit0|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_rx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_rx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_rx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_rx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit3|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \unit4|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_tx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_tx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_tx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => UART_tx_address(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(6));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_UART_rx_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => error_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => error_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => error_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => over_run_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => over_run_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => over_run_count(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_UART_tx_done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(8));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TX_O~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART_TX|ALT_INV_UART_TX_O~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_UART_TX_O);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TD_RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TD_RESET);
END structure;


