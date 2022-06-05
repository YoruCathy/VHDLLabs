// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Wed Nov 18 09:00:48 2020
//
// Verilog Description of module traffic
//

module traffic (clk, sw, rst, column, row, a_to_g1, a_to_g2, led, 
            dig1, dig2);   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(4[8:15])
    input clk;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(5[8:11])
    input [2:0]sw;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(6[3:5])
    input rst;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(7[3:6])
    input column;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(8[4:10])
    output [3:0]row;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(9[4:7])
    output [6:0]a_to_g1;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    output [6:0]a_to_g2;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    output [5:0]led;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    output dig1;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(13[9:13])
    output dig2;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(14[9:13])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(5[8:11])
    wire clk_1 /* synthesis SET_AS_NETWORK=clk_1, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(20[9:14])
    wire current_state_1__N_80 /* synthesis is_clock=1, SET_AS_NETWORK=current_state_1__N_80 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(18[9:22])
    wire led_5__N_40 /* synthesis is_clock=1, SET_AS_NETWORK=led_5__N_40 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    wire a_to_g2_6__N_20 /* synthesis is_clock=1, SET_AS_NETWORK=a_to_g2_6__N_20 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    wire column_c_derived_3 /* synthesis is_clock=1, SET_AS_NETWORK=column_c_derived_3 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(8[4:10])
    
    wire GND_net, VCC_net, sw_c_2, sw_c_1, sw_c_0, rst_c, column_c, 
        a_to_g1_c_6, a_to_g1_c_5, n2817, a_to_g1_c_1, a_to_g2_c_6, 
        a_to_g2_c_5, a_to_g2_c_4, a_to_g2_c_3, a_to_g2_c_2, a_to_g2_c_1, 
        a_to_g2_c_0, n2926, led_c_4, led_c_3, led_c_1, led_c_0;
    wire [1:0]current_state;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(18[9:22])
    wire [6:0]single;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(21[10:16])
    wire [1:0]ten;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(22[10:13])
    wire [6:0]num;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(23[11:14])
    wire [6:0]counter;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(24[10:17])
    wire [2:0]mode;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(25[10:14])
    wire [2:0]mode_last;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(27[10:19])
    wire [2:0]mode_2__N_152;
    wire [23:0]cnt_24;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(51[11:17])
    
    wire cnt_24_23__N_203, n2378, n2917, n35, n37, n39, column_N_148, 
        n2916, clk_c_enable_2, n2915, n2, current_state_1__N_74, n2914, 
        n1603, n107, n108, n109, n110, n111, n2360, n112, n113, 
        n114, n115, n116, n117, n118, n2925, n2873, n2913, n119, 
        n120, n2912, n121, n122, n123, n2911, n1537, n2910, 
        current_state_1__N_46, n2943, n2942, n2941, n2940, current_state_1__N_68, 
        led_5__N_26, led_5__N_37, num_6__N_101, num_6__N_106, num_6__N_105, 
        num_6__N_111, num_6__N_116, num_6__N_121, num_6__N_126, num_6__N_125, 
        num_6__N_131, num_6__N_130, n2757, n2939, n1192, n1791, 
        clk_c_enable_3;
    wire [1:0]ten_1__N_98;
    
    wire n5, a_to_g2_6__N_1, a_to_g2_6__N_14, a_to_g2_6__N_15, a_to_g2_6__N_16, 
        a_to_g2_6__N_17, a_to_g2_6__N_18, a_to_g2_6__N_19, n2936, n4, 
        n2517, n2516, n2515, n2514, n2513, n2935, n2512, n18, 
        n2736, n2511, n2510, n2509, n125, n2508, n2507, n2506, 
        n40, n2523, n2398, n2522, n2521, n25, n24, n38, n2524, 
        n34, n2934, n23, n36, n22, n2502, n2501, n5_adj_1, n2500, 
        n2520, n2519, n124, n1724, n2518, n106, n105, n104, 
        n103, n102, n8, n2872, n2924, n2760, n2538, n2208, n2932, 
        n2931, n4_adj_2, n12, n1788, n2929, n2922, n2948, n1503, 
        n2947, n2921, n2920, n2919, n2303, n2891, n8_adj_3, n2945, 
        n2923, n2944, n2928, n3010, n2927, n2819;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(n2208), .B(n1724), .C(n2919), .D(single[1]), .Z(a_to_g2_6__N_18)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    FD1S1A num_6__I_34_i1 (.D(num_6__N_130), .CK(led_5__N_40), .Q(num[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam num_6__I_34_i1.GSR = "DISABLED";
    FD1S1A current_state_1__I_10_i1 (.D(current_state_1__N_68), .CK(current_state_1__N_80), 
           .Q(current_state[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam current_state_1__I_10_i1.GSR = "DISABLED";
    FD1S1A led_5__I_0_i1 (.D(led_5__N_37), .CK(led_5__N_40), .Q(led_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam led_5__I_0_i1.GSR = "DISABLED";
    FD1S1A a_to_g2_6__I_0_i1 (.D(a_to_g2_6__N_19), .CK(a_to_g2_6__N_20), 
           .Q(a_to_g2_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(162[2] 186[14])
    defparam a_to_g2_6__I_0_i1.GSR = "DISABLED";
    FD1S1A mode_2__I_0_i1 (.D(mode[0]), .CK(column_c_derived_3), .Q(mode_last[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(70[2] 84[14])
    defparam mode_2__I_0_i1.GSR = "DISABLED";
    LUT4 i2059_2_lut_2_lut_3_lut_then_4_lut (.A(num[4]), .B(num[1]), .C(num[2]), 
         .D(n3010), .Z(n2945)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2059_2_lut_2_lut_3_lut_then_4_lut.init = 16'h0001;
    FD1P3JX mode_i1 (.D(mode_2__N_152[1]), .SP(clk_c_enable_3), .PD(column_N_148), 
            .CK(clk_c), .Q(mode[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(35[2] 47[9])
    defparam mode_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_37 (.A(num[6]), .B(num[5]), .Z(n3010)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_37.init = 16'heeee;
    FD1S1A num_6__I_34_i2 (.D(num_6__N_125), .CK(led_5__N_40), .Q(num[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam num_6__I_34_i2.GSR = "DISABLED";
    FD1P3JX mode_i2 (.D(sw_c_2), .SP(clk_c_enable_2), .PD(column_N_148), 
            .CK(clk_c), .Q(mode[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(35[2] 47[9])
    defparam mode_i2.GSR = "DISABLED";
    LUT4 i2059_2_lut_2_lut_3_lut_else_4_lut_3_lut (.A(num[6]), .B(num[5]), 
         .C(num[4]), .Z(n2944)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i2059_2_lut_2_lut_3_lut_else_4_lut_3_lut.init = 16'h0101;
    FD1S3IX counter_685__i6 (.D(n34), .CK(clk_1), .CD(n1791), .Q(counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685__i6.GSR = "ENABLED";
    LUT4 i1625_2_lut_3_lut_4_lut_then_3_lut (.A(n2921), .B(single[1]), .C(n2208), 
         .Z(n2948)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(179[9:18])
    defparam i1625_2_lut_3_lut_4_lut_then_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_rep_23 (.A(column_c), .B(n5), .C(n2), .D(rst_c), .Z(column_c_derived_3)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i1_4_lut_rep_23.init = 16'hfdff;
    LUT4 i1059_1_lut_4_lut (.A(column_c), .B(n5), .C(n2), .D(rst_c), 
         .Z(n1788)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1059_1_lut_4_lut.init = 16'h0200;
    FD1S1I num_6__I_34_i4 (.D(num_6__N_116), .CK(led_5__N_40), .CD(n2943), 
           .Q(num[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam num_6__I_34_i4.GSR = "DISABLED";
    FD1S1I num_6__I_34_i5 (.D(num_6__N_111), .CK(led_5__N_40), .CD(n2943), 
           .Q(num[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam num_6__I_34_i5.GSR = "DISABLED";
    FD1S1A num_6__I_34_i6 (.D(num_6__N_105), .CK(led_5__N_40), .Q(num[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam num_6__I_34_i6.GSR = "DISABLED";
    FD1S1I num_6__I_34_i7 (.D(num_6__N_101), .CK(led_5__N_40), .CD(n2943), 
           .Q(num[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam num_6__I_34_i7.GSR = "DISABLED";
    FD1S1I current_state_1__I_10_i2 (.D(current_state_1__N_46), .CK(current_state_1__N_80), 
           .CD(n2942), .Q(led_5__N_26));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam current_state_1__I_10_i2.GSR = "DISABLED";
    FD1S1I led_5__I_0_i2 (.D(n1537), .CK(led_5__N_40), .CD(led_5__N_26), 
           .Q(led_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam led_5__I_0_i2.GSR = "DISABLED";
    FD1S1I led_5__I_0_i4 (.D(n1603), .CK(led_5__N_40), .CD(led_5__N_26), 
           .Q(led_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam led_5__I_0_i4.GSR = "DISABLED";
    FD1S1J led_5__I_0_i5 (.D(n2934), .CK(led_5__N_40), .PD(led_5__N_26), 
           .Q(led_c_4));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam led_5__I_0_i5.GSR = "DISABLED";
    FD1S1A a_to_g2_6__I_0_i2 (.D(a_to_g2_6__N_18), .CK(a_to_g2_6__N_20), 
           .Q(a_to_g2_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(162[2] 186[14])
    defparam a_to_g2_6__I_0_i2.GSR = "DISABLED";
    FD1S1A a_to_g2_6__I_0_i3 (.D(a_to_g2_6__N_17), .CK(a_to_g2_6__N_20), 
           .Q(a_to_g2_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(162[2] 186[14])
    defparam a_to_g2_6__I_0_i3.GSR = "DISABLED";
    FD1S1A a_to_g2_6__I_0_i4 (.D(a_to_g2_6__N_16), .CK(a_to_g2_6__N_20), 
           .Q(a_to_g2_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(162[2] 186[14])
    defparam a_to_g2_6__I_0_i4.GSR = "DISABLED";
    FD1S1A a_to_g2_6__I_0_i5 (.D(a_to_g2_6__N_15), .CK(a_to_g2_6__N_20), 
           .Q(a_to_g2_c_4));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(162[2] 186[14])
    defparam a_to_g2_6__I_0_i5.GSR = "DISABLED";
    FD1S1A a_to_g2_6__I_0_i6 (.D(a_to_g2_6__N_14), .CK(a_to_g2_6__N_20), 
           .Q(a_to_g2_c_5));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(162[2] 186[14])
    defparam a_to_g2_6__I_0_i6.GSR = "DISABLED";
    FD1S1A a_to_g2_6__I_0_i7 (.D(a_to_g2_6__N_1), .CK(a_to_g2_6__N_20), 
           .Q(a_to_g2_c_6));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(162[2] 186[14])
    defparam a_to_g2_6__I_0_i7.GSR = "DISABLED";
    FD1S1A mode_2__I_0_i2 (.D(mode[1]), .CK(column_c_derived_3), .Q(mode_last[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(70[2] 84[14])
    defparam mode_2__I_0_i2.GSR = "DISABLED";
    FD1S1A mode_2__I_0_i3 (.D(mode[2]), .CK(column_c_derived_3), .Q(mode_last[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(70[2] 84[14])
    defparam mode_2__I_0_i3.GSR = "DISABLED";
    LUT4 i1586_3_lut_rep_24 (.A(n2736), .B(counter[4]), .C(counter[3]), 
         .Z(n2931)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1586_3_lut_rep_24.init = 16'hc8c8;
    FD1S1I num_6__I_34_i3 (.D(num_6__N_121), .CK(led_5__N_40), .CD(n2943), 
           .Q(num[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(92[2] 146[14])
    defparam num_6__I_34_i3.GSR = "DISABLED";
    FD1S3IX counter_685__i5 (.D(n35), .CK(clk_1), .CD(n1791), .Q(counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685__i5.GSR = "ENABLED";
    FD1S3IX counter_685__i4 (.D(n36), .CK(clk_1), .CD(n1791), .Q(counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685__i4.GSR = "ENABLED";
    LUT4 i1625_2_lut_3_lut_4_lut_else_3_lut (.A(n2923), .B(num[0]), .C(single[1]), 
         .D(n2208), .Z(n2947)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(179[9:18])
    defparam i1625_2_lut_3_lut_4_lut_else_3_lut.init = 16'hfb00;
    FD1S3IX counter_685__i3 (.D(n37), .CK(clk_1), .CD(n1791), .Q(counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685__i3.GSR = "ENABLED";
    FD1S3IX counter_685__i2 (.D(n38), .CK(clk_1), .CD(n1791), .Q(counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685__i2.GSR = "ENABLED";
    OB row_pad_2 (.I(GND_net), .O(row[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(9[4:7])
    LUT4 i1_2_lut_3_lut_4_lut (.A(single[3]), .B(n2924), .C(single[2]), 
         .D(num[0]), .Z(n1724)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(180[8:17])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i1658_3_lut_4_lut (.A(counter[4]), .B(n2941), .C(n2939), .D(n2360), 
         .Z(n2398)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(116[26:37])
    defparam i1658_3_lut_4_lut.init = 16'hfeee;
    LUT4 i653_2_lut (.A(current_state[0]), .B(led_5__N_26), .Z(n1192)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(18[9:22])
    defparam i653_2_lut.init = 16'h6666;
    FD1S3IX counter_685__i1 (.D(n39), .CK(clk_1), .CD(n1791), .Q(counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685__i1.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(mode[0]), .B(mode[1]), .Z(n4_adj_2)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(113[6:17])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i774_1_lut (.A(current_state[0]), .Z(n1503)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(104[4] 110[13])
    defparam i774_1_lut.init = 16'h5555;
    LUT4 i1564_3_lut_rep_18_4_lut (.A(counter[4]), .B(n2941), .C(n2736), 
         .D(counter[3]), .Z(n2925)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(116[26:37])
    defparam i1564_3_lut_rep_18_4_lut.init = 16'hfeee;
    LUT4 i2070_2_lut_3_lut_3_lut_4_lut (.A(single[2]), .B(n2921), .C(single[1]), 
         .D(n2920), .Z(a_to_g2_6__N_16)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(179[9:18])
    defparam i2070_2_lut_3_lut_3_lut_4_lut.init = 16'h00fd;
    FD1S3IX cnt_24_683__i0 (.D(n125), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i0.GSR = "ENABLED";
    LUT4 i827_3_lut_4_lut (.A(led_5__N_26), .B(n2942), .C(num_6__N_131), 
         .D(current_state[0]), .Z(num_6__N_130)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[3] 145[10])
    defparam i827_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i825_3_lut_4_lut (.A(led_5__N_26), .B(n2942), .C(num_6__N_126), 
         .D(current_state[0]), .Z(num_6__N_125)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[3] 145[10])
    defparam i825_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i817_3_lut_4_lut (.A(led_5__N_26), .B(n2942), .C(num_6__N_106), 
         .D(current_state[0]), .Z(num_6__N_105)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[3] 145[10])
    defparam i817_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_adj_1 (.A(num[0]), .B(single[3]), .Z(n2760)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_1.init = 16'hdddd;
    OB row_pad_3 (.I(GND_net), .O(row[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(9[4:7])
    FD1P3IX mode_i0 (.D(mode_2__N_152[0]), .SP(clk_c_enable_3), .CD(column_N_148), 
            .CK(clk_c), .Q(mode[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(35[2] 47[9])
    defparam mode_i0.GSR = "DISABLED";
    FD1S3IX counter_685__i0 (.D(n40), .CK(clk_1), .CD(n1791), .Q(counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_2 (.A(single[2]), .B(single[1]), .Z(n2757)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(180[8:17])
    defparam i1_2_lut_adj_2.init = 16'hbbbb;
    LUT4 i871_3_lut_3_lut (.A(n2942), .B(current_state[0]), .C(led_5__N_26), 
         .Z(led_5__N_37)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[3] 145[10])
    defparam i871_3_lut_3_lut.init = 16'h3838;
    LUT4 n2917_bdd_3_lut_4_lut (.A(led_5__N_26), .B(n2942), .C(n2941), 
         .D(n2917), .Z(current_state_1__N_68)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n2917_bdd_3_lut_4_lut.init = 16'h7f70;
    IB column_pad (.I(column), .O(column_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(8[4:10])
    FD1S3IX cnt_24_683__i23 (.D(n102), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[23])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i23.GSR = "ENABLED";
    PFUMX i2108 (.BLUT(n2916), .ALUT(n2911), .C0(n2942), .Z(n2917));
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(7[3:6])
    IB sw_pad_0 (.I(sw[0]), .O(sw_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(6[3:5])
    IB sw_pad_1 (.I(sw[1]), .O(sw_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(6[3:5])
    IB sw_pad_2 (.I(sw[2]), .O(sw_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(6[3:5])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(5[8:11])
    LUT4 sw_c_0_bdd_4_lut (.A(sw_c_0), .B(sw_c_2), .C(sw_c_1), .D(column_c), 
         .Z(clk_c_enable_2)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(D)))) */ ;
    defparam sw_c_0_bdd_4_lut.init = 16'h68ff;
    OB dig2_pad (.I(GND_net), .O(dig2));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(14[9:13])
    OB dig1_pad (.I(GND_net), .O(dig1));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(13[9:13])
    OB led_pad_0 (.I(led_c_0), .O(led[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    OB led_pad_2 (.I(VCC_net), .O(led[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    OB led_pad_3 (.I(led_c_3), .O(led[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    OB led_pad_4 (.I(led_c_4), .O(led[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    OB led_pad_5 (.I(VCC_net), .O(led[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(12[3:6])
    OB a_to_g2_pad_0 (.I(a_to_g2_c_0), .O(a_to_g2[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    OB a_to_g2_pad_1 (.I(a_to_g2_c_1), .O(a_to_g2[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    OB a_to_g2_pad_2 (.I(a_to_g2_c_2), .O(a_to_g2[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    LUT4 i2018_3_lut_rep_17 (.A(single[4]), .B(single[5]), .C(single[6]), 
         .Z(n2924)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2018_3_lut_rep_17.init = 16'hfefe;
    OB a_to_g2_pad_3 (.I(a_to_g2_c_3), .O(a_to_g2[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    OB a_to_g2_pad_4 (.I(a_to_g2_c_4), .O(a_to_g2[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    FD1S3AX clk_1_411 (.D(cnt_24_23__N_203), .CK(clk_c), .Q(clk_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(53[2] 66[10])
    defparam clk_1_411.GSR = "ENABLED";
    LUT4 single_1__bdd_4_lut_rep_13 (.A(single[1]), .B(single[2]), .C(n2208), 
         .D(n2922), .Z(n2920)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D))))) */ ;
    defparam single_1__bdd_4_lut_rep_13.init = 16'h0f9f;
    LUT4 i2078_2_lut_2_lut (.A(n2936), .B(ten_1__N_98[1]), .Z(ten[1])) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(164[3] 171[12])
    defparam i2078_2_lut_2_lut.init = 16'h1111;
    OB a_to_g2_pad_5 (.I(a_to_g2_c_5), .O(a_to_g2[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    OB a_to_g2_pad_6 (.I(a_to_g2_c_6), .O(a_to_g2[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(11[3:10])
    OB row_pad_1 (.I(GND_net), .O(row[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(9[4:7])
    LUT4 i2075_2_lut (.A(sw_c_1), .B(sw_c_2), .Z(mode_2__N_152[0])) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2075_2_lut.init = 16'h7777;
    OB a_to_g1_pad_0 (.I(ten[0]), .O(a_to_g1[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    OB a_to_g1_pad_1 (.I(a_to_g1_c_1), .O(a_to_g1[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    LUT4 i2_3_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .Z(n5_adj_1)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(113[6:17])
    defparam i2_3_lut.init = 16'hf7f7;
    OB a_to_g1_pad_2 (.I(ten[1]), .O(a_to_g1[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    OB a_to_g1_pad_3 (.I(ten[0]), .O(a_to_g1[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    GSR GSR_INST (.GSR(n1788));
    LUT4 i3_4_lut_rep_29 (.A(num[1]), .B(num[4]), .C(num[3]), .D(num[2]), 
         .Z(n2936)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(164[3] 171[12])
    defparam i3_4_lut_rep_29.init = 16'h8000;
    LUT4 i2038_2_lut_rep_28_4_lut (.A(num[1]), .B(num[3]), .C(num[2]), 
         .D(num[4]), .Z(n2935)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i2038_2_lut_rep_28_4_lut.init = 16'hffc8;
    LUT4 n2891_bdd_2_lut_4_lut (.A(single[4]), .B(single[5]), .C(single[6]), 
         .D(n2891), .Z(a_to_g2_6__N_14)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n2891_bdd_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_4_lut (.A(num[1]), .B(num[3]), .C(num[2]), .D(n3010), 
         .Z(n4)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hffc8;
    OB a_to_g1_pad_4 (.I(ten[0]), .O(a_to_g1[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    LUT4 i1485_2_lut (.A(single[2]), .B(single[1]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1485_2_lut.init = 16'heeee;
    OB a_to_g1_pad_5 (.I(a_to_g1_c_5), .O(a_to_g1[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    OB a_to_g1_pad_6 (.I(a_to_g1_c_6), .O(a_to_g1[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(10[3:10])
    OB row_pad_0 (.I(GND_net), .O(row[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(9[4:7])
    LUT4 i1_2_lut_rep_16_4_lut (.A(single[4]), .B(single[5]), .C(single[6]), 
         .D(single[3]), .Z(n2923)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_16_4_lut.init = 16'hfffe;
    CCU2D cnt_24_683_add_4_13 (.A0(cnt_24[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2515), .COUT(n2516), .S0(n114), .S1(n113));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_13.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_24_683_add_4_11 (.A0(cnt_24[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2514), .COUT(n2515), .S0(n116), .S1(n115));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_11.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_24_683_add_4_9 (.A0(cnt_24[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2513), .COUT(n2514), .S0(n118), .S1(n117));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_9.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_9.INJECT1_1 = "NO";
    LUT4 led_5__N_26_bdd_4_lut (.A(counter[0]), .B(counter[3]), .C(counter[4]), 
         .D(n2939), .Z(n2910)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam led_5__N_26_bdd_4_lut.init = 16'heaaa;
    CCU2D cnt_24_683_add_4_7 (.A0(cnt_24[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2512), .COUT(n2513), .S0(n120), .S1(n119));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_7.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cnt_24_683__i22 (.D(n103), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[22])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i22.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i21 (.D(n104), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[21])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i21.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i20 (.D(n105), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[20])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i20.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i19 (.D(n106), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[19])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i19.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i18 (.D(n107), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[18])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i18.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i17 (.D(n108), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[17])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i17.GSR = "ENABLED";
    CCU2D cnt_24_683_add_4_5 (.A0(cnt_24[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2511), .COUT(n2512), .S0(n122), .S1(n121));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_5.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_24_683_add_4_3 (.A0(cnt_24[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2510), .COUT(n2511), .S0(n124), .S1(n123));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_3.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_3.INJECT1_1 = "NO";
    LUT4 n2910_bdd_2_lut (.A(n2910), .B(led_5__N_26), .Z(n2911)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n2910_bdd_2_lut.init = 16'h2222;
    CCU2D cnt_24_683_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2510), .S1(n125));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_1.INIT0 = 16'hF000;
    defparam cnt_24_683_add_4_1.INIT1 = 16'h0555;
    defparam cnt_24_683_add_4_1.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_24_683__i16 (.D(n109), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[16])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i16.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i15 (.D(n110), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[15])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i15.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i14 (.D(n111), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[14])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i14.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i13 (.D(n112), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[13])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i13.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i12 (.D(n113), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[12])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i12.GSR = "ENABLED";
    CCU2D add_638_9 (.A0(counter[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2509), 
          .S0(num_6__N_101));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(123[4] 129[13])
    defparam add_638_9.INIT0 = 16'ha555;
    defparam add_638_9.INIT1 = 16'h0000;
    defparam add_638_9.INJECT1_0 = "NO";
    defparam add_638_9.INJECT1_1 = "NO";
    CCU2D add_638_7 (.A0(counter[4]), .B0(led_5__N_26), .C0(n5_adj_1), 
          .D0(current_state[0]), .A1(counter[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2508), .COUT(n2509), .S0(num_6__N_111), 
          .S1(num_6__N_106));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(123[4] 129[13])
    defparam add_638_7.INIT0 = 16'ha999;
    defparam add_638_7.INIT1 = 16'ha555;
    defparam add_638_7.INJECT1_0 = "NO";
    defparam add_638_7.INJECT1_1 = "NO";
    PFUMX i2105 (.BLUT(n2913), .ALUT(n2912), .C0(counter[3]), .Z(n2914));
    LUT4 i1_4_lut_adj_3 (.A(n5_adj_1), .B(mode[0]), .C(n2927), .D(n8_adj_3), 
         .Z(current_state_1__N_80)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[3] 145[10])
    defparam i1_4_lut_adj_3.init = 16'hcd05;
    FD1S3IX cnt_24_683__i11 (.D(n114), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[11])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i11.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i10 (.D(n115), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[10])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i10.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i9 (.D(n116), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[9])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i9.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i8 (.D(n117), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[8])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i8.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i7 (.D(n118), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[7])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i7.GSR = "ENABLED";
    CCU2D add_638_5 (.A0(counter[2]), .B0(n5_adj_1), .C0(n1192), .D0(led_5__N_26), 
          .A1(counter[3]), .B1(n5_adj_1), .C1(led_5__N_26), .D1(current_state[0]), 
          .CIN(n2507), .COUT(n2508), .S0(num_6__N_121), .S1(num_6__N_116));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(123[4] 129[13])
    defparam add_638_5.INIT0 = 16'ha569;
    defparam add_638_5.INIT1 = 16'ha65a;
    defparam add_638_5.INJECT1_0 = "NO";
    defparam add_638_5.INJECT1_1 = "NO";
    CCU2D add_638_3 (.A0(counter[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(counter[1]), .B1(led_5__N_26), .C1(current_state[0]), .D1(n5_adj_1), 
          .CIN(n2506), .COUT(n2507), .S0(num_6__N_131), .S1(num_6__N_126));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(123[4] 129[13])
    defparam add_638_3.INIT0 = 16'haaaa;
    defparam add_638_3.INIT1 = 16'haa9a;
    defparam add_638_3.INJECT1_0 = "NO";
    defparam add_638_3.INJECT1_1 = "NO";
    CCU2D add_638_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[2]), .B1(n4_adj_2), .C1(n1192), .D1(n1503), .COUT(n2506));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(123[4] 129[13])
    defparam add_638_1.INIT0 = 16'hF000;
    defparam add_638_1.INIT1 = 16'h02df;
    defparam add_638_1.INJECT1_0 = "NO";
    defparam add_638_1.INJECT1_1 = "NO";
    LUT4 counter_1__bdd_4_lut_2107 (.A(counter[1]), .B(counter[0]), .C(counter[4]), 
         .D(n5_adj_1), .Z(n2912)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam counter_1__bdd_4_lut_2107.init = 16'hf8f1;
    CCU2D add_642_8 (.A0(num[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2502), 
          .S0(single[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(152[3] 158[10])
    defparam add_642_8.INIT0 = 16'h5555;
    defparam add_642_8.INIT1 = 16'h0000;
    defparam add_642_8.INJECT1_0 = "NO";
    defparam add_642_8.INJECT1_1 = "NO";
    FD1S3IX cnt_24_683__i6 (.D(n119), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[6])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i6.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i5 (.D(n120), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[5])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i5.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i4 (.D(n121), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[4])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i4.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i3 (.D(n122), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[3])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i3.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i2 (.D(n123), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[2])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i2.GSR = "ENABLED";
    FD1S3IX cnt_24_683__i1 (.D(n124), .CK(clk_c), .CD(cnt_24_23__N_203), 
            .Q(cnt_24[1])) /* synthesis syn_use_carry_chain=1 */ ;   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683__i1.GSR = "ENABLED";
    CCU2D add_642_6 (.A0(num[4]), .B0(n2935), .C0(n2928), .D0(ten_1__N_98[1]), 
          .A1(num[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2501), 
          .COUT(n2502), .S0(single[4]), .S1(single[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(152[3] 158[10])
    defparam add_642_6.INIT0 = 16'h5a55;
    defparam add_642_6.INIT1 = 16'h5555;
    defparam add_642_6.INJECT1_0 = "NO";
    defparam add_642_6.INJECT1_1 = "NO";
    CCU2D add_642_4 (.A0(num[2]), .B0(n2935), .C0(n2928), .D0(ten_1__N_98[1]), 
          .A1(num[3]), .B1(n2935), .C1(n2928), .D1(ten_1__N_98[1]), 
          .CIN(n2500), .COUT(n2501), .S0(single[2]), .S1(single[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(152[3] 158[10])
    defparam add_642_4.INIT0 = 16'h5a55;
    defparam add_642_4.INIT1 = 16'h5559;
    defparam add_642_4.INJECT1_0 = "NO";
    defparam add_642_4.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_4 (.A(n2760), .B(a_to_g2_6__N_20), .C(single[5]), 
         .D(n2757), .Z(n2208)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(172[3] 185[12])
    defparam i1_4_lut_adj_4.init = 16'hcc8c;
    CCU2D add_642_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(num[1]), .B1(n2935), .C1(n2928), .D1(ten_1__N_98[1]), 
          .COUT(n2500), .S1(single[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(152[3] 158[10])
    defparam add_642_2.INIT0 = 16'h0000;
    defparam add_642_2.INIT1 = 16'h5559;
    defparam add_642_2.INJECT1_0 = "NO";
    defparam add_642_2.INJECT1_1 = "NO";
    CCU2D counter_685_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2522), .COUT(n2523), .S0(n39), .S1(n38));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685_add_4_3.INIT0 = 16'hfaaa;
    defparam counter_685_add_4_3.INIT1 = 16'hfaaa;
    defparam counter_685_add_4_3.INJECT1_0 = "NO";
    defparam counter_685_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_24_683_add_4_21 (.A0(cnt_24[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2519), .COUT(n2520), .S0(n106), .S1(n105));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_21.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_24_683_add_4_25 (.A0(cnt_24[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2521), .S0(n102));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_25.INIT1 = 16'h0000;
    defparam cnt_24_683_add_4_25.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_24_683_add_4_23 (.A0(cnt_24[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2520), .COUT(n2521), .S0(n104), .S1(n103));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_23.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_23.INJECT1_1 = "NO";
    CCU2D counter_685_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2522), .S1(n40));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685_add_4_1.INIT0 = 16'hF000;
    defparam counter_685_add_4_1.INIT1 = 16'h0555;
    defparam counter_685_add_4_1.INJECT1_0 = "NO";
    defparam counter_685_add_4_1.INJECT1_1 = "NO";
    LUT4 column_c_bdd_4_lut (.A(column_c), .B(sw_c_1), .C(sw_c_0), .D(sw_c_2), 
         .Z(clk_c_enable_3)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam column_c_bdd_4_lut.init = 16'h7dd5;
    LUT4 i1545_1_lut_2_lut_3_lut (.A(num[6]), .B(num[5]), .C(n2936), .Z(a_to_g1_c_1)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1545_1_lut_2_lut_3_lut.init = 16'h0101;
    LUT4 counter_1__bdd_3_lut (.A(counter[1]), .B(counter[0]), .C(counter[4]), 
         .Z(n2913)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam counter_1__bdd_3_lut.init = 16'h8080;
    LUT4 i2090_2_lut_2_lut_3_lut_4_lut (.A(num[6]), .B(num[5]), .C(ten_1__N_98[1]), 
         .D(n2936), .Z(a_to_g1_c_6)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2090_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    CCU2D cnt_24_683_add_4_19 (.A0(cnt_24[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2518), .COUT(n2519), .S0(n108), .S1(n107));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_19.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_21_3_lut (.A(num[6]), .B(num[5]), .C(n2936), .Z(n2928)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_21_3_lut.init = 16'hfefe;
    CCU2D cnt_24_683_add_4_17 (.A0(cnt_24[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2517), .COUT(n2518), .S0(n110), .S1(n109));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_17.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_24_683_add_4_15 (.A0(cnt_24[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_24[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2516), .COUT(n2517), .S0(n112), .S1(n111));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam cnt_24_683_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_24_683_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_24_683_add_4_15.INJECT1_0 = "NO";
    defparam cnt_24_683_add_4_15.INJECT1_1 = "NO";
    LUT4 n2398_bdd_2_lut_4_lut (.A(counter[3]), .B(n2932), .C(n2736), 
         .D(current_state_1__N_74), .Z(n2872)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam n2398_bdd_2_lut_4_lut.init = 16'hec00;
    LUT4 i1479_2_lut_rep_32 (.A(counter[2]), .B(counter[1]), .Z(n2939)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1479_2_lut_rep_32.init = 16'heeee;
    LUT4 i2088_3_lut (.A(n2924), .B(num[0]), .C(n18), .Z(a_to_g2_6__N_15)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i2088_3_lut.init = 16'h0101;
    LUT4 i24_3_lut (.A(single[2]), .B(single[3]), .C(single[1]), .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i24_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_20_3_lut_4_lut (.A(counter[2]), .B(counter[1]), .C(n2941), 
         .D(n2940), .Z(n2927)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_20_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1503_3_lut_4_lut (.A(num[0]), .B(n2923), .C(n2757), .D(n2208), 
         .Z(a_to_g2_6__N_17)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(175[9:18])
    defparam i1503_3_lut_4_lut.init = 16'hfe00;
    LUT4 column_I_0_1_lut (.A(column_c), .Z(column_N_148)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(72[36:46])
    defparam column_I_0_1_lut.init = 16'h5555;
    LUT4 i1034_2_lut (.A(sw_c_1), .B(sw_c_2), .Z(mode_2__N_152[1])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1034_2_lut.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_33 (.A(counter[3]), .B(counter[4]), .Z(n2940)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_33.init = 16'h8888;
    LUT4 i1_2_lut_rep_22_3_lut_4_lut (.A(counter[3]), .B(counter[4]), .C(counter[1]), 
         .D(counter[2]), .Z(n2929)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_2_lut_rep_22_3_lut_4_lut.init = 16'h8880;
    LUT4 counter_1__bdd_4_lut_2119 (.A(counter[1]), .B(counter[3]), .C(counter[4]), 
         .D(n5_adj_1), .Z(n2915)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C)+!B (C (D)))) */ ;
    defparam counter_1__bdd_4_lut_2119.init = 16'hd0c8;
    LUT4 i840_2_lut_rep_34 (.A(counter[5]), .B(counter[6]), .Z(n2941)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(78[8:26])
    defparam i840_2_lut_rep_34.init = 16'heeee;
    LUT4 i1656_2_lut_rep_19_3_lut_4_lut (.A(counter[5]), .B(counter[6]), 
         .C(n2360), .D(counter[4]), .Z(n2926)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(78[8:26])
    defparam i1656_2_lut_rep_19_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(counter[3]), .B(counter[0]), .C(counter[2]), .D(counter[1]), 
         .Z(n2360)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 i1_4_lut_adj_5 (.A(single[4]), .B(n2538), .C(single[6]), .D(n2303), 
         .Z(a_to_g2_6__N_20)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(172[3] 185[12])
    defparam i1_4_lut_adj_5.init = 16'h0405;
    LUT4 i2072_4_lut (.A(n2923), .B(n2920), .C(num[0]), .D(n8), .Z(a_to_g2_6__N_1)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(172[3] 185[12])
    defparam i2072_4_lut.init = 16'h3332;
    LUT4 i1_2_lut_rep_25_3_lut (.A(counter[5]), .B(counter[6]), .C(counter[4]), 
         .Z(n2932)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(78[8:26])
    defparam i1_2_lut_rep_25_3_lut.init = 16'hfefe;
    LUT4 i2083_3_lut_rep_35 (.A(mode[1]), .B(mode[2]), .C(mode[0]), .Z(n2942)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[6:17])
    defparam i2083_3_lut_rep_35.init = 16'h2020;
    LUT4 i804_2_lut_rep_27_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), 
         .D(current_state[0]), .Z(n2934)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[6:17])
    defparam i804_2_lut_rep_27_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_adj_6 (.A(mode_last[0]), .B(mode_last[2]), .C(mode[0]), 
         .D(mode[2]), .Z(n5)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_6.init = 16'h7bde;
    LUT4 i3_4_lut (.A(single[3]), .B(single[1]), .C(single[2]), .D(num[0]), 
         .Z(n2538)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(172[3] 185[12])
    defparam i3_4_lut.init = 16'h0400;
    LUT4 i877_2_lut_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(current_state[0]), 
         .Z(n1603)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (D))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[6:17])
    defparam i877_2_lut_4_lut.init = 16'h20df;
    CCU2D counter_685_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2524), .S0(n35), .S1(n34));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685_add_4_7.INIT0 = 16'hfaaa;
    defparam counter_685_add_4_7.INIT1 = 16'hfaaa;
    defparam counter_685_add_4_7.INJECT1_0 = "NO";
    defparam counter_685_add_4_7.INJECT1_1 = "NO";
    LUT4 i808_2_lut_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(current_state[0]), 
         .Z(n1537)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[6:17])
    defparam i808_2_lut_4_lut.init = 16'hffdf;
    CCU2D counter_685_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2523), .COUT(n2524), .S0(n37), .S1(n36));   // C:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam counter_685_add_4_5.INIT0 = 16'hfaaa;
    defparam counter_685_add_4_5.INIT1 = 16'hfaaa;
    defparam counter_685_add_4_5.INJECT1_0 = "NO";
    defparam counter_685_add_4_5.INJECT1_1 = "NO";
    LUT4 n2915_bdd_3_lut (.A(n2915), .B(n2914), .C(counter[2]), .Z(n2916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2915_bdd_3_lut.init = 16'hcaca;
    LUT4 i2065_2_lut_rep_36 (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(led_5__N_26), 
         .Z(n2943)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[6:17])
    defparam i2065_2_lut_rep_36.init = 16'h0020;
    LUT4 n2791_bdd_4_lut (.A(single[1]), .B(single[3]), .C(single[2]), 
         .D(num[0]), .Z(n2891)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C)+!B !(C+!(D))))) */ ;
    defparam n2791_bdd_4_lut.init = 16'h1435;
    LUT4 i2085_4_lut (.A(n2817), .B(cnt_24[21]), .C(n2819), .D(n12), 
         .Z(cnt_24_23__N_203)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(58[7:42])
    defparam i2085_4_lut.init = 16'h0080;
    LUT4 i1540_4_lut_4_lut (.A(mode[1]), .B(mode[2]), .C(mode[0]), .D(led_5__N_26), 
         .Z(led_5__N_40)) /* synthesis lut_function=(!(A (B (C)+!B ((D)+!C))+!A !(B (C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(132[6:17])
    defparam i1540_4_lut_4_lut.init = 16'h4868;
    LUT4 i1572_4_lut (.A(single[5]), .B(single[3]), .C(single[2]), .D(single[1]), 
         .Z(n2303)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam i1572_4_lut.init = 16'heeea;
    LUT4 i2044_4_lut (.A(cnt_24[23]), .B(cnt_24[9]), .C(cnt_24[17]), .D(cnt_24[18]), 
         .Z(n2817)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2044_4_lut.init = 16'h8000;
    LUT4 i8_4_lut (.A(cnt_24[7]), .B(cnt_24[0]), .C(cnt_24[3]), .D(cnt_24[14]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(58[7:42])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(cnt_24[6]), .B(cnt_24[10]), .C(cnt_24[5]), .D(cnt_24[19]), 
         .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(58[7:42])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2046_4_lut (.A(cnt_24[11]), .B(cnt_24[8]), .C(cnt_24[20]), .D(cnt_24[12]), 
         .Z(n2819)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2046_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_7 (.A(cnt_24[16]), .B(n25), .C(n23), .D(n24), 
         .Z(n12)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_7.init = 16'hfffd;
    LUT4 mode_last_2__I_0_i2_2_lut (.A(mode_last[1]), .B(mode[1]), .Z(n2)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(72[17:32])
    defparam mode_last_2__I_0_i2_2_lut.init = 16'h6666;
    PFUMX i2091 (.BLUT(n2873), .ALUT(n2872), .C0(n5_adj_1), .Z(current_state_1__N_46));
    LUT4 i2_3_lut_adj_8 (.A(counter[2]), .B(counter[0]), .C(counter[1]), 
         .Z(n2736)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(96[22:33])
    defparam i2_3_lut_adj_8.init = 16'h8080;
    LUT4 i11_3_lut (.A(cnt_24[13]), .B(n22), .C(cnt_24[22]), .Z(n25)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(58[7:42])
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(cnt_24[2]), .B(cnt_24[15]), .C(cnt_24[4]), .D(cnt_24[1]), 
         .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(58[7:42])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i1633_4_lut (.A(counter[0]), .B(n2941), .C(n2940), .D(n2939), 
         .Z(n1791)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1633_4_lut.init = 16'hfcec;
    LUT4 i1562_4_lut (.A(counter[3]), .B(n2941), .C(counter[4]), .D(n2939), 
         .Z(current_state_1__N_74)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1562_4_lut.init = 16'hfcec;
    LUT4 i21_3_lut_4_lut (.A(n2929), .B(n2941), .C(mode[2]), .D(mode[1]), 
         .Z(n8_adj_3)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i21_3_lut_4_lut.init = 16'h0f10;
    LUT4 i1639_2_lut_3_lut_4_lut_4_lut (.A(n2941), .B(n2931), .C(n2929), 
         .D(n2926), .Z(n2378)) /* synthesis lut_function=(A+(B (C)+!B !(D))) */ ;
    defparam i1639_2_lut_3_lut_4_lut_4_lut.init = 16'heafb;
    LUT4 i1_2_lut_rep_12_3_lut_4_lut (.A(single[3]), .B(n2924), .C(single[2]), 
         .D(num[0]), .Z(n2919)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(180[8:17])
    defparam i1_2_lut_rep_12_3_lut_4_lut.init = 16'hffef;
    LUT4 i2068_4_lut (.A(num[4]), .B(n2928), .C(ten_1__N_98[1]), .D(n4), 
         .Z(ten[0])) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+!(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(164[3] 171[12])
    defparam i2068_4_lut.init = 16'h3031;
    LUT4 i1_2_lut_rep_15_3_lut (.A(single[3]), .B(n2924), .C(num[0]), 
         .Z(n2922)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(180[8:17])
    defparam i1_2_lut_rep_15_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_14_3_lut (.A(single[3]), .B(n2924), .C(num[0]), 
         .Z(n2921)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab3/impl1/source/lab3.vhd(180[8:17])
    defparam i1_2_lut_rep_14_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_9 (.A(num[2]), .B(n3010), .C(num[4]), .D(num[3]), 
         .Z(ten_1__N_98[1])) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_9.init = 16'hfcec;
    LUT4 n2398_bdd_4_lut (.A(n2398), .B(n2925), .C(n2378), .D(current_state_1__N_74), 
         .Z(n2873)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;
    defparam n2398_bdd_4_lut.init = 16'h8a0a;
    VLO i1 (.Z(GND_net));
    PFUMX i2112 (.BLUT(n2947), .ALUT(n2948), .C0(single[2]), .Z(a_to_g2_6__N_19));
    TSALL TSALL_INST (.TSALL(GND_net));
    PFUMX i2110 (.BLUT(n2944), .ALUT(n2945), .C0(num[3]), .Z(a_to_g1_c_5));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

