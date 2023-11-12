-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/12/2023 17:40:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          traitement_compas
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY traitement_compas_vhd_vec_tst IS
END traitement_compas_vhd_vec_tst;
ARCHITECTURE traitement_compas_arch OF traitement_compas_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50MHz : STD_LOGIC;
SIGNAL continu : STD_LOGIC;
SIGNAL data_compas : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL data_valid : STD_LOGIC;
SIGNAL in_pwm : STD_LOGIC;
SIGNAL RAZ_N : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
COMPONENT traitement_compas
	PORT (
	clk_50MHz : IN STD_LOGIC;
	continu : IN STD_LOGIC;
	data_compas : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	data_valid : OUT STD_LOGIC;
	in_pwm : IN STD_LOGIC;
	RAZ_N : IN STD_LOGIC;
	start_stop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : traitement_compas
	PORT MAP (
-- list connections between master ports and signals
	clk_50MHz => clk_50MHz,
	continu => continu,
	data_compas => data_compas,
	data_valid => data_valid,
	in_pwm => in_pwm,
	RAZ_N => RAZ_N,
	start_stop => start_stop
	);

-- clk_50MHz
t_prcs_clk_50MHz: PROCESS
BEGIN
	clk_50MHz <= '1';
WAIT;
END PROCESS t_prcs_clk_50MHz;

-- RAZ_N
t_prcs_RAZ_N: PROCESS
BEGIN
	RAZ_N <= '0';
WAIT;
END PROCESS t_prcs_RAZ_N;

-- continu
t_prcs_continu: PROCESS
BEGIN
	continu <= '0';
WAIT;
END PROCESS t_prcs_continu;

-- start_stop
t_prcs_start_stop: PROCESS
BEGIN
	start_stop <= '1';
WAIT;
END PROCESS t_prcs_start_stop;

-- in_pwm
t_prcs_in_pwm: PROCESS
BEGIN
LOOP
	in_pwm <= '0';
	WAIT FOR 10000 ps;
	in_pwm <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_in_pwm;
END traitement_compas_arch;
