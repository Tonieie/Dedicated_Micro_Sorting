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

-- Generated by Quartus II Version 8.1 Build 163 10/28/2008 SJ Web Edition
-- Created on Sat Mar 28 17:17:17 2020

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY pjdn IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        Start : IN STD_LOGIC := '0';
        I_less_7 : IN STD_LOGIC := '0';
        I_less_8 : IN STD_LOGIC := '0';
        I_eq_15 : IN STD_LOGIC := '0';
        J_ne_15 : IN STD_LOGIC := '0';
        Buff_less_rej : IN STD_LOGIC := '0';
        AD : IN STD_LOGIC := '0';
        CLR : OUT STD_LOGIC;
        Sel_Adr : OUT STD_LOGIC;
        Sel_in : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        WE : OUT STD_LOGIC;
        RAE : OUT STD_LOGIC;
        RBE : OUT STD_LOGIC;
        Load_i : OUT STD_LOGIC;
        Load_j : OUT STD_LOGIC;
        Load_buff : OUT STD_LOGIC;
        Sel_i : OUT STD_LOGIC;
        Sel_num : OUT STD_LOGIC;
        Add_Sub : OUT STD_LOGIC;
        Done : OUT STD_LOGIC;
        OE : OUT STD_LOGIC
    );
END pjdn;

