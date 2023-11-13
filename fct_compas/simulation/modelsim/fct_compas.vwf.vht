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
-- Generated on "11/13/2023 21:37:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fct_compas
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fct_compas_vhd_vec_tst IS
END fct_compas_vhd_vec_tst;
ARCHITECTURE fct_compas_arch OF fct_compas_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50M : STD_LOGIC;
SIGNAL continu : STD_LOGIC;
SIGNAL data_valid : STD_LOGIC;
SIGNAL in_pwm_compas : STD_LOGIC;
SIGNAL out_1s : STD_LOGIC;
SIGNAL rst_n : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
SIGNAL valeur_compas : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT fct_compas
	PORT (
	clk_50M : IN STD_LOGIC;
	continu : IN STD_LOGIC;
	data_valid : BUFFER STD_LOGIC;
	in_pwm_compas : IN STD_LOGIC;
	out_1s : BUFFER STD_LOGIC;
	rst_n : IN STD_LOGIC;
	start_stop : IN STD_LOGIC;
	valeur_compas : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : fct_compas
	PORT MAP (
-- list connections between master ports and signals
	clk_50M => clk_50M,
	continu => continu,
	data_valid => data_valid,
	in_pwm_compas => in_pwm_compas,
	out_1s => out_1s,
	rst_n => rst_n,
	start_stop => start_stop,
	valeur_compas => valeur_compas
	);

-- rst_n
t_prcs_rst_n: PROCESS
BEGIN
	rst_n <= '0';
WAIT;
END PROCESS t_prcs_rst_n;

-- clk_50M
t_prcs_clk_50M: PROCESS
BEGIN
	clk_50M <= '0';
WAIT;
END PROCESS t_prcs_clk_50M;

-- in_pwm_compas
t_prcs_in_pwm_compas: PROCESS
BEGIN
	in_pwm_compas <= '0';
WAIT;
END PROCESS t_prcs_in_pwm_compas;

-- continu
t_prcs_continu: PROCESS
BEGIN
	continu <= '0';
WAIT;
END PROCESS t_prcs_continu;

-- start_stop
t_prcs_start_stop: PROCESS
BEGIN
	start_stop <= '0';
WAIT;
END PROCESS t_prcs_start_stop;
END fct_compas_arch;
