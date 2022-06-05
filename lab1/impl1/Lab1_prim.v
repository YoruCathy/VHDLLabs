// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed Dec 09 21:38:56 2020
//
// Verilog Description of module Lab1
//

module Lab1 (clk, button, column, sck, rck, din, row, seven_segment_disp_left, 
            seven_segment_disp_right, seven_segment_disp_dp);   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(4[8:12])
    input clk;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(6[6:9])
    input [3:0]button;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(7[3:9])
    input [3:0]column;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(8[3:9])
    output sck;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(9[3:6])
    output rck;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(10[3:6])
    output din;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(11[3:6])
    output [3:0]row;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    output [6:0]seven_segment_disp_left;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    output [6:0]seven_segment_disp_right;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    output [1:0]seven_segment_disp_dp;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(15[3:24])
    
    wire sck_c_c /* synthesis SET_AS_NETWORK=sck_c_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(6[6:9])
    wire state_clk /* synthesis is_clock=1, SET_AS_NETWORK=state_clk */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(21[8:17])
    wire clk_N_600 /* synthesis is_inv_clock=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(300[10:18])
    
    wire GND_net, VCC_net, button_c_3, button_c_2, button_c_1, button_c_0, 
        column_c_3, column_c_2, column_c_1, column_c_0, rck_c, din_c, 
        row_c_2, row_c_1, row_c_0, n5, n8246, seven_segment_disp_left_c_1, 
        seven_segment_disp_right_c_6, seven_segment_disp_right_c_5, seven_segment_disp_right_c_4, 
        seven_segment_disp_right_c_3, seven_segment_disp_right_c_2, seven_segment_disp_right_c_1, 
        seven_segment_disp_right_c_0;
    wire [4:0]matrix_key_code;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(20[8:23])
    wire [1:0]scan_state;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(22[8:18])
    
    wire button_flag;
    wire [3:0]button_last;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(24[8:19])
    wire [1:0]key_flag;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(26[8:16])
    wire [3:0]row_last;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(27[8:16])
    wire [3:0]row_now;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(28[8:15])
    
    wire n55, n20_adj_1, n14, n54;
    wire [15:0]matrix_disp_right;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(29[8:25])
    
    wire n8205, n7156, n90, n89, n88, n87, n86, n85, n84, 
        n83, n82, n81, n80, n79, n78, n77, n76, n75, n74, 
        n4171;
    wire [31:0]cnt_100;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(38[10:17])
    
    wire n14_adj_2;
    wire [31:0]cnt_debounce;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(39[10:22])
    wire [31:0]cnt_debounce2;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(40[10:23])
    
    wire n52;
    wire [31:0]cnt_disp_1ms;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(41[10:22])
    
    wire button_flag_N_784, n19, n20, n8264, n8245, n7107, n8175, 
        n8263, n7797, sck_c_c_enable_59, n7795, n7793, n15, n3766, 
        n8174, n7105, n7791, n4822, sck_c_c_enable_60, n40, n7222, 
        n50, n7703, n20_adj_3, n8173, n11, n39, n38, n37, n36, 
        n35, n34, n7155, n7154, n8244, sck_c_c_enable_44, state_clk_N_781, 
        n49, n251, n7153, n7152, n7100, n7104, n7151, n7103, 
        n7150, n7102, n7149, n4389, n4388, n7759, n7099, n7717, 
        n25, n7148, n7147, n4261, n4256, n7101, n30, n12, n7146, 
        n7, n8262, n8243, n7145, sck_c_c_enable_5, n7144, n7143, 
        n8261, n7098, n8158, n7142;
    wire [1:0]key_flag_1__N_251;
    
    wire n7141, n7096, n7140, n7095, n7094, n7093, n7092, n7091, 
        n4201, n7090, n7089, n7088;
    wire [1:0]key_flag_1__N_253;
    
    wire n7087, n3997, n5816, n5827, n8242, n8260, sck_c_c_enable_16;
    wire [1:0]key_flag_1__N_255;
    
    wire n7086, n48, n7085, n7084, n8286, n5073, n7083, n18, 
        n7082, n7238, n7081, sck_c_c_enable_62, n7080, n48_adj_4, 
        n7079, n7078;
    wire [1:0]key_flag_1__N_257;
    
    wire n6289, n7077, n7076, n7075, n7074;
    wire [1:0]key_flag_1__N_30;
    wire [3:0]row_now_3__N_36;
    wire [4:0]matrix_key_code_4__N_19;
    wire [3:0]row_last_3__N_32;
    
    wire n7073, n7072, n7071, n7070, n7069, n7068, n7067, n7066, 
        n90_adj_5, n89_adj_6, n88_adj_7, n87_adj_8, n86_adj_9, n85_adj_10, 
        n84_adj_11, n83_adj_12, n82_adj_13, n81_adj_14, n80_adj_15, 
        n79_adj_16, n78_adj_17, n77_adj_18, n76_adj_19, n75_adj_20, 
        n74_adj_21;
    wire [1:0]scan_state_1__N_24;
    wire [31:0]location;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(300[10:18])
    wire [31:0]segment_switch_flag;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(301[10:29])
    
    wire din_N_778, n1727, n1728, n1729, n1730, n1731, n1732, 
        n1733, n1734, n1735, n1736, n1737, n1738, n1739, n1740, 
        n1741, n1742, n1743, n1744, n1745, n1746, n1747, n1748, 
        n1749, n1750, n1751, n1752, n1753, n1754, n1755, n1756, 
        n1757, n1758, n8139, n18_adj_22, n4754, n63, n3317, n5133, 
        n4239, n4775, n8241;
    wire [31:0]location_31__N_633;
    
    wire din_N_780, n2005, n2006, n2007, n2008, n2009, n2010, 
        n2011, n2012, n2013, n2014, n2015, n2016, n2017, n2018, 
        n2019, n2020, n2021, n2022, n2023, n2024, n2025, n2026, 
        n2027, n2028, n2029, n2030, n2031, n2032, n2033, n2034, 
        n2035, n2036, n48_adj_23, n1, n5074, n44, n16, n3387, 
        n8240, n100, n99, n98, n97, n96, n95, n94, n93, n92, 
        n91, n90_adj_24, n89_adj_25, n88_adj_26, n87_adj_27, n86_adj_28, 
        n85_adj_29, n84_adj_30, n83_adj_31, n82_adj_32, din_N_775;
    wire [31:0]location_31__N_567;
    
    wire rck_N_762, n6, n60, n7170, n6276, n40_adj_33, n58, n39_adj_34, 
        n7722, n7716, n55_adj_35, n24, n23, n54_adj_36, n22, n52_adj_37, 
        sck_c_c_enable_43, n50_adj_38, n8126, n49_adj_39, n48_adj_40, 
        n18_adj_41, n17, n44_adj_42, n8125, n40_adj_43, n16_adj_44, 
        n8124, n39_adj_45, n8123, clk_N_600_enable_1, n8259, n8258, 
        n49_adj_46, sck_c_c_enable_11, n7743, n7735, n16_adj_47, n7_adj_48, 
        n8121, n14_adj_49, n7065, n7064, n7063, n6270, n7062, 
        n8257, n7061, n8116, clk_N_600_enable_2, n8115, n8114, n7060, 
        clk_N_600_enable_3, n8256, n7_adj_50, n7059, n14_adj_51, n6078, 
        n8239, n7058, n8255, n8254, n8253, n8252, n8251, n8026, 
        n7057, n2, n8250, n5098, n2_adj_52, n5097, n7055, n5096, 
        n7054, n7736, n8249, n5085, n7166, n7729, n7811, n8106, 
        n4622, n4, n39_adj_53, n6_adj_54, n5_adj_55, n8248, n8237, 
        n8236, n8247, n57, n8233, n8027, n12_adj_56, n7165, n30_adj_57, 
        sck_c_c_enable_15, n7164, n8093, n7109, n8284, n8283, n5094, 
        n8282, n8281, n7053, n8025, n4_adj_58, n4_adj_59, n8234, 
        n8088, n8087, n10, n7163, n8287, n5413, n8279, n8278, 
        n8235, n8277, sck_c_c_enable_57, n7052, n7739, n4169, n7_adj_60, 
        n8276, n3992, n7162, n7161, n8209, n7807, n8208, n8275, 
        n8024, n8207, n7715, n8274, n7051, n8206, sck_c_c_enable_12, 
        n4_adj_61, n8203, n12_adj_62, n7050, n8202, n7049, n8201, 
        sck_c_c_enable_63, n8200, n8199, n7048, n7047, n8273, n60_adj_63, 
        n8198, n7160, n7159, n8023, n8272, n8271, n5050, n7108, 
        n8270, n4776, n8269, n8268, n8049, n7158, n8288, n7157, 
        sck_c_c_enable_61, n8048, n58_adj_64, n8267, n8266, n8265, 
        n8503, n8501, n13;
    
    VHI i2 (.Z(VCC_net));
    INV i5213 (.A(sck_c_c), .Z(clk_N_600));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(6[6:9])
    LUT4 n4207_bdd_4_lut (.A(n8275), .B(matrix_key_code[4]), .C(matrix_key_code[3]), 
         .D(matrix_key_code[0]), .Z(n8093)) /* synthesis lut_function=(A (B+(C))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam n4207_bdd_4_lut.init = 16'hfce8;
    LUT4 i3314_2_lut_rep_185 (.A(n3387), .B(location_31__N_633[31]), .Z(n8501)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3314_2_lut_rep_185.init = 16'heeee;
    LUT4 i4966_3_lut_4_lut_4_lut_3_lut_4_lut (.A(n3387), .B(location_31__N_633[31]), 
         .C(segment_switch_flag[0]), .D(n8241), .Z(clk_N_600_enable_3)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i4966_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hfe0e;
    FD1P3IX cnt_debounce_1025_1026__i12 (.D(n79_adj_16), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i12.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i16 (.D(n75_adj_20), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i16.GSR = "ENABLED";
    CCU2D cnt_debounce_1025_1026_add_4_15 (.A0(cnt_debounce[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7104), .COUT(n7105), .S0(n77_adj_18), 
          .S1(n76_adj_19));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_15.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_15.INJECT1_1 = "NO";
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    OB row_pad_3 (.I(row_now_3__N_36[3]), .O(row[3]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    OB din_pad (.I(din_c), .O(din));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(11[3:6])
    OB rck_pad (.I(rck_c), .O(rck));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(10[3:6])
    OB sck_pad (.I(sck_c_c), .O(sck));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(9[3:6])
    LUT4 button_flag_I_6_3_lut (.A(n5_adj_55), .B(button_flag), .C(n6_adj_54), 
         .Z(button_flag_N_784)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(48[6:45])
    defparam button_flag_I_6_3_lut.init = 16'h3232;
    FD1P3AX key_flag_i0 (.D(key_flag_1__N_30[0]), .SP(sck_c_c_enable_16), 
            .CK(sck_c_c), .Q(key_flag[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam key_flag_i0.GSR = "ENABLED";
    FD1S3JX row_i1 (.D(scan_state[0]), .CK(sck_c_c), .PD(scan_state[1]), 
            .Q(row_c_0));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(button_last[0]), .B(button_last[1]), .C(button_c_0), 
         .D(button_c_1), .Z(n5_adj_55)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(48[6:25])
    defparam i1_4_lut.init = 16'h7bde;
    FD1S3AX state_clk_259 (.D(state_clk_N_781), .CK(sck_c_c), .Q(state_clk));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam state_clk_259.GSR = "ENABLED";
    FD1P3AY row_now_i0 (.D(n8272), .SP(sck_c_c_enable_15), .CK(sck_c_c), 
            .Q(row_now[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_now_i0.GSR = "ENABLED";
    FD1P3AY row_last_i0 (.D(row_last_3__N_32[0]), .SP(sck_c_c_enable_5), 
            .CK(sck_c_c), .Q(row_last[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_last_i0.GSR = "ENABLED";
    FD1P3AX din_268 (.D(din_N_775), .SP(clk_N_600_enable_1), .CK(clk_N_600), 
            .Q(din_c));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam din_268.GSR = "ENABLED";
    FD1S3AX location_i0 (.D(location_31__N_567[0]), .CK(clk_N_600), .Q(location[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i0.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i11 (.D(n80_adj_15), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i11.GSR = "ENABLED";
    PFUMX location_3__I_0_i5 (.BLUT(matrix_disp_right[6]), .ALUT(matrix_disp_right[7]), 
          .C0(location[0]), .Z(n5));
    FD1P3IX cnt_debounce_1025_1026__i10 (.D(n81_adj_14), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i10.GSR = "ENABLED";
    CCU2D add_217_31 (.A0(location[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7071), .COUT(n7072), .S0(n1729), .S1(n1728));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_31.INIT0 = 16'h5aaa;
    defparam add_217_31.INIT1 = 16'h5aaa;
    defparam add_217_31.INJECT1_0 = "NO";
    defparam add_217_31.INJECT1_1 = "NO";
    FD1P3IX cnt_debounce_1025_1026__i15 (.D(n76_adj_19), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i15.GSR = "ENABLED";
    FD1P3AX segment_switch_flag_i0 (.D(n8236), .SP(clk_N_600_enable_2), 
            .CK(clk_N_600), .Q(segment_switch_flag[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam segment_switch_flag_i0.GSR = "ENABLED";
    FD1P3AX rck_270 (.D(rck_N_762), .SP(clk_N_600_enable_3), .CK(clk_N_600), 
            .Q(rck_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam rck_270.GSR = "ENABLED";
    FD1P3IX button_flag_253 (.D(n8503), .SP(button_flag_N_784), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(button_flag)) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam button_flag_253.GSR = "ENABLED";
    FD1S3AY scan_state_i0 (.D(scan_state_1__N_24[0]), .CK(state_clk), .Q(scan_state[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(261[2] 269[9])
    defparam scan_state_i0.GSR = "ENABLED";
    FD1S3AX scan_state_i1 (.D(scan_state_1__N_24[1]), .CK(state_clk), .Q(scan_state[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(261[2] 269[9])
    defparam scan_state_i1.GSR = "ENABLED";
    FD1S3AX location_i31 (.D(location_31__N_567[31]), .CK(clk_N_600), .Q(location[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i31.GSR = "ENABLED";
    CCU2D cnt_debounce2_1027_1028_add_4_15 (.A0(cnt_debounce2[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7053), .COUT(n7054), .S0(n87_adj_27), 
          .S1(n86_adj_28));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_15.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_15.INJECT1_1 = "NO";
    LUT4 i2_4_lut (.A(button_last[2]), .B(button_last[3]), .C(button_c_2), 
         .D(button_c_3), .Z(n6_adj_54)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(48[6:25])
    defparam i2_4_lut.init = 16'h7bde;
    FD1P3IX cnt_debounce_1025_1026__i14 (.D(n77_adj_18), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i14.GSR = "ENABLED";
    LUT4 i2375_4_lut (.A(button_flag), .B(n17), .C(n7170), .D(n18_adj_41), 
         .Z(sck_c_c_enable_61)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam i2375_4_lut.init = 16'h0020;
    LUT4 i7_4_lut (.A(cnt_disp_1ms[0]), .B(cnt_disp_1ms[1]), .C(cnt_disp_1ms[11]), 
         .D(cnt_disp_1ms[2]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(56[7:26])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(cnt_disp_1ms[15]), .B(n12_adj_56), .C(cnt_disp_1ms[16]), 
         .D(cnt_disp_1ms[6]), .Z(n7170)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    FD1S3AX location_i30 (.D(location_31__N_567[30]), .CK(clk_N_600), .Q(location[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i30.GSR = "ENABLED";
    LUT4 i8_3_lut (.A(cnt_disp_1ms[8]), .B(n16_adj_44), .C(cnt_disp_1ms[9]), 
         .Z(n18_adj_41)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(56[7:26])
    defparam i8_3_lut.init = 16'hfefe;
    FD1S3AX location_i29 (.D(location_31__N_567[29]), .CK(clk_N_600), .Q(location[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i29.GSR = "ENABLED";
    FD1P3AX button_last_i0_i0 (.D(button_c_0), .SP(sck_c_c_enable_61), .CK(sck_c_c), 
            .Q(button_last[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam button_last_i0_i0.GSR = "ENABLED";
    LUT4 i5_4_lut (.A(cnt_disp_1ms[12]), .B(cnt_disp_1ms[14]), .C(cnt_disp_1ms[7]), 
         .D(cnt_disp_1ms[10]), .Z(n12_adj_56)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i6_4_lut_adj_1 (.A(cnt_disp_1ms[5]), .B(cnt_disp_1ms[3]), .C(cnt_disp_1ms[13]), 
         .D(cnt_disp_1ms[4]), .Z(n16_adj_44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(56[7:26])
    defparam i6_4_lut_adj_1.init = 16'hfffe;
    LUT4 i1234_1_lut (.A(scan_state[0]), .Z(scan_state_1__N_24[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(96[2] 102[11])
    defparam i1234_1_lut.init = 16'h5555;
    FD1S3AX location_i28 (.D(location_31__N_567[28]), .CK(clk_N_600), .Q(location[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i28.GSR = "ENABLED";
    FD1S3AX location_i27 (.D(location_31__N_567[27]), .CK(clk_N_600), .Q(location[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i27.GSR = "ENABLED";
    LUT4 i1243_2_lut (.A(scan_state[0]), .B(scan_state[1]), .Z(scan_state_1__N_24[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(262[3] 268[12])
    defparam i1243_2_lut.init = 16'h6666;
    FD1S3AX location_i26 (.D(location_31__N_567[26]), .CK(clk_N_600), .Q(location[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i26.GSR = "ENABLED";
    FD1S3AX location_i25 (.D(location_31__N_567[25]), .CK(clk_N_600), .Q(location[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i25.GSR = "ENABLED";
    FD1S3AX location_i24 (.D(location_31__N_567[24]), .CK(clk_N_600), .Q(location[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i24.GSR = "ENABLED";
    FD1P3AX matrix_key_code_i4 (.D(matrix_key_code_4__N_19[4]), .SP(sck_c_c_enable_11), 
            .CK(sck_c_c), .Q(matrix_key_code[4]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam matrix_key_code_i4.GSR = "ENABLED";
    CCU2D add_217_29 (.A0(location[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7070), .COUT(n7071), .S0(n1731), .S1(n1730));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_29.INIT0 = 16'h5aaa;
    defparam add_217_29.INIT1 = 16'h5aaa;
    defparam add_217_29.INJECT1_0 = "NO";
    defparam add_217_29.INJECT1_1 = "NO";
    FD1P3AX matrix_key_code_i3 (.D(matrix_key_code_4__N_19[3]), .SP(sck_c_c_enable_12), 
            .CK(sck_c_c), .Q(matrix_key_code[3]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam matrix_key_code_i3.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i32_4_lut (.A(n2005), .B(location_31__N_633[31]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[31])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i32_4_lut.init = 16'hc0ca;
    FD1P3AY row_now_i3 (.D(row_now_3__N_36[3]), .SP(sck_c_c_enable_15), 
            .CK(sck_c_c), .Q(row_now[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_now_i3.GSR = "ENABLED";
    FD1P3AY row_now_i2 (.D(row_now_3__N_36[2]), .SP(sck_c_c_enable_15), 
            .CK(sck_c_c), .Q(row_now[2])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_now_i2.GSR = "ENABLED";
    FD1P3AY row_now_i1 (.D(row_now_3__N_36[1]), .SP(sck_c_c_enable_15), 
            .CK(sck_c_c), .Q(row_now[1])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_now_i1.GSR = "ENABLED";
    FD1S3AX location_i23 (.D(location_31__N_567[23]), .CK(clk_N_600), .Q(location[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i23.GSR = "ENABLED";
    FD1P3AX key_flag_i1 (.D(key_flag_1__N_30[1]), .SP(sck_c_c_enable_16), 
            .CK(sck_c_c), .Q(key_flag[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam key_flag_i1.GSR = "ENABLED";
    FD1S3JX row_i3 (.D(scan_state[0]), .CK(sck_c_c), .PD(n5094), .Q(row_c_2));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_i3.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i31_4_lut (.A(n2006), .B(location_31__N_633[30]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[30])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i31_4_lut.init = 16'hc0ca;
    FD1S3JX row_i2 (.D(scan_state_1__N_24[0]), .CK(sck_c_c), .PD(scan_state[1]), 
            .Q(row_c_1));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_i2.GSR = "ENABLED";
    FD1S3AX location_i22 (.D(location_31__N_567[22]), .CK(clk_N_600), .Q(location[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i22.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i30_4_lut (.A(n2007), .B(location_31__N_633[29]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[29])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i30_4_lut.init = 16'hc0ca;
    FD1S3AX location_i21 (.D(location_31__N_567[21]), .CK(clk_N_600), .Q(location[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i21.GSR = "ENABLED";
    FD1S3AX location_i20 (.D(location_31__N_567[20]), .CK(clk_N_600), .Q(location[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i20.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i29_4_lut (.A(n2008), .B(location_31__N_633[28]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[28])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i29_4_lut.init = 16'hc0ca;
    FD1S3AX location_i19 (.D(location_31__N_567[19]), .CK(clk_N_600), .Q(location[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i19.GSR = "ENABLED";
    CCU2D add_217_27 (.A0(location[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7069), .COUT(n7070), .S0(n1733), .S1(n1732));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_27.INIT0 = 16'h5aaa;
    defparam add_217_27.INIT1 = 16'h5aaa;
    defparam add_217_27.INJECT1_0 = "NO";
    defparam add_217_27.INJECT1_1 = "NO";
    FD1P3AX button_last_i0_i3 (.D(button_c_3), .SP(sck_c_c_enable_61), .CK(sck_c_c), 
            .Q(button_last[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam button_last_i0_i3.GSR = "ENABLED";
    FD1P3AX button_last_i0_i2 (.D(button_c_2), .SP(sck_c_c_enable_61), .CK(sck_c_c), 
            .Q(button_last[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam button_last_i0_i2.GSR = "ENABLED";
    FD1P3AX button_last_i0_i1 (.D(button_c_1), .SP(sck_c_c_enable_61), .CK(sck_c_c), 
            .Q(button_last[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam button_last_i0_i1.GSR = "ENABLED";
    FD1S3AX location_i18 (.D(location_31__N_567[18]), .CK(clk_N_600), .Q(location[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i18.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i9 (.D(n82_adj_13), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i9.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i8 (.D(n83_adj_12), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i8.GSR = "ENABLED";
    FD1S3AX location_i17 (.D(location_31__N_567[17]), .CK(clk_N_600), .Q(location[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i17.GSR = "ENABLED";
    CCU2D cnt_debounce_1025_1026_add_4_13 (.A0(cnt_debounce[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7103), .COUT(n7104), .S0(n79_adj_16), 
          .S1(n78_adj_17));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_13.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_13.INJECT1_1 = "NO";
    FD1S3AX location_i16 (.D(location_31__N_567[16]), .CK(clk_N_600), .Q(location[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i16.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i7 (.D(n84_adj_11), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i7.GSR = "ENABLED";
    FD1S3AX location_i15 (.D(location_31__N_567[15]), .CK(clk_N_600), .Q(location[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i15.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i6 (.D(n85_adj_10), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i6.GSR = "ENABLED";
    FD1S3AX location_i14 (.D(location_31__N_567[14]), .CK(clk_N_600), .Q(location[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i14.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i5 (.D(n86_adj_9), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i5.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i4 (.D(n87_adj_8), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i4.GSR = "ENABLED";
    FD1S3AX location_i13 (.D(location_31__N_567[13]), .CK(clk_N_600), .Q(location[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i13.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i28_4_lut (.A(n2009), .B(location_31__N_633[27]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[27])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i28_4_lut.init = 16'hc0ca;
    LUT4 location_31__I_0_282_i27_4_lut (.A(n2010), .B(location_31__N_633[26]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[26])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i27_4_lut.init = 16'hc0ca;
    FD1S3AX location_i12 (.D(location_31__N_567[12]), .CK(clk_N_600), .Q(location[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i12.GSR = "ENABLED";
    LUT4 i1283_2_lut_rep_134_3_lut_4_lut (.A(n8240), .B(segment_switch_flag[0]), 
         .C(location_31__N_633[31]), .D(n3387), .Z(n8235)) /* synthesis lut_function=(!(A (C+(D))+!A !(B+!(C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[6:27])
    defparam i1283_2_lut_rep_134_3_lut_4_lut.init = 16'h444f;
    FD1P3IX cnt_debounce_1025_1026__i3 (.D(n88_adj_7), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i3.GSR = "ENABLED";
    FD1P3IX cnt_debounce_1025_1026__i2 (.D(n89_adj_6), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i2.GSR = "ENABLED";
    FD1P3IX cnt_disp_1ms_1021_1022__i17 (.D(n74), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i17.GSR = "ENABLED";
    LUT4 i3310_4_lut (.A(n8139), .B(location[0]), .C(n6289), .D(matrix_key_code[4]), 
         .Z(n1)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(308[28:36])
    defparam i3310_4_lut.init = 16'h0c88;
    FD1S3AX location_i11 (.D(location_31__N_567[11]), .CK(clk_N_600), .Q(location[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i11.GSR = "ENABLED";
    FD1P3IX cnt_disp_1ms_1021_1022__i16 (.D(n75), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i16.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i26_4_lut (.A(n2011), .B(location_31__N_633[25]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[25])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i26_4_lut.init = 16'hc0ca;
    LUT4 i2_2_lut_rep_152_3_lut_4_lut (.A(row_now[3]), .B(n8276), .C(row_now[2]), 
         .D(n8261), .Z(n8253)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i2_2_lut_rep_152_3_lut_4_lut.init = 16'hffdf;
    FD1S3AX location_i10 (.D(location_31__N_567[10]), .CK(clk_N_600), .Q(location[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i10.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i25_4_lut (.A(n2012), .B(location_31__N_633[24]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[24])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i25_4_lut.init = 16'hc0ca;
    FD1S3AX location_i9 (.D(location_31__N_567[9]), .CK(clk_N_600), .Q(location[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i9.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(n4622), .B(matrix_key_code_4__N_19[4]), .C(n8175), 
         .Z(sck_c_c_enable_11)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    FD1P3IX cnt_disp_1ms_1021_1022__i15 (.D(n76), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i15.GSR = "ENABLED";
    FD1S3AX location_i8 (.D(location_31__N_567[8]), .CK(clk_N_600), .Q(location[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i8.GSR = "ENABLED";
    LUT4 i1664_3_lut_4_lut (.A(n8284), .B(n8247), .C(row_c_2), .D(n4388), 
         .Z(n4389)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam i1664_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i1_3_lut_4_lut (.A(row_now[3]), .B(n8276), .C(n7736), .D(row_c_1), 
         .Z(n20_adj_3)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_3_lut_4_lut.init = 16'h00fd;
    FD1P3IX cnt_disp_1ms_1021_1022__i14 (.D(n77), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i14.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i17 (.D(n84_adj_30), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i17.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i16 (.D(n85_adj_29), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i16.GSR = "ENABLED";
    FD1P3IX cnt_disp_1ms_1021_1022__i13 (.D(n78), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i13.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_2 (.A(row_now[3]), .B(n8276), .C(n30_adj_57), 
         .D(n57), .Z(n39_adj_53)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_3_lut_4_lut_adj_2.init = 16'hff20;
    LUT4 button_c_2_bdd_4_lut (.A(button_c_2), .B(button_c_3), .C(button_c_0), 
         .D(button_c_1), .Z(n8106)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;
    defparam button_c_2_bdd_4_lut.init = 16'h37e9;
    FD1S3AX location_i7 (.D(location_31__N_567[7]), .CK(clk_N_600), .Q(location[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i7.GSR = "ENABLED";
    LUT4 i1681_2_lut_rep_142_3_lut (.A(n8250), .B(n49_adj_46), .C(row_c_0), 
         .Z(n8243)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[4] 138[11])
    defparam i1681_2_lut_rep_142_3_lut.init = 16'hf8f8;
    LUT4 i2264_2_lut (.A(row_c_2), .B(row_now_3__N_36[3]), .Z(row_now_3__N_36[2])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2264_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(row_now[3]), .B(n8276), .C(n8270), .D(row_now_3__N_36[3]), 
         .Z(n7743)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_3 (.A(row_now[3]), .B(n8276), .C(n6270), 
         .D(n8277), .Z(n7735)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_2_lut_3_lut_4_lut_adj_3.init = 16'hfffd;
    LUT4 location_31__I_0_282_i24_4_lut (.A(n2013), .B(location_31__N_633[23]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[23])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i24_4_lut.init = 16'hc0ca;
    LUT4 i2355_1_lut (.A(scan_state[1]), .Z(n5094)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(261[2] 269[9])
    defparam i2355_1_lut.init = 16'h5555;
    LUT4 n4711_bdd_4_lut (.A(n8245), .B(row_c_0), .C(row_c_1), .D(n8246), 
         .Z(n8114)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C)+!B ((D)+!C)))) */ ;
    defparam n4711_bdd_4_lut.init = 16'h0434;
    LUT4 location_31__I_0_282_i23_4_lut (.A(n2014), .B(location_31__N_633[22]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[22])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i23_4_lut.init = 16'hc0ca;
    CCU2D cnt_debounce_1025_1026_add_4_11 (.A0(cnt_debounce[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7102), .COUT(n7103), .S0(n81_adj_14), 
          .S1(n80_adj_15));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_11.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(n8250), .B(n49_adj_46), .C(n8262), .Z(n7729)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[4] 138[11])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1S3AX location_i6 (.D(location_31__N_567[6]), .CK(clk_N_600), .Q(location[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i6.GSR = "ENABLED";
    FD1S3AX location_i5 (.D(location_31__N_567[5]), .CK(clk_N_600), .Q(location[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i5.GSR = "ENABLED";
    FD1P3IX cnt_disp_1ms_1021_1022__i12 (.D(n79), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i12.GSR = "ENABLED";
    FD1S3AX location_i4 (.D(location_31__N_567[4]), .CK(clk_N_600), .Q(location[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i4.GSR = "ENABLED";
    FD1P3IX cnt_disp_1ms_1021_1022__i11 (.D(n80), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i11.GSR = "ENABLED";
    FD1S3AX location_i3 (.D(location_31__N_567[3]), .CK(clk_N_600), .Q(location[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i3.GSR = "ENABLED";
    CCU2D cnt_debounce2_1027_1028_add_4_3 (.A0(cnt_debounce2[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7047), .COUT(n7048), .S0(n99), 
          .S1(n98));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_3.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_3.INJECT1_1 = "NO";
    FD1S3AX location_i2 (.D(location_31__N_567[2]), .CK(clk_N_600), .Q(location[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i2.GSR = "ENABLED";
    FD1S3AX location_i1 (.D(location_31__N_567[1]), .CK(clk_N_600), .Q(location[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(303[2] 333[9])
    defparam location_i1.GSR = "ENABLED";
    FD1P3IX seven_segment_disp_left__i1 (.D(n6276), .SP(sck_c_c_enable_61), 
            .CD(n3766), .CK(sck_c_c), .Q(seven_segment_disp_left_c_1));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_left__i1.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i15 (.D(n86_adj_28), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i15.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i14 (.D(n87_adj_27), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i14.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i13 (.D(n88_adj_26), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i13.GSR = "ENABLED";
    FD1P3IX cnt_disp_1ms_1021_1022__i10 (.D(n81), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i10.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i22_4_lut (.A(n2015), .B(location_31__N_633[21]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[21])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i22_4_lut.init = 16'hc0ca;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n8260), .B(n8241), .C(n8501), 
         .D(segment_switch_flag[0]), .Z(clk_N_600_enable_1)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C+(D))+!B !((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h3b0f;
    LUT4 location_31__I_0_282_i21_4_lut (.A(n2016), .B(location_31__N_633[20]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[20])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i21_4_lut.init = 16'hc0ca;
    CCU2D cnt_debounce_1025_1026_add_4_9 (.A0(cnt_debounce[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7101), .COUT(n7102), .S0(n83_adj_12), 
          .S1(n82_adj_13));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_9.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_debounce_1025_1026_add_4_7 (.A0(cnt_debounce[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7100), .COUT(n7101), .S0(n85_adj_10), 
          .S1(n84_adj_11));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_7.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_debounce_1025_1026_add_4_5 (.A0(cnt_debounce[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7099), .COUT(n7100), .S0(n87_adj_8), 
          .S1(n86_adj_9));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_5.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_debounce_1025_1026_add_4_3 (.A0(cnt_debounce[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7098), .COUT(n7099), .S0(n89_adj_6), 
          .S1(n88_adj_7));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_3.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_3.INJECT1_1 = "NO";
    FD1P3IX cnt_disp_1ms_1021_1022__i9 (.D(n82), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i9.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i12 (.D(n89_adj_25), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i12.GSR = "ENABLED";
    IB column_pad_0 (.I(column[0]), .O(column_c_0));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(8[3:9])
    CCU2D cnt_debounce_1025_1026_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_debounce[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7098), .S1(n90_adj_5));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_1.INIT0 = 16'hF000;
    defparam cnt_debounce_1025_1026_add_4_1.INIT1 = 16'h0555;
    defparam cnt_debounce_1025_1026_add_4_1.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_1.INJECT1_1 = "NO";
    IB column_pad_1 (.I(column[1]), .O(column_c_1));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(8[3:9])
    CCU2D cnt_disp_1ms_1021_1022_add_4_17 (.A0(cnt_disp_1ms[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7096), .S0(n75), .S1(n74));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_17.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_17.INJECT1_1 = "NO";
    IB column_pad_2 (.I(column[2]), .O(column_c_2));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(8[3:9])
    IB column_pad_3 (.I(column[3]), .O(column_c_3));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(8[3:9])
    CCU2D cnt_disp_1ms_1021_1022_add_4_15 (.A0(cnt_disp_1ms[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7095), .COUT(n7096), .S0(n77), 
          .S1(n76));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_15.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_15.INJECT1_1 = "NO";
    IB button_pad_0 (.I(button[0]), .O(button_c_0));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(7[3:9])
    LUT4 location_31__I_0_282_i20_4_lut (.A(n2017), .B(location_31__N_633[19]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[19])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i20_4_lut.init = 16'hc0ca;
    LUT4 location_31__I_0_282_i19_4_lut (.A(n2018), .B(location_31__N_633[18]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[18])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i19_4_lut.init = 16'hc0ca;
    IB button_pad_1 (.I(button[1]), .O(button_c_1));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(7[3:9])
    LUT4 location_31__I_0_282_i18_4_lut (.A(n2019), .B(location_31__N_633[17]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[17])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i18_4_lut.init = 16'hc0ca;
    CCU2D cnt_disp_1ms_1021_1022_add_4_13 (.A0(cnt_disp_1ms[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7094), .COUT(n7095), .S0(n79), 
          .S1(n78));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_13.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_13.INJECT1_1 = "NO";
    FD1P3IX cnt_disp_1ms_1021_1022__i8 (.D(n83), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i8.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i17_4_lut (.A(n2020), .B(location_31__N_633[16]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[16])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i17_4_lut.init = 16'hc0ca;
    FD1P3IX cnt_disp_1ms_1021_1022__i7 (.D(n84), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i7.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i11 (.D(n90_adj_24), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i11.GSR = "ENABLED";
    LUT4 location_31__I_0_282_i16_4_lut (.A(n2021), .B(location_31__N_633[15]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[15])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i16_4_lut.init = 16'hc0ca;
    LUT4 location_31__I_0_282_i15_4_lut (.A(n2022), .B(location_31__N_633[14]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[14])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i15_4_lut.init = 16'hc0ca;
    FD1P3IX cnt_debounce2_1027_1028__i10 (.D(n91), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i10.GSR = "ENABLED";
    CCU2D cnt_debounce2_1027_1028_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_debounce2[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7047), .S1(n100));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_1.INIT0 = 16'hF000;
    defparam cnt_debounce2_1027_1028_add_4_1.INIT1 = 16'h0555;
    defparam cnt_debounce2_1027_1028_add_4_1.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_1.INJECT1_1 = "NO";
    IB button_pad_2 (.I(button[2]), .O(button_c_2));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(7[3:9])
    LUT4 location_31__I_0_282_i14_4_lut (.A(n2023), .B(location_31__N_633[13]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[13])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i14_4_lut.init = 16'hc0ca;
    IB button_pad_3 (.I(button[3]), .O(button_c_3));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(7[3:9])
    LUT4 i1_2_lut (.A(column_c_3), .B(column_c_1), .Z(n5816)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(8[3:9])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4964_2_lut_rep_135_4_lut_4_lut (.A(n8239), .B(n3387), .C(n7238), 
         .D(location_31__N_633[31]), .Z(n8236)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(321[4] 331[14])
    defparam i4964_2_lut_rep_135_4_lut_4_lut.init = 16'h5540;
    CCU2D cnt_disp_1ms_1021_1022_add_4_11 (.A0(cnt_disp_1ms[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7093), .COUT(n7094), .S0(n81), 
          .S1(n80));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_11.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_11.INJECT1_1 = "NO";
    IB sck_c_pad (.I(clk), .O(sck_c_c));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(6[6:9])
    LUT4 location_31__I_0_282_i13_4_lut (.A(n2024), .B(location_31__N_633[12]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[12])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i13_4_lut.init = 16'hc0ca;
    LUT4 n45_bdd_4_lut_5085 (.A(n8249), .B(n8250), .C(row_c_1), .D(row_c_0), 
         .Z(n8124)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (((D)+!C)+!B)) */ ;
    defparam n45_bdd_4_lut_5085.init = 16'hf53f;
    OB seven_segment_disp_dp_pad_0 (.I(GND_net), .O(seven_segment_disp_dp[0]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(15[3:24])
    LUT4 location_31__I_0_282_i12_4_lut (.A(n2025), .B(location_31__N_633[11]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[11])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i12_4_lut.init = 16'hc0ca;
    FD1P3AX seven_segment_disp_right_i0_i1 (.D(n8158), .SP(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(seven_segment_disp_right_c_0));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_right_i0_i1.GSR = "ENABLED";
    OB seven_segment_disp_dp_pad_1 (.I(GND_net), .O(seven_segment_disp_dp[1]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(15[3:24])
    OB seven_segment_disp_right_pad_0 (.I(seven_segment_disp_right_c_0), .O(seven_segment_disp_right[0]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    OB seven_segment_disp_right_pad_1 (.I(seven_segment_disp_right_c_1), .O(seven_segment_disp_right[1]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    OB seven_segment_disp_right_pad_2 (.I(seven_segment_disp_right_c_2), .O(seven_segment_disp_right[2]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    CCU2D add_217_25 (.A0(location[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7068), .COUT(n7069), .S0(n1735), .S1(n1734));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_25.INIT0 = 16'h5aaa;
    defparam add_217_25.INIT1 = 16'h5aaa;
    defparam add_217_25.INJECT1_0 = "NO";
    defparam add_217_25.INJECT1_1 = "NO";
    CCU2D cnt_disp_1ms_1021_1022_add_4_9 (.A0(cnt_disp_1ms[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7092), .COUT(n7093), .S0(n83), 
          .S1(n82));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_9.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_9.INJECT1_1 = "NO";
    OB seven_segment_disp_right_pad_3 (.I(seven_segment_disp_right_c_3), .O(seven_segment_disp_right[3]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    CCU2D add_217_23 (.A0(location[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7067), .COUT(n7068), .S0(n1737), .S1(n1736));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_23.INIT0 = 16'h5aaa;
    defparam add_217_23.INIT1 = 16'h5aaa;
    defparam add_217_23.INJECT1_0 = "NO";
    defparam add_217_23.INJECT1_1 = "NO";
    FD1P3IX cnt_disp_1ms_1021_1022__i6 (.D(n85), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i6.GSR = "ENABLED";
    OB seven_segment_disp_right_pad_4 (.I(seven_segment_disp_right_c_4), .O(seven_segment_disp_right[4]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    OB seven_segment_disp_right_pad_5 (.I(seven_segment_disp_right_c_5), .O(seven_segment_disp_right[5]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    OB seven_segment_disp_right_pad_6 (.I(seven_segment_disp_right_c_6), .O(seven_segment_disp_right[6]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(14[3:27])
    CCU2D add_4267_28 (.A0(location[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7166), .S1(n3317));
    defparam add_4267_28.INIT0 = 16'hf555;
    defparam add_4267_28.INIT1 = 16'h0000;
    defparam add_4267_28.INJECT1_0 = "NO";
    defparam add_4267_28.INJECT1_1 = "NO";
    CCU2D cnt_disp_1ms_1021_1022_add_4_7 (.A0(cnt_disp_1ms[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7091), .COUT(n7092), .S0(n85), 
          .S1(n84));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_7.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_7.INJECT1_1 = "NO";
    CCU2D add_217_21 (.A0(location[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7066), .COUT(n7067), .S0(n1739), .S1(n1738));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_21.INIT0 = 16'h5aaa;
    defparam add_217_21.INIT1 = 16'h5aaa;
    defparam add_217_21.INJECT1_0 = "NO";
    defparam add_217_21.INJECT1_1 = "NO";
    CCU2D add_4267_26 (.A0(location[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7165), .COUT(n7166));
    defparam add_4267_26.INIT0 = 16'h5555;
    defparam add_4267_26.INIT1 = 16'h5555;
    defparam add_4267_26.INJECT1_0 = "NO";
    defparam add_4267_26.INJECT1_1 = "NO";
    LUT4 mux_225_rep_3_i24_4_lut (.A(n1735), .B(location[23]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[23])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i24_4_lut.init = 16'h0cac;
    OB seven_segment_disp_left_pad_0 (.I(GND_net), .O(seven_segment_disp_left[0]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    CCU2D cnt_disp_1ms_1021_1022_add_4_5 (.A0(cnt_disp_1ms[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7090), .COUT(n7091), .S0(n87), 
          .S1(n86));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_5.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_5.INJECT1_1 = "NO";
    CCU2D add_217_19 (.A0(location[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7065), .COUT(n7066), .S0(n1741), .S1(n1740));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_19.INIT0 = 16'h5aaa;
    defparam add_217_19.INIT1 = 16'h5aaa;
    defparam add_217_19.INJECT1_0 = "NO";
    defparam add_217_19.INJECT1_1 = "NO";
    OB seven_segment_disp_left_pad_1 (.I(seven_segment_disp_left_c_1), .O(seven_segment_disp_left[1]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    CCU2D add_4267_24 (.A0(location[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7164), .COUT(n7165));
    defparam add_4267_24.INIT0 = 16'h5555;
    defparam add_4267_24.INIT1 = 16'h5555;
    defparam add_4267_24.INJECT1_0 = "NO";
    defparam add_4267_24.INJECT1_1 = "NO";
    LUT4 n45_bdd_2_lut_5086 (.A(row_c_1), .B(row_c_0), .Z(n8125)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam n45_bdd_2_lut_5086.init = 16'h9999;
    LUT4 location_31__I_0_282_i11_4_lut (.A(n2026), .B(location_31__N_633[10]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[10])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i11_4_lut.init = 16'hc0ca;
    LUT4 location_31__I_0_282_i10_4_lut (.A(n2027), .B(location_31__N_633[9]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[9])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i10_4_lut.init = 16'hc0ca;
    OB seven_segment_disp_left_pad_2 (.I(seven_segment_disp_left_c_1), .O(seven_segment_disp_left[2]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    CCU2D cnt_disp_1ms_1021_1022_add_4_3 (.A0(cnt_disp_1ms[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_disp_1ms[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7089), .COUT(n7090), .S0(n89), 
          .S1(n88));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_disp_1ms_1021_1022_add_4_3.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_3.INJECT1_1 = "NO";
    OB seven_segment_disp_left_pad_3 (.I(GND_net), .O(seven_segment_disp_left[3]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    CCU2D add_217_17 (.A0(location[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7064), .COUT(n7065), .S0(n1743), .S1(n1742));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_17.INIT0 = 16'h5aaa;
    defparam add_217_17.INIT1 = 16'h5aaa;
    defparam add_217_17.INJECT1_0 = "NO";
    defparam add_217_17.INJECT1_1 = "NO";
    OB seven_segment_disp_left_pad_4 (.I(GND_net), .O(seven_segment_disp_left[4]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    FD1P3IX cnt_disp_1ms_1021_1022__i5 (.D(n86), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i5.GSR = "ENABLED";
    OB seven_segment_disp_left_pad_5 (.I(GND_net), .O(seven_segment_disp_left[5]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    LUT4 location_31__I_0_282_i9_4_lut (.A(n2028), .B(location_31__N_633[8]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[8])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i9_4_lut.init = 16'hc0ca;
    LUT4 matrix_key_code_2__bdd_3_lut (.A(matrix_key_code[2]), .B(matrix_key_code[0]), 
         .C(matrix_key_code[1]), .Z(n8024)) /* synthesis lut_function=(A (B+(C))+!A !(C)) */ ;
    defparam matrix_key_code_2__bdd_3_lut.init = 16'hadad;
    FD1P3IX cnt_disp_1ms_1021_1022__i4 (.D(n87), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i4.GSR = "ENABLED";
    CCU2D cnt_debounce2_1027_1028_add_4_13 (.A0(cnt_debounce2[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7052), .COUT(n7053), .S0(n89_adj_25), 
          .S1(n88_adj_26));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_13.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_13.INJECT1_1 = "NO";
    OB seven_segment_disp_left_pad_6 (.I(GND_net), .O(seven_segment_disp_left[6]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(13[3:26])
    LUT4 i2_3_lut_rep_147 (.A(row_now[3]), .B(n4754), .C(row_now[1]), 
         .Z(n8248)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i2_3_lut_rep_147.init = 16'hefef;
    LUT4 i4987_4_lut (.A(row_c_1), .B(n4), .C(n8268), .D(n7736), .Z(sck_c_c_enable_57)) /* synthesis lut_function=(!(A (B)+!A (B+(C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i4987_4_lut.init = 16'h2223;
    CCU2D cnt_debounce2_1027_1028_add_4_11 (.A0(cnt_debounce2[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7051), .COUT(n7052), .S0(n91), 
          .S1(n90_adj_24));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_11.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_11.INJECT1_1 = "NO";
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    LUT4 i1_4_lut_adj_4 (.A(row_c_0), .B(n48), .C(n8268), .D(n8266), 
         .Z(n4)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i1_4_lut_adj_4.init = 16'hdddc;
    CCU2D add_4267_22 (.A0(location[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7163), .COUT(n7164));
    defparam add_4267_22.INIT0 = 16'h5555;
    defparam add_4267_22.INIT1 = 16'h5555;
    defparam add_4267_22.INJECT1_0 = "NO";
    defparam add_4267_22.INJECT1_1 = "NO";
    CCU2D cnt_disp_1ms_1021_1022_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_disp_1ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7089), .S1(n90));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022_add_4_1.INIT0 = 16'hF000;
    defparam cnt_disp_1ms_1021_1022_add_4_1.INIT1 = 16'h0555;
    defparam cnt_disp_1ms_1021_1022_add_4_1.INJECT1_0 = "NO";
    defparam cnt_disp_1ms_1021_1022_add_4_1.INJECT1_1 = "NO";
    CCU2D add_217_15 (.A0(location[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7063), .COUT(n7064), .S0(n1745), .S1(n1744));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_15.INIT0 = 16'h5aaa;
    defparam add_217_15.INIT1 = 16'h5aaa;
    defparam add_217_15.INJECT1_0 = "NO";
    defparam add_217_15.INJECT1_1 = "NO";
    CCU2D cnt_debounce2_1027_1028_add_4_9 (.A0(cnt_debounce2[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7050), .COUT(n7051), .S0(n93), 
          .S1(n92));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_9.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_9.INJECT1_1 = "NO";
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    CCU2D add_4267_20 (.A0(location[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7162), .COUT(n7163));
    defparam add_4267_20.INIT0 = 16'h5555;
    defparam add_4267_20.INIT1 = 16'h5555;
    defparam add_4267_20.INJECT1_0 = "NO";
    defparam add_4267_20.INJECT1_1 = "NO";
    CCU2D add_237_33 (.A0(n8240), .B0(n1727), .C0(n63), .D0(location[31]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7088), 
          .S0(n2005));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_33.INIT0 = 16'hf404;
    defparam add_237_33.INIT1 = 16'h0000;
    defparam add_237_33.INJECT1_0 = "NO";
    defparam add_237_33.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_5 (.A(n4822), .B(row_c_0), .C(row_now_3__N_36[3]), 
         .Z(n7736)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i1_3_lut_adj_5.init = 16'hbfbf;
    CCU2D add_217_13 (.A0(location[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7062), .COUT(n7063), .S0(n1747), .S1(n1746));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_13.INIT0 = 16'h5aaa;
    defparam add_217_13.INIT1 = 16'h5aaa;
    defparam add_217_13.INJECT1_0 = "NO";
    defparam add_217_13.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(row_now[1]), .B(row_now[2]), .C(row_now[0]), .Z(n4822)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i2_3_lut.init = 16'hbfbf;
    LUT4 location_31__I_0_282_i8_4_lut (.A(n2029), .B(location_31__N_633[7]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[7])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i8_4_lut.init = 16'hc0ca;
    CCU2D cnt_debounce2_1027_1028_add_4_7 (.A0(cnt_debounce2[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7049), .COUT(n7050), .S0(n95), 
          .S1(n94));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_7.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_7.INJECT1_1 = "NO";
    CCU2D add_4267_18 (.A0(location[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7161), .COUT(n7162));
    defparam add_4267_18.INIT0 = 16'h5555;
    defparam add_4267_18.INIT1 = 16'h5555;
    defparam add_4267_18.INJECT1_0 = "NO";
    defparam add_4267_18.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_156_3_lut_4_lut (.A(row_now[3]), .B(n8276), .C(n8261), 
         .D(n8277), .Z(n8257)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_2_lut_rep_156_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_143_4_lut (.A(row_now[3]), .B(n4754), .C(row_now[1]), 
         .D(n8252), .Z(n8244)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_2_lut_rep_143_4_lut.init = 16'hef00;
    CCU2D add_4267_16 (.A0(location[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7160), .COUT(n7161));
    defparam add_4267_16.INIT0 = 16'h5555;
    defparam add_4267_16.INIT1 = 16'h5555;
    defparam add_4267_16.INJECT1_0 = "NO";
    defparam add_4267_16.INJECT1_1 = "NO";
    LUT4 column_c_0_bdd_4_lut_5024 (.A(matrix_key_code[1]), .B(column_c_1), 
         .C(column_c_2), .D(column_c_3), .Z(n8026)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !(B+!(C (D)))) */ ;
    defparam column_c_0_bdd_4_lut_5024.init = 16'hb22a;
    CCU2D add_4267_14 (.A0(location[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7159), .COUT(n7160));
    defparam add_4267_14.INIT0 = 16'h5555;
    defparam add_4267_14.INIT1 = 16'h5555;
    defparam add_4267_14.INJECT1_0 = "NO";
    defparam add_4267_14.INJECT1_1 = "NO";
    CCU2D add_4267_12 (.A0(location[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7158), .COUT(n7159));
    defparam add_4267_12.INIT0 = 16'h5555;
    defparam add_4267_12.INIT1 = 16'h5555;
    defparam add_4267_12.INJECT1_0 = "NO";
    defparam add_4267_12.INJECT1_1 = "NO";
    LUT4 location_31__I_0_282_i7_4_lut (.A(n2030), .B(location_31__N_633[6]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[6])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i7_4_lut.init = 16'hc0ca;
    CCU2D add_4267_10 (.A0(location[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(location[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7157), .COUT(n7158));
    defparam add_4267_10.INIT0 = 16'h5555;
    defparam add_4267_10.INIT1 = 16'h5555;
    defparam add_4267_10.INJECT1_0 = "NO";
    defparam add_4267_10.INJECT1_1 = "NO";
    CCU2D add_4267_8 (.A0(location[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7156), .COUT(n7157));
    defparam add_4267_8.INIT0 = 16'h5555;
    defparam add_4267_8.INIT1 = 16'h5555;
    defparam add_4267_8.INJECT1_0 = "NO";
    defparam add_4267_8.INJECT1_1 = "NO";
    CCU2D add_4267_6 (.A0(location[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7155), .COUT(n7156));
    defparam add_4267_6.INIT0 = 16'h5555;
    defparam add_4267_6.INIT1 = 16'h5555;
    defparam add_4267_6.INJECT1_0 = "NO";
    defparam add_4267_6.INJECT1_1 = "NO";
    CCU2D add_4267_4 (.A0(location[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7154), .COUT(n7155));
    defparam add_4267_4.INIT0 = 16'h5555;
    defparam add_4267_4.INIT1 = 16'h5555;
    defparam add_4267_4.INJECT1_0 = "NO";
    defparam add_4267_4.INJECT1_1 = "NO";
    CCU2D add_237_31 (.A0(n8240), .B0(n1729), .C0(n63), .D0(location[29]), 
          .A1(n8240), .B1(n1728), .C1(n63), .D1(location[30]), .CIN(n7087), 
          .COUT(n7088), .S0(n2007), .S1(n2006));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_31.INIT0 = 16'hf404;
    defparam add_237_31.INIT1 = 16'hf404;
    defparam add_237_31.INJECT1_0 = "NO";
    defparam add_237_31.INJECT1_1 = "NO";
    CCU2D add_217_11 (.A0(location[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7061), .COUT(n7062), .S0(n1749), .S1(n1748));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_11.INIT0 = 16'h5aaa;
    defparam add_217_11.INIT1 = 16'h5aaa;
    defparam add_217_11.INJECT1_0 = "NO";
    defparam add_217_11.INJECT1_1 = "NO";
    CCU2D add_237_29 (.A0(n8240), .B0(n1731), .C0(n63), .D0(location[27]), 
          .A1(n8240), .B1(n1730), .C1(n63), .D1(location[28]), .CIN(n7086), 
          .COUT(n7087), .S0(n2009), .S1(n2008));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_29.INIT0 = 16'hf404;
    defparam add_237_29.INIT1 = 16'hf404;
    defparam add_237_29.INJECT1_0 = "NO";
    defparam add_237_29.INJECT1_1 = "NO";
    CCU2D add_237_27 (.A0(n8240), .B0(n1733), .C0(n63), .D0(location[25]), 
          .A1(n8240), .B1(n1732), .C1(n63), .D1(location[26]), .CIN(n7085), 
          .COUT(n7086), .S0(n2011), .S1(n2010));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_27.INIT0 = 16'hf404;
    defparam add_237_27.INIT1 = 16'hf404;
    defparam add_237_27.INJECT1_0 = "NO";
    defparam add_237_27.INJECT1_1 = "NO";
    CCU2D add_237_25 (.A0(n8240), .B0(n1735), .C0(n63), .D0(location[23]), 
          .A1(n8240), .B1(n1734), .C1(n63), .D1(location[24]), .CIN(n7084), 
          .COUT(n7085), .S0(n2013), .S1(n2012));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_25.INIT0 = 16'hf404;
    defparam add_237_25.INIT1 = 16'hf404;
    defparam add_237_25.INJECT1_0 = "NO";
    defparam add_237_25.INJECT1_1 = "NO";
    LUT4 matrix_key_code_4__I_0_273_Mux_4_i15_4_lut_4_lut_then_4_lut (.A(matrix_key_code[3]), 
         .B(matrix_key_code[2]), .C(location[0]), .D(matrix_key_code[1]), 
         .Z(n8287)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B (C+(D))+!B ((D)+!C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam matrix_key_code_4__I_0_273_Mux_4_i15_4_lut_4_lut_then_4_lut.init = 16'hdfe3;
    CCU2D add_237_23 (.A0(n8240), .B0(n1737), .C0(n63), .D0(location[21]), 
          .A1(n8240), .B1(n1736), .C1(n63), .D1(location[22]), .CIN(n7083), 
          .COUT(n7084), .S0(n2015), .S1(n2014));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_23.INIT0 = 16'hf404;
    defparam add_237_23.INIT1 = 16'hf404;
    defparam add_237_23.INJECT1_0 = "NO";
    defparam add_237_23.INJECT1_1 = "NO";
    CCU2D add_237_21 (.A0(n8240), .B0(n1739), .C0(n63), .D0(location[19]), 
          .A1(n8240), .B1(n1738), .C1(n63), .D1(location[20]), .CIN(n7082), 
          .COUT(n7083), .S0(n2017), .S1(n2016));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_21.INIT0 = 16'hf404;
    defparam add_237_21.INIT1 = 16'hf404;
    defparam add_237_21.INJECT1_0 = "NO";
    defparam add_237_21.INJECT1_1 = "NO";
    LUT4 matrix_key_code_2__bdd_4_lut (.A(matrix_key_code[2]), .B(matrix_key_code[0]), 
         .C(matrix_key_code[3]), .D(matrix_key_code[1]), .Z(n8023)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C+!(D)))) */ ;
    defparam matrix_key_code_2__bdd_4_lut.init = 16'hc84c;
    LUT4 location_31__I_0_282_i6_4_lut (.A(n2031), .B(location_31__N_633[5]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[5])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i6_4_lut.init = 16'hc0ca;
    LUT4 matrix_key_code_0__bdd_4_lut (.A(matrix_key_code[0]), .B(matrix_key_code[3]), 
         .C(matrix_key_code[2]), .D(matrix_key_code[1]), .Z(n8139)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+!(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam matrix_key_code_0__bdd_4_lut.init = 16'hebf6;
    LUT4 location_31__I_0_282_i5_4_lut (.A(n2032), .B(location_31__N_633[4]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[4])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i5_4_lut.init = 16'hc0ca;
    LUT4 i4879_3_lut_rep_136 (.A(location_31__N_633[31]), .B(n7238), .C(n3387), 
         .Z(n8237)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i4879_3_lut_rep_136.init = 16'heaea;
    LUT4 i4967_3_lut_4_lut_4_lut_3_lut_4_lut (.A(n8260), .B(n8241), .C(n8237), 
         .D(segment_switch_flag[0]), .Z(clk_N_600_enable_2)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam i4967_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h88f0;
    LUT4 i3370_3_lut (.A(key_flag[0]), .B(n5085), .C(n8265), .Z(key_flag_1__N_30[0])) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i3370_3_lut.init = 16'hc8c8;
    FD1S3IX cnt_100_1023_1024__i2 (.D(n39), .CK(sck_c_c), .CD(n5096), 
            .Q(cnt_100[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024__i2.GSR = "ENABLED";
    CCU2D add_4267_2 (.A0(location[5]), .B0(location[4]), .C0(GND_net), 
          .D0(GND_net), .A1(location[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7154));
    defparam add_4267_2.INIT0 = 16'h1000;
    defparam add_4267_2.INIT1 = 16'h5555;
    defparam add_4267_2.INJECT1_0 = "NO";
    defparam add_4267_2.INJECT1_1 = "NO";
    CCU2D add_217_9 (.A0(location[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7060), .COUT(n7061), .S0(n1751), .S1(n1750));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_9.INIT0 = 16'h5aaa;
    defparam add_217_9.INIT1 = 16'h5aaa;
    defparam add_217_9.INJECT1_0 = "NO";
    defparam add_217_9.INJECT1_1 = "NO";
    CCU2D add_237_19 (.A0(n8240), .B0(n1741), .C0(n63), .D0(location[17]), 
          .A1(n8240), .B1(n1740), .C1(n63), .D1(location[18]), .CIN(n7081), 
          .COUT(n7082), .S0(n2019), .S1(n2018));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_19.INIT0 = 16'hf404;
    defparam add_237_19.INIT1 = 16'hf404;
    defparam add_237_19.INJECT1_0 = "NO";
    defparam add_237_19.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(cnt_debounce2[6]), .B(n7791), .C(cnt_debounce2[7]), 
         .D(n14), .Z(n23)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i10_4_lut.init = 16'hfffb;
    LUT4 location_31__I_0_282_i4_4_lut (.A(n2033), .B(location_31__N_633[3]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[3])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i4_4_lut.init = 16'hc0ca;
    LUT4 location_31__I_0_282_i3_4_lut (.A(n2034), .B(location_31__N_633[2]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i3_4_lut.init = 16'hc0ca;
    LUT4 location_31__I_0_282_i2_4_lut (.A(n2035), .B(location_31__N_633[1]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i2_4_lut.init = 16'hc0ca;
    LUT4 i1033_2_lut (.A(sck_c_c_enable_61), .B(button_c_3), .Z(n3766)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam i1033_2_lut.init = 16'h8888;
    LUT4 i4980_2_lut (.A(button_c_1), .B(button_c_2), .Z(n6276)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i4980_2_lut.init = 16'h7777;
    LUT4 i1_4_lut_adj_6 (.A(n8278), .B(n7715), .C(n25), .D(n4_adj_61), 
         .Z(n7717)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_6.init = 16'hc8c0;
    LUT4 i1138_1_lut (.A(segment_switch_flag[0]), .Z(n63)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[6:27])
    defparam i1138_1_lut.init = 16'h5555;
    LUT4 i3311_2_lut_rep_140 (.A(n3317), .B(location[31]), .Z(n8241)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3311_2_lut_rep_140.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_7 (.A(row_c_2), .B(n8284), .C(n5413), .D(n8265), 
         .Z(n2_adj_52)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_7.init = 16'h8880;
    LUT4 n4646_bdd_3_lut_4_lut (.A(row_c_2), .B(n8284), .C(n4622), .D(n8248), 
         .Z(n8203)) /* synthesis lut_function=(!(A (B ((D)+!C)))) */ ;
    defparam n4646_bdd_3_lut_4_lut.init = 16'h77f7;
    CCU2D add_217_7 (.A0(location[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7059), .COUT(n7060), .S0(n1753), .S1(n1752));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_7.INIT0 = 16'h5aaa;
    defparam add_217_7.INIT1 = 16'h5aaa;
    defparam add_217_7.INJECT1_0 = "NO";
    defparam add_217_7.INJECT1_1 = "NO";
    FD1S3IX cnt_100_1023_1024__i3 (.D(n38), .CK(sck_c_c), .CD(n5096), 
            .Q(cnt_100[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024__i3.GSR = "ENABLED";
    FD1S3IX cnt_100_1023_1024__i4 (.D(n37), .CK(sck_c_c), .CD(n5096), 
            .Q(cnt_100[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024__i4.GSR = "ENABLED";
    FD1S3IX cnt_100_1023_1024__i5 (.D(n36), .CK(sck_c_c), .CD(n5096), 
            .Q(cnt_100[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024__i5.GSR = "ENABLED";
    FD1S3IX cnt_100_1023_1024__i6 (.D(n35), .CK(sck_c_c), .CD(n5096), 
            .Q(cnt_100[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024__i6.GSR = "ENABLED";
    FD1S3IX cnt_100_1023_1024__i7 (.D(n34), .CK(sck_c_c), .CD(n5096), 
            .Q(cnt_100[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024__i7.GSR = "ENABLED";
    CCU2D add_237_17 (.A0(n8240), .B0(n1743), .C0(n63), .D0(location[15]), 
          .A1(n8240), .B1(n1742), .C1(n63), .D1(location[16]), .CIN(n7080), 
          .COUT(n7081), .S0(n2021), .S1(n2020));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_17.INIT0 = 16'hf404;
    defparam add_237_17.INIT1 = 16'hf404;
    defparam add_237_17.INJECT1_0 = "NO";
    defparam add_237_17.INJECT1_1 = "NO";
    PFUMX i5103 (.BLUT(n1), .ALUT(n8207), .C0(location[1]), .Z(n8208));
    LUT4 i1482_2_lut_rep_174 (.A(matrix_key_code[1]), .B(matrix_key_code[2]), 
         .Z(n8275)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i1482_2_lut_rep_174.init = 16'heeee;
    FD1P3IX cnt_disp_1ms_1021_1022__i3 (.D(n88), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i3.GSR = "ENABLED";
    LUT4 i3558_2_lut_3_lut_4_lut (.A(matrix_key_code[1]), .B(matrix_key_code[2]), 
         .C(matrix_key_code[0]), .D(matrix_key_code[3]), .Z(n6289)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i3558_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1886_2_lut_rep_138_3_lut_4_lut (.A(n3317), .B(location[31]), .C(segment_switch_flag[0]), 
         .D(n8260), .Z(n8239)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1886_2_lut_rep_138_3_lut_4_lut.init = 16'h10f0;
    FD1P3IX cnt_debounce_1025_1026__i13 (.D(n78_adj_17), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i13.GSR = "ENABLED";
    CCU2D add_4266_29 (.A0(location[31]), .B0(n1727), .C0(segment_switch_flag[0]), 
          .D0(n8240), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7153), .S1(n3387));
    defparam add_4266_29.INIT0 = 16'hf535;
    defparam add_4266_29.INIT1 = 16'h0000;
    defparam add_4266_29.INJECT1_0 = "NO";
    defparam add_4266_29.INJECT1_1 = "NO";
    LUT4 i2_2_lut_rep_166_3_lut (.A(matrix_key_code[1]), .B(matrix_key_code[2]), 
         .C(matrix_key_code[3]), .Z(n8267)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i2_2_lut_rep_166_3_lut.init = 16'hfefe;
    LUT4 i3429_2_lut_rep_139_3_lut (.A(n3317), .B(location[31]), .C(n8260), 
         .Z(n8240)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3429_2_lut_rep_139_3_lut.init = 16'he0e0;
    FD1P3IX cnt_disp_1ms_1021_1022__i2 (.D(n89), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i2.GSR = "ENABLED";
    CCU2D add_237_15 (.A0(n8240), .B0(n1745), .C0(n63), .D0(location[13]), 
          .A1(n8240), .B1(n1744), .C1(n63), .D1(location[14]), .CIN(n7079), 
          .COUT(n7080), .S0(n2023), .S1(n2022));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_15.INIT0 = 16'hf404;
    defparam add_237_15.INIT1 = 16'hf404;
    defparam add_237_15.INJECT1_0 = "NO";
    defparam add_237_15.INJECT1_1 = "NO";
    LUT4 i3374_4_lut (.A(n251), .B(n8247), .C(row_last[2]), .D(n4_adj_59), 
         .Z(key_flag_1__N_255[1])) /* synthesis lut_function=(A (B)+!A !((C+!(D))+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(192[4] 205[11])
    defparam i3374_4_lut.init = 16'h8c88;
    PFUMX i5101 (.BLUT(n8203), .ALUT(n8202), .C0(row_now_3__N_36[3]), 
          .Z(sck_c_c_enable_12));
    LUT4 i33_4_lut (.A(button_c_3), .B(button_c_0), .C(button_c_1), .D(button_c_2), 
         .Z(n13)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A !(B+(C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(57[5] 75[14])
    defparam i33_4_lut.init = 16'h7fd6;
    FD1P3IX cnt_debounce2_1027_1028__i1 (.D(n100), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i1.GSR = "ENABLED";
    LUT4 i5005_4_lut (.A(n48_adj_4), .B(row_c_0), .C(n20_adj_3), .D(n7743), 
         .Z(sck_c_c_enable_63)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i5005_4_lut.init = 16'h0405;
    LUT4 i1_4_lut_adj_8 (.A(n8233), .B(n8274), .C(n39_adj_53), .D(row_now_3__N_36[3]), 
         .Z(sck_c_c_enable_62)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_8.init = 16'hfabb;
    LUT4 i11_4_lut (.A(cnt_debounce2[15]), .B(n22), .C(n16_adj_47), .D(cnt_debounce2[1]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i11_4_lut.init = 16'hfffe;
    CCU2D add_217_5 (.A0(location[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7058), .COUT(n7059), .S0(n1755), .S1(n1754));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_5.INIT0 = 16'h5aaa;
    defparam add_217_5.INIT1 = 16'h5aaa;
    defparam add_217_5.INJECT1_0 = "NO";
    defparam add_217_5.INJECT1_1 = "NO";
    FD1P3IX cnt_debounce_1025_1026__i1 (.D(n90_adj_5), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i1.GSR = "ENABLED";
    LUT4 matrix_key_code_4__I_0_273_Mux_6_i31_4_lut_4_lut (.A(matrix_key_code[2]), 
         .B(matrix_key_code[4]), .C(n6289), .D(n4201), .Z(matrix_disp_right[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam matrix_key_code_4__I_0_273_Mux_6_i31_4_lut_4_lut.init = 16'hf3d1;
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX cnt_100_1023_1024__i1 (.D(n40), .CK(sck_c_c), .CD(n5096), 
            .Q(cnt_100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024__i1.GSR = "ENABLED";
    CCU2D add_4266_27 (.A0(n8240), .B0(n1729), .C0(n63), .D0(location[29]), 
          .A1(n8240), .B1(n1728), .C1(n63), .D1(location[30]), .CIN(n7152), 
          .COUT(n7153));
    defparam add_4266_27.INIT0 = 16'h0bfb;
    defparam add_4266_27.INIT1 = 16'h0bfb;
    defparam add_4266_27.INJECT1_0 = "NO";
    defparam add_4266_27.INJECT1_1 = "NO";
    CCU2D add_217_3 (.A0(location[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n7057), .COUT(n7058), .S0(n1757), .S1(n1756));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_3.INIT0 = 16'h5aaa;
    defparam add_217_3.INIT1 = 16'h5aaa;
    defparam add_217_3.INJECT1_0 = "NO";
    defparam add_217_3.INJECT1_1 = "NO";
    CCU2D add_237_13 (.A0(n8240), .B0(n1747), .C0(n63), .D0(location[11]), 
          .A1(n8240), .B1(n1746), .C1(n63), .D1(location[12]), .CIN(n7078), 
          .COUT(n7079), .S0(n2025), .S1(n2024));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_13.INIT0 = 16'hf404;
    defparam add_237_13.INIT1 = 16'hf404;
    defparam add_237_13.INJECT1_0 = "NO";
    defparam add_237_13.INJECT1_1 = "NO";
    CCU2D cnt_debounce2_1027_1028_add_4_5 (.A0(cnt_debounce2[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7048), .COUT(n7049), .S0(n97), 
          .S1(n96));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_5.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_5.INJECT1_1 = "NO";
    CCU2D add_217_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(location[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n7057), .S1(n1758));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_1.INIT0 = 16'hF000;
    defparam add_217_1.INIT1 = 16'h5555;
    defparam add_217_1.INJECT1_0 = "NO";
    defparam add_217_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_175 (.A(key_flag[1]), .B(key_flag[0]), .Z(n8276)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i1_2_lut_rep_175.init = 16'hbbbb;
    PFUMX i5099 (.BLUT(n8199), .ALUT(n8198), .C0(row_c_1), .Z(n8200));
    LUT4 i4890_4_lut (.A(cnt_debounce2[8]), .B(cnt_debounce2[12]), .C(cnt_debounce2[9]), 
         .D(n7759), .Z(n7791)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4890_4_lut.init = 16'h8000;
    CCU2D add_237_11 (.A0(n8240), .B0(n1749), .C0(n63), .D0(location[9]), 
          .A1(n8240), .B1(n1748), .C1(n63), .D1(location[10]), .CIN(n7077), 
          .COUT(n7078), .S0(n2027), .S1(n2026));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_11.INIT0 = 16'hf404;
    defparam add_237_11.INIT1 = 16'hf404;
    defparam add_237_11.INJECT1_0 = "NO";
    defparam add_237_11.INJECT1_1 = "NO";
    CCU2D add_4266_25 (.A0(n8240), .B0(n1731), .C0(n63), .D0(location[27]), 
          .A1(n8240), .B1(n1730), .C1(n63), .D1(location[28]), .CIN(n7151), 
          .COUT(n7152));
    defparam add_4266_25.INIT0 = 16'h0bfb;
    defparam add_4266_25.INIT1 = 16'h0bfb;
    defparam add_4266_25.INJECT1_0 = "NO";
    defparam add_4266_25.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_168_3_lut (.A(key_flag[1]), .B(key_flag[0]), .C(row_now[3]), 
         .Z(n8269)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i1_2_lut_rep_168_3_lut.init = 16'hbfbf;
    CCU2D add_4266_23 (.A0(n8240), .B0(n1733), .C0(n63), .D0(location[25]), 
          .A1(n8240), .B1(n1732), .C1(n63), .D1(location[26]), .CIN(n7150), 
          .COUT(n7151));
    defparam add_4266_23.INIT0 = 16'h0bfb;
    defparam add_4266_23.INIT1 = 16'h0bfb;
    defparam add_4266_23.INJECT1_0 = "NO";
    defparam add_4266_23.INJECT1_1 = "NO";
    LUT4 i5010_2_lut_rep_133_3_lut_3_lut_4_lut (.A(n8240), .B(segment_switch_flag[0]), 
         .C(n3387), .D(location_31__N_633[31]), .Z(n8234)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[6:27])
    defparam i5010_2_lut_rep_133_3_lut_3_lut_4_lut.init = 16'h000b;
    LUT4 matrix_key_code_1__bdd_3_lut_5059 (.A(matrix_key_code[1]), .B(n8026), 
         .C(column_c_0), .Z(n8027)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam matrix_key_code_1__bdd_3_lut_5059.init = 16'hcaca;
    FD1P3AX seven_segment_disp_right_i0_i2 (.D(n13), .SP(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(seven_segment_disp_right_c_1));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_right_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_disp_1ms_1021_1022__i1 (.D(n90), .SP(button_flag), .CD(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(cnt_disp_1ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(79[24:36])
    defparam cnt_disp_1ms_1021_1022__i1.GSR = "ENABLED";
    FD1S3JX row_i4 (.D(scan_state_1__N_24[0]), .CK(sck_c_c), .PD(n5094), 
            .Q(row_now_3__N_36[3]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_i4.GSR = "ENABLED";
    FD1P3AX matrix_key_code_i1 (.D(matrix_key_code_4__N_19[1]), .SP(sck_c_c_enable_62), 
            .CK(sck_c_c), .Q(matrix_key_code[1]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam matrix_key_code_i1.GSR = "ENABLED";
    FD1P3AX matrix_key_code_i2 (.D(matrix_key_code_4__N_19[2]), .SP(sck_c_c_enable_43), 
            .CK(sck_c_c), .Q(matrix_key_code[2]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam matrix_key_code_i2.GSR = "ENABLED";
    FD1P3AY row_last_i1 (.D(row_last_3__N_32[1]), .SP(sck_c_c_enable_44), 
            .CK(sck_c_c), .Q(row_last[1])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_last_i1.GSR = "ENABLED";
    CCU2D add_4266_21 (.A0(n8240), .B0(n1735), .C0(n63), .D0(location[23]), 
          .A1(n8240), .B1(n1734), .C1(n63), .D1(location[24]), .CIN(n7149), 
          .COUT(n7150));
    defparam add_4266_21.INIT0 = 16'h0bfb;
    defparam add_4266_21.INIT1 = 16'h0bfb;
    defparam add_4266_21.INJECT1_0 = "NO";
    defparam add_4266_21.INJECT1_1 = "NO";
    CCU2D add_4266_19 (.A0(n8240), .B0(n1737), .C0(n63), .D0(location[21]), 
          .A1(n8240), .B1(n1736), .C1(n63), .D1(location[22]), .CIN(n7148), 
          .COUT(n7149));
    defparam add_4266_19.INIT0 = 16'h0bfb;
    defparam add_4266_19.INIT1 = 16'h0bfb;
    defparam add_4266_19.INJECT1_0 = "NO";
    defparam add_4266_19.INJECT1_1 = "NO";
    FD1P3AX seven_segment_disp_right_i0_i4 (.D(n8106), .SP(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(seven_segment_disp_right_c_3));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_right_i0_i4.GSR = "ENABLED";
    FD1P3AX seven_segment_disp_right_i0_i6 (.D(n20), .SP(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(seven_segment_disp_right_c_5));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_right_i0_i6.GSR = "ENABLED";
    FD1P3AX seven_segment_disp_right_i0_i7 (.D(n19), .SP(sck_c_c_enable_61), 
            .CK(sck_c_c), .Q(seven_segment_disp_right_c_6));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_right_i0_i7.GSR = "ENABLED";
    CCU2D add_237_9 (.A0(n8240), .B0(n1751), .C0(n63), .D0(location[7]), 
          .A1(n8240), .B1(n1750), .C1(n63), .D1(location[8]), .CIN(n7076), 
          .COUT(n7077), .S0(n2029), .S1(n2028));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_9.INIT0 = 16'hf404;
    defparam add_237_9.INIT1 = 16'hf404;
    defparam add_237_9.INJECT1_0 = "NO";
    defparam add_237_9.INJECT1_1 = "NO";
    LUT4 matrix_key_code_4__I_0_273_Mux_4_i15_4_lut_4_lut_else_4_lut (.A(matrix_key_code[2]), 
         .B(location[0]), .C(matrix_key_code[1]), .Z(n8286)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam matrix_key_code_4__I_0_273_Mux_4_i15_4_lut_4_lut_else_4_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_163_3_lut_4_lut (.A(key_flag[1]), .B(key_flag[0]), 
         .C(n8277), .D(row_now[3]), .Z(n8264)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i1_2_lut_rep_163_3_lut_4_lut.init = 16'hfbff;
    LUT4 m1_lut (.Z(n8503)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3IX cnt_debounce2_1027_1028__i9 (.D(n92), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i9.GSR = "ENABLED";
    LUT4 i77_4_lut_4_lut (.A(row_c_2), .B(row_c_0), .C(row_c_1), .D(row_now_3__N_36[3]), 
         .Z(sck_c_c_enable_16)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam i77_4_lut_4_lut.init = 16'h6880;
    CCU2D cnt_debounce2_1027_1028_add_4_19 (.A0(cnt_debounce2[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7055), .S0(n83_adj_31), 
          .S1(n82_adj_32));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_19.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_19.INJECT1_1 = "NO";
    CCU2D add_4266_17 (.A0(n8240), .B0(n1739), .C0(n63), .D0(location[19]), 
          .A1(n8240), .B1(n1738), .C1(n63), .D1(location[20]), .CIN(n7147), 
          .COUT(n7148));
    defparam add_4266_17.INIT0 = 16'h0bfb;
    defparam add_4266_17.INIT1 = 16'h0bfb;
    defparam add_4266_17.INJECT1_0 = "NO";
    defparam add_4266_17.INJECT1_1 = "NO";
    CCU2D add_4266_15 (.A0(n8240), .B0(n1741), .C0(n63), .D0(location[17]), 
          .A1(n8240), .B1(n1740), .C1(n63), .D1(location[18]), .CIN(n7146), 
          .COUT(n7147));
    defparam add_4266_15.INIT0 = 16'h0bfb;
    defparam add_4266_15.INIT1 = 16'h0bfb;
    defparam add_4266_15.INJECT1_0 = "NO";
    defparam add_4266_15.INJECT1_1 = "NO";
    CCU2D add_4266_13 (.A0(n8240), .B0(n1743), .C0(n63), .D0(location[15]), 
          .A1(n8240), .B1(n1742), .C1(n63), .D1(location[16]), .CIN(n7145), 
          .COUT(n7146));
    defparam add_4266_13.INIT0 = 16'h0bfb;
    defparam add_4266_13.INIT1 = 16'h0bfb;
    defparam add_4266_13.INJECT1_0 = "NO";
    defparam add_4266_13.INJECT1_1 = "NO";
    CCU2D add_4266_11 (.A0(n8240), .B0(n1745), .C0(n63), .D0(location[13]), 
          .A1(n8240), .B1(n1744), .C1(n63), .D1(location[14]), .CIN(n7144), 
          .COUT(n7145));
    defparam add_4266_11.INIT0 = 16'h0bfb;
    defparam add_4266_11.INIT1 = 16'h0bfb;
    defparam add_4266_11.INJECT1_0 = "NO";
    defparam add_4266_11.INJECT1_1 = "NO";
    CCU2D add_4266_9 (.A0(n8240), .B0(n1747), .C0(n63), .D0(location[11]), 
          .A1(n8240), .B1(n1746), .C1(n63), .D1(location[12]), .CIN(n7143), 
          .COUT(n7144));
    defparam add_4266_9.INIT0 = 16'h0bfb;
    defparam add_4266_9.INIT1 = 16'h0bfb;
    defparam add_4266_9.INJECT1_0 = "NO";
    defparam add_4266_9.INJECT1_1 = "NO";
    CCU2D add_237_7 (.A0(n8240), .B0(n1753), .C0(n63), .D0(location[5]), 
          .A1(n8240), .B1(n1752), .C1(n63), .D1(location[6]), .CIN(n7075), 
          .COUT(n7076), .S0(n2031), .S1(n2030));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_7.INIT0 = 16'hf404;
    defparam add_237_7.INIT1 = 16'hf404;
    defparam add_237_7.INJECT1_0 = "NO";
    defparam add_237_7.INJECT1_1 = "NO";
    LUT4 n8088_bdd_4_lut (.A(n8088), .B(n8087), .C(row_now[1]), .D(n4754), 
         .Z(n8233)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n8088_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_3_lut_adj_9 (.A(n8027), .B(n5827), .C(sck_c_c_enable_16), 
         .Z(matrix_key_code_4__N_19[1])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    defparam i1_3_lut_adj_9.init = 16'hecec;
    CCU2D add_4266_7 (.A0(n8240), .B0(n1749), .C0(n63), .D0(location[9]), 
          .A1(n8240), .B1(n1748), .C1(n63), .D1(location[10]), .CIN(n7142), 
          .COUT(n7143));
    defparam add_4266_7.INIT0 = 16'h0bfb;
    defparam add_4266_7.INIT1 = 16'h0bfb;
    defparam add_4266_7.INJECT1_0 = "NO";
    defparam add_4266_7.INJECT1_1 = "NO";
    CCU2D add_237_5 (.A0(n8240), .B0(n1755), .C0(n63), .D0(location[3]), 
          .A1(n8240), .B1(n1754), .C1(n63), .D1(location[4]), .CIN(n7074), 
          .COUT(n7075), .S0(n2033), .S1(n2032));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_5.INIT0 = 16'hf404;
    defparam add_237_5.INIT1 = 16'hf404;
    defparam add_237_5.INJECT1_0 = "NO";
    defparam add_237_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_176 (.A(row_now[2]), .B(row_now[1]), .C(row_now[0]), 
         .Z(n8277)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i2_3_lut_rep_176.init = 16'hbfbf;
    LUT4 i3521_2_lut_4_lut (.A(row_now[2]), .B(row_now[1]), .C(row_now[0]), 
         .D(n8261), .Z(n10)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i3521_2_lut_4_lut.init = 16'h0040;
    CCU2D add_4266_5 (.A0(n8240), .B0(n1751), .C0(n63), .D0(location[7]), 
          .A1(n8240), .B1(n1750), .C1(n63), .D1(location[8]), .CIN(n7141), 
          .COUT(n7142));
    defparam add_4266_5.INIT0 = 16'h0bfb;
    defparam add_4266_5.INIT1 = 16'h0bfb;
    defparam add_4266_5.INJECT1_0 = "NO";
    defparam add_4266_5.INJECT1_1 = "NO";
    LUT4 i3377_2_lut_rep_177 (.A(row_now[1]), .B(row_now[2]), .Z(n8278)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3377_2_lut_rep_177.init = 16'h8888;
    FD1P3IX cnt_debounce2_1027_1028__i8 (.D(n93), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i8.GSR = "ENABLED";
    LUT4 row_c_0_bdd_4_lut_5174 (.A(row_c_0), .B(row_now_3__N_36[3]), .C(row_c_1), 
         .D(row_c_2), .Z(matrix_key_code_4__N_19[2])) /* synthesis lut_function=(!((B (C+!(D))+!B !(C (D)))+!A)) */ ;
    defparam row_c_0_bdd_4_lut_5174.init = 16'h2800;
    LUT4 column_c_0_bdd_4_lut (.A(column_c_0), .B(column_c_3), .C(column_c_1), 
         .D(column_c_2), .Z(n4622)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam column_c_0_bdd_4_lut.init = 16'h6880;
    LUT4 i1_2_lut_rep_165_3_lut_4_lut (.A(row_now[1]), .B(row_now[2]), .C(row_now_3__N_36[3]), 
         .D(row_now[0]), .Z(n8266)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_165_3_lut_4_lut.init = 16'hff7f;
    LUT4 i1_2_lut_rep_169_3_lut (.A(row_now[1]), .B(row_now[2]), .C(row_now[0]), 
         .Z(n8270)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_169_3_lut.init = 16'hf7f7;
    LUT4 i9_2_lut (.A(location[7]), .B(location[14]), .Z(n40_adj_43)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i9_2_lut.init = 16'heeee;
    CCU2D add_4266_3 (.A0(n8240), .B0(n1753), .C0(n63), .D0(location[5]), 
          .A1(n8240), .B1(n1752), .C1(n63), .D1(location[6]), .CIN(n7140), 
          .COUT(n7141));
    defparam add_4266_3.INIT0 = 16'h0bfb;
    defparam add_4266_3.INIT1 = 16'h0bfb;
    defparam add_4266_3.INJECT1_0 = "NO";
    defparam add_4266_3.INJECT1_1 = "NO";
    LUT4 i1267_2_lut_3_lut_4_lut (.A(n8277), .B(n8255), .C(n15), .D(n8257), 
         .Z(n3992)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i1267_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i23_4_lut (.A(location[29]), .B(location[3]), .C(location[13]), 
         .D(location[31]), .Z(n54_adj_36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i23_4_lut.init = 16'hfffe;
    LUT4 i3567_4_lut (.A(n8093), .B(location_31__N_633[1]), .C(location_31__N_633[2]), 
         .D(location_31__N_633[0]), .Z(n14_adj_51)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i3567_4_lut.init = 16'hf7ff;
    CCU2D add_4266_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8240), .B1(n1754), .C1(n63), .D1(location[4]), .COUT(n7140));
    defparam add_4266_1.INIT0 = 16'hF000;
    defparam add_4266_1.INIT1 = 16'h0bfb;
    defparam add_4266_1.INJECT1_0 = "NO";
    defparam add_4266_1.INJECT1_1 = "NO";
    FD1P3IX cnt_debounce2_1027_1028__i7 (.D(n94), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i7.GSR = "ENABLED";
    LUT4 i3299_3_lut (.A(location_31__N_633[0]), .B(location_31__N_633[2]), 
         .C(location_31__N_633[1]), .Z(n7_adj_60)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(322[27:35])
    defparam i3299_3_lut.init = 16'h4848;
    LUT4 i4973_4_lut (.A(n8254), .B(n7807), .C(n8243), .D(row_c_1), 
         .Z(row_last_3__N_32[1])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C (D)))) */ ;
    defparam i4973_4_lut.init = 16'hcfdd;
    CCU2D cnt_debounce2_1027_1028_add_4_17 (.A0(cnt_debounce2[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce2[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7054), .COUT(n7055), .S0(n85_adj_29), 
          .S1(n84_adj_30));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_debounce2_1027_1028_add_4_17.INJECT1_0 = "NO";
    defparam cnt_debounce2_1027_1028_add_4_17.INJECT1_1 = "NO";
    LUT4 i4951_3_lut (.A(n7_adj_60), .B(n14_adj_51), .C(location_31__N_633[3]), 
         .Z(din_N_780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4951_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_10 (.A(cnt_debounce2[3]), .B(cnt_debounce2[10]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i1_2_lut_adj_10.init = 16'heeee;
    LUT4 location_3__I_0_i15_4_lut (.A(n8209), .B(n7703), .C(location[3]), 
         .D(n7739), .Z(din_N_778)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(308[28:36])
    defparam location_3__I_0_i15_4_lut.init = 16'hfaca;
    FD1P3IX cnt_debounce2_1027_1028__i19 (.D(n82_adj_32), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i19.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i6 (.D(n95), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i6.GSR = "ENABLED";
    LUT4 n4711_bdd_1_lut_2_lut_3_lut_4_lut (.A(n8277), .B(n8255), .C(n8284), 
         .D(n8257), .Z(n8115)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam n4711_bdd_1_lut_2_lut_3_lut_4_lut.init = 16'h10f0;
    LUT4 mux_225_rep_3_i14_4_lut (.A(n1745), .B(location[13]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[13])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i14_4_lut.init = 16'h0cac;
    LUT4 i1_3_lut_rep_170_4_lut (.A(row_now[1]), .B(row_now[2]), .C(row_now[3]), 
         .D(row_now[0]), .Z(n8271)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_3_lut_rep_170_4_lut.init = 16'hf7ff;
    LUT4 i4862_2_lut (.A(cnt_debounce2[18]), .B(cnt_debounce2[14]), .Z(n7759)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4862_2_lut.init = 16'h8888;
    LUT4 i10_1_lut_rep_178 (.A(row_c_0), .Z(n8279)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i10_1_lut_rep_178.init = 16'h5555;
    LUT4 i9_4_lut (.A(cnt_debounce2[0]), .B(cnt_debounce2[11]), .C(cnt_debounce2[5]), 
         .D(cnt_debounce2[2]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i9_4_lut.init = 16'hfffe;
    FD1P3IX cnt_debounce2_1027_1028__i5 (.D(n96), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i5.GSR = "ENABLED";
    LUT4 i1444_3_lut_3_lut_3_lut (.A(row_c_0), .B(n8265), .C(n8262), .Z(n4169)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i1444_3_lut_3_lut_3_lut.init = 16'h4545;
    FD1P3IX cnt_debounce2_1027_1028__i18 (.D(n83_adj_31), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i18.GSR = "ENABLED";
    LUT4 i4983_2_lut_rep_171_3_lut (.A(row_c_2), .B(row_c_1), .C(row_now_3__N_36[3]), 
         .Z(n8272)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam i4983_2_lut_rep_171_3_lut.init = 16'h7f7f;
    LUT4 i3351_3_lut_3_lut_4_lut (.A(row_c_2), .B(row_c_1), .C(n49_adj_46), 
         .D(row_now_3__N_36[3]), .Z(row_last_3__N_32[0])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam i3351_3_lut_3_lut_4_lut.init = 16'h7fff;
    CCU2D cnt_100_1023_1024_add_4_7 (.A0(cnt_100[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_100[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7109), .S0(n35), .S1(n34));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_100_1023_1024_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_100_1023_1024_add_4_7.INJECT1_0 = "NO";
    defparam cnt_100_1023_1024_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_100_1023_1024_add_4_5 (.A0(cnt_100[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_100[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7108), .COUT(n7109), .S0(n37), .S1(n36));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_100_1023_1024_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_100_1023_1024_add_4_5.INJECT1_0 = "NO";
    defparam cnt_100_1023_1024_add_4_5.INJECT1_1 = "NO";
    FD1P3IX cnt_debounce2_1027_1028__i4 (.D(n97), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i4.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i3 (.D(n98), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i3.GSR = "ENABLED";
    FD1P3IX cnt_debounce2_1027_1028__i2 (.D(n99), .SP(sck_c_c_enable_57), 
            .CD(n5098), .CK(sck_c_c), .Q(cnt_debounce2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(137[24:37])
    defparam cnt_debounce2_1027_1028__i2.GSR = "ENABLED";
    LUT4 button_c_0_bdd_4_lut (.A(button_c_0), .B(button_c_3), .C(button_c_1), 
         .D(button_c_2), .Z(n8158)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C (D))+!B !(C+!(D))))) */ ;
    defparam button_c_0_bdd_4_lut.init = 16'h3e7d;
    LUT4 n45_bdd_3_lut_5105 (.A(n8249), .B(n8250), .C(row_c_0), .Z(n8174)) /* synthesis lut_function=(!(A (B+(C))+!A !((C)+!B))) */ ;
    defparam n45_bdd_3_lut_5105.init = 16'h5353;
    CCU2D cnt_100_1023_1024_add_4_3 (.A0(cnt_100[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_100[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n7107), .COUT(n7108), .S0(n39), .S1(n38));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_100_1023_1024_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_100_1023_1024_add_4_3.INJECT1_0 = "NO";
    defparam cnt_100_1023_1024_add_4_3.INJECT1_1 = "NO";
    CCU2D add_237_3 (.A0(n8240), .B0(n1757), .C0(n63), .D0(location[1]), 
          .A1(n8240), .B1(n1756), .C1(n63), .D1(location[2]), .CIN(n7073), 
          .COUT(n7074), .S0(n2035), .S1(n2034));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_3.INIT0 = 16'hf404;
    defparam add_237_3.INIT1 = 16'hf404;
    defparam add_237_3.INJECT1_0 = "NO";
    defparam add_237_3.INJECT1_1 = "NO";
    CCU2D cnt_100_1023_1024_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_100[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n7107), .S1(n40));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(93[14:21])
    defparam cnt_100_1023_1024_add_4_1.INIT0 = 16'hF000;
    defparam cnt_100_1023_1024_add_4_1.INIT1 = 16'h0555;
    defparam cnt_100_1023_1024_add_4_1.INJECT1_0 = "NO";
    defparam cnt_100_1023_1024_add_4_1.INJECT1_1 = "NO";
    CCU2D add_237_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8240), .B1(n1758), .C1(n63), .D1(location[0]), .COUT(n7073), 
          .S1(n2036));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(326[15:23])
    defparam add_237_1.INIT0 = 16'hF000;
    defparam add_237_1.INIT1 = 16'h0bfb;
    defparam add_237_1.INJECT1_0 = "NO";
    defparam add_237_1.INJECT1_1 = "NO";
    LUT4 i3349_2_lut_3_lut_4_lut (.A(n8277), .B(n8255), .C(row_c_2), .D(n8257), 
         .Z(n6078)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i3349_2_lut_3_lut_4_lut.init = 16'hfef0;
    CCU2D cnt_debounce_1025_1026_add_4_17 (.A0(cnt_debounce[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_debounce[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n7105), .S0(n75_adj_20), 
          .S1(n74_adj_21));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_debounce_1025_1026_add_4_17.INJECT1_0 = "NO";
    defparam cnt_debounce_1025_1026_add_4_17.INJECT1_1 = "NO";
    LUT4 i49_3_lut_4_lut_4_lut (.A(row_c_2), .B(row_c_0), .C(row_c_1), 
         .D(row_now_3__N_36[3]), .Z(matrix_key_code_4__N_19[4])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D)))) */ ;
    defparam i49_3_lut_4_lut_4_lut.init = 16'h977f;
    LUT4 mux_225_rep_3_i28_4_lut (.A(n1731), .B(location[27]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[27])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i28_4_lut.init = 16'h0cac;
    FD1P3IX seven_segment_disp_right_i0_i5 (.D(n4256), .SP(sck_c_c_enable_61), 
            .CD(n5133), .CK(sck_c_c), .Q(seven_segment_disp_right_c_4));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_right_i0_i5.GSR = "ENABLED";
    FD1P3AY row_last_i2 (.D(row_last_3__N_32[2]), .SP(sck_c_c_enable_59), 
            .CK(sck_c_c), .Q(row_last[2])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_last_i2.GSR = "ENABLED";
    FD1P3AY row_last_i3 (.D(row_last_3__N_32[3]), .SP(sck_c_c_enable_60), 
            .CK(sck_c_c), .Q(row_last[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam row_last_i3.GSR = "ENABLED";
    CCU2D add_217_33 (.A0(location[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n7072), 
          .S0(n1727));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(312[15:23])
    defparam add_217_33.INIT0 = 16'h5aaa;
    defparam add_217_33.INIT1 = 16'h0000;
    defparam add_217_33.INJECT1_0 = "NO";
    defparam add_217_33.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_172_4_lut (.A(column_c_0), .B(column_c_2), .C(column_c_1), 
         .D(column_c_3), .Z(n8273)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_172_4_lut.init = 16'h8000;
    LUT4 mux_225_rep_3_i31_4_lut (.A(n1728), .B(location[30]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[30])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i31_4_lut.init = 16'h0cac;
    LUT4 i1_3_lut_4_lut_adj_11 (.A(n8242), .B(row_now_3__N_36[3]), .C(n8284), 
         .D(n8116), .Z(sck_c_c_enable_44)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_11.init = 16'hec20;
    LUT4 i1_2_lut_rep_180 (.A(row_last[2]), .B(row_last[3]), .Z(n8281)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_180.init = 16'h8888;
    LUT4 matrix_key_code_0__bdd_3_lut_5031 (.A(matrix_key_code[0]), .B(n8048), 
         .C(column_c_0), .Z(n8049)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam matrix_key_code_0__bdd_3_lut_5031.init = 16'hcaca;
    FD1P3JX seven_segment_disp_right_i0_i3 (.D(n4261), .SP(sck_c_c_enable_61), 
            .PD(n5133), .CK(sck_c_c), .Q(seven_segment_disp_right_c_2));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam seven_segment_disp_right_i0_i3.GSR = "ENABLED";
    FD1P3AX matrix_key_code_i0 (.D(matrix_key_code_4__N_19[0]), .SP(sck_c_c_enable_62), 
            .CK(sck_c_c), .Q(matrix_key_code[0]));   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam matrix_key_code_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_164_4_lut (.A(row_last[2]), .B(row_last[3]), .C(n8273), 
         .D(n8283), .Z(n8265)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_rep_164_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_181 (.A(key_flag[0]), .B(key_flag[1]), .Z(n8282)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i1_2_lut_rep_181.init = 16'hbbbb;
    LUT4 matrix_key_code_0__bdd_4_lut_5023 (.A(matrix_key_code[0]), .B(column_c_2), 
         .C(column_c_1), .D(column_c_3), .Z(n8048)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !(B+!(C (D)))) */ ;
    defparam matrix_key_code_0__bdd_4_lut_5023.init = 16'hb22a;
    FD1P3IX cnt_debounce_1025_1026__i17 (.D(n74_adj_21), .SP(sck_c_c_enable_63), 
            .CD(n5097), .CK(sck_c_c), .Q(cnt_debounce[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(129[23:35])
    defparam cnt_debounce_1025_1026__i17.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_12 (.A(key_flag[0]), .B(key_flag[1]), 
         .C(row_now[3]), .D(n8259), .Z(n4_adj_61)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i1_2_lut_3_lut_4_lut_adj_12.init = 16'h0040;
    LUT4 i2702_3_lut_4_lut (.A(n8258), .B(n8271), .C(row_now_3__N_36[3]), 
         .D(n4389), .Z(row_last_3__N_32[3])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i2702_3_lut_4_lut.init = 16'h01f1;
    LUT4 i1_3_lut_4_lut_adj_13 (.A(n8242), .B(row_now_3__N_36[3]), .C(n8284), 
         .D(n11), .Z(sck_c_c_enable_59)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_13.init = 16'hec20;
    LUT4 i1_2_lut_3_lut_4_lut_adj_14 (.A(n8258), .B(n8271), .C(n5413), 
         .D(n8248), .Z(n3997)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i1_2_lut_3_lut_4_lut_adj_14.init = 16'h0e00;
    LUT4 i1_2_lut_rep_141_3_lut_4_lut (.A(n8258), .B(n8271), .C(row_c_2), 
         .D(n8248), .Z(n8242)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i1_2_lut_rep_141_3_lut_4_lut.init = 16'h10f0;
    LUT4 i3_2_lut (.A(cnt_debounce2[4]), .B(cnt_debounce2[13]), .Z(n16_adj_47)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i2394_2_lut (.A(sck_c_c_enable_61), .B(button_c_0), .Z(n5133)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam i2394_2_lut.init = 16'h2222;
    PFUMX i5020 (.BLUT(n8024), .ALUT(n8023), .C0(location[0]), .Z(n8025));
    PFUMX i5079 (.BLUT(n8174), .ALUT(n8173), .C0(n7807), .Z(n8175));
    LUT4 i1531_3_lut (.A(button_c_1), .B(button_c_3), .C(button_c_2), 
         .Z(n4256)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(57[5] 75[14])
    defparam i1531_3_lut.init = 16'h7676;
    LUT4 n45_bdd_3_lut_5098 (.A(n8250), .B(n4622), .C(row_c_0), .Z(n8198)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam n45_bdd_3_lut_5098.init = 16'hf4f4;
    LUT4 mux_225_rep_3_i8_4_lut (.A(n1751), .B(location[7]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[7])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i8_4_lut.init = 16'h0cac;
    LUT4 i1_2_lut_rep_151_3_lut_4_lut (.A(key_flag[0]), .B(key_flag[1]), 
         .C(n8271), .D(n8259), .Z(n8252)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i1_2_lut_rep_151_3_lut_4_lut.init = 16'hfffb;
    LUT4 mux_225_rep_3_i20_4_lut (.A(n1739), .B(location[19]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[19])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i20_4_lut.init = 16'h0cac;
    LUT4 i2543_4_lut (.A(n8284), .B(row_c_2), .C(n8247), .D(n4388), 
         .Z(n11)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A ((D)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    defparam i2543_4_lut.init = 16'h02ce;
    LUT4 i2_2_lut_rep_157_3_lut (.A(key_flag[0]), .B(key_flag[1]), .C(n8259), 
         .Z(n8258)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i2_2_lut_rep_157_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_rep_167_3_lut (.A(key_flag[0]), .B(key_flag[1]), .C(row_now[3]), 
         .Z(n8268)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i1_2_lut_rep_167_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_154_3_lut_4_lut (.A(key_flag[0]), .B(key_flag[1]), 
         .C(n8259), .D(row_now[3]), .Z(n8255)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i1_2_lut_rep_154_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_182 (.A(row_last[1]), .B(row_last[0]), .Z(n8283)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_182.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_15 (.A(row_last[1]), .B(row_last[0]), 
         .C(row_last[3]), .D(n8273), .Z(n4_adj_59)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_15.init = 16'h8000;
    LUT4 mux_12_Mux_5_i15_4_lut_4_lut (.A(button_c_0), .B(button_c_1), .C(button_c_2), 
         .D(button_c_3), .Z(n20)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(57[5] 75[14])
    defparam mux_12_Mux_5_i15_4_lut_4_lut.init = 16'h0ee3;
    LUT4 mux_12_Mux_6_i15_4_lut_4_lut (.A(button_c_0), .B(button_c_1), .C(button_c_2), 
         .D(button_c_3), .Z(n19)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(57[5] 75[14])
    defparam mux_12_Mux_6_i15_4_lut_4_lut.init = 16'h3ecf;
    LUT4 i1548_2_lut_rep_183 (.A(row_c_0), .B(row_c_1), .Z(n8284)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i1548_2_lut_rep_183.init = 16'h8888;
    LUT4 i2341_3_lut_4_lut (.A(row_c_0), .B(row_c_1), .C(row_now_3__N_36[3]), 
         .D(row_c_2), .Z(matrix_key_code_4__N_19[3])) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i2341_3_lut_4_lut.init = 16'h0880;
    PFUMX i1282 (.BLUT(din_N_778), .ALUT(din_N_780), .C0(n8234), .Z(din_N_775));
    LUT4 i5001_4_lut (.A(n8251), .B(row_now_3__N_36[3]), .C(n4388), .D(row_c_2), 
         .Z(row_last_3__N_32[2])) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B (C (D))))) */ ;
    defparam i5001_4_lut.init = 16'h3f77;
    LUT4 i61_4_lut_3_lut (.A(row_c_0), .B(row_c_1), .C(row_c_2), .Z(n57)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i61_4_lut_3_lut.init = 16'h9797;
    LUT4 i1_3_lut_4_lut_adj_16 (.A(row_c_0), .B(row_c_1), .C(n15), .D(n8265), 
         .Z(n2)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i1_3_lut_4_lut_adj_16.init = 16'h8808;
    LUT4 i1_2_lut_rep_173_3_lut (.A(row_c_0), .B(row_c_1), .C(row_c_2), 
         .Z(n8274)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i1_2_lut_rep_173_3_lut.init = 16'h8080;
    LUT4 i4970_2_lut_3_lut (.A(row_c_0), .B(row_c_1), .C(row_now_3__N_36[3]), 
         .Z(n6270)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i4970_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1560_2_lut_rep_145_4_lut_4_lut (.A(row_now[1]), .B(n49_adj_46), 
         .C(n8253), .D(row_now[0]), .Z(n8246)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i1560_2_lut_rep_145_4_lut_4_lut.init = 16'hccc4;
    L6MUX21 i2346 (.D0(n5073), .D1(n5074), .SD(n7807), .Z(n5085));
    LUT4 i5_2_lut (.A(cnt_debounce[1]), .B(cnt_debounce[5]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i5_2_lut.init = 16'heeee;
    L6MUX21 row_3__I_0_275_Mux_1_i15 (.D0(n5050), .D1(n14_adj_2), .SD(n7807), 
            .Z(key_flag_1__N_30[1]));
    LUT4 i18_2_lut_3_lut_4_lut (.A(n4822), .B(n8255), .C(row_c_1), .D(n8249), 
         .Z(n12)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i18_2_lut_3_lut_4_lut.init = 16'h010f;
    LUT4 i2_3_lut_rep_149_4_lut_4_lut (.A(row_now[1]), .B(row_now[0]), .C(n8256), 
         .D(n8269), .Z(n8250)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i2_3_lut_rep_149_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(n4822), .B(n8255), .C(n8263), 
         .D(n8249), .Z(n7722)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'he000;
    LUT4 i14_4_lut (.A(n8244), .B(n4389), .C(row_now_3__N_36[3]), .D(n8274), 
         .Z(sck_c_c_enable_60)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i14_4_lut.init = 16'h3530;
    LUT4 i2_3_lut_rep_148_3_lut (.A(row_now[3]), .B(row_now[1]), .C(n4754), 
         .Z(n8249)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut_rep_148_3_lut.init = 16'hfdfd;
    LUT4 i1523_2_lut_rep_144_4_lut_4_lut (.A(row_now[3]), .B(n8254), .C(row_now[1]), 
         .D(n4754), .Z(n8245)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i1523_2_lut_rep_144_4_lut_4_lut.init = 16'hccc4;
    LUT4 n45_bdd_3_lut (.A(n8249), .B(n4622), .C(row_c_0), .Z(n8199)) /* synthesis lut_function=(!(A (C)+!A !(B+!(C)))) */ ;
    defparam n45_bdd_3_lut.init = 16'h4f4f;
    LUT4 i3_4_lut_4_lut (.A(column_c_0), .B(n5816), .C(column_c_2), .D(sck_c_c_enable_16), 
         .Z(n5827)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(8[3:9])
    defparam i3_4_lut_4_lut.init = 16'h4000;
    LUT4 i3296_2_lut_rep_146_3_lut_4_lut (.A(n8268), .B(n8259), .C(n8257), 
         .D(n8277), .Z(n8247)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(115[6:19])
    defparam i3296_2_lut_rep_146_3_lut_4_lut.init = 16'hf0e0;
    LUT4 mux_225_rep_3_i15_4_lut (.A(n1744), .B(location[14]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[14])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i15_4_lut.init = 16'h0cac;
    LUT4 i2268_2_lut_3_lut (.A(row_c_2), .B(row_c_1), .C(row_now_3__N_36[3]), 
         .Z(row_now_3__N_36[1])) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam i2268_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut_4_lut (.A(matrix_key_code[0]), .B(matrix_key_code[4]), 
         .C(location[1]), .D(n8267), .Z(n7703)) /* synthesis lut_function=(!(A (C)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i1_4_lut_4_lut.init = 16'h0f4f;
    LUT4 i3369_2_lut_3_lut (.A(matrix_key_code[0]), .B(matrix_key_code[1]), 
         .C(matrix_key_code[2]), .Z(n7_adj_48)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i3369_2_lut_3_lut.init = 16'hf6f6;
    PFUMX row_3__I_0_275_Mux_1_i14 (.BLUT(key_flag_1__N_255[1]), .ALUT(key_flag_1__N_257[1]), 
          .C0(n18_adj_22), .Z(n14_adj_2));
    LUT4 mux_225_rep_3_i23_4_lut (.A(n1736), .B(location[22]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[22])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i23_4_lut.init = 16'h0cac;
    LUT4 matrix_key_code_4__I_0_273_Mux_4_i7_3_lut_4_lut_3_lut (.A(matrix_key_code[0]), 
         .B(matrix_key_code[1]), .C(matrix_key_code[2]), .Z(n7_adj_50)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C)+!B !(C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam matrix_key_code_4__I_0_273_Mux_4_i7_3_lut_4_lut_3_lut.init = 16'hb6b6;
    LUT4 i4896_4_lut (.A(cnt_debounce[16]), .B(n7795), .C(cnt_debounce[7]), 
         .D(cnt_debounce[6]), .Z(n7797)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4896_4_lut.init = 16'h8000;
    LUT4 matrix_key_code_4__I_0_273_Mux_7_i14_4_lut_3_lut (.A(matrix_key_code[0]), 
         .B(matrix_key_code[1]), .C(matrix_key_code[2]), .Z(n14_adj_49)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam matrix_key_code_4__I_0_273_Mux_7_i14_4_lut_3_lut.init = 16'hdbdb;
    PFUMX i2315 (.BLUT(key_flag_1__N_253[1]), .ALUT(key_flag_1__N_251[1]), 
          .C0(row_c_1), .Z(n5050));
    LUT4 i1536_3_lut (.A(button_c_1), .B(button_c_2), .C(button_c_3), 
         .Z(n4261)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B (C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(57[5] 75[14])
    defparam i1536_3_lut.init = 16'h3d3d;
    LUT4 i1_3_lut_adj_18 (.A(n8049), .B(n5827), .C(sck_c_c_enable_16), 
         .Z(matrix_key_code_4__N_19[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(12[3:6])
    defparam i1_3_lut_adj_18.init = 16'hecec;
    LUT4 i4990_2_lut_2_lut (.A(n8261), .B(sck_c_c_enable_63), .Z(n5097)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4990_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_19 (.A(state_clk), .B(n5096), .Z(state_clk_N_781)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_19.init = 16'h6666;
    LUT4 i4977_4_lut (.A(cnt_100[0]), .B(n7793), .C(cnt_100[3]), .D(n6), 
         .Z(n5096)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(89[5:18])
    defparam i4977_4_lut.init = 16'h0004;
    LUT4 i4892_3_lut (.A(cnt_100[2]), .B(cnt_100[6]), .C(cnt_100[5]), 
         .Z(n7793)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i4892_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_20 (.A(cnt_100[1]), .B(cnt_100[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_20.init = 16'heeee;
    LUT4 i2556_1_lut (.A(row_now_3__N_36[3]), .Z(n18_adj_22)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(44[2] 256[10])
    defparam i2556_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_155 (.A(n8261), .B(row_now[2]), .Z(n8256)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_2_lut_rep_155.init = 16'hbbbb;
    LUT4 n8201_bdd_3_lut (.A(n8201), .B(n8200), .C(row_c_2), .Z(n8202)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8201_bdd_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(n8261), .B(row_now[2]), .C(row_now[0]), .D(n8276), 
         .Z(n4754)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i2_3_lut_4_lut.init = 16'hffbf;
    PFUMX i2338 (.BLUT(n7722), .ALUT(n7729), .C0(row_c_1), .Z(n5073));
    LUT4 mux_225_rep_3_i6_4_lut (.A(n1753), .B(location[5]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[5])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i6_4_lut.init = 16'h0cac;
    LUT4 mux_225_rep_3_i7_4_lut (.A(n1752), .B(location[6]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[6])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i7_4_lut.init = 16'h0cac;
    PFUMX i2339 (.BLUT(n3992), .ALUT(n3997), .C0(n18_adj_22), .Z(n5074));
    LUT4 n5_bdd_4_lut (.A(n8288), .B(n7_adj_50), .C(n7811), .D(matrix_key_code[4]), 
         .Z(n8205)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam n5_bdd_4_lut.init = 16'hffac;
    LUT4 n8205_bdd_3_lut (.A(n8205), .B(n5), .C(location[1]), .Z(n8206)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8205_bdd_3_lut.init = 16'hcaca;
    LUT4 n1_bdd_4_lut (.A(n8025), .B(n4239), .C(n7811), .D(matrix_key_code[4]), 
         .Z(n8207)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam n1_bdd_4_lut.init = 16'hffac;
    PFUMX i52 (.BLUT(n12), .ALUT(n7717), .C0(n8279), .Z(n30));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut_adj_21 (.A(row_c_1), .B(n30), .C(n4_adj_58), .D(n7807), 
         .Z(sck_c_c_enable_5)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;
    defparam i1_4_lut_adj_21.init = 16'ha0ec;
    LUT4 n8208_bdd_3_lut (.A(n8208), .B(n8206), .C(location[2]), .Z(n8209)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8208_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_225_rep_3_i2_4_lut (.A(n1757), .B(location[1]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[1])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i2_4_lut.init = 16'h0cac;
    LUT4 i1_2_lut_adj_22 (.A(row_c_1), .B(row_now[0]), .Z(n7715)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_22.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(n8261), .B(row_now[2]), .C(row_now[1]), 
         .D(n8269), .Z(n25)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h0040;
    LUT4 i1_4_lut_adj_24 (.A(n8242), .B(row_c_0), .C(n6078), .D(row_now_3__N_36[3]), 
         .Z(n4_adj_58)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h0c88;
    LUT4 i2_3_lut_4_lut_adj_25 (.A(n8261), .B(row_now[2]), .C(row_now[1]), 
         .D(n7715), .Z(n7716)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i2_3_lut_4_lut_adj_25.init = 16'h4000;
    LUT4 i13_2_lut (.A(location[15]), .B(location[23]), .Z(n44_adj_42)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i13_2_lut.init = 16'heeee;
    LUT4 mux_225_rep_3_i5_4_lut (.A(n1754), .B(location[4]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[4])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i5_4_lut.init = 16'h0cac;
    LUT4 i1663_4_lut_4_lut (.A(n8246), .B(row_c_0), .C(row_c_1), .D(n8245), 
         .Z(n4388)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D))+!B !(C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(104[2] 254[11])
    defparam i1663_4_lut_4_lut.init = 16'hefe3;
    LUT4 i4991_2_lut (.A(location[0]), .B(matrix_key_code[3]), .Z(n7811)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(308[28:36])
    defparam i4991_2_lut.init = 16'heeee;
    LUT4 mux_225_rep_3_i10_4_lut (.A(n1749), .B(location[9]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[9])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i10_4_lut.init = 16'h0cac;
    LUT4 n45_bdd_3_lut_5078_4_lut (.A(n8261), .B(n8264), .C(row_now_3__N_36[3]), 
         .D(n8248), .Z(n8173)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam n45_bdd_3_lut_5078_4_lut.init = 16'h101f;
    LUT4 n45_bdd_1_lut_5081_3_lut_4_lut (.A(n8261), .B(n8264), .C(n8284), 
         .D(n4622), .Z(n8121)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam n45_bdd_1_lut_5081_3_lut_4_lut.init = 16'h1f0f;
    LUT4 n45_bdd_3_lut_4_lut (.A(n8261), .B(n8264), .C(n4622), .D(n8284), 
         .Z(n8201)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam n45_bdd_3_lut_4_lut.init = 16'h10ff;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n8262), .B(n251), .C(n49_adj_46), .D(n8250), 
         .Z(key_flag_1__N_251[1])) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(110[6:18])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hd000;
    PFUMX i65 (.BLUT(n10), .ALUT(n7716), .C0(row_c_2), .Z(n30_adj_57));
    LUT4 i1_3_lut_4_lut_adj_26 (.A(n8248), .B(n8252), .C(n5413), .D(n251), 
         .Z(key_flag_1__N_257[1])) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i1_3_lut_4_lut_adj_26.init = 16'h8880;
    LUT4 i1_4_lut_rep_158 (.A(n23), .B(cnt_debounce2[17]), .C(n24), .D(cnt_debounce2[16]), 
         .Z(n8259)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i1_4_lut_rep_158.init = 16'hfbff;
    LUT4 i4998_2_lut (.A(row_now_3__N_36[3]), .B(row_c_2), .Z(n7807)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i4998_2_lut.init = 16'h7777;
    LUT4 mux_225_rep_3_i18_4_lut (.A(n1741), .B(location[17]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[17])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i18_4_lut.init = 16'h0cac;
    LUT4 i30_4_lut_rep_159 (.A(n55_adj_35), .B(n60), .C(n49_adj_39), .D(n50_adj_38), 
         .Z(n8260)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i30_4_lut_rep_159.init = 16'hfffe;
    LUT4 mux_225_rep_3_i13_4_lut (.A(n1746), .B(location[12]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[12])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i13_4_lut.init = 16'h0cac;
    LUT4 i2_3_lut_4_lut_adj_27 (.A(n8259), .B(n8282), .C(row_now[3]), 
         .D(n8270), .Z(n49_adj_46)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(133[7:27])
    defparam i2_3_lut_4_lut_adj_27.init = 16'hffef;
    LUT4 i1284_4_lut_4_lut (.A(n8260), .B(location_31__N_633[31]), .C(n8235), 
         .D(n7238), .Z(rck_N_762)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D))))) */ ;
    defparam i1284_4_lut_4_lut.init = 16'h5053;
    LUT4 i9_4_lut_adj_28 (.A(n7797), .B(n18), .C(cnt_debounce[11]), .D(cnt_debounce[0]), 
         .Z(n20_adj_1)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i9_4_lut_adj_28.init = 16'hfffd;
    LUT4 i10_4_lut_rep_160 (.A(cnt_debounce[13]), .B(n20_adj_1), .C(n16), 
         .D(cnt_debounce[9]), .Z(n8261)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i10_4_lut_rep_160.init = 16'hfffe;
    L6MUX21 i20 (.D0(n12_adj_62), .D1(n7), .SD(n7807), .Z(sck_c_c_enable_15));
    PFUMX i27 (.BLUT(n4171), .ALUT(n4169), .C0(row_c_1), .Z(n12_adj_62));
    LUT4 mux_225_rep_3_i25_4_lut (.A(n1734), .B(location[24]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[24])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i25_4_lut.init = 16'h0cac;
    L6MUX21 i5057 (.D0(n8126), .D1(n8123), .SD(n7807), .Z(sck_c_c_enable_43));
    LUT4 i24_4_lut (.A(n7739), .B(n48_adj_40), .C(location[28]), .D(location[18]), 
         .Z(n55_adj_35)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i29_4_lut (.A(n39_adj_45), .B(n58), .C(n52_adj_37), .D(n40_adj_43), 
         .Z(n60)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i29_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(location[25]), .B(location[9]), .C(location[26]), 
         .D(location[12]), .Z(n49_adj_39)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i8_2_lut (.A(location[27]), .B(location[30]), .Z(n39_adj_45)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i8_2_lut.init = 16'heeee;
    PFUMX i5055 (.BLUT(n8125), .ALUT(n8124), .C0(n4622), .Z(n8126));
    LUT4 i27_4_lut (.A(location[10]), .B(n54_adj_36), .C(n44_adj_42), 
         .D(location[20]), .Z(n58)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i27_4_lut.init = 16'hfffe;
    PFUMX i5051 (.BLUT(n8203), .ALUT(n8121), .C0(row_now_3__N_36[3]), 
          .Z(n8123));
    LUT4 i17_4_lut (.A(location[4]), .B(location[11]), .C(location[16]), 
         .D(location[21]), .Z(n48_adj_40)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i17_4_lut.init = 16'hfffd;
    LUT4 i19_4_lut (.A(location[17]), .B(location[1]), .C(location[24]), 
         .D(location[8]), .Z(n50_adj_38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i1446_3_lut_3_lut (.A(n8263), .B(row_c_0), .C(n8265), .Z(n4171)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(147[6:18])
    defparam i1446_3_lut_3_lut.init = 16'hc4c4;
    LUT4 row_now_1__bdd_4_lut (.A(row_now[3]), .B(row_now_3__N_36[3]), .C(row_c_1), 
         .D(row_c_2), .Z(n8088)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam row_now_1__bdd_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_adj_29 (.A(location[0]), .B(location[2]), .Z(n7739)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i1_2_lut_adj_29.init = 16'heeee;
    LUT4 mux_225_rep_3_i9_4_lut (.A(n1750), .B(location[8]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[8])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i9_4_lut.init = 16'h0cac;
    LUT4 mux_225_rep_3_i32_4_lut (.A(n1727), .B(location[31]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[31])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i32_4_lut.init = 16'h0cac;
    LUT4 location_31__I_0_282_i1_4_lut (.A(n2036), .B(location_31__N_633[0]), 
         .C(n8239), .D(n8237), .Z(location_31__N_567[0])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(320[3] 332[16])
    defparam location_31__I_0_282_i1_4_lut.init = 16'hc0ca;
    LUT4 i21_4_lut (.A(location[19]), .B(location[5]), .C(location[22]), 
         .D(location[6]), .Z(n52_adj_37)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(310[10:21])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut_adj_30 (.A(cnt_debounce[8]), .B(cnt_debounce[2]), .C(cnt_debounce[3]), 
         .D(cnt_debounce[4]), .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(117[7:26])
    defparam i7_4_lut_adj_30.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_31 (.A(row_now_3__N_36[3]), .B(n8271), .C(n8284), 
         .D(n8282), .Z(n4775)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_31.init = 16'hf0e0;
    LUT4 mux_225_rep_3_i19_4_lut (.A(n1740), .B(location[18]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[18])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i19_4_lut.init = 16'h0cac;
    LUT4 i1_3_lut_4_lut_adj_32 (.A(row_now_3__N_36[3]), .B(n8271), .C(n8284), 
         .D(n8276), .Z(n4776)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_32.init = 16'hf0e0;
    PFUMX i21 (.BLUT(n2), .ALUT(n2_adj_52), .C0(n18_adj_22), .Z(n7));
    LUT4 i4894_4_lut (.A(cnt_debounce[10]), .B(cnt_debounce[12]), .C(cnt_debounce[15]), 
         .D(cnt_debounce[14]), .Z(n7795)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4894_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_rep_161_4_lut (.A(n8273), .B(n8281), .C(row_last[0]), 
         .D(row_last[1]), .Z(n8262)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_161_4_lut.init = 16'hf7ff;
    LUT4 mux_225_rep_3_i1_4_lut (.A(n1758), .B(location[0]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[0])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i1_4_lut.init = 16'h0cac;
    LUT4 i30_4_lut (.A(n55), .B(n60_adj_63), .C(n49), .D(n50), .Z(n7238)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i30_4_lut.init = 16'hfffe;
    LUT4 i24_4_lut_adj_33 (.A(location_31__N_633[3]), .B(n48_adj_23), .C(location_31__N_633[0]), 
         .D(location_31__N_633[28]), .Z(n55)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i24_4_lut_adj_33.init = 16'hfffe;
    LUT4 mux_225_rep_3_i3_4_lut (.A(n1756), .B(location[2]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[2])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i3_4_lut.init = 16'h0cac;
    LUT4 i29_4_lut_adj_34 (.A(n39_adj_34), .B(n58_adj_64), .C(n52), .D(n40_adj_33), 
         .Z(n60_adj_63)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i29_4_lut_adj_34.init = 16'hfffe;
    LUT4 i18_4_lut_adj_35 (.A(location_31__N_633[11]), .B(location_31__N_633[25]), 
         .C(location_31__N_633[21]), .D(location_31__N_633[26]), .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i18_4_lut_adj_35.init = 16'hfffe;
    LUT4 mux_225_rep_3_i17_4_lut (.A(n1742), .B(location[16]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[16])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i17_4_lut.init = 16'h0cac;
    LUT4 i2_3_lut_rep_162_4_lut (.A(n8273), .B(n8281), .C(row_last[0]), 
         .D(row_last[1]), .Z(n8263)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_3_lut_rep_162_4_lut.init = 16'hff7f;
    LUT4 row_now_1__bdd_2_lut (.A(row_now[3]), .B(row_now_3__N_36[3]), .Z(n8087)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam row_now_1__bdd_2_lut.init = 16'h1111;
    LUT4 i19_4_lut_adj_36 (.A(location_31__N_633[9]), .B(location_31__N_633[17]), 
         .C(location_31__N_633[12]), .D(location_31__N_633[24]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i19_4_lut_adj_36.init = 16'hfffe;
    LUT4 i17_4_lut_adj_37 (.A(location_31__N_633[18]), .B(location_31__N_633[8]), 
         .C(location_31__N_633[2]), .D(location_31__N_633[16]), .Z(n48_adj_23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i17_4_lut_adj_37.init = 16'hfffe;
    LUT4 mux_225_rep_3_i12_4_lut (.A(n1747), .B(location[11]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[11])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i12_4_lut.init = 16'h0cac;
    PFUMX i5046 (.BLUT(n8115), .ALUT(n8114), .C0(row_c_2), .Z(n8116));
    LUT4 i8_2_lut_adj_38 (.A(location_31__N_633[1]), .B(location_31__N_633[4]), 
         .Z(n39_adj_34)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i8_2_lut_adj_38.init = 16'hbbbb;
    LUT4 i2_3_lut_4_lut_adj_39 (.A(n8273), .B(n8283), .C(row_last[3]), 
         .D(row_last[2]), .Z(n5413)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_39.init = 16'h0800;
    LUT4 i27_4_lut_adj_40 (.A(location_31__N_633[5]), .B(n54), .C(n44), 
         .D(location_31__N_633[6]), .Z(n58_adj_64)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i27_4_lut_adj_40.init = 16'hfffe;
    LUT4 i21_4_lut_adj_41 (.A(location_31__N_633[7]), .B(location_31__N_633[19]), 
         .C(location_31__N_633[14]), .D(location_31__N_633[22]), .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i21_4_lut_adj_41.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_4_lut_adj_42 (.A(n8263), .B(n251), .C(n8254), 
         .D(n8249), .Z(key_flag_1__N_253[1])) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(147[6:18])
    defparam i1_3_lut_4_lut_4_lut_adj_42.init = 16'hd000;
    LUT4 i2_3_lut_4_lut_adj_43 (.A(n8273), .B(n8283), .C(row_last[2]), 
         .D(row_last[3]), .Z(n15)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i2_3_lut_4_lut_adj_43.init = 16'hf7ff;
    PFUMX i52_adj_44 (.BLUT(n7735), .ALUT(n4776), .C0(row_c_2), .Z(n48_adj_4));
    LUT4 mux_225_rep_3_i26_4_lut (.A(n1733), .B(location[25]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[25])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i26_4_lut.init = 16'h0cac;
    LUT4 i9_2_lut_adj_45 (.A(location_31__N_633[27]), .B(location_31__N_633[30]), 
         .Z(n40_adj_33)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i9_2_lut_adj_45.init = 16'heeee;
    LUT4 i23_4_lut_adj_46 (.A(location_31__N_633[15]), .B(location_31__N_633[29]), 
         .C(location_31__N_633[23]), .D(location_31__N_633[13]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i23_4_lut_adj_46.init = 16'hfffe;
    LUT4 i3371_4_lut (.A(n7_adj_48), .B(matrix_key_code[4]), .C(n14_adj_49), 
         .D(matrix_key_code[3]), .Z(matrix_disp_right[7])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i3371_4_lut.init = 16'hfcee;
    LUT4 i3425_2_lut_4_lut (.A(n8283), .B(n8273), .C(n8281), .D(key_flag[1]), 
         .Z(n251)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i3425_2_lut_4_lut.init = 16'hdf00;
    LUT4 mux_225_rep_3_i22_4_lut (.A(n1737), .B(location[21]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[21])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i22_4_lut.init = 16'h0cac;
    PFUMX i52_adj_47 (.BLUT(n7222), .ALUT(n4775), .C0(row_c_2), .Z(n48));
    LUT4 mux_225_rep_3_i27_4_lut (.A(n1732), .B(location[26]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[26])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i27_4_lut.init = 16'h0cac;
    LUT4 i13_2_lut_adj_48 (.A(location_31__N_633[10]), .B(location_31__N_633[20]), 
         .Z(n44)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(324[10:21])
    defparam i13_2_lut_adj_48.init = 16'heeee;
    LUT4 i1514_3_lut (.A(matrix_key_code[2]), .B(matrix_key_code[0]), .C(matrix_key_code[1]), 
         .Z(n4239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i1514_3_lut.init = 16'hcaca;
    LUT4 i4993_2_lut_2_lut (.A(n8259), .B(sck_c_c_enable_57), .Z(n5098)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i4993_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_150_3_lut_4_lut (.A(row_now[3]), .B(n8282), .C(n8277), 
         .D(n8259), .Z(n8251)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i1_2_lut_rep_150_3_lut_4_lut.init = 16'hfffd;
    LUT4 mux_225_rep_3_i11_4_lut (.A(n1748), .B(location[10]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[10])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i11_4_lut.init = 16'h0cac;
    LUT4 mux_225_rep_3_i4_4_lut (.A(n1755), .B(location[3]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[3])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i4_4_lut.init = 16'h0cac;
    LUT4 mux_225_rep_3_i21_4_lut (.A(n1738), .B(location[20]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[20])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i21_4_lut.init = 16'h0cac;
    LUT4 mux_225_rep_3_i29_4_lut (.A(n1730), .B(location[28]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[28])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i29_4_lut.init = 16'h0cac;
    LUT4 i1795_2_lut (.A(matrix_key_code[1]), .B(matrix_key_code[3]), .Z(n4201)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(276[4] 295[13])
    defparam i1795_2_lut.init = 16'h6666;
    LUT4 i2_3_lut_4_lut_adj_49 (.A(row_now[3]), .B(n8282), .C(n8277), 
         .D(n6270), .Z(n7222)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i2_3_lut_4_lut_adj_49.init = 16'hfffd;
    LUT4 mux_225_rep_3_i16_4_lut (.A(n1743), .B(location[15]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[15])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i16_4_lut.init = 16'h0cac;
    LUT4 mux_225_rep_3_i30_4_lut (.A(n1729), .B(location[29]), .C(segment_switch_flag[0]), 
         .D(n8240), .Z(location_31__N_633[29])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(305[3] 318[16])
    defparam mux_225_rep_3_i30_4_lut.init = 16'h0cac;
    LUT4 i1_2_lut_rep_153_3_lut_4_lut (.A(row_now[3]), .B(n8282), .C(n4822), 
         .D(n8259), .Z(n8254)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/70735/desktop/lab1/impl1/source/lab1.vhd(132[6:19])
    defparam i1_2_lut_rep_153_3_lut_4_lut.init = 16'hfffd;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i5118 (.BLUT(n8286), .ALUT(n8287), .C0(matrix_key_code[0]), 
          .Z(n8288));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

