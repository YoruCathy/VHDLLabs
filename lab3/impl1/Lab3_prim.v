// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed Dec 09 21:40:56 2020
//
// Verilog Description of module Lab3
//

module Lab3 (clk, key_in, rst, column, row, seven_segment_disp_left, 
            seven_segment_disp_right, led, dig1, dig2);   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(4[8:12])
    input clk;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(5[9:12])
    input [2:0]key_in;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(6[4:10])
    input rst;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(7[4:7])
    input column;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(8[4:10])
    output [3:0]row;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(9[4:7])
    output [6:0]seven_segment_disp_left;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    output [6:0]seven_segment_disp_right;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    output [5:0]led;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    output dig1;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(13[4:8])
    output dig2;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(14[4:8])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(5[9:12])
    wire clk_1000ms /* synthesis SET_AS_NETWORK=clk_1000ms, is_clock=1 */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(20[10:20])
    wire current_state_1__N_80 /* synthesis is_clock=1, SET_AS_NETWORK=current_state_1__N_80 */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(18[10:23])
    wire led_5__N_40 /* synthesis is_clock=1, SET_AS_NETWORK=led_5__N_40 */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    wire seven_segment_disp_right_6__N_20 /* synthesis is_clock=1, SET_AS_NETWORK=seven_segment_disp_right_6__N_20 */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    wire column_c_derived_3 /* synthesis is_clock=1, SET_AS_NETWORK=column_c_derived_3 */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(8[4:10])
    
    wire GND_net, VCC_net, key_in_c_2, key_in_c_1, key_in_c_0, rst_c, 
        column_c, seven_segment_disp_left_c_6, seven_segment_disp_left_c_5, 
        n2524, seven_segment_disp_left_c_1, seven_segment_disp_right_c_6, 
        seven_segment_disp_right_c_5, seven_segment_disp_right_c_4, seven_segment_disp_right_c_3, 
        seven_segment_disp_right_c_2, seven_segment_disp_right_c_1, seven_segment_disp_right_c_0, 
        led_c_4, led_c_3, led_c_1, led_c_0;
    wire [1:0]current_state;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(18[10:23])
    wire [6:0]ones_place;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(21[9:19])
    wire [1:0]tens_place;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(22[9:19])
    wire [6:0]disp_number;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(23[9:20])
    wire [6:0]counter_seconds_main;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(24[9:29])
    wire [2:0]mode;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(25[9:13])
    wire [2:0]mode_last;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(26[9:18])
    wire [2:0]mode_2__N_152;
    wire [23:0]cnt_1s;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(50[11:17])
    
    wire cnt_1s_23__N_203, n118, n22, n2578, n8, n26, n112, n121, 
        n102, n2622, column_N_148, n117, n2091, n2577, n2, n125, 
        n2214, n2213, n2212, n2211, n26_adj_1, n2609, n2210, n2209, 
        n2208, n2207, clk_c_enable_3, n2111, n2608, n15, n2206, 
        n2205, n2204, n2223, n2222, n2221, n2203, n4, n2202, 
        n2201, current_state_1__N_47, current_state_1__N_46, n2200, 
        current_state_1__N_55, n2621, current_state_1__N_69, n2619, 
        current_state_1__N_68, led_5__N_26, n2220, n2219, led_5__N_37, 
        disp_number_6__N_101, disp_number_6__N_106, disp_number_6__N_105, 
        disp_number_6__N_111, n2607, disp_number_6__N_116, disp_number_6__N_121, 
        disp_number_6__N_126, disp_number_6__N_125, disp_number_6__N_131, 
        disp_number_6__N_130, n1540, n2218, n1915, n123, n120, n1195;
    wire [1:0]tens_place_1__N_98;
    
    wire n1586, n2_adj_2, n111, n1817, seven_segment_disp_right_6__N_1, 
        seven_segment_disp_right_6__N_14, seven_segment_disp_right_6__N_15, 
        seven_segment_disp_right_6__N_16, seven_segment_disp_right_6__N_17, 
        seven_segment_disp_right_6__N_18, seven_segment_disp_right_6__N_19, 
        n110, n105, n2617, n6, n109, n21, n24, n2616, n5, 
        n1815, n2606, n108, n2633, n2632, n116, n106, n2613, 
        n119, n30, n124, n27, n2596, n4_adj_3, n114, n113, n104, 
        n107, n115, n122, n103, n4_adj_4, n28, n2612, n2611, 
        n29, n2630, n27_adj_5, n22_adj_6, n18, n2043, n2591, n2692, 
        n2691, n2629, n17, n16, n2626, n2610, n2624, n2623, 
        n11, clk_c_enable_2, n2580, n14, n2579;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i825_2_lut_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(current_state[0]), 
         .Z(n1540)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[6:17])
    defparam i825_2_lut_4_lut.init = 16'hffdf;
    LUT4 ones_place_1__bdd_4_lut (.A(ones_place[1]), .B(disp_number[0]), 
         .C(ones_place[2]), .D(n2609), .Z(n2591)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;
    defparam ones_place_1__bdd_4_lut.init = 16'hff7e;
    FD1S3AX clk_1000ms_408 (.D(cnt_1s_23__N_203), .CK(clk_c), .Q(clk_1000ms));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(52[2] 65[10])
    defparam clk_1000ms_408.GSR = "ENABLED";
    LUT4 i1_4_lut_then_1_lut_4_lut (.A(disp_number[0]), .B(seven_segment_disp_right_6__N_20), 
         .C(n6), .D(ones_place[5]), .Z(n2691)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(170[3] 183[12])
    defparam i1_4_lut_then_1_lut_4_lut.init = 16'hc4cc;
    FD1S1A disp_number_6__I_34_i1 (.D(disp_number_6__N_130), .CK(led_5__N_40), 
           .Q(disp_number[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam disp_number_6__I_34_i1.GSR = "DISABLED";
    LUT4 i870_3_lut_3_lut (.A(current_state[0]), .B(n2621), .C(led_5__N_26), 
         .Z(led_5__N_37)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[3] 144[10])
    defparam i870_3_lut_3_lut.init = 16'h5858;
    LUT4 column_c_bdd_4_lut (.A(column_c), .B(key_in_c_1), .C(key_in_c_0), 
         .D(key_in_c_2), .Z(clk_c_enable_3)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam column_c_bdd_4_lut.init = 16'h7dd5;
    LUT4 i1787_4_lut_then_4_lut (.A(disp_number[1]), .B(n2692), .C(disp_number[4]), 
         .D(disp_number[2]), .Z(n2633)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1787_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_38 (.A(disp_number[6]), .B(disp_number[5]), .Z(n2692)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_38.init = 16'heeee;
    LUT4 current_state_1__I_12_4_lut (.A(current_state_1__N_55), .B(current_state_1__N_47), 
         .C(n2111), .D(n2617), .Z(current_state_1__N_46)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (B (C+(D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(112[3] 129[10])
    defparam current_state_1__I_12_4_lut.init = 16'hcce0;
    LUT4 i1192_2_lut_rep_26_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), 
         .D(current_state[0]), .Z(n2612)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[6:17])
    defparam i1192_2_lut_rep_26_4_lut.init = 16'h2000;
    LUT4 i12_4_lut (.A(cnt_1s[2]), .B(n24), .C(n18), .D(cnt_1s[4]), 
         .Z(n26_adj_1)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(57[7:42])
    defparam i12_4_lut.init = 16'hfffe;
    FD1S1A current_state_1__I_10_i1 (.D(current_state_1__N_68), .CK(current_state_1__N_80), 
           .Q(current_state[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam current_state_1__I_10_i1.GSR = "DISABLED";
    LUT4 i1792_2_lut_2_lut_3_lut_4_lut (.A(disp_number[6]), .B(disp_number[5]), 
         .C(tens_place_1__N_98[1]), .D(n2619), .Z(seven_segment_disp_left_c_6)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1792_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1328_1_lut_2_lut_3_lut (.A(disp_number[6]), .B(disp_number[5]), 
         .C(n2619), .Z(seven_segment_disp_left_c_1)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1328_1_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 i1759_2_lut_rep_36 (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(led_5__N_26), 
         .Z(n2622)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[6:17])
    defparam i1759_2_lut_rep_36.init = 16'h0020;
    LUT4 i7_4_lut (.A(cnt_1s[12]), .B(cnt_1s[17]), .C(cnt_1s[23]), .D(cnt_1s[9]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    FD1S1A led_5__I_0_i1 (.D(led_5__N_37), .CK(led_5__N_40), .Q(led_c_0));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam led_5__I_0_i1.GSR = "DISABLED";
    FD1S1A seven_segment_disp_right_6__I_0_i1 (.D(seven_segment_disp_right_6__N_19), 
           .CK(seven_segment_disp_right_6__N_20), .Q(seven_segment_disp_right_c_0));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(160[2] 184[14])
    defparam seven_segment_disp_right_6__I_0_i1.GSR = "DISABLED";
    FD1S1A mode_2__I_0_i1 (.D(mode[0]), .CK(column_c_derived_3), .Q(mode_last[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(69[2] 83[14])
    defparam mode_2__I_0_i1.GSR = "DISABLED";
    FD1P3JX mode_i1 (.D(mode_2__N_152[1]), .SP(clk_c_enable_3), .PD(column_N_148), 
            .CK(clk_c), .Q(mode[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(34[2] 46[9])
    defparam mode_i1.GSR = "DISABLED";
    LUT4 i1274_4_lut_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(led_5__N_26), 
         .Z(led_5__N_40)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A !(B (C)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[6:17])
    defparam i1274_4_lut_4_lut.init = 16'h4868;
    LUT4 counter_seconds_main_1__bdd_4_lut_1817 (.A(counter_seconds_main[1]), 
         .B(counter_seconds_main[3]), .C(n2617), .D(counter_seconds_main[4]), 
         .Z(n2580)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (D)+!B (C (D)))) */ ;
    defparam counter_seconds_main_1__bdd_4_lut_1817.init = 16'hdc08;
    LUT4 i1_2_lut_rep_22_4_lut (.A(n2610), .B(ones_place[3]), .C(ones_place[5]), 
         .D(disp_number[0]), .Z(n2608)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(172[8:17])
    defparam i1_2_lut_rep_22_4_lut.init = 16'hfeff;
    FD1P3JX mode_i2 (.D(key_in_c_2), .SP(clk_c_enable_2), .PD(column_N_148), 
            .CK(clk_c), .Q(mode[2]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(34[2] 46[9])
    defparam mode_i2.GSR = "DISABLED";
    LUT4 i1761_2_lut_4_lut (.A(n2691), .B(n8), .C(n2608), .D(n2591), 
         .Z(seven_segment_disp_right_6__N_1)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i1761_2_lut_4_lut.init = 16'ha800;
    LUT4 i8_4_lut (.A(cnt_1s[7]), .B(cnt_1s[0]), .C(cnt_1s[3]), .D(cnt_1s[14]), 
         .Z(n22_adj_6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(57[7:42])
    defparam i8_4_lut.init = 16'hfffe;
    CCU2D add_645_8 (.A0(disp_number[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2214), .S0(ones_place[6]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(150[3] 156[10])
    defparam add_645_8.INIT0 = 16'h5555;
    defparam add_645_8.INIT1 = 16'h0000;
    defparam add_645_8.INJECT1_0 = "NO";
    defparam add_645_8.INJECT1_1 = "NO";
    FD1S1I disp_number_6__I_34_i3 (.D(disp_number_6__N_121), .CK(led_5__N_40), 
           .CD(n2622), .Q(disp_number[2]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam disp_number_6__I_34_i3.GSR = "DISABLED";
    FD1S3IX counter_seconds_main_688_689__i1 (.D(n30), .CK(clk_1000ms), 
            .CD(n1817), .Q(counter_seconds_main[0])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689__i1.GSR = "ENABLED";
    CCU2D add_645_6 (.A0(disp_number[4]), .B0(n4_adj_3), .C0(n2613), .D0(tens_place_1__N_98[1]), 
          .A1(disp_number[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2213), .COUT(n2214), .S0(ones_place[4]), .S1(ones_place[5]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(150[3] 156[10])
    defparam add_645_6.INIT0 = 16'h5a55;
    defparam add_645_6.INIT1 = 16'h5555;
    defparam add_645_6.INJECT1_0 = "NO";
    defparam add_645_6.INJECT1_1 = "NO";
    LUT4 i844_3_lut_4_lut (.A(led_5__N_26), .B(n2621), .C(disp_number_6__N_131), 
         .D(current_state[0]), .Z(disp_number_6__N_130)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[3] 144[10])
    defparam i844_3_lut_4_lut.init = 16'hf4b0;
    CCU2D add_645_4 (.A0(disp_number[2]), .B0(n4_adj_3), .C0(n2613), .D0(tens_place_1__N_98[1]), 
          .A1(disp_number[3]), .B1(n4_adj_3), .C1(n2613), .D1(tens_place_1__N_98[1]), 
          .CIN(n2212), .COUT(n2213), .S0(ones_place[2]), .S1(ones_place[3]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(150[3] 156[10])
    defparam add_645_4.INIT0 = 16'h5a55;
    defparam add_645_4.INIT1 = 16'h5559;
    defparam add_645_4.INJECT1_0 = "NO";
    defparam add_645_4.INJECT1_1 = "NO";
    FD1S3IX cnt_1s_686__i4 (.D(n121), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[4])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i4.GSR = "ENABLED";
    FD1S1A disp_number_6__I_34_i2 (.D(disp_number_6__N_125), .CK(led_5__N_40), 
           .Q(disp_number[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam disp_number_6__I_34_i2.GSR = "DISABLED";
    LUT4 counter_seconds_main_1__bdd_3_lut (.A(counter_seconds_main[1]), .B(counter_seconds_main[0]), 
         .C(counter_seconds_main[4]), .Z(n2578)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam counter_seconds_main_1__bdd_3_lut.init = 16'h8080;
    FD1S1I disp_number_6__I_34_i4 (.D(disp_number_6__N_116), .CK(led_5__N_40), 
           .CD(n2622), .Q(disp_number[3]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam disp_number_6__I_34_i4.GSR = "DISABLED";
    FD1S1I disp_number_6__I_34_i5 (.D(disp_number_6__N_111), .CK(led_5__N_40), 
           .CD(n2622), .Q(disp_number[4]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam disp_number_6__I_34_i5.GSR = "DISABLED";
    FD1S1A disp_number_6__I_34_i6 (.D(disp_number_6__N_105), .CK(led_5__N_40), 
           .Q(disp_number[5]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam disp_number_6__I_34_i6.GSR = "DISABLED";
    FD1S1I disp_number_6__I_34_i7 (.D(disp_number_6__N_101), .CK(led_5__N_40), 
           .CD(n2622), .Q(disp_number[6]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam disp_number_6__I_34_i7.GSR = "DISABLED";
    FD1S1I current_state_1__I_10_i2 (.D(current_state_1__N_46), .CK(current_state_1__N_80), 
           .CD(n2621), .Q(led_5__N_26));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam current_state_1__I_10_i2.GSR = "DISABLED";
    FD1S1I led_5__I_0_i2 (.D(n1540), .CK(led_5__N_40), .CD(led_5__N_26), 
           .Q(led_c_1));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam led_5__I_0_i2.GSR = "DISABLED";
    FD1S1I led_5__I_0_i4 (.D(n1586), .CK(led_5__N_40), .CD(led_5__N_26), 
           .Q(led_c_3));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam led_5__I_0_i4.GSR = "DISABLED";
    CCU2D add_645_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(disp_number[1]), .B1(n4_adj_3), .C1(n2613), .D1(tens_place_1__N_98[1]), 
          .COUT(n2212), .S1(ones_place[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(150[3] 156[10])
    defparam add_645_2.INIT0 = 16'h0000;
    defparam add_645_2.INIT1 = 16'h5559;
    defparam add_645_2.INJECT1_0 = "NO";
    defparam add_645_2.INJECT1_1 = "NO";
    FD1S1J led_5__I_0_i5 (.D(n2612), .CK(led_5__N_40), .PD(led_5__N_26), 
           .Q(led_c_4));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(91[2] 145[14])
    defparam led_5__I_0_i5.GSR = "DISABLED";
    FD1S1A seven_segment_disp_right_6__I_0_i2 (.D(seven_segment_disp_right_6__N_18), 
           .CK(seven_segment_disp_right_6__N_20), .Q(seven_segment_disp_right_c_1));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(160[2] 184[14])
    defparam seven_segment_disp_right_6__I_0_i2.GSR = "DISABLED";
    FD1S1A seven_segment_disp_right_6__I_0_i3 (.D(seven_segment_disp_right_6__N_17), 
           .CK(seven_segment_disp_right_6__N_20), .Q(seven_segment_disp_right_c_2));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(160[2] 184[14])
    defparam seven_segment_disp_right_6__I_0_i3.GSR = "DISABLED";
    FD1S1A seven_segment_disp_right_6__I_0_i4 (.D(seven_segment_disp_right_6__N_16), 
           .CK(seven_segment_disp_right_6__N_20), .Q(seven_segment_disp_right_c_3));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(160[2] 184[14])
    defparam seven_segment_disp_right_6__I_0_i4.GSR = "DISABLED";
    FD1S1A seven_segment_disp_right_6__I_0_i5 (.D(seven_segment_disp_right_6__N_15), 
           .CK(seven_segment_disp_right_6__N_20), .Q(seven_segment_disp_right_c_4));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(160[2] 184[14])
    defparam seven_segment_disp_right_6__I_0_i5.GSR = "DISABLED";
    FD1S1A seven_segment_disp_right_6__I_0_i6 (.D(seven_segment_disp_right_6__N_14), 
           .CK(seven_segment_disp_right_6__N_20), .Q(seven_segment_disp_right_c_5));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(160[2] 184[14])
    defparam seven_segment_disp_right_6__I_0_i6.GSR = "DISABLED";
    FD1S1A seven_segment_disp_right_6__I_0_i7 (.D(seven_segment_disp_right_6__N_1), 
           .CK(seven_segment_disp_right_6__N_20), .Q(seven_segment_disp_right_c_6));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(160[2] 184[14])
    defparam seven_segment_disp_right_6__I_0_i7.GSR = "DISABLED";
    FD1S1A mode_2__I_0_i2 (.D(mode[1]), .CK(column_c_derived_3), .Q(mode_last[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(69[2] 83[14])
    defparam mode_2__I_0_i2.GSR = "DISABLED";
    LUT4 i1784_3_lut_rep_35 (.A(mode[1]), .B(mode[2]), .C(mode[0]), .Z(n2621)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[6:17])
    defparam i1784_3_lut_rep_35.init = 16'h2020;
    FD1S1A mode_2__I_0_i3 (.D(mode[2]), .CK(column_c_derived_3), .Q(mode_last[2]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(69[2] 83[14])
    defparam mode_2__I_0_i3.GSR = "DISABLED";
    FD1S3IX counter_seconds_main_688_689__i5 (.D(n26), .CK(clk_1000ms), 
            .CD(n1817), .Q(counter_seconds_main[4])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689__i5.GSR = "ENABLED";
    OB row_pad_1 (.I(GND_net), .O(row[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(9[4:7])
    CCU2D cnt_1s_686_add_4_25 (.A0(cnt_1s[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2211), .S0(n102));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_25.INIT1 = 16'h0000;
    defparam cnt_1s_686_add_4_25.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_25.INJECT1_1 = "NO";
    LUT4 i1790_2_lut (.A(key_in_c_1), .B(key_in_c_2), .Z(mode_2__N_152[0])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1790_2_lut.init = 16'h7777;
    LUT4 i1357_3_lut_4_lut (.A(ones_place[2]), .B(n2607), .C(n2606), .D(ones_place[1]), 
         .Z(seven_segment_disp_right_6__N_19)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(175[8:17])
    defparam i1357_3_lut_4_lut.init = 16'hf0d0;
    OB seven_segment_disp_left_pad_6 (.I(seven_segment_disp_left_c_6), .O(seven_segment_disp_left[6]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    OB row_pad_0 (.I(GND_net), .O(row[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(9[4:7])
    LUT4 i1787_4_lut_else_4_lut_3_lut (.A(disp_number[6]), .B(disp_number[5]), 
         .C(disp_number[4]), .Z(n2632)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1787_4_lut_else_4_lut_3_lut.init = 16'h0101;
    OB row_pad_2 (.I(GND_net), .O(row[2]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(9[4:7])
    CCU2D cnt_1s_686_add_4_23 (.A0(cnt_1s[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2210), .COUT(n2211), .S0(n104), .S1(n103));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_23.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_23.INJECT1_1 = "NO";
    LUT4 i1264_3_lut_4_lut (.A(disp_number[0]), .B(n2609), .C(n2611), 
         .D(n2691), .Z(seven_segment_disp_right_6__N_17)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(173[9:18])
    defparam i1264_3_lut_4_lut.init = 16'hfe00;
    LUT4 i662_2_lut (.A(current_state[0]), .B(led_5__N_26), .Z(n1195)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(18[10:23])
    defparam i662_2_lut.init = 16'h6666;
    CCU2D cnt_1s_686_add_4_21 (.A0(cnt_1s[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2209), .COUT(n2210), .S0(n106), .S1(n105));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_21.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_21.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(mode[0]), .B(mode[1]), .Z(n4)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(112[6:17])
    defparam i1_2_lut.init = 16'hbbbb;
    CCU2D cnt_1s_686_add_4_19 (.A0(cnt_1s[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2208), .COUT(n2209), .S0(n108), .S1(n107));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_19.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_1s_686_add_4_17 (.A0(cnt_1s[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2207), .COUT(n2208), .S0(n110), .S1(n109));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_17.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_17.INJECT1_1 = "NO";
    LUT4 i798_1_lut (.A(current_state[0]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(103[4] 109[13])
    defparam i798_1_lut.init = 16'h5555;
    CCU2D cnt_1s_686_add_4_15 (.A0(cnt_1s[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2206), .COUT(n2207), .S0(n112), .S1(n111));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_15.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_1s_686_add_4_13 (.A0(cnt_1s[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2205), .COUT(n2206), .S0(n114), .S1(n113));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_13.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_13.INJECT1_1 = "NO";
    FD1S3IX counter_seconds_main_688_689__i4 (.D(n27_adj_5), .CK(clk_1000ms), 
            .CD(n1817), .Q(counter_seconds_main[3])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689__i4.GSR = "ENABLED";
    FD1S3IX counter_seconds_main_688_689__i3 (.D(n28), .CK(clk_1000ms), 
            .CD(n1817), .Q(counter_seconds_main[2])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689__i3.GSR = "ENABLED";
    FD1P3IX mode_i0 (.D(mode_2__N_152[0]), .SP(clk_c_enable_3), .CD(column_N_148), 
            .CK(clk_c), .Q(mode[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(34[2] 46[9])
    defparam mode_i0.GSR = "DISABLED";
    OB row_pad_3 (.I(GND_net), .O(row[3]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(9[4:7])
    LUT4 i1776_4_lut (.A(disp_number[4]), .B(n2613), .C(tens_place_1__N_98[1]), 
         .D(n4_adj_4), .Z(tens_place[0])) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+!(D))))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(162[3] 169[12])
    defparam i1776_4_lut.init = 16'h3031;
    LUT4 ones_place_6__I_0_442_i8_2_lut (.A(ones_place[1]), .B(ones_place[2]), 
         .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(171[9:18])
    defparam ones_place_6__I_0_442_i8_2_lut.init = 16'heeee;
    FD1S3IX counter_seconds_main_688_689__i2 (.D(n29), .CK(clk_1000ms), 
            .CD(n1817), .Q(counter_seconds_main[1])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689__i2.GSR = "ENABLED";
    CCU2D cnt_1s_686_add_4_11 (.A0(cnt_1s[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2204), .COUT(n2205), .S0(n116), .S1(n115));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_11.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_11.INJECT1_1 = "NO";
    LUT4 i842_3_lut_4_lut (.A(led_5__N_26), .B(n2621), .C(disp_number_6__N_126), 
         .D(current_state[0]), .Z(disp_number_6__N_125)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[3] 144[10])
    defparam i842_3_lut_4_lut.init = 16'hf4b0;
    FD1S3IX cnt_1s_686__i3 (.D(n122), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[3])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i3.GSR = "ENABLED";
    LUT4 i10_4_lut (.A(cnt_1s[6]), .B(cnt_1s[10]), .C(cnt_1s[5]), .D(cnt_1s[19]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(57[7:42])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 counter_seconds_main_1__bdd_4_lut_1801 (.A(counter_seconds_main[1]), 
         .B(counter_seconds_main[0]), .C(n2617), .D(counter_seconds_main[4]), 
         .Z(n2577)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;
    defparam counter_seconds_main_1__bdd_4_lut_1801.init = 16'hff81;
    LUT4 i834_3_lut_4_lut (.A(led_5__N_26), .B(n2621), .C(disp_number_6__N_106), 
         .D(current_state[0]), .Z(disp_number_6__N_105)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[3] 144[10])
    defparam i834_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_4_lut (.A(mode_last[0]), .B(mode_last[2]), .C(mode[0]), .D(mode[2]), 
         .Z(n5)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h7bde;
    CCU2D cnt_1s_686_add_4_9 (.A0(cnt_1s[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2203), .COUT(n2204), .S0(n118), .S1(n117));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_9.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_1s_686_add_4_7 (.A0(cnt_1s[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2202), .COUT(n2203), .S0(n120), .S1(n119));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_7.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_1s_686_add_4_5 (.A0(cnt_1s[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2201), .COUT(n2202), .S0(n122), .S1(n121));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_5.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_1s_686_add_4_3 (.A0(cnt_1s[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2200), .COUT(n2201), .S0(n124), .S1(n123));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_1s_686_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_1s_686_add_4_3.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt_1s_686__i2 (.D(n123), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[2])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i2.GSR = "ENABLED";
    LUT4 mode_last_2__I_0_i2_2_lut (.A(mode_last[1]), .B(mode[1]), .Z(n2_adj_2)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(71[17:32])
    defparam mode_last_2__I_0_i2_2_lut.init = 16'h6666;
    CCU2D cnt_1s_686_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_1s[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2200), .S1(n125));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686_add_4_1.INIT0 = 16'hF000;
    defparam cnt_1s_686_add_4_1.INIT1 = 16'h0555;
    defparam cnt_1s_686_add_4_1.INJECT1_0 = "NO";
    defparam cnt_1s_686_add_4_1.INJECT1_1 = "NO";
    CCU2D counter_seconds_main_688_689_add_4_3 (.A0(counter_seconds_main[1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(counter_seconds_main[2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2222), .COUT(n2223), 
          .S0(n29), .S1(n28));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_seconds_main_688_689_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_seconds_main_688_689_add_4_3.INJECT1_0 = "NO";
    defparam counter_seconds_main_688_689_add_4_3.INJECT1_1 = "NO";
    CCU2D add_641_5 (.A0(counter_seconds_main[2]), .B0(n2617), .C0(n1195), 
          .D0(led_5__N_26), .A1(counter_seconds_main[3]), .B1(n2617), 
          .C1(led_5__N_26), .D1(current_state[0]), .CIN(n2219), .COUT(n2220), 
          .S0(disp_number_6__N_121), .S1(disp_number_6__N_116));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(122[4] 128[13])
    defparam add_641_5.INIT0 = 16'ha569;
    defparam add_641_5.INIT1 = 16'ha65a;
    defparam add_641_5.INJECT1_0 = "NO";
    defparam add_641_5.INJECT1_1 = "NO";
    CCU2D add_641_9 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2221), 
          .S0(disp_number_6__N_101));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(122[4] 128[13])
    defparam add_641_9.INIT0 = 16'h0fff;
    defparam add_641_9.INIT1 = 16'h0000;
    defparam add_641_9.INJECT1_0 = "NO";
    defparam add_641_9.INJECT1_1 = "NO";
    CCU2D add_641_7 (.A0(counter_seconds_main[4]), .B0(led_5__N_26), .C0(n2617), 
          .D0(current_state[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2220), .COUT(n2221), .S0(disp_number_6__N_111), 
          .S1(disp_number_6__N_106));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(122[4] 128[13])
    defparam add_641_7.INIT0 = 16'ha999;
    defparam add_641_7.INIT1 = 16'h0fff;
    defparam add_641_7.INJECT1_0 = "NO";
    defparam add_641_7.INJECT1_1 = "NO";
    CCU2D counter_seconds_main_688_689_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(counter_seconds_main[0]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2222), .S1(n30));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689_add_4_1.INIT0 = 16'hF000;
    defparam counter_seconds_main_688_689_add_4_1.INIT1 = 16'h0555;
    defparam counter_seconds_main_688_689_add_4_1.INJECT1_0 = "NO";
    defparam counter_seconds_main_688_689_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_21_4_lut (.A(n2610), .B(ones_place[3]), .C(ones_place[5]), 
         .D(disp_number[0]), .Z(n2607)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(172[8:17])
    defparam i1_2_lut_rep_21_4_lut.init = 16'hfffe;
    FD1S3IX cnt_1s_686__i1 (.D(n124), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[1])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i1.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i23 (.D(n102), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[23])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i23.GSR = "ENABLED";
    LUT4 i4_2_lut (.A(cnt_1s[15]), .B(cnt_1s[1]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(57[7:42])
    defparam i4_2_lut.init = 16'heeee;
    CCU2D add_641_3 (.A0(counter_seconds_main[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter_seconds_main[1]), .B1(led_5__N_26), 
          .C1(current_state[0]), .D1(n2617), .CIN(n2218), .COUT(n2219), 
          .S0(disp_number_6__N_131), .S1(disp_number_6__N_126));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(122[4] 128[13])
    defparam add_641_3.INIT0 = 16'haaaa;
    defparam add_641_3.INIT1 = 16'haa9a;
    defparam add_641_3.INJECT1_0 = "NO";
    defparam add_641_3.INJECT1_1 = "NO";
    CCU2D add_641_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[2]), .B1(n4), .C1(n1195), .D1(n2), .COUT(n2218));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(122[4] 128[13])
    defparam add_641_1.INIT0 = 16'hF000;
    defparam add_641_1.INIT1 = 16'h02df;
    defparam add_641_1.INJECT1_0 = "NO";
    defparam add_641_1.INJECT1_1 = "NO";
    LUT4 i1777_4_lut (.A(cnt_1s[13]), .B(n26_adj_1), .C(n22_adj_6), .D(cnt_1s[22]), 
         .Z(n2524)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(57[7:42])
    defparam i1777_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_rep_29 (.A(column_c), .B(n5), .C(n2_adj_2), .D(rst_c), 
         .Z(column_c_derived_3)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_4_lut_rep_29.init = 16'hfdff;
    FD1S3IX cnt_1s_686__i0 (.D(n125), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[0])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i0.GSR = "ENABLED";
    LUT4 i1778_4_lut (.A(n17), .B(n2524), .C(n15), .D(n16), .Z(cnt_1s_23__N_203)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(57[7:42])
    defparam i1778_4_lut.init = 16'h8000;
    LUT4 i1767_3_lut_4_lut (.A(ones_place[5]), .B(n2610), .C(disp_number[0]), 
         .D(n21), .Z(seven_segment_disp_right_6__N_15)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1767_3_lut_4_lut.init = 16'h0001;
    LUT4 i1094_1_lut_4_lut (.A(column_c), .B(n5), .C(n2_adj_2), .D(rst_c), 
         .Z(n1815)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1094_1_lut_4_lut.init = 16'h0200;
    PFUMX i1799 (.BLUT(n2578), .ALUT(n2577), .C0(counter_seconds_main[3]), 
          .Z(n2579));
    LUT4 i1770_2_lut_2_lut (.A(n2619), .B(tens_place_1__N_98[1]), .Z(tens_place[1])) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(162[3] 169[12])
    defparam i1770_2_lut_2_lut.init = 16'h1111;
    LUT4 i2_4_lut (.A(counter_seconds_main[3]), .B(counter_seconds_main[0]), 
         .C(counter_seconds_main[2]), .D(counter_seconds_main[1]), .Z(n2091)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1187_2_lut_rep_30 (.A(counter_seconds_main[2]), .B(counter_seconds_main[1]), 
         .Z(n2616)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1187_2_lut_rep_30.init = 16'heeee;
    GSR GSR_INST (.GSR(n1815));
    LUT4 i1386_3_lut_4_lut (.A(counter_seconds_main[2]), .B(counter_seconds_main[1]), 
         .C(counter_seconds_main[4]), .D(n2091), .Z(n2111)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1386_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1321_2_lut_3_lut (.A(counter_seconds_main[2]), .B(counter_seconds_main[1]), 
         .C(counter_seconds_main[3]), .Z(n2043)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1321_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1315_3_lut_4_lut (.A(counter_seconds_main[2]), .B(counter_seconds_main[1]), 
         .C(counter_seconds_main[4]), .D(counter_seconds_main[3]), .Z(current_state_1__N_47)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1315_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1279_3_lut_rep_20_4_lut (.A(disp_number[0]), .B(n2609), .C(n8), 
         .D(n2691), .Z(n2606)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(177[9:18])
    defparam i1279_3_lut_rep_20_4_lut.init = 16'hfd00;
    LUT4 column_I_0_1_lut (.A(column_c), .Z(column_N_148)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(71[36:46])
    defparam column_I_0_1_lut.init = 16'h5555;
    LUT4 i5_2_lut (.A(cnt_1s[18]), .B(cnt_1s[21]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    LUT4 i1764_4_lut_4_lut (.A(n2610), .B(n27), .C(ones_place[3]), .D(n22), 
         .Z(seven_segment_disp_right_6__N_16)) /* synthesis lut_function=(!(A+!(B (C (D))+!B (D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(170[3] 183[12])
    defparam i1764_4_lut_4_lut.init = 16'h5100;
    FD1S3IX cnt_1s_686__i22 (.D(n103), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[22])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i22.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i21 (.D(n104), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[21])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i21.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i20 (.D(n105), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[20])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i20.GSR = "ENABLED";
    LUT4 i1069_2_lut (.A(key_in_c_1), .B(key_in_c_2), .Z(mode_2__N_152[1])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1069_2_lut.init = 16'hbbbb;
    FD1S3IX cnt_1s_686__i19 (.D(n106), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[19])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i19.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i18 (.D(n107), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[18])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i18.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i17 (.D(n108), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[17])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i17.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i16 (.D(n109), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[16])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i16.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i15 (.D(n110), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[15])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i15.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i14 (.D(n111), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[14])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i14.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i13 (.D(n112), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[13])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i13.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i12 (.D(n113), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[12])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i12.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i11 (.D(n114), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[11])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i11.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i10 (.D(n115), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[10])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i10.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i9 (.D(n116), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[9])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i9.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i8 (.D(n117), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[8])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i8.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i7 (.D(n118), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[7])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i7.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i6 (.D(n119), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[6])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i6.GSR = "ENABLED";
    FD1S3IX cnt_1s_686__i5 (.D(n120), .CK(clk_c), .CD(cnt_1s_23__N_203), 
            .Q(cnt_1s[5])) /* synthesis syn_use_carry_chain=1 */ ;   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_1s_686__i5.GSR = "ENABLED";
    OB seven_segment_disp_left_pad_5 (.I(seven_segment_disp_left_c_5), .O(seven_segment_disp_left[5]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    OB seven_segment_disp_left_pad_4 (.I(tens_place[0]), .O(seven_segment_disp_left[4]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    OB seven_segment_disp_left_pad_3 (.I(tens_place[0]), .O(seven_segment_disp_left[3]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    OB seven_segment_disp_left_pad_2 (.I(tens_place[1]), .O(seven_segment_disp_left[2]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    OB seven_segment_disp_left_pad_1 (.I(seven_segment_disp_left_c_1), .O(seven_segment_disp_left[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    OB seven_segment_disp_left_pad_0 (.I(tens_place[0]), .O(seven_segment_disp_left[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(10[4:27])
    OB seven_segment_disp_right_pad_6 (.I(seven_segment_disp_right_c_6), .O(seven_segment_disp_right[6]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    OB seven_segment_disp_right_pad_5 (.I(seven_segment_disp_right_c_5), .O(seven_segment_disp_right[5]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    OB seven_segment_disp_right_pad_4 (.I(seven_segment_disp_right_c_4), .O(seven_segment_disp_right[4]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    OB seven_segment_disp_right_pad_3 (.I(seven_segment_disp_right_c_3), .O(seven_segment_disp_right[3]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    OB seven_segment_disp_right_pad_2 (.I(seven_segment_disp_right_c_2), .O(seven_segment_disp_right[2]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    OB seven_segment_disp_right_pad_1 (.I(seven_segment_disp_right_c_1), .O(seven_segment_disp_right[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    OB seven_segment_disp_right_pad_0 (.I(seven_segment_disp_right_c_0), .O(seven_segment_disp_right[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(11[4:28])
    OB led_pad_5 (.I(VCC_net), .O(led[5]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    OB led_pad_2 (.I(VCC_net), .O(led[2]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(12[4:7])
    OB dig1_pad (.I(GND_net), .O(dig1));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(13[4:8])
    OB dig2_pad (.I(GND_net), .O(dig2));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(14[4:8])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(5[9:12])
    IB key_in_pad_2 (.I(key_in[2]), .O(key_in_c_2));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(6[4:10])
    IB key_in_pad_1 (.I(key_in[1]), .O(key_in_c_1));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(6[4:10])
    IB key_in_pad_0 (.I(key_in[0]), .O(key_in_c_0));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(6[4:10])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(7[4:7])
    IB column_pad (.I(column), .O(column_c));   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(8[4:10])
    LUT4 i1_4_lut_then_3_lut (.A(ones_place[5]), .B(ones_place[1]), .C(ones_place[2]), 
         .Z(n2624)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(170[3] 183[12])
    defparam i1_4_lut_then_3_lut.init = 16'h0101;
    CCU2D counter_seconds_main_688_689_add_4_5 (.A0(counter_seconds_main[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(counter_seconds_main[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2223), .S0(n27_adj_5), 
          .S1(n26));   // E:/Diamond/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_seconds_main_688_689_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_seconds_main_688_689_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_seconds_main_688_689_add_4_5.INJECT1_0 = "NO";
    defparam counter_seconds_main_688_689_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_else_3_lut (.A(ones_place[5]), .B(ones_place[1]), .C(disp_number[0]), 
         .D(ones_place[2]), .Z(n2623)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(170[3] 183[12])
    defparam i1_4_lut_else_3_lut.init = 16'h55d5;
    LUT4 i1_2_lut_rep_25 (.A(ones_place[2]), .B(ones_place[1]), .Z(n2611)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(173[9:18])
    defparam i1_2_lut_rep_25.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_24 (.A(ones_place[4]), .B(ones_place[6]), .Z(n2610)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(172[8:17])
    defparam i1_2_lut_rep_24.init = 16'heeee;
    LUT4 i874_2_lut_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(current_state[0]), 
         .Z(n1586)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (D))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[6:17])
    defparam i874_2_lut_4_lut.init = 16'h20df;
    LUT4 i1371_3_lut_4_lut (.A(counter_seconds_main[2]), .B(counter_seconds_main[1]), 
         .C(n1915), .D(counter_seconds_main[0]), .Z(n1817)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam i1371_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1194_2_lut (.A(counter_seconds_main[3]), .B(counter_seconds_main[4]), 
         .Z(n1915)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1194_2_lut.init = 16'h8888;
    LUT4 n2485_bdd_4_lut (.A(ones_place[2]), .B(ones_place[1]), .C(ones_place[3]), 
         .D(disp_number[0]), .Z(n2596)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B+!(C+!(D))))) */ ;
    defparam n2485_bdd_4_lut.init = 16'h121b;
    LUT4 i6_4_lut (.A(cnt_1s[16]), .B(cnt_1s[20]), .C(cnt_1s[11]), .D(cnt_1s[8]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_rep_31 (.A(mode[1]), .B(mode[2]), .C(mode[0]), .Z(n2617)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(112[6:17])
    defparam i2_3_lut_rep_31.init = 16'hf7f7;
    LUT4 n2580_bdd_3_lut (.A(n2580), .B(n2579), .C(counter_seconds_main[2]), 
         .Z(current_state_1__N_69)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2580_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_3_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .Z(n11)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(112[6:17])
    defparam i1_4_lut_3_lut.init = 16'hb7b7;
    LUT4 i1_4_lut_else_1_lut (.A(n2691), .B(disp_number[0]), .C(ones_place[1]), 
         .D(ones_place[2]), .Z(n2626)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))) */ ;
    defparam i1_4_lut_else_1_lut.init = 16'h82aa;
    LUT4 i2_2_lut_3_lut (.A(ones_place[2]), .B(ones_place[1]), .C(ones_place[3]), 
         .Z(n6)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(173[9:18])
    defparam i2_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i815_3_lut_4_lut_then_4_lut (.A(counter_seconds_main[4]), .B(counter_seconds_main[3]), 
         .C(counter_seconds_main[0]), .D(counter_seconds_main[1]), .Z(n2630)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(117[14:66])
    defparam i815_3_lut_4_lut_then_4_lut.init = 16'h6662;
    LUT4 i1753_4_lut (.A(n2621), .B(counter_seconds_main[4]), .C(n11), 
         .D(n2043), .Z(current_state_1__N_80)) /* synthesis lut_function=(A+!(B (C+(D))+!B (C))) */ ;
    defparam i1753_4_lut.init = 16'habaf;
    LUT4 i1_2_lut_4_lut (.A(disp_number[1]), .B(disp_number[3]), .C(disp_number[2]), 
         .D(disp_number[4]), .Z(n4_adj_3)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hffc8;
    VLO i1 (.Z(GND_net));
    LUT4 i1_2_lut_rep_27_3_lut (.A(disp_number[6]), .B(disp_number[5]), 
         .C(n2619), .Z(n2613)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_27_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_1 (.A(disp_number[2]), .B(n2692), .C(disp_number[4]), 
         .D(disp_number[3]), .Z(tens_place_1__N_98[1])) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_1.init = 16'hfcec;
    LUT4 i1_2_lut_4_lut_adj_2 (.A(disp_number[1]), .B(disp_number[3]), .C(disp_number[2]), 
         .D(n2692), .Z(n4_adj_4)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_2.init = 16'hffc8;
    LUT4 i1_2_lut_3_lut (.A(ones_place[4]), .B(ones_place[6]), .C(n22), 
         .Z(seven_segment_disp_right_6__N_20)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(172[8:17])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_rep_23_4_lut (.A(ones_place[4]), .B(ones_place[6]), .C(ones_place[5]), 
         .D(ones_place[3]), .Z(n2609)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(172[8:17])
    defparam i2_3_lut_rep_23_4_lut.init = 16'hfffe;
    LUT4 current_state_1__I_22_4_lut (.A(current_state_1__N_69), .B(led_5__N_26), 
         .C(n2621), .D(n14), .Z(current_state_1__N_68)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(131[3] 144[10])
    defparam current_state_1__I_22_4_lut.init = 16'h0a3a;
    LUT4 i1_4_lut_adj_3 (.A(counter_seconds_main[0]), .B(counter_seconds_main[4]), 
         .C(counter_seconds_main[3]), .D(n2616), .Z(n14)) /* synthesis lut_function=(!(A+(B (C (D))))) */ ;
    defparam i1_4_lut_adj_3.init = 16'h1555;
    LUT4 i44_4_lut (.A(disp_number[0]), .B(ones_place[2]), .C(ones_place[5]), 
         .D(ones_place[1]), .Z(n27)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A ((C+(D))+!B))) */ ;
    defparam i44_4_lut.init = 16'h2806;
    LUT4 i815_3_lut_4_lut_else_4_lut (.A(counter_seconds_main[4]), .B(counter_seconds_main[3]), 
         .C(counter_seconds_main[1]), .Z(n2629)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(117[14:66])
    defparam i815_3_lut_4_lut_else_4_lut.init = 16'h2a2a;
    LUT4 i27_3_lut (.A(ones_place[2]), .B(ones_place[3]), .C(ones_place[1]), 
         .Z(n21)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27_3_lut.init = 16'hcaca;
    LUT4 n2596_bdd_2_lut_3_lut_4_lut (.A(ones_place[4]), .B(ones_place[6]), 
         .C(n2596), .D(ones_place[5]), .Z(seven_segment_disp_right_6__N_14)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(172[8:17])
    defparam n2596_bdd_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 key_in_c_0_bdd_4_lut (.A(key_in_c_0), .B(key_in_c_2), .C(key_in_c_1), 
         .D(column_c), .Z(clk_c_enable_2)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(D)))) */ ;
    defparam key_in_c_0_bdd_4_lut.init = 16'h68ff;
    PFUMX i1813 (.BLUT(n2632), .ALUT(n2633), .C0(disp_number[3]), .Z(seven_segment_disp_left_c_5));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i1811 (.BLUT(n2629), .ALUT(n2630), .C0(counter_seconds_main[2]), 
          .Z(current_state_1__N_55));
    PFUMX i1809 (.BLUT(n2626), .ALUT(n2691), .C0(n2609), .Z(seven_segment_disp_right_6__N_18));
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i1807 (.BLUT(n2623), .ALUT(n2624), .C0(ones_place[3]), .Z(n22));
    LUT4 i3_4_lut_rep_33 (.A(disp_number[1]), .B(disp_number[4]), .C(disp_number[3]), 
         .D(disp_number[2]), .Z(n2619)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/70735/desktop/lab3/impl1/source/lab3.vhd(162[3] 169[12])
    defparam i3_4_lut_rep_33.init = 16'h8000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