ARCHITECTURE BEHAVIOR OF pjdn IS
    TYPE type_fstate IS (state1,state2,state3,state4,state5,state6,state7,state8,state9,state10,state11,state12,state13,state14,state15,state16,state17,state18,state19);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
    SIGNAL reg_CLR : STD_LOGIC := '0';
    SIGNAL reg_Sel_Adr : STD_LOGIC := '0';
    SIGNAL reg_Sel_in : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
    SIGNAL reg_WE : STD_LOGIC := '0';
    SIGNAL reg_RAE : STD_LOGIC := '0';
    SIGNAL reg_RBE : STD_LOGIC := '0';
    SIGNAL reg_Load_i : STD_LOGIC := '0';
    SIGNAL reg_Load_j : STD_LOGIC := '0';
    SIGNAL reg_Load_buff : STD_LOGIC := '0';
    SIGNAL reg_Sel_i : STD_LOGIC := '0';
    SIGNAL reg_Sel_num : STD_LOGIC := '0';
    SIGNAL reg_Add_Sub : STD_LOGIC := '0';
    SIGNAL reg_Done : STD_LOGIC := '0';
    SIGNAL reg_OE : STD_LOGIC := '0';
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,Start,I_less_7,I_less_8,I_eq_15,J_ne_15,Buff_less_rej,AD,reg_CLR,reg_Sel_Adr,reg_Sel_in,reg_WE,reg_RAE,reg_RBE,reg_Load_i,reg_Load_j,reg_Load_buff,reg_Sel_i,reg_Sel_num,reg_Add_Sub,reg_Done,reg_OE)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            reg_CLR <= '0';
            reg_Sel_Adr <= '0';
            reg_Sel_in <= "00";
            reg_WE <= '0';
            reg_RAE <= '0';
            reg_RBE <= '0';
            reg_Load_i <= '0';
            reg_Load_j <= '0';
            reg_Load_buff <= '0';
            reg_Sel_i <= '0';
            reg_Sel_num <= '0';
            reg_Add_Sub <= '0';
            reg_Done <= '0';
            reg_OE <= '0';
            CLR <= '0';
            Sel_Adr <= '0';
            Sel_in <= "00";
            WE <= '0';
            RAE <= '0';
            RBE <= '0';
            Load_i <= '0';
            Load_j <= '0';
            Load_buff <= '0';
            Sel_i <= '0';
            Sel_num <= '0';
            Add_Sub <= '0';
            Done <= '0';
            OE <= '0';
        ELSE
            reg_CLR <= '0';
            reg_Sel_Adr <= '0';
            reg_Sel_in <= "00";
            reg_WE <= '0';
            reg_RAE <= '0';
            reg_RBE <= '0';
            reg_Load_i <= '0';
            reg_Load_j <= '0';
            reg_Load_buff <= '0';
            reg_Sel_i <= '0';
            reg_Sel_num <= '0';
            reg_Add_Sub <= '0';
            reg_Done <= '0';
            reg_OE <= '0';
            CLR <= '0';
            Sel_Adr <= '0';
            Sel_in <= "00";
            WE <= '0';
            RAE <= '0';
            RBE <= '0';
            Load_i <= '0';
            Load_j <= '0';
            Load_buff <= '0';
            Sel_i <= '0';
            Sel_num <= '0';
            Add_Sub <= '0';
            Done <= '0';
            OE <= '0';
            CASE fstate IS
                WHEN state1 =>
                    IF (NOT((Start = '1'))) THEN
                        reg_fstate <= state1;
                    ELSIF ((Start = '1')) THEN
                        reg_fstate <= state2;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '1';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state2 =>
                    IF ((I_less_7 = '1')) THEN
                        reg_fstate <= state2;
                    ELSIF (NOT((I_less_7 = '1'))) THEN
                        reg_fstate <= state3;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state2;
                    END IF;

                    reg_Load_i <= '1';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '1';

                    reg_Sel_in <= "00";

                    reg_WE <= '1';

                    reg_RAE <= '0';
                WHEN state3 =>
                    reg_fstate <= state4;

                    reg_Load_i <= '1';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '1';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state4 =>
                    reg_fstate <= state5;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '1';

                    reg_Load_j <= '1';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '1';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state5 =>
                    reg_fstate <= state6;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '1';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state6 =>
                    reg_fstate <= state7;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '1';

                    reg_Sel_i <= '0';

                    reg_RBE <= '1';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state7 =>
                    IF (((J_ne_15 = '1') AND (Buff_less_rej = '1'))) THEN
                        reg_fstate <= state8;
                    ELSIF (NOT(((J_ne_15 = '1') AND (Buff_less_rej = '1')))) THEN
                        reg_fstate <= state10;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state7;
                    END IF;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '1';

                    reg_Sel_i <= '0';

                    reg_RBE <= '1';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state8 =>
                    reg_fstate <= state9;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '1';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "01";

                    reg_WE <= '1';

                    reg_RAE <= '0';
                WHEN state9 =>
                    IF (((J_ne_15 = '1') AND (Buff_less_rej = '1'))) THEN
                        reg_fstate <= state6;
                    ELSIF (NOT(((J_ne_15 = '1') AND (Buff_less_rej = '1')))) THEN
                        reg_fstate <= state10;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state9;
                    END IF;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '1';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '1';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '1';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state10 =>
                    reg_fstate <= state11;

                    reg_Load_i <= '1';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state11 =>
                    reg_fstate <= state12;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '1';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state12 =>
                    IF ((I_less_8 = '1')) THEN
                        reg_fstate <= state4;
                    ELSIF (((AD = '0') AND NOT((I_less_8 = '1')))) THEN
                        reg_fstate <= state13;
                    ELSIF (((AD = '1') AND NOT((I_less_8 = '1')))) THEN
                        reg_fstate <= state16;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state12;
                    END IF;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '1';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "10";

                    reg_WE <= '1';

                    reg_RAE <= '0';
                WHEN state13 =>
                    reg_fstate <= state14;

                    reg_Load_i <= '1';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '1';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state14 =>
                    reg_fstate <= state15;

                    reg_Load_i <= '1';

                    reg_Done <= '1';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '1';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '1';
                WHEN state15 =>
                    IF (NOT((I_eq_15 = '1'))) THEN
                        reg_fstate <= state15;
                    ELSIF ((I_eq_15 = '1')) THEN
                        reg_fstate <= state19;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state15;
                    END IF;

                    reg_Load_i <= '1';

                    reg_Done <= '0';

                    reg_OE <= '1';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '1';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '1';
                WHEN state16 =>
                    reg_fstate <= state17;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '1';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN state17 =>
                    reg_fstate <= state18;

                    reg_Load_i <= '1';

                    reg_Done <= '1';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '1';
                WHEN state18 =>
                    IF ((I_less_8 = '1')) THEN
                        reg_fstate <= state18;
                    ELSIF (NOT((I_less_8 = '1'))) THEN
                        reg_fstate <= state19;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state18;
                    END IF;

                    reg_Load_i <= '1';

                    reg_Done <= '0';

                    reg_OE <= '1';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '1';
                WHEN state19 =>
                    reg_fstate <= state19;

                    reg_Load_i <= '0';

                    reg_Done <= '0';

                    reg_OE <= '0';

                    reg_Sel_num <= '0';

                    reg_Sel_i <= '0';

                    reg_RBE <= '0';

                    reg_Load_j <= '0';

                    reg_Load_buff <= '0';

                    reg_Add_Sub <= '0';

                    reg_CLR <= '0';

                    reg_Sel_Adr <= '0';

                    reg_Sel_in <= "00";

                    reg_WE <= '0';

                    reg_RAE <= '0';
                WHEN OTHERS => 
                    reg_CLR <= 'X';
                    reg_Sel_Adr <= 'X';
                    reg_Sel_in <= "XX";
                    reg_WE <= 'X';
                    reg_RAE <= 'X';
                    reg_RBE <= 'X';
                    reg_Load_i <= 'X';
                    reg_Load_j <= 'X';
                    reg_Load_buff <= 'X';
                    reg_Sel_i <= 'X';
                    reg_Sel_num <= 'X';
                    reg_Add_Sub <= 'X';
                    reg_Done <= 'X';
                    reg_OE <= 'X';
                    report "Reach undefined state";
            END CASE;
            CLR <= reg_CLR;
            Sel_Adr <= reg_Sel_Adr;
            Sel_in <= reg_Sel_in;
            WE <= reg_WE;
            RAE <= reg_RAE;
            RBE <= reg_RBE;
            Load_i <= reg_Load_i;
            Load_j <= reg_Load_j;
            Load_buff <= reg_Load_buff;
            Sel_i <= reg_Sel_i;
            Sel_num <= reg_Sel_num;
            Add_Sub <= reg_Add_Sub;
            Done <= reg_Done;
            OE <= reg_OE;
        END IF;
    END PROCESS;
END BEHAVIOR;
