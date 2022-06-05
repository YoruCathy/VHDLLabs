// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Wed Dec 09 21:50:52 2020
//
// Verilog Description of module TOP
//

module TOP (Clock_top, Rst1, Mod1, led, row1, column1, rclk_out1, 
            sclk_out1, ser_out1);   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(7[8:11])
    input Clock_top;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    input Rst1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(10[2:6])
    input Mod1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(11[2:6])
    output [7:0]led;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    output [3:0]row1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(13[2:6])
    input [3:0]column1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(14[2:9])
    output rclk_out1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(15[2:11])
    output sclk_out1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(16[2:11])
    output ser_out1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(17[2:10])
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    wire Clkout1M /* synthesis is_clock=1, SET_AS_NETWORK=Clkout1M */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(97[8:16])
    wire Clkout200 /* synthesis is_clock=1, SET_AS_NETWORK=Clkout200 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(98[8:17])
    wire Clk_N_41 /* synthesis is_inv_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    
    wire GND_net, Rst1_c, Mod1_c, led_c, n1589, n1591, n1593, 
        row1_c_3, row1_c_2, row1_c_1, row1_c_0, column1_c_3, column1_c_2, 
        column1_c_1, column1_c_0, rclk_out1_c, sclk_out1_c, ser_out1_c;
    wire [2:0]segstate;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(83[8:16])
    wire [2:0]ledstate;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(84[8:16])
    wire [3:0]h11;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(86[8:11])
    wire [3:0]h21;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(87[8:11])
    wire [3:0]m11;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(88[8:11])
    wire [3:0]m21;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(89[8:11])
    wire [3:0]s11;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(90[8:11])
    wire [3:0]s21;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(91[8:11])
    wire [4:0]Keyout1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(93[8:15])
    wire [7:0]digit1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(94[8:14])
    wire [3:0]number_in1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(95[8:18])
    wire [7:0]seg_number_out1;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(96[8:23])
    wire [2:0]segstate_2__N_1;
    wire [3:0]number_in1_3__N_14;
    wire [7:0]digit1_7__N_6;
    
    wire n6687, n3677, n6680, Clock_top_c_enable_89, n7317, n4;
    wire [1:0]Clock_status;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(26[8:20])
    
    wire n6840, n6615, n11, n3634, n6544;
    wire [7:0]seg_number_out_7__N_424;
    
    wire n7314, sclk_out_N_515, n7377, n1, n288, n38, n6549, n3878, 
        n9, Clock_top_c_enable_83, Clock_top_c_enable_92, Clock_top_c_enable_31, 
        n7431, n7, n7311, n2387, n7310, n7308, n7368, Clock_top_c_enable_49, 
        n2006, n4487, n7346, Clock_top_c_enable_59, VCC_net, n7344, 
        n7381, n2519, n7343, n7253, n7389, n7252, n7388, n7342, 
        n7340, n7386, n7247, n7246, n7384, n7299, n6627, n7385, 
        n7383, n4_adj_599, n7235, n7234, n7387, n7229, n7228, 
        n7382, n7333, n7330, n9_adj_600, n8, n7325, n7379, n7378, 
        n7_adj_601, Clock_top_c_enable_73, Clock_top_c_enable_57;
    
    LUT4 i1_3_lut (.A(ledstate[2]), .B(ledstate[0]), .C(ledstate[1]), 
         .Z(n1593)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(200[2] 206[27])
    defparam i1_3_lut.init = 16'h5454;
    FD1S3AX leddot_20 (.D(n7368), .CK(Clkout200), .Q(seg_number_out_7__N_424[0]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam leddot_20.GSR = "ENABLED";
    OB rclk_out1_pad (.I(rclk_out1_c), .O(rclk_out1));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(15[2:11])
    OB row1_pad_0 (.I(row1_c_0), .O(row1[0]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(13[2:6])
    OB row1_pad_1 (.I(row1_c_1), .O(row1[1]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(13[2:6])
    OB row1_pad_2 (.I(row1_c_2), .O(row1[2]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(13[2:6])
    OB row1_pad_3 (.I(row1_c_3), .O(row1[3]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(13[2:6])
    OB led_pad_0 (.I(n1593), .O(led[0]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i3197_4_lut_4_lut_4_lut (.A(segstate[0]), .B(segstate[2]), .C(Rst1_c), 
         .D(segstate[1]), .Z(digit1_7__N_6[6])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam i3197_4_lut_4_lut_4_lut.init = 16'h6fff;
    LUT4 mux_5_Mux_3_i7_3_lut_4_lut_4_lut_4_lut_4_lut (.A(segstate[0]), .B(segstate[1]), 
         .C(Rst1_c), .D(segstate[2]), .Z(digit1_7__N_6[3])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam mux_5_Mux_3_i7_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h50e0;
    LUT4 i1_2_lut_rep_98 (.A(h11[3]), .B(h11[2]), .Z(n7342)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(86[8:11])
    defparam i1_2_lut_rep_98.init = 16'heeee;
    FD1P3AX number_in1_i0_i0 (.D(number_in1_3__N_14[0]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[0]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i0.GSR = "DISABLED";
    LUT4 i6336_then_4_lut (.A(Rst1_c), .B(h21[0]), .C(s21[0]), .D(segstate[0]), 
         .Z(n7382)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B))) */ ;
    defparam i6336_then_4_lut.init = 16'h44e4;
    LUT4 i6336_else_4_lut (.A(m11[0]), .B(Rst1_c), .C(h21[0]), .D(segstate[0]), 
         .Z(n7381)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6336_else_4_lut.init = 16'hb8f0;
    OB led_pad_1 (.I(n1593), .O(led[1]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i6328_then_4_lut (.A(Rst1_c), .B(s21[1]), .C(m21[1]), .D(segstate[0]), 
         .Z(n7385)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;
    defparam i6328_then_4_lut.init = 16'h50d8;
    LUT4 i6328_else_4_lut (.A(s11[1]), .B(Rst1_c), .C(m21[1]), .D(segstate[0]), 
         .Z(n7384)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6328_else_4_lut.init = 16'hb8f0;
    OB led_pad_2 (.I(n1591), .O(led[2]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    OB led_pad_3 (.I(n1591), .O(led[3]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    OB led_pad_4 (.I(n1589), .O(led[4]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    OB led_pad_5 (.I(n1589), .O(led[5]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i6323_then_4_lut (.A(Rst1_c), .B(h21[3]), .C(s21[3]), .D(segstate[0]), 
         .Z(n7388)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B))) */ ;
    defparam i6323_then_4_lut.init = 16'h44e4;
    LUT4 i6323_else_4_lut (.A(m11[3]), .B(Rst1_c), .C(h21[3]), .D(segstate[0]), 
         .Z(n7387)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6323_else_4_lut.init = 16'hb8f0;
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(h11[3]), .B(h11[2]), .C(h11[1]), 
         .D(h11[0]), .Z(n7308)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(86[8:11])
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1348_2_lut_rep_100 (.A(segstate[0]), .B(segstate[1]), .Z(n7344)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam i1348_2_lut_rep_100.init = 16'heeee;
    OB led_pad_6 (.I(led_c), .O(led[6]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    OB led_pad_7 (.I(led_c), .O(led[7]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i1913_1_lut (.A(Mod1_c), .Z(Clock_top_c_enable_31)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(11[2:6])
    defparam i1913_1_lut.init = 16'h5555;
    LUT4 h11_0__bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7246), 
         .D(h11[0]), .Z(n7247)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_0__bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n7235_bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7386), 
         .D(n7235), .Z(number_in1_3__N_14[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7235_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 h11_3__bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7228), 
         .D(h11[3]), .Z(n7229)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_3__bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 i13_3_lut (.A(ledstate[1]), .B(ledstate[0]), .C(ledstate[2]), 
         .Z(n1589)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(200[2] 206[27])
    defparam i13_3_lut.init = 16'h1c1c;
    LUT4 Rst1_c_bdd_4_lut_6284_4_lut (.A(segstate[2]), .B(Rst1_c), .C(segstate[0]), 
         .D(segstate[1]), .Z(digit1_7__N_6[4])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C+(D))))) */ ;
    defparam Rst1_c_bdd_4_lut_6284_4_lut.init = 16'h4cc0;
    LUT4 i6341_else_4_lut (.A(s11[2]), .B(Rst1_c), .C(m21[2]), .D(segstate[0]), 
         .Z(n7377)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6341_else_4_lut.init = 16'hb8f0;
    LUT4 mux_5_Mux_2_i7_3_lut_4_lut_4_lut_4_lut (.A(segstate[2]), .B(Rst1_c), 
         .C(segstate[1]), .D(segstate[0]), .Z(digit1_7__N_6[2])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C+(D))))) */ ;
    defparam mux_5_Mux_2_i7_3_lut_4_lut_4_lut_4_lut.init = 16'h4c48;
    LUT4 n7253_bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7379), 
         .D(n7253), .Z(number_in1_3__N_14[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7253_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 i13_3_lut_adj_99 (.A(ledstate[0]), .B(ledstate[1]), .C(ledstate[2]), 
         .Z(led_c)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(200[2] 206[27])
    defparam i13_3_lut_adj_99.init = 16'h1c1c;
    LUT4 i6147_4_lut_rep_130 (.A(n288), .B(n7317), .C(n9), .D(sclk_out_N_515), 
         .Z(Clock_top_c_enable_57)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i6147_4_lut_rep_130.init = 16'h3022;
    FD1P3AX digit1_i0_i5 (.D(digit1_7__N_6[5]), .SP(Clock_top_c_enable_49), 
            .CK(Clock_top_c), .Q(digit1[5]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i5.GSR = "DISABLED";
    LUT4 i6167_2_lut_rep_61 (.A(Clkout200), .B(n2519), .Z(Clock_top_c_enable_59)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i6167_2_lut_rep_61.init = 16'h4444;
    LUT4 i6197_2_lut_2_lut_3_lut_4_lut (.A(Clkout200), .B(n2519), .C(n3878), 
         .D(Rst1_c), .Z(Clock_top_c_enable_49)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i6197_2_lut_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 n183_bdd_3_lut_4_lut (.A(segstate[0]), .B(Rst1_c), .C(m11[2]), 
         .D(h21[2]), .Z(n7252)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n183_bdd_3_lut_6340_4_lut (.A(segstate[0]), .B(Rst1_c), .C(s11[0]), 
         .D(m21[0]), .Z(n7246)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_6340_4_lut.init = 16'hf780;
    LUT4 n183_bdd_3_lut_6335_4_lut (.A(segstate[0]), .B(Rst1_c), .C(m11[1]), 
         .D(h21[1]), .Z(n7234)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_6335_4_lut.init = 16'hf780;
    LUT4 n183_bdd_3_lut_6327_4_lut (.A(segstate[0]), .B(Rst1_c), .C(s11[3]), 
         .D(m21[3]), .Z(n7228)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_6327_4_lut.init = 16'hf780;
    LUT4 h11_2__bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7252), 
         .D(h11[2]), .Z(n7253)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_2__bdd_3_lut_4_lut.init = 16'hf780;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3AY segstate_i0_i0 (.D(n6840), .CK(Clock_top_c), .Q(segstate[0]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam segstate_i0_i0.GSR = "ENABLED";
    LUT4 n7247_bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7383), 
         .D(n7247), .Z(number_in1_3__N_14[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7247_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 Rst1_c_bdd_4_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(segstate[0]), 
         .D(segstate[2]), .Z(digit1_7__N_6[5])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C+(D))))) */ ;
    defparam Rst1_c_bdd_4_lut_4_lut.init = 16'h4c48;
    LUT4 mux_5_Mux_7_i7_3_lut_4_lut_4_lut (.A(segstate[1]), .B(Rst1_c), 
         .C(segstate[0]), .D(segstate[2]), .Z(digit1_7__N_6[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (D)))) */ ;
    defparam mux_5_Mux_7_i7_3_lut_4_lut_4_lut.init = 16'h4c88;
    LUT4 n7229_bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7389), 
         .D(n7229), .Z(number_in1_3__N_14[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7229_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 h11_1__bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7234), 
         .D(h11[1]), .Z(n7235)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_1__bdd_3_lut_4_lut.init = 16'hf780;
    FD1P3AX segstate_i0_i2 (.D(segstate_2__N_1[2]), .SP(Clock_top_c_enable_59), 
            .CK(Clock_top_c), .Q(segstate[2]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam segstate_i0_i2.GSR = "ENABLED";
    FD1P3AX segstate_i0_i1 (.D(segstate_2__N_1[1]), .SP(Clock_top_c_enable_59), 
            .CK(Clock_top_c), .Q(segstate[1]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam segstate_i0_i1.GSR = "ENABLED";
    OB sclk_out1_pad (.I(sclk_out1_c), .O(sclk_out1));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(16[2:11])
    FD1P3AX number_in1_i0_i3 (.D(number_in1_3__N_14[3]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[3]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i3.GSR = "DISABLED";
    FD1P3AX number_in1_i0_i2 (.D(number_in1_3__N_14[2]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[2]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i2.GSR = "DISABLED";
    FD1P3AX number_in1_i0_i1 (.D(number_in1_3__N_14[1]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[1]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i1.GSR = "DISABLED";
    LUT4 i6106_2_lut_rep_75 (.A(Clkout1M), .B(n7), .Z(Clock_top_c_enable_73)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam i6106_2_lut_rep_75.init = 16'h4444;
    LUT4 i6139_3_lut_4_lut (.A(Rst1_c), .B(Clock_top_c_enable_59), .C(segstate[2]), 
         .D(n7344), .Z(Clock_top_c_enable_92)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i6139_3_lut_4_lut.init = 16'h8880;
    LUT4 segstate_0__I_0_1_lut_rep_124 (.A(segstate[0]), .Z(n7368)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam segstate_0__I_0_1_lut_rep_124.init = 16'h5555;
    LUT4 i6341_then_4_lut (.A(Rst1_c), .B(s21[2]), .C(m21[2]), .D(segstate[0]), 
         .Z(n7378)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;
    defparam i6341_then_4_lut.init = 16'h50d8;
    LUT4 i283_2_lut_rep_73_3_lut (.A(Clkout1M), .B(n7), .C(Rst1_c), .Z(n7317)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam i283_2_lut_rep_73_3_lut.init = 16'hbfbf;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i6098_2_lut_3_lut (.A(Clkout200), .B(n2519), .C(segstate[0]), 
         .Z(n6840)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i6098_2_lut_3_lut.init = 16'hb4b4;
    LUT4 i276_2_lut_3_lut_4_lut (.A(Clkout1M), .B(n7), .C(n288), .D(Rst1_c), 
         .Z(Clock_top_c_enable_83)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam i276_2_lut_3_lut_4_lut.init = 16'h4000;
    FD1P3AX digit1_i0_i7 (.D(digit1_7__N_6[7]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(digit1[7]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i7.GSR = "DISABLED";
    FD1P3AX digit1_i0_i6 (.D(digit1_7__N_6[6]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(digit1[6]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i6.GSR = "DISABLED";
    FD1P3AX digit1_i0_i4 (.D(digit1_7__N_6[4]), .SP(Clock_top_c_enable_92), 
            .CK(Clock_top_c), .Q(digit1[4]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i4.GSR = "DISABLED";
    FD1P3AX digit1_i0_i3 (.D(digit1_7__N_6[3]), .SP(Clock_top_c_enable_92), 
            .CK(Clock_top_c), .Q(digit1[3]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i3.GSR = "DISABLED";
    FD1P3AX digit1_i0_i2 (.D(digit1_7__N_6[2]), .SP(Clock_top_c_enable_92), 
            .CK(Clock_top_c), .Q(digit1[2]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i2.GSR = "DISABLED";
    OB ser_out1_pad (.I(ser_out1_c), .O(ser_out1));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(17[2:10])
    IB Clock_top_pad (.I(Clock_top), .O(Clock_top_c));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    IB Rst1_pad (.I(Rst1), .O(Rst1_c));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(10[2:6])
    IB Mod1_pad (.I(Mod1), .O(Mod1_c));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(11[2:6])
    IB column1_pad_3 (.I(column1[3]), .O(column1_c_3));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(14[2:9])
    IB column1_pad_2 (.I(column1[2]), .O(column1_c_2));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(14[2:9])
    IB column1_pad_1 (.I(column1[1]), .O(column1_c_1));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(14[2:9])
    IB column1_pad_0 (.I(column1[0]), .O(column1_c_0));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(14[2:9])
    GSR GSR_INST (.GSR(Rst1_c));
    LUT4 i24_4_lut_3_lut (.A(ledstate[1]), .B(ledstate[2]), .C(ledstate[0]), 
         .Z(n1591)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i24_4_lut_3_lut.init = 16'h1616;
    LUT4 i3057_2_lut_3_lut (.A(segstate[2]), .B(segstate[0]), .C(segstate[1]), 
         .Z(n3878)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3057_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut (.A(Clkout200), .B(n2519), .C(Rst1_c), .D(n3878), 
         .Z(Clock_top_c_enable_89)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i6127_2_lut_2_lut_3_lut_3_lut (.A(n288), .B(n7317), .C(sclk_out_N_515), 
         .Z(n3634)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i6127_2_lut_2_lut_3_lut_3_lut.init = 16'h0202;
    Code_shape_provider U3 (.seg_number_out1({seg_number_out1}), .Clock_top_c(Clock_top_c), 
            .Rst1_c(Rst1_c), .\seg_number_out_7__N_424[0] (seg_number_out_7__N_424[0]), 
            .number_in1({number_in1}));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(124[4:23])
    LUT4 i12_3_lut (.A(segstate[1]), .B(segstate[2]), .C(segstate[0]), 
         .Z(segstate_2__N_1[2])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(194[3] 196[9])
    defparam i12_3_lut.init = 16'h6464;
    LUT4 i900_3_lut (.A(segstate[1]), .B(segstate[0]), .C(segstate[2]), 
         .Z(segstate_2__N_1[1])) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(194[3] 196[9])
    defparam i900_3_lut.init = 16'h4646;
    Clock_Logic U2 (.Clock_top_c(Clock_top_c), .ledstate({ledstate}), .m11({m11}), 
            .s21({s21}), .h21({h21}), .n7342(n7342), .h11({h11}), .GND_net(GND_net), 
            .m21({m21}), .s11({s11}), .Mod1_c(Mod1_c), .Keyout1({Keyout1}), 
            .n6627(n6627), .\Clock_status[1] (Clock_status[1]), .n38(n38), 
            .n7299(n7299), .Clock_top_c_enable_31(Clock_top_c_enable_31), 
            .n7343(n7343), .n7346(n7346), .n7325(n7325), .n6544(n6544), 
            .n6687(n6687), .n7330(n7330), .n7310(n7310), .n7(n7_adj_601), 
            .n7333(n7333), .n1(n1), .n7314(n7314), .n2387(n2387), .n4(n4_adj_599), 
            .n8(n8), .n4487(n4487), .n4_adj_2(n4), .n6680(n6680), .n7340(n7340), 
            .n9(n9_adj_600), .n6549(n6549), .n3677(n3677), .n2006(n2006), 
            .n7311(n7311), .n11(n11), .n7431(n7431), .n7308(n7308), 
            .n6615(n6615));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(109[4:15])
    Display U4 (.Clock_top_c(Clock_top_c), .Clock_top_c_enable_83(Clock_top_c_enable_83), 
            .seg_number_out1({seg_number_out1}), .n288(n288), .Clock_top_c_enable_73(Clock_top_c_enable_73), 
            .sclk_out1_c(sclk_out1_c), .Clkout1M(Clkout1M), .sclk_out_N_515(sclk_out_N_515), 
            .Clock_top_c_enable_57(Clock_top_c_enable_57), .n9(n9), .n3634(n3634), 
            .rclk_out1_c(rclk_out1_c), .Rst1_c(Rst1_c), .ser_out1_c(ser_out1_c), 
            .\digit1[7] (digit1[7]), .\digit1[6] (digit1[6]), .\digit1[5] (digit1[5]), 
            .\digit1[4] (digit1[4]), .\digit1[3] (digit1[3]), .\digit1[2] (digit1[2]));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(132[4:11])
    VLO i1 (.Z(GND_net));
    PFUMX i6367 (.BLUT(n7387), .ALUT(n7388), .C0(segstate[2]), .Z(n7389));
    PFUMX i6365 (.BLUT(n7384), .ALUT(n7385), .C0(segstate[1]), .Z(n7386));
    Clock_Div U5 (.Clock_top_c(Clock_top_c), .n2519(n2519), .Clkout1M(Clkout1M), 
            .Clkout200(Clkout200), .n7(n7), .GND_net(GND_net));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(142[4:13])
    PFUMX i6363 (.BLUT(n7381), .ALUT(n7382), .C0(segstate[2]), .Z(n7383));
    Matrix_button_input U1 (.Clock_top_c(Clock_top_c), .column1_c_2(column1_c_2), 
            .column1_c_0(column1_c_0), .row1_c_0(row1_c_0), .Clk_N_41(Clk_N_41), 
            .column1_c_1(column1_c_1), .column1_c_3(column1_c_3), .Rst1_c(Rst1_c), 
            .\h11[1] (h11[1]), .n6544(n6544), .n7343(n7343), .n6687(n6687), 
            .n38(n38), .Keyout1({Keyout1}), .n11(n11), .n7346(n7346), 
            .n7431(n7431), .n7311(n7311), .n7325(n7325), .n7314(n7314), 
            .n6627(n6627), .\m21[0] (m21[0]), .n1(n1), .n7310(n7310), 
            .GND_net(GND_net), .n7333(n7333), .n9(n9_adj_600), .n7(n7_adj_601), 
            .n8(n8), .n4(n4), .row1_c_3(row1_c_3), .row1_c_2(row1_c_2), 
            .row1_c_1(row1_c_1), .n6615(n6615), .n7340(n7340), .\Clock_status[1] (Clock_status[1]), 
            .n6680(n6680), .n3677(n3677), .n6549(n6549), .\m11[2] (m11[2]), 
            .n4487(n4487), .n4_adj_1(n4_adj_599), .n2006(n2006), .n7299(n7299), 
            .n2387(n2387), .n7330(n7330));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(101[4:23])
    PFUMX i6361 (.BLUT(n7377), .ALUT(n7378), .C0(segstate[1]), .Z(n7379));
    INV i6552 (.A(Clock_top_c), .Z(Clk_N_41));   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    VHI i6555 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module Code_shape_provider
//

module Code_shape_provider (seg_number_out1, Clock_top_c, Rst1_c, \seg_number_out_7__N_424[0] , 
            number_in1);
    output [7:0]seg_number_out1;
    input Clock_top_c;
    input Rst1_c;
    input \seg_number_out_7__N_424[0] ;
    input [3:0]number_in1;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    wire [3:0]number_in_reg;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(18[9:22])
    wire [7:0]seg_number_out_7__N_424;
    
    wire n2588, n3894, n7;
    
    FD1P3AX seg_number_out_i0_i0 (.D(\seg_number_out_7__N_424[0] ), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i0.GSR = "DISABLED";
    FD1P3AX number_in_reg_i0_i0 (.D(number_in1[0]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i0.GSR = "DISABLED";
    LUT4 number_in_reg_0__bdd_4_lut (.A(number_in_reg[0]), .B(number_in_reg[3]), 
         .C(number_in_reg[1]), .D(number_in_reg[2]), .Z(seg_number_out_7__N_424[3])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam number_in_reg_0__bdd_4_lut.init = 16'hdcd5;
    FD1P3JX seg_number_out_i0_i2 (.D(n3894), .SP(Rst1_c), .PD(n2588), 
            .CK(Clock_top_c), .Q(seg_number_out1[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i2.GSR = "DISABLED";
    FD1P3JX seg_number_out_i0_i4 (.D(n7), .SP(Rst1_c), .PD(n2588), .CK(Clock_top_c), 
            .Q(seg_number_out1[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i4.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i5 (.D(seg_number_out_7__N_424[5]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i5.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i6 (.D(seg_number_out_7__N_424[6]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i6.GSR = "DISABLED";
    LUT4 i1953_2_lut (.A(Rst1_c), .B(number_in_reg[3]), .Z(n2588)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam i1953_2_lut.init = 16'h8888;
    LUT4 i6199_3_lut_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[2]), .D(number_in_reg[3]), .Z(seg_number_out_7__N_424[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (((D)+!C)+!B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(54[3] 78[12])
    defparam i6199_3_lut_4_lut.init = 16'hff9f;
    LUT4 mux_5_Mux_4_i7_3_lut_4_lut_3_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[2]), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+!(C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(54[3] 78[12])
    defparam mux_5_Mux_4_i7_3_lut_4_lut_3_lut.init = 16'h6d6d;
    LUT4 mux_4_Mux_2_i7_4_lut_3_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[2]), .Z(n3894)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam mux_4_Mux_2_i7_4_lut_3_lut.init = 16'h7171;
    FD1P3AX number_in_reg_i0_i3 (.D(number_in1[3]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i3.GSR = "DISABLED";
    FD1P3AX number_in_reg_i0_i2 (.D(number_in1[2]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i2.GSR = "DISABLED";
    FD1P3AX number_in_reg_i0_i1 (.D(number_in1[1]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i1.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i7 (.D(seg_number_out_7__N_424[7]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i7.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i3 (.D(seg_number_out_7__N_424[3]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i3.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i1 (.D(seg_number_out_7__N_424[1]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i1.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), .C(number_in_reg[2]), 
         .D(number_in_reg[3]), .Z(seg_number_out_7__N_424[5])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 i2_4_lut (.A(number_in_reg[3]), .B(number_in_reg[0]), .C(number_in_reg[1]), 
         .D(number_in_reg[2]), .Z(seg_number_out_7__N_424[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(54[3] 78[12])
    defparam i2_4_lut.init = 16'hfefb;
    LUT4 mux_4_Mux_1_i15_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[3]), .D(number_in_reg[2]), .Z(seg_number_out_7__N_424[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/code_shape_provider.vhd(28[3] 52[12])
    defparam mux_4_Mux_1_i15_4_lut.init = 16'h073c;
    
endmodule
//
// Verilog Description of module Clock_Logic
//

module Clock_Logic (Clock_top_c, ledstate, m11, s21, h21, n7342, 
            h11, GND_net, m21, s11, Mod1_c, Keyout1, n6627, \Clock_status[1] , 
            n38, n7299, Clock_top_c_enable_31, n7343, n7346, n7325, 
            n6544, n6687, n7330, n7310, n7, n7333, n1, n7314, 
            n2387, n4, n8, n4487, n4_adj_2, n6680, n7340, n9, 
            n6549, n3677, n2006, n7311, n11, n7431, n7308, n6615);
    input Clock_top_c;
    output [2:0]ledstate;
    output [3:0]m11;
    output [3:0]s21;
    output [3:0]h21;
    input n7342;
    output [3:0]h11;
    input GND_net;
    output [3:0]m21;
    output [3:0]s11;
    input Mod1_c;
    input [4:0]Keyout1;
    output n6627;
    output \Clock_status[1] ;
    input n38;
    input n7299;
    input Clock_top_c_enable_31;
    output n7343;
    output n7346;
    input n7325;
    output n6544;
    output n6687;
    input n7330;
    input n7310;
    output n7;
    output n7333;
    input n1;
    output n7314;
    output n2387;
    output n4;
    output n8;
    output n4487;
    input n4_adj_2;
    input n6680;
    input n7340;
    output n9;
    input n6549;
    output n3677;
    input n2006;
    input n7311;
    output n11;
    input n7431;
    input n7308;
    input n6615;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    wire [1:0]Clock_status;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(26[8:20])
    
    wire Clock_top_c_enable_95;
    wire [31:0]mode;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(25[8:12])
    
    wire n1136, Clock_top_c_enable_87, n2, Clock_top_c_enable_61, n1898, 
        n7341, n6, clr, n2537;
    wire [31:0]n133;
    
    wire n5776;
    wire [23:0]one_sec_cnt;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(28[8:19])
    wire [23:0]n101;
    
    wire n5777, n7090, n7089, n898, n7091, n5775, Clock_top_c_enable_86, 
        n7380, Clock_top_c_enable_76, n2553, n5974, Clock_top_c_enable_85;
    wire [3:0]n27;
    
    wire one_sec_flag, one_sec_cnt_23__N_407;
    wire [17:0]COUNT1;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(33[12:18])
    wire [17:0]COUNT1_17__N_278;
    
    wire n2_adj_573, n6996, n5774, Clock_top_c_enable_103, n2955, 
        n6_adj_574, n5773, n5772, n7357, n6658, n5303, n7323, 
        n7297, n4_c, n7307, n1431, n7309, n7328, n7097, n10, 
        n7327, n991, n5771, n5736, n5737, n5770, n5725, n5726, 
        n10_adj_575, n12, n40, n1441, n5735, n4_adj_576, n7_c, 
        n7321, n7329, n6998, clr_N_409, n5830, n1247, n5829, n5828, 
        n5827, n6606, n16, n5826, n5825, n6997, n6999, n6863, 
        n6809, n6807, n6729, n6790, n6731, n7375, n5824, n5942, 
        n7294, n5823, n5822, n5734, n7324, n7348, n3711, n1403, 
        n2521, n5959, n5958, n7351, n7350, n7312, n6511, n7315, 
        n2362, n6609, n1066, n7365, n7157, n5821, n2_adj_577, 
        n7099, n6_adj_578, n6679, n5968, n2591, n5967, n2590, 
        n5954, n1054, n9_c, n5733, n4_adj_579, n5820, n14, n6_adj_580, 
        n5724, n7352, n5819, n5818, n5817, n5816, n33, n5732, 
        n7374, n3, n7354, n7355, n7356, n2815, n5978, n7088, 
        n5869, n5970, n5815, n7331, n5731, n7_adj_582, n7_adj_583, 
        n7_adj_584, n7358, n5723, n7359, n961, n7300, n7361, n7332, 
        n5953, n7295, n6877, n49, n56, n50, n5949, n5730, n54, 
        n46, n4_adj_586, n7376, n5308, n7_adj_588, n6665, n52, 
        n42, n7_adj_590, n7214, n5781, n5780, n955, n6_adj_591, 
        n1_adj_592, n61, n5722, n5779, n5778, n5729, n5721, n5728, 
        n2002, n48, n34, n2004;
    wire [1:0]n1509;
    
    wire n2009, n5745, n5744, n5743, n5742, n5727, n5741, n5740, 
        n5739, n4070, n5857, n5738, n5897, n5307, n6573, n3683, 
        n4_adj_593, n6_adj_594, n17, n2_adj_595, n4_adj_596, n7100, 
        n7_adj_597, n6870, n5846, n6685, n5896, n13, n12_adj_598, 
        n5969, n3978, n5895, n3844;
    
    FD1P3AX Clock_status_i0_i0 (.D(mode[0]), .SP(Clock_top_c_enable_95), 
            .CK(Clock_top_c), .Q(Clock_status[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam Clock_status_i0_i0.GSR = "ENABLED";
    FD1P3AY state_i0_i0 (.D(n1136), .SP(Clock_top_c_enable_95), .CK(Clock_top_c), 
            .Q(ledstate[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam state_i0_i0.GSR = "ENABLED";
    FD1P3AX m1_804__i0 (.D(n2), .SP(Clock_top_c_enable_87), .CK(Clock_top_c), 
            .Q(m11[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_804__i0.GSR = "ENABLED";
    FD1P3AX s2_812__i3 (.D(n1898), .SP(Clock_top_c_enable_61), .CK(Clock_top_c), 
            .Q(s21[3]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_812__i3.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(h21[3]), .B(n7341), .C(n7342), .D(h11[0]), 
         .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX mode_802__i31 (.D(n133[31]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i31.GSR = "DISABLED";
    CCU2D one_sec_cnt_808_add_4_15 (.A0(one_sec_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5776), .COUT(n5777), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_15.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_15.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_15.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_15.INJECT1_1 = "NO";
    PFUMX i6260 (.BLUT(n7090), .ALUT(n7089), .C0(n898), .Z(n7091));
    CCU2D one_sec_cnt_808_add_4_13 (.A0(one_sec_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5775), .COUT(n5776), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_13.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_13.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_13.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_13.INJECT1_1 = "NO";
    FD1P3AX m2_805__i0 (.D(n7380), .SP(Clock_top_c_enable_86), .CK(Clock_top_c), 
            .Q(m21[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_805__i0.GSR = "ENABLED";
    FD1P3IX s1_803__i1 (.D(n5974), .SP(Clock_top_c_enable_76), .CD(n2553), 
            .CK(Clock_top_c), .Q(s11[1]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_803__i1.GSR = "ENABLED";
    FD1P3AX h2_806__i0 (.D(n27[0]), .SP(Clock_top_c_enable_85), .CK(Clock_top_c), 
            .Q(h21[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_806__i0.GSR = "ENABLED";
    FD1S3AX one_sec_flag_190 (.D(one_sec_cnt_23__N_407), .CK(Clock_top_c), 
            .Q(one_sec_flag)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(225[2] 236[9])
    defparam one_sec_flag_190.GSR = "ENABLED";
    FD1S3DX COUNT1_i0 (.D(COUNT1_17__N_278[0]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i0.GSR = "DISABLED";
    FD1P3AX s1_803__i0 (.D(n2_adj_573), .SP(Clock_top_c_enable_76), .CK(Clock_top_c), 
            .Q(s11[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_803__i0.GSR = "ENABLED";
    FD1P3IX s1_803__i3 (.D(n6996), .SP(Clock_top_c_enable_76), .CD(n2553), 
            .CK(Clock_top_c), .Q(s11[3]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_803__i3.GSR = "ENABLED";
    CCU2D one_sec_cnt_808_add_4_11 (.A0(one_sec_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5774), .COUT(n5775), .S0(n101[9]), .S1(n101[10]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_11.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_11.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_11.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_11.INJECT1_1 = "NO";
    FD1P3IX h1_807__i0 (.D(n6_adj_574), .SP(Clock_top_c_enable_103), .CD(n2955), 
            .CK(Clock_top_c), .Q(h11[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_807__i0.GSR = "ENABLED";
    CCU2D one_sec_cnt_808_add_4_9 (.A0(one_sec_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5773), .COUT(n5774), .S0(n101[7]), .S1(n101[8]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_9.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_9.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_9.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_9.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_808_add_4_7 (.A0(one_sec_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5772), .COUT(n5773), .S0(n101[5]), .S1(n101[6]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_7.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_7.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_7.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_7.INJECT1_1 = "NO";
    LUT4 i16_3_lut_4_lut_4_lut (.A(n7357), .B(Keyout1[0]), .C(Keyout1[1]), 
         .D(n6658), .Z(n5303)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i16_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i2_2_lut_rep_79_3_lut (.A(h21[1]), .B(h21[0]), .C(h21[3]), .Z(n7323)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_2_lut_rep_79_3_lut.init = 16'hfefe;
    FD1P3IX mode_802__i22 (.D(n133[22]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i22.GSR = "DISABLED";
    LUT4 i4890_4_lut_3_lut (.A(h21[1]), .B(h21[0]), .C(n7297), .Z(n4_c)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4890_4_lut_3_lut.init = 16'he8e8;
    LUT4 i5964_2_lut_rep_63_3_lut_4_lut (.A(h21[1]), .B(h21[0]), .C(h21[2]), 
         .D(h21[3]), .Z(n7307)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i5964_2_lut_rep_63_3_lut_4_lut.init = 16'hfffe;
    LUT4 n6627_bdd_3_lut (.A(n6627), .B(n1431), .C(m21[0]), .Z(n7380)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam n6627_bdd_3_lut.init = 16'hcdcd;
    LUT4 n374_bdd_4_lut_6267 (.A(n7309), .B(n7328), .C(s21[3]), .D(s21[0]), 
         .Z(n7097)) /* synthesis lut_function=(A (C (D))+!A !(B+(C+(D)))) */ ;
    defparam n374_bdd_4_lut_6267.init = 16'ha001;
    LUT4 i1_2_lut_4_lut (.A(\Clock_status[1] ), .B(n10), .C(n7307), .D(n7327), 
         .Z(n991)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0004;
    CCU2D one_sec_cnt_808_add_4_5 (.A0(one_sec_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5771), .COUT(n5772), .S0(n101[3]), .S1(n101[4]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_5.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_5.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_5.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_5.INJECT1_1 = "NO";
    CCU2D mode_802_add_4_15 (.A0(mode[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5736), .COUT(n5737), .S0(n133[13]), .S1(n133[14]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_15.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_15.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_15.INJECT1_0 = "NO";
    defparam mode_802_add_4_15.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_808_add_4_3 (.A0(one_sec_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5770), .COUT(n5771), .S0(n101[1]), .S1(n101[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_3.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_3.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_3.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_3.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_808_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5770), .S1(n101[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_1.INIT0 = 16'hF000;
    defparam one_sec_cnt_808_add_4_1.INIT1 = 16'h0555;
    defparam one_sec_cnt_808_add_4_1.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_1.INJECT1_1 = "NO";
    CCU2D add_8_11 (.A0(COUNT1[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5725), .COUT(n5726), .S0(COUNT1_17__N_278[9]), .S1(COUNT1_17__N_278[10]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    LUT4 i6132_4_lut (.A(\Clock_status[1] ), .B(n10_adj_575), .C(n12), 
         .D(Clock_status[0]), .Z(Clock_top_c_enable_103)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6132_4_lut.init = 16'h0511;
    LUT4 i1_4_lut (.A(Clock_top_c_enable_103), .B(n40), .C(n38), .D(n1441), 
         .Z(n2955)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'haaa8;
    CCU2D mode_802_add_4_13 (.A0(mode[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5735), .COUT(n5736), .S0(n133[11]), .S1(n133[12]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_13.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_13.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_13.INJECT1_0 = "NO";
    defparam mode_802_add_4_13.INJECT1_1 = "NO";
    LUT4 i8_1_lut (.A(h11[0]), .Z(n6_adj_574)) /* synthesis lut_function=(!(A)) */ ;
    defparam i8_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_49 (.A(n7323), .B(h21[2]), .C(n4_adj_576), .D(n7_c), 
         .Z(n40)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_49.init = 16'h0400;
    LUT4 i4_4_lut (.A(h11[1]), .B(n7321), .C(n7307), .D(n7299), .Z(n1441)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4_4_lut.init = 16'h0100;
    LUT4 Keyout1_1__bdd_4_lut_6270 (.A(n7329), .B(n7309), .C(s21[0]), 
         .D(s21[3]), .Z(n6998)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam Keyout1_1__bdd_4_lut_6270.init = 16'h8000;
    FD1P3AX clr_179 (.D(clr_N_409), .SP(Clock_top_c_enable_31), .CK(Clock_top_c), 
            .Q(clr));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam clr_179.GSR = "DISABLED";
    FD1P3IX mode_802__i0 (.D(n133[0]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i0.GSR = "DISABLED";
    CCU2D add_4810_33 (.A0(mode[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5830), 
          .S1(n1247));
    defparam add_4810_33.INIT0 = 16'h5555;
    defparam add_4810_33.INIT1 = 16'h0000;
    defparam add_4810_33.INJECT1_0 = "NO";
    defparam add_4810_33.INJECT1_1 = "NO";
    CCU2D add_4810_31 (.A0(mode[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5829), 
          .COUT(n5830));
    defparam add_4810_31.INIT0 = 16'hf555;
    defparam add_4810_31.INIT1 = 16'hf555;
    defparam add_4810_31.INJECT1_0 = "NO";
    defparam add_4810_31.INJECT1_1 = "NO";
    CCU2D add_4810_29 (.A0(mode[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5828), 
          .COUT(n5829));
    defparam add_4810_29.INIT0 = 16'hf555;
    defparam add_4810_29.INIT1 = 16'hf555;
    defparam add_4810_29.INJECT1_0 = "NO";
    defparam add_4810_29.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_99 (.A(h21[2]), .B(h21[1]), .Z(n7343)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_99.init = 16'h4444;
    CCU2D add_4810_27 (.A0(mode[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5827), 
          .COUT(n5828));
    defparam add_4810_27.INIT0 = 16'hf555;
    defparam add_4810_27.INIT1 = 16'hf555;
    defparam add_4810_27.INJECT1_0 = "NO";
    defparam add_4810_27.INJECT1_1 = "NO";
    LUT4 i2334_3_lut_4_lut (.A(h21[2]), .B(h21[1]), .C(h21[3]), .D(n6606), 
         .Z(n16)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i2334_3_lut_4_lut.init = 16'h4f40;
    CCU2D add_4810_25 (.A0(mode[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5826), 
          .COUT(n5827));
    defparam add_4810_25.INIT0 = 16'hf555;
    defparam add_4810_25.INIT1 = 16'hf555;
    defparam add_4810_25.INJECT1_0 = "NO";
    defparam add_4810_25.INJECT1_1 = "NO";
    CCU2D add_4810_23 (.A0(mode[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5825), 
          .COUT(n5826));
    defparam add_4810_23.INIT0 = 16'hf555;
    defparam add_4810_23.INIT1 = 16'hf555;
    defparam add_4810_23.INJECT1_0 = "NO";
    defparam add_4810_23.INJECT1_1 = "NO";
    PFUMX i6206 (.BLUT(n6998), .ALUT(n6997), .C0(Keyout1[1]), .Z(n6999));
    LUT4 i6122_4_lut (.A(COUNT1_17__N_278[12]), .B(n6863), .C(n6809), 
         .D(n6807), .Z(clr_N_409)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(39[8:21])
    defparam i6122_4_lut.init = 16'h4000;
    LUT4 i6121_4_lut (.A(COUNT1_17__N_278[7]), .B(COUNT1_17__N_278[14]), 
         .C(COUNT1_17__N_278[9]), .D(COUNT1_17__N_278[10]), .Z(n6863)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(39[8:21])
    defparam i6121_4_lut.init = 16'h0001;
    LUT4 i6047_4_lut (.A(n6729), .B(COUNT1_17__N_278[15]), .C(COUNT1_17__N_278[16]), 
         .D(COUNT1_17__N_278[2]), .Z(n6809)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6047_4_lut.init = 16'h8000;
    LUT4 i6045_4_lut (.A(n6790), .B(COUNT1_17__N_278[1]), .C(n6731), .D(COUNT1_17__N_278[0]), 
         .Z(n6807)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6045_4_lut.init = 16'h8000;
    LUT4 i5968_2_lut (.A(COUNT1_17__N_278[11]), .B(COUNT1_17__N_278[4]), 
         .Z(n6729)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5968_2_lut.init = 16'h8888;
    LUT4 i48_4_lut_then_4_lut (.A(s21[0]), .B(Keyout1[0]), .C(Keyout1[1]), 
         .D(n7357), .Z(n7375)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i48_4_lut_then_4_lut.init = 16'hfff7;
    LUT4 i6028_4_lut (.A(COUNT1_17__N_278[17]), .B(COUNT1_17__N_278[6]), 
         .C(COUNT1_17__N_278[8]), .D(COUNT1_17__N_278[13]), .Z(n6790)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6028_4_lut.init = 16'h8000;
    CCU2D add_4810_21 (.A0(mode[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5824), 
          .COUT(n5825));
    defparam add_4810_21.INIT0 = 16'hf555;
    defparam add_4810_21.INIT1 = 16'hf555;
    defparam add_4810_21.INJECT1_0 = "NO";
    defparam add_4810_21.INJECT1_1 = "NO";
    LUT4 i5970_2_lut (.A(COUNT1_17__N_278[3]), .B(COUNT1_17__N_278[5]), 
         .Z(n6731)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5970_2_lut.init = 16'h8888;
    LUT4 s11_3__bdd_4_lut (.A(s11[3]), .B(n5942), .C(s11[2]), .D(n7294), 
         .Z(n6996)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam s11_3__bdd_4_lut.init = 16'h6aa9;
    CCU2D add_4810_19 (.A0(mode[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5823), 
          .COUT(n5824));
    defparam add_4810_19.INIT0 = 16'hf555;
    defparam add_4810_19.INIT1 = 16'hf555;
    defparam add_4810_19.INJECT1_0 = "NO";
    defparam add_4810_19.INJECT1_1 = "NO";
    CCU2D add_4810_17 (.A0(mode[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5822), 
          .COUT(n5823));
    defparam add_4810_17.INIT0 = 16'hf555;
    defparam add_4810_17.INIT1 = 16'hf555;
    defparam add_4810_17.INJECT1_0 = "NO";
    defparam add_4810_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_102 (.A(\Clock_status[1] ), .B(Clock_status[0]), .Z(n7346)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_102.init = 16'h4444;
    CCU2D mode_802_add_4_11 (.A0(mode[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5734), .COUT(n5735), .S0(n133[9]), .S1(n133[10]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_11.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_11.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_11.INJECT1_0 = "NO";
    defparam mode_802_add_4_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut (.A(\Clock_status[1] ), .B(Clock_status[0]), .C(h21[0]), 
         .D(n7325), .Z(n6544)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut_4_lut (.A(n7324), .B(n7348), .C(n6999), .D(n3711), 
         .Z(n1403)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0020;
    FD1P3IX mode_802__i25 (.D(n133[25]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i25.GSR = "DISABLED";
    FD1P3IX mode_802__i26 (.D(n133[26]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i26.GSR = "DISABLED";
    FD1P3IX s2_812__i1 (.D(n5959), .SP(Clock_top_c_enable_61), .CD(n2521), 
            .CK(Clock_top_c), .Q(s21[1]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_812__i1.GSR = "ENABLED";
    LUT4 i3101_2_lut_rep_104 (.A(s11[1]), .B(s11[3]), .Z(n7348)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3101_2_lut_rep_104.init = 16'heeee;
    FD1P3IX s2_812__i2 (.D(n5958), .SP(Clock_top_c_enable_61), .CD(n2521), 
            .CK(Clock_top_c), .Q(s21[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_812__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_68_3_lut_4_lut (.A(s11[1]), .B(s11[3]), .C(n7351), 
         .D(n7350), .Z(n7312)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_68_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_rep_71 (.A(n6511), .B(s21[0]), .C(s21[3]), .Z(n7315)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_rep_71.init = 16'h2020;
    LUT4 i2_3_lut_rep_105 (.A(h11[3]), .B(h11[2]), .C(h11[0]), .Z(n7321)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_105.init = 16'hfefe;
    LUT4 i3290_2_lut_rep_83_4_lut (.A(h11[3]), .B(h11[2]), .C(h11[0]), 
         .D(h11[1]), .Z(n7327)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3290_2_lut_rep_83_4_lut.init = 16'hfffe;
    LUT4 i5927_2_lut_4_lut (.A(h11[3]), .B(h11[2]), .C(h11[0]), .D(h21[3]), 
         .Z(n6687)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5927_2_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut (.A(n2362), .B(n7330), .C(s11[0]), .D(n7312), .Z(n6609)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 h11_3__bdd_4_lut (.A(h11[3]), .B(n1066), .C(h11[2]), .D(n7365), 
         .Z(n7157)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam h11_3__bdd_4_lut.init = 16'h9aa6;
    LUT4 i1_2_lut_rep_106 (.A(s21[1]), .B(s21[2]), .Z(n7350)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_rep_106.init = 16'heeee;
    CCU2D add_4810_15 (.A0(mode[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5821), 
          .COUT(n5822));
    defparam add_4810_15.INIT0 = 16'hf555;
    defparam add_4810_15.INIT1 = 16'hf555;
    defparam add_4810_15.INJECT1_0 = "NO";
    defparam add_4810_15.INJECT1_1 = "NO";
    LUT4 i6153_2_lut_3_lut (.A(n6511), .B(s21[0]), .C(s21[3]), .Z(n2_adj_577)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6153_2_lut_3_lut.init = 16'h1313;
    LUT4 n7098_bdd_2_lut_3_lut_4_lut (.A(s21[1]), .B(s21[2]), .C(\Clock_status[1] ), 
         .D(n7097), .Z(n7099)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam n7098_bdd_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i3_3_lut_4_lut (.A(s21[1]), .B(s21[2]), .C(Clock_status[0]), 
         .D(n6_adj_578), .Z(n5942)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i3_3_lut_4_lut.init = 16'hffef;
    FD1P3IX h1_807__i3 (.D(n7157), .SP(Clock_top_c_enable_103), .CD(n2955), 
            .CK(Clock_top_c), .Q(h11[3]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_807__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_107 (.A(\Clock_status[1] ), .B(Clock_status[0]), .Z(n7351)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_107.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_50 (.A(n7357), .B(Keyout1[1]), .C(Keyout1[0]), 
         .D(m21[3]), .Z(n6679)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_50.init = 16'hfffb;
    LUT4 i1_2_lut_rep_80_3_lut_4_lut (.A(\Clock_status[1] ), .B(Clock_status[0]), 
         .C(s21[2]), .D(s21[1]), .Z(n7324)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_80_3_lut_4_lut.init = 16'h0008;
    FD1P3IX h1_807__i2 (.D(n5968), .SP(Clock_top_c_enable_103), .CD(n2955), 
            .CK(Clock_top_c), .Q(h11[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_807__i2.GSR = "ENABLED";
    FD1P3IX m2_805__i2 (.D(n5967), .SP(Clock_top_c_enable_86), .CD(n2591), 
            .CK(Clock_top_c), .Q(m21[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_805__i2.GSR = "ENABLED";
    FD1P3IX mode_802__i1 (.D(n133[1]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i1.GSR = "DISABLED";
    FD1P3IX mode_802__i2 (.D(n133[2]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i2.GSR = "DISABLED";
    FD1P3IX h2_806__i2 (.D(n5954), .SP(Clock_top_c_enable_85), .CD(n2590), 
            .CK(Clock_top_c), .Q(h21[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_806__i2.GSR = "ENABLED";
    FD1P3IX mode_802__i3 (.D(n133[3]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i3.GSR = "DISABLED";
    FD1P3IX mode_802__i5 (.D(n133[5]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i5.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_51 (.A(s21[1]), .B(s21[0]), .C(n1054), .D(s21[2]), 
         .Z(n5958)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_4_lut_adj_51.init = 16'he718;
    LUT4 i1886_4_lut (.A(Clock_top_c_enable_61), .B(n7315), .C(n7324), 
         .D(n9_c), .Z(n2521)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1886_4_lut.init = 16'ha888;
    CCU2D mode_802_add_4_9 (.A0(mode[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5733), .COUT(n5734), .S0(n133[7]), .S1(n133[8]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_9.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_9.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_9.INJECT1_0 = "NO";
    defparam mode_802_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_3_lut_4_lut (.A(s21[1]), .B(s21[0]), .C(n1054), .D(s21[2]), 
         .Z(n4_adj_579)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_4_lut_3_lut_4_lut.init = 16'h0810;
    CCU2D add_4810_13 (.A0(mode[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5820), 
          .COUT(n5821));
    defparam add_4810_13.INIT0 = 16'hf555;
    defparam add_4810_13.INIT1 = 16'hf555;
    defparam add_4810_13.INJECT1_0 = "NO";
    defparam add_4810_13.INJECT1_1 = "NO";
    LUT4 i13_3_lut_3_lut (.A(h21[2]), .B(n14), .C(h21[0]), .Z(n6_adj_580)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i13_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i22_4_lut (.A(n7310), .B(n7325), .C(s21[3]), .D(s21[0]), .Z(n9_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;
    defparam i22_4_lut.init = 16'hc00a;
    CCU2D add_8_9 (.A0(COUNT1[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5724), .COUT(n5725), .S0(COUNT1_17__N_278[7]), .S1(COUNT1_17__N_278[8]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    LUT4 equal_84_i6_2_lut_rep_108 (.A(Keyout1[0]), .B(Keyout1[1]), .Z(n7352)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(127[9:18])
    defparam equal_84_i6_2_lut_rep_108.init = 16'hdddd;
    FD1P3IX mode_802__i6 (.D(n133[6]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i6.GSR = "DISABLED";
    CCU2D add_4810_11 (.A0(mode[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5819), 
          .COUT(n5820));
    defparam add_4810_11.INIT0 = 16'hf555;
    defparam add_4810_11.INIT1 = 16'hf555;
    defparam add_4810_11.INJECT1_0 = "NO";
    defparam add_4810_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(s21[1]), .B(n1054), .C(s21[0]), .Z(n5959)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut.init = 16'h9696;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(Keyout1[0]), .B(Keyout1[1]), .C(m11[2]), 
         .D(n7357), .Z(n7)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(127[9:18])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    CCU2D add_4810_9 (.A0(mode[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5818), 
          .COUT(n5819));
    defparam add_4810_9.INIT0 = 16'hf555;
    defparam add_4810_9.INIT1 = 16'hf555;
    defparam add_4810_9.INJECT1_0 = "NO";
    defparam add_4810_9.INJECT1_1 = "NO";
    CCU2D add_4810_7 (.A0(mode[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5817), 
          .COUT(n5818));
    defparam add_4810_7.INIT0 = 16'hf555;
    defparam add_4810_7.INIT1 = 16'hf555;
    defparam add_4810_7.INJECT1_0 = "NO";
    defparam add_4810_7.INJECT1_1 = "NO";
    FD1P3IX mode_802__i7 (.D(n133[7]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i7.GSR = "DISABLED";
    FD1P3IX mode_802__i11 (.D(n133[11]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i11.GSR = "DISABLED";
    FD1P3IX mode_802__i17 (.D(n133[17]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i17.GSR = "DISABLED";
    FD1P3IX mode_802__i18 (.D(n133[18]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i18.GSR = "DISABLED";
    FD1P3IX mode_802__i12 (.D(n133[12]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i12.GSR = "DISABLED";
    FD1P3IX mode_802__i19 (.D(n133[19]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i19.GSR = "DISABLED";
    FD1P3IX mode_802__i13 (.D(n133[13]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i13.GSR = "DISABLED";
    FD1P3IX mode_802__i8 (.D(n133[8]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i8.GSR = "DISABLED";
    FD1P3IX mode_802__i14 (.D(n133[14]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i14.GSR = "DISABLED";
    FD1P3IX mode_802__i20 (.D(n133[20]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i20.GSR = "DISABLED";
    FD1P3IX mode_802__i15 (.D(n133[15]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i15.GSR = "DISABLED";
    FD1P3IX mode_802__i9 (.D(n133[9]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i9.GSR = "DISABLED";
    FD1P3IX mode_802__i16 (.D(n133[16]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i16.GSR = "DISABLED";
    FD1P3IX mode_802__i10 (.D(n133[10]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i10.GSR = "DISABLED";
    CCU2D add_4810_5 (.A0(mode[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5816), 
          .COUT(n5817));
    defparam add_4810_5.INIT0 = 16'hf555;
    defparam add_4810_5.INIT1 = 16'hf555;
    defparam add_4810_5.INJECT1_0 = "NO";
    defparam add_4810_5.INJECT1_1 = "NO";
    LUT4 i6180_2_lut_rep_65_2_lut_3_lut (.A(Keyout1[0]), .B(Keyout1[1]), 
         .C(n7357), .Z(n7309)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(127[9:18])
    defparam i6180_2_lut_rep_65_2_lut_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_52 (.A(Keyout1[0]), .B(Keyout1[1]), 
         .C(m21[3]), .D(n7357), .Z(n33)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(127[9:18])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_52.init = 16'hffdf;
    CCU2D mode_802_add_4_7 (.A0(mode[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5732), .COUT(n5733), .S0(n133[5]), .S1(n133[6]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_7.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_7.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_7.INJECT1_0 = "NO";
    defparam mode_802_add_4_7.INJECT1_1 = "NO";
    LUT4 i48_4_lut_else_4_lut (.A(s21[0]), .B(Keyout1[0]), .C(Keyout1[1]), 
         .D(n7357), .Z(n7374)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i48_4_lut_else_4_lut.init = 16'hffef;
    LUT4 i1334_3_lut_4_lut_3_lut (.A(Keyout1[0]), .B(Keyout1[1]), .C(n7357), 
         .Z(n3)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(139[9:18])
    defparam i1334_3_lut_4_lut_3_lut.init = 16'hf9f9;
    FD1P3IX mode_802__i21 (.D(n133[21]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i21.GSR = "DISABLED";
    FD1P3IX mode_802__i23 (.D(n133[23]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i23.GSR = "DISABLED";
    FD1P3IX mode_802__i27 (.D(n133[27]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i27.GSR = "DISABLED";
    FD1P3IX mode_802__i28 (.D(n133[28]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i28.GSR = "DISABLED";
    FD1P3IX mode_802__i29 (.D(n133[29]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i29.GSR = "DISABLED";
    FD1P3IX mode_802__i24 (.D(n133[24]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i24.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_84_3_lut (.A(Keyout1[0]), .B(Keyout1[1]), .C(n7357), 
         .Z(n7328)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(139[9:18])
    defparam i1_2_lut_rep_84_3_lut.init = 16'hfbfb;
    LUT4 i2998_2_lut_rep_110 (.A(\Clock_status[1] ), .B(Clock_status[0]), 
         .Z(n7354)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2998_2_lut_rep_110.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_53 (.A(\Clock_status[1] ), .B(Clock_status[0]), 
         .C(s21[2]), .D(s21[1]), .Z(n6511)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_53.init = 16'h0100;
    LUT4 i3_3_lut_rep_89_4_lut (.A(\Clock_status[1] ), .B(Clock_status[0]), 
         .C(n7355), .D(n7356), .Z(n7333)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i3_3_lut_rep_89_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\Clock_status[1] ), .B(Clock_status[0]), 
         .C(h11[2]), .D(h11[3]), .Z(n4_adj_576)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_111 (.A(m11[0]), .B(m11[3]), .Z(n7355)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(115[13:22])
    defparam i1_2_lut_rep_111.init = 16'heeee;
    FD1P3IX m1_804__i1 (.D(n5978), .SP(Clock_top_c_enable_87), .CD(n2815), 
            .CK(Clock_top_c), .Q(m11[1]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_804__i1.GSR = "ENABLED";
    FD1P3IX mode_802__i4 (.D(n133[4]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i4.GSR = "DISABLED";
    FD1P3IX m1_804__i3 (.D(n7088), .SP(Clock_top_c_enable_87), .CD(n2815), 
            .CK(Clock_top_c), .Q(m11[3]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_804__i3.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut_adj_54 (.A(m11[0]), .B(m11[3]), .C(n10_adj_575), 
         .D(n7356), .Z(n5869)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(115[13:22])
    defparam i2_2_lut_3_lut_4_lut_adj_54.init = 16'he0f0;
    FD1P3IX m2_805__i1 (.D(n5970), .SP(Clock_top_c_enable_86), .CD(n2591), 
            .CK(Clock_top_c), .Q(m21[1]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_805__i1.GSR = "ENABLED";
    LUT4 i6183_2_lut_4_lut_4_lut (.A(m11[0]), .B(m11[3]), .C(n7354), .D(n7356), 
         .Z(n2)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(115[13:22])
    defparam i6183_2_lut_4_lut_4_lut.init = 16'h5455;
    LUT4 i5934_2_lut_rep_112 (.A(m11[1]), .B(m11[2]), .Z(n7356)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5934_2_lut_rep_112.init = 16'h8888;
    CCU2D add_4810_3 (.A0(mode[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5815), 
          .COUT(n5816));
    defparam add_4810_3.INIT0 = 16'h0aaa;
    defparam add_4810_3.INIT1 = 16'hf555;
    defparam add_4810_3.INJECT1_0 = "NO";
    defparam add_4810_3.INJECT1_1 = "NO";
    LUT4 i2_2_lut_rep_87_3_lut_4_lut (.A(m11[1]), .B(m11[2]), .C(m11[3]), 
         .D(m11[0]), .Z(n7331)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_2_lut_rep_87_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_3_lut_rep_113 (.A(Keyout1[4]), .B(Keyout1[3]), .C(Keyout1[2]), 
         .Z(n7357)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_3_lut_rep_113.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_85_4_lut (.A(Keyout1[4]), .B(Keyout1[3]), .C(Keyout1[2]), 
         .D(Keyout1[0]), .Z(n7329)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_2_lut_rep_85_4_lut.init = 16'hbfff;
    CCU2D mode_802_add_4_5 (.A0(mode[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5731), .COUT(n5732), .S0(n133[3]), .S1(n133[4]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_5.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_5.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_5.INJECT1_0 = "NO";
    defparam mode_802_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(n7_adj_582), .B(n7_adj_583), .Z(n7_adj_584)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_114 (.A(m21[3]), .B(m21[0]), .Z(n7358)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_114.init = 16'h8888;
    CCU2D add_8_7 (.A0(COUNT1[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5723), .COUT(n5724), .S0(COUNT1_17__N_278[5]), .S1(COUNT1_17__N_278[6]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    LUT4 i1956_3_lut (.A(Clock_top_c_enable_86), .B(n1431), .C(n1), .Z(n2591)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1956_3_lut.init = 16'ha8a8;
    LUT4 i2_4_lut (.A(n7359), .B(m21[3]), .C(n7310), .D(n6658), .Z(n961)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    LUT4 n979_bdd_4_lut_6259_3_lut (.A(h11[1]), .B(n7300), .C(n7321), 
         .Z(n7089)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam n979_bdd_4_lut_6259_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(m21[3]), .B(m21[0]), .C(n7359), 
         .D(n7361), .Z(n7314)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_115 (.A(\Clock_status[1] ), .B(Clock_status[0]), .Z(n7359)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_115.init = 16'h2222;
    CCU2D add_4810_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n5815));
    defparam add_4810_1.INIT0 = 16'hF000;
    defparam add_4810_1.INIT1 = 16'h0aaa;
    defparam add_4810_1.INJECT1_0 = "NO";
    defparam add_4810_1.INJECT1_1 = "NO";
    LUT4 i1955_2_lut (.A(Clock_top_c_enable_85), .B(n898), .Z(n2590)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1955_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_adj_55 (.A(Keyout1[3]), .B(Keyout1[4]), .C(Keyout1[2]), 
         .Z(n2387)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i2_3_lut_adj_55.init = 16'h2020;
    LUT4 i6158_2_lut_rep_117 (.A(m21[1]), .B(m21[2]), .Z(n7361)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6158_2_lut_rep_117.init = 16'h1111;
    LUT4 i1_2_lut_3_lut (.A(m21[1]), .B(m21[2]), .C(m21[0]), .Z(n6658)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_88_3_lut_4_lut (.A(m21[1]), .B(m21[2]), .C(Clock_status[0]), 
         .D(\Clock_status[1] ), .Z(n7332)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_88_3_lut_4_lut.init = 16'h0100;
    LUT4 i4826_4_lut_rep_51_3_lut (.A(m11[1]), .B(m11[0]), .C(n5953), 
         .Z(n7295)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4826_4_lut_rep_51_3_lut.init = 16'h8e8e;
    LUT4 i1_2_lut_4_lut_3_lut (.A(m11[1]), .B(m11[0]), .C(n5953), .Z(n4)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i6137_4_lut (.A(n6877), .B(n49), .C(n56), .D(n50), .Z(Clock_top_c_enable_95)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i6137_4_lut.init = 16'h0002;
    LUT4 i2_2_lut_3_lut (.A(m11[1]), .B(m11[3]), .C(m11[0]), .Z(n8)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_4_lut_adj_56 (.A(m11[1]), .B(m11[3]), .C(m11[0]), .D(m11[2]), 
         .Z(n5949)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_56.init = 16'hfffe;
    CCU2D mode_802_add_4_3 (.A0(mode[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5730), .COUT(n5731), .S0(n133[1]), .S1(n133[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_3.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_3.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_3.INJECT1_0 = "NO";
    defparam mode_802_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_57 (.A(m21[1]), .B(m21[0]), .C(n961), .D(m21[2]), 
         .Z(n5967)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_4_lut_adj_57.init = 16'he718;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n7357), .B(s21[0]), .C(s21[3]), .D(n7352), 
         .Z(n2362)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(127[9:18])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i6135_4_lut (.A(mode[21]), .B(n54), .C(n46), .D(mode[4]), .Z(n6877)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6135_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_3_lut_4_lut_adj_58 (.A(m21[1]), .B(m21[0]), .C(n961), 
         .D(m21[2]), .Z(n4_adj_586)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_4_lut_3_lut_4_lut_adj_58.init = 16'h0810;
    PFUMX i6359 (.BLUT(n7374), .ALUT(n7375), .C0(s21[3]), .Z(n7376));
    LUT4 i2_4_lut_adj_59 (.A(n5308), .B(Clock_status[0]), .C(n4487), .D(n4_adj_2), 
         .Z(n2815)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam i2_4_lut_adj_59.init = 16'h2220;
    LUT4 i2_3_lut_adj_60 (.A(m11[1]), .B(n5953), .C(m11[0]), .Z(n5978)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut_adj_60.init = 16'h6969;
    LUT4 i4_4_lut_adj_61 (.A(n7_adj_588), .B(n6680), .C(Clock_status[0]), 
         .D(n5949), .Z(n5953)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i4_4_lut_adj_61.init = 16'hfeff;
    LUT4 i3_2_lut_3_lut_4_lut (.A(n2387), .B(n7340), .C(n7358), .D(n7332), 
         .Z(n9)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX i27 (.BLUT(n6665), .ALUT(n6_adj_580), .C0(n7309), .Z(n12));
    LUT4 i19_4_lut (.A(mode[23]), .B(mode[20]), .C(mode[15]), .D(mode[17]), 
         .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i26_4_lut (.A(mode[19]), .B(n52), .C(n42), .D(mode[14]), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i26_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_62 (.A(n7361), .B(n6679), .C(n33), .D(m21[0]), 
         .Z(n7_adj_588)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i2_4_lut_adj_62.init = 16'hf5dd;
    LUT4 n3_bdd_3_lut (.A(Clock_status[0]), .B(n7_adj_590), .C(one_sec_flag), 
         .Z(n7214)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam n3_bdd_3_lut.init = 16'h5151;
    CCU2D one_sec_cnt_808_add_4_25 (.A0(one_sec_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5781), .S0(n101[23]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_25.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_25.INIT1 = 16'h0000;
    defparam one_sec_cnt_808_add_4_25.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_25.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_808_add_4_23 (.A0(one_sec_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5780), .COUT(n5781), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_23.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_23.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_23.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_23.INJECT1_1 = "NO";
    LUT4 m11_3__bdd_4_lut (.A(m11[3]), .B(n5953), .C(m11[2]), .D(n7295), 
         .Z(n7088)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam m11_3__bdd_4_lut.init = 16'h6aa9;
    LUT4 i1293_4_lut (.A(s21[3]), .B(n955), .C(n4_adj_579), .D(n6_adj_591), 
         .Z(n1898)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1293_4_lut.init = 16'hdcde;
    LUT4 i1918_3_lut (.A(Clock_top_c_enable_76), .B(n1403), .C(n1_adj_592), 
         .Z(n2553)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1918_3_lut.init = 16'ha8a8;
    LUT4 n3_bdd_4_lut (.A(n3), .B(Clock_status[0]), .C(n7214), .D(\Clock_status[1] ), 
         .Z(Clock_top_c_enable_61)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n3_bdd_4_lut.init = 16'h44f0;
    LUT4 i2_3_lut_adj_63 (.A(s11[1]), .B(n5942), .C(s11[0]), .Z(n5974)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut_adj_63.init = 16'h6969;
    LUT4 i3_4_lut_adj_64 (.A(s21[0]), .B(s21[2]), .C(s21[1]), .D(s21[3]), 
         .Z(n7_adj_590)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3_4_lut_adj_64.init = 16'hefff;
    LUT4 i2_4_lut_adj_65 (.A(n5949), .B(n7332), .C(n61), .Z(n4487)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2_4_lut_adj_65.init = 16'h4040;
    LUT4 i5050_4_lut_3_lut_rep_121 (.A(h11[1]), .B(h11[0]), .C(n1066), 
         .Z(n7365)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i5050_4_lut_3_lut_rep_121.init = 16'he8e8;
    LUT4 i1_4_lut_adj_66 (.A(Keyout1[1]), .B(n6549), .C(n7358), .D(n7309), 
         .Z(n61)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_66.init = 16'ha088;
    LUT4 i2_3_lut_4_lut_adj_67 (.A(h11[1]), .B(h11[0]), .C(n1066), .D(h11[2]), 
         .Z(n5968)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_4_lut_adj_67.init = 16'he718;
    CCU2D add_8_5 (.A0(COUNT1[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5722), .COUT(n5723), .S0(COUNT1_17__N_278[3]), .S1(COUNT1_17__N_278[4]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    FD1P3AX s2_812__i0 (.D(n2_adj_577), .SP(Clock_top_c_enable_61), .CK(Clock_top_c), 
            .Q(s21[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_812__i0.GSR = "ENABLED";
    CCU2D mode_802_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5730), .S1(n133[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_1.INIT0 = 16'hF000;
    defparam mode_802_add_4_1.INIT1 = 16'h0555;
    defparam mode_802_add_4_1.INJECT1_0 = "NO";
    defparam mode_802_add_4_1.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_808_add_4_21 (.A0(one_sec_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5779), .COUT(n5780), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_21.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_21.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_21.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_21.INJECT1_1 = "NO";
    FD1S3IX one_sec_cnt_808__i0 (.D(n101[0]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i0.GSR = "ENABLED";
    CCU2D one_sec_cnt_808_add_4_19 (.A0(one_sec_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5778), .COUT(n5779), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_19.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_19.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_19.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_19.INJECT1_1 = "NO";
    LUT4 i6150_4_lut (.A(Clock_status[0]), .B(n7_adj_584), .C(n3), .D(\Clock_status[1] ), 
         .Z(Clock_top_c_enable_86)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6150_4_lut.init = 16'h0511;
    CCU2D add_8_19 (.A0(COUNT1[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5729), 
          .S0(COUNT1_17__N_278[17]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_19.INIT0 = 16'h5aaa;
    defparam add_8_19.INIT1 = 16'h0000;
    defparam add_8_19.INJECT1_0 = "NO";
    defparam add_8_19.INJECT1_1 = "NO";
    CCU2D add_8_3 (.A0(COUNT1[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5721), .COUT(n5722), .S0(COUNT1_17__N_278[1]), .S1(COUNT1_17__N_278[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    CCU2D add_8_17 (.A0(COUNT1[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5728), .COUT(n5729), .S0(COUNT1_17__N_278[15]), .S1(COUNT1_17__N_278[16]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h5aaa;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    FD1P3AX s1_803__i2 (.D(n2002), .SP(Clock_top_c_enable_76), .CK(Clock_top_c), 
            .Q(s11[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_803__i2.GSR = "ENABLED";
    LUT4 i20_4_lut (.A(mode[12]), .B(mode[5]), .C(mode[6]), .D(mode[28]), 
         .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_68 (.A(n7361), .B(n7359), .C(n3677), .D(n7310), 
         .Z(n1431)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_68.init = 16'h0800;
    FD1S3DX COUNT1_i17 (.D(COUNT1_17__N_278[17]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[17])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i17.GSR = "DISABLED";
    FD1S3DX COUNT1_i16 (.D(COUNT1_17__N_278[16]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[16])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i16.GSR = "DISABLED";
    FD1S3DX COUNT1_i15 (.D(COUNT1_17__N_278[15]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[15])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i15.GSR = "DISABLED";
    FD1S3DX COUNT1_i14 (.D(COUNT1_17__N_278[14]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[14])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i14.GSR = "DISABLED";
    FD1S3DX COUNT1_i13 (.D(COUNT1_17__N_278[13]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[13])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i13.GSR = "DISABLED";
    FD1S3DX COUNT1_i12 (.D(COUNT1_17__N_278[12]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[12])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i12.GSR = "DISABLED";
    FD1S3DX COUNT1_i11 (.D(COUNT1_17__N_278[11]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i11.GSR = "DISABLED";
    FD1S3DX COUNT1_i10 (.D(COUNT1_17__N_278[10]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i10.GSR = "DISABLED";
    FD1S3DX COUNT1_i9 (.D(COUNT1_17__N_278[9]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i9.GSR = "DISABLED";
    FD1S3DX COUNT1_i8 (.D(COUNT1_17__N_278[8]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i8.GSR = "DISABLED";
    FD1S3DX COUNT1_i7 (.D(COUNT1_17__N_278[7]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i7.GSR = "DISABLED";
    FD1S3DX COUNT1_i6 (.D(COUNT1_17__N_278[6]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i6.GSR = "DISABLED";
    FD1S3DX COUNT1_i5 (.D(COUNT1_17__N_278[5]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i5.GSR = "DISABLED";
    FD1S3DX COUNT1_i4 (.D(COUNT1_17__N_278[4]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i4.GSR = "DISABLED";
    FD1S3DX COUNT1_i3 (.D(COUNT1_17__N_278[3]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i3.GSR = "DISABLED";
    FD1S3DX COUNT1_i2 (.D(COUNT1_17__N_278[2]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i2.GSR = "DISABLED";
    FD1S3DX COUNT1_i1 (.D(COUNT1_17__N_278[1]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i1.GSR = "DISABLED";
    LUT4 i24_4_lut (.A(mode[16]), .B(n48), .C(n34), .D(mode[10]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i16_4_lut (.A(mode[8]), .B(mode[29]), .C(mode[22]), .D(mode[31]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(mode[25]), .B(mode[7]), .C(mode[13]), .D(mode[30]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i18_4_lut.init = 16'hfffe;
    FD1P3AX h2_806__i3 (.D(n7091), .SP(Clock_top_c_enable_85), .CK(Clock_top_c), 
            .Q(h21[3]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_806__i3.GSR = "ENABLED";
    FD1P3AX h2_806__i1 (.D(n27[1]), .SP(Clock_top_c_enable_85), .CK(Clock_top_c), 
            .Q(h21[1]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_806__i1.GSR = "ENABLED";
    FD1P3AX m2_805__i3 (.D(n2004), .SP(Clock_top_c_enable_86), .CK(Clock_top_c), 
            .Q(m21[3]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_805__i3.GSR = "ENABLED";
    FD1P3AX m1_804__i2 (.D(n2006), .SP(Clock_top_c_enable_87), .CK(Clock_top_c), 
            .Q(m11[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_804__i2.GSR = "ENABLED";
    FD1P3AX state_i0_i2 (.D(n1509[1]), .SP(Clock_top_c_enable_95), .CK(Clock_top_c), 
            .Q(ledstate[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n1509[0]), .SP(Clock_top_c_enable_95), .CK(Clock_top_c), 
            .Q(ledstate[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX Clock_status_i0_i1 (.D(mode[1]), .SP(Clock_top_c_enable_95), 
            .CK(Clock_top_c), .Q(\Clock_status[1] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam Clock_status_i0_i1.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i1 (.D(n101[1]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i1.GSR = "ENABLED";
    LUT4 i4_2_lut (.A(mode[3]), .B(mode[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i22_4_lut_adj_69 (.A(mode[2]), .B(mode[18]), .C(mode[24]), .D(mode[9]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i22_4_lut_adj_69.init = 16'hfffe;
    FD1S3IX one_sec_cnt_808__i2 (.D(n101[2]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i2.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i3 (.D(n101[3]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i3.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i4 (.D(n101[4]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i4.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i5 (.D(n101[5]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i5.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i6 (.D(n101[6]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i6.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i7 (.D(n101[7]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i7.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i8 (.D(n101[8]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i8.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i9 (.D(n101[9]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i9.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i10 (.D(n101[10]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i10.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i11 (.D(n101[11]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i11.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i12 (.D(n101[12]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i12.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i13 (.D(n101[13]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i13.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i14 (.D(n101[14]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i14.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i15 (.D(n101[15]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i15.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i16 (.D(n101[16]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i16.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i17 (.D(n101[17]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i17.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i18 (.D(n101[18]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i18.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i19 (.D(n101[19]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i19.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i20 (.D(n101[20]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i20.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i21 (.D(n101[21]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i21.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i22 (.D(n101[22]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i22.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_808__i23 (.D(n101[23]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808__i23.GSR = "ENABLED";
    FD1P3AX h1_807__i1 (.D(n2009), .SP(Clock_top_c_enable_103), .CK(Clock_top_c), 
            .Q(h11[1]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_807__i1.GSR = "ENABLED";
    LUT4 i12_2_lut (.A(mode[11]), .B(mode[27]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12_2_lut.init = 16'heeee;
    LUT4 n979_bdd_4_lut (.A(n7297), .B(n4_c), .C(h21[3]), .D(h21[2]), 
         .Z(n7090)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam n979_bdd_4_lut.init = 16'hb4d2;
    LUT4 Keyout1_1__bdd_4_lut_6205 (.A(n7311), .B(n7309), .C(s21[0]), 
         .D(s21[3]), .Z(n6997)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A (B (C (D)))) */ ;
    defparam Keyout1_1__bdd_4_lut_6205.init = 16'hc002;
    FD1P3IX mode_802__i30 (.D(n133[30]), .SP(clr), .CD(n2537), .CK(Clock_top_c), 
            .Q(mode[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802__i30.GSR = "DISABLED";
    CCU2D mode_802_add_4_33 (.A0(mode[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5745), .S0(n133[31]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_33.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_33.INIT1 = 16'h0000;
    defparam mode_802_add_4_33.INJECT1_0 = "NO";
    defparam mode_802_add_4_33.INJECT1_1 = "NO";
    CCU2D mode_802_add_4_31 (.A0(mode[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5744), .COUT(n5745), .S0(n133[29]), .S1(n133[30]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_31.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_31.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_31.INJECT1_0 = "NO";
    defparam mode_802_add_4_31.INJECT1_1 = "NO";
    LUT4 i599_1_lut (.A(mode[0]), .Z(n1136)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(48[3] 55[10])
    defparam i599_1_lut.init = 16'h5555;
    CCU2D mode_802_add_4_29 (.A0(mode[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5743), .COUT(n5744), .S0(n133[27]), .S1(n133[28]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_29.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_29.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_29.INJECT1_0 = "NO";
    defparam mode_802_add_4_29.INJECT1_1 = "NO";
    CCU2D mode_802_add_4_27 (.A0(mode[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5742), .COUT(n5743), .S0(n133[25]), .S1(n133[26]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_27.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_27.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_27.INJECT1_0 = "NO";
    defparam mode_802_add_4_27.INJECT1_1 = "NO";
    CCU2D add_8_15 (.A0(COUNT1[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5727), .COUT(n5728), .S0(COUNT1_17__N_278[13]), .S1(COUNT1_17__N_278[14]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    CCU2D mode_802_add_4_25 (.A0(mode[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5741), .COUT(n5742), .S0(n133[23]), .S1(n133[24]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_25.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_25.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_25.INJECT1_0 = "NO";
    defparam mode_802_add_4_25.INJECT1_1 = "NO";
    CCU2D mode_802_add_4_23 (.A0(mode[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5740), .COUT(n5741), .S0(n133[21]), .S1(n133[22]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_23.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_23.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_23.INJECT1_0 = "NO";
    defparam mode_802_add_4_23.INJECT1_1 = "NO";
    CCU2D mode_802_add_4_21 (.A0(mode[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5739), .COUT(n5740), .S0(n133[19]), .S1(n133[20]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_21.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_21.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_21.INJECT1_0 = "NO";
    defparam mode_802_add_4_21.INJECT1_1 = "NO";
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4070), .B1(n5857), .C1(COUNT1[0]), .D1(GND_net), .COUT(n5721), 
          .S1(COUNT1_17__N_278[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h8787;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    CCU2D add_8_13 (.A0(COUNT1[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5726), .COUT(n5727), .S0(COUNT1_17__N_278[11]), .S1(COUNT1_17__N_278[12]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_808_add_4_17 (.A0(one_sec_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5777), .COUT(n5778), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_808_add_4_17.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_17.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_808_add_4_17.INJECT1_0 = "NO";
    defparam one_sec_cnt_808_add_4_17.INJECT1_1 = "NO";
    CCU2D mode_802_add_4_19 (.A0(mode[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5738), .COUT(n5739), .S0(n133[17]), .S1(n133[18]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_19.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_19.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_19.INJECT1_0 = "NO";
    defparam mode_802_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_70 (.A(Clock_status[0]), .B(n5308), .Z(Clock_top_c_enable_87)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam i1_2_lut_adj_70.init = 16'h4444;
    LUT4 i2_4_lut_adj_71 (.A(s11[1]), .B(s11[0]), .C(s11[2]), .D(s11[3]), 
         .Z(n7_adj_583)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(107[11:20])
    defparam i2_4_lut_adj_71.init = 16'hffdf;
    LUT4 i3_4_lut_adj_72 (.A(m21[3]), .B(m21[1]), .C(m21[2]), .D(n7354), 
         .Z(n6627)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_72.init = 16'h0008;
    CCU2D mode_802_add_4_17 (.A0(mode[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5737), .COUT(n5738), .S0(n133[15]), .S1(n133[16]));   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_802_add_4_17.INIT0 = 16'hfaaa;
    defparam mode_802_add_4_17.INIT1 = 16'hfaaa;
    defparam mode_802_add_4_17.INJECT1_0 = "NO";
    defparam mode_802_add_4_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_73 (.A(m21[1]), .B(n961), .C(m21[0]), .Z(n5970)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_adj_73.init = 16'h9696;
    LUT4 i3055_2_lut (.A(m21[3]), .B(m21[0]), .Z(n3677)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3055_2_lut.init = 16'heeee;
    PFUMX i4700 (.BLUT(n5303), .ALUT(n5897), .C0(m21[3]), .Z(n5307));
    LUT4 i4701_4_lut (.A(n7331), .B(n5307), .C(\Clock_status[1] ), .D(n7_adj_582), 
         .Z(n5308)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(26[8:20])
    defparam i4701_4_lut.init = 16'hc5cf;
    LUT4 i2_3_lut_4_lut_4_lut_adj_74 (.A(n7357), .B(n7361), .C(m21[0]), 
         .D(n7352), .Z(n5897)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(127[9:18])
    defparam i2_3_lut_4_lut_4_lut_adj_74.init = 16'h0040;
    LUT4 i2_4_lut_adj_75 (.A(n7324), .B(s21[3]), .C(n7310), .D(s21[0]), 
         .Z(n955)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_4_lut_adj_75.init = 16'h0020;
    LUT4 i17_4_lut (.A(n6511), .B(n7325), .C(s21[0]), .D(n7324), .Z(n6_adj_591)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i17_4_lut.init = 16'hca0a;
    LUT4 i3_4_lut_adj_76 (.A(s11[1]), .B(n7354), .C(s11[0]), .D(s11[3]), 
         .Z(n6573)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_76.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_77 (.A(h21[3]), .B(n7341), .C(n7328), 
         .D(h21[2]), .Z(n6665)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_77.init = 16'hfffe;
    LUT4 i25_4_lut (.A(h21[3]), .B(n7321), .C(h21[1]), .D(h11[1]), .Z(n14)) /* synthesis lut_function=(!(A (C)+!A (B+!(C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i25_4_lut.init = 16'h1a0a;
    LUT4 i2_4_lut_adj_78 (.A(n7351), .B(n7350), .C(n7310), .D(n3683), 
         .Z(n1054)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_78.init = 16'ha080;
    LUT4 i2_4_lut_adj_79 (.A(n7348), .B(n6680), .C(n7376), .D(n3711), 
         .Z(n6_adj_578)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i2_4_lut_adj_79.init = 16'hfcfd;
    LUT4 i6142_4_lut (.A(\Clock_status[1] ), .B(n5869), .C(n3), .D(Clock_status[0]), 
         .Z(Clock_top_c_enable_85)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6142_4_lut.init = 16'h0511;
    LUT4 i3061_2_lut (.A(s21[3]), .B(s21[0]), .Z(n3683)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3061_2_lut.init = 16'heeee;
    LUT4 h2_806_mux_6_i1_4_lut (.A(h21[0]), .B(n7300), .C(n898), .Z(n27[0])) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_806_mux_6_i1_4_lut.init = 16'hc5c5;
    LUT4 i3_4_lut_adj_80 (.A(m21[0]), .B(m21[2]), .C(m21[1]), .D(m21[3]), 
         .Z(n7_adj_582)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3_4_lut_adj_80.init = 16'hefff;
    LUT4 i4_4_lut_adj_81 (.A(n2387), .B(Keyout1[0]), .C(Clock_status[0]), 
         .D(Keyout1[1]), .Z(n10)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut_adj_81.init = 16'h2000;
    LUT4 i3_2_lut (.A(Keyout1[2]), .B(Keyout1[1]), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut.init = 16'h8888;
    LUT4 i1393_4_lut (.A(n1_adj_592), .B(n1403), .C(s11[2]), .D(n4_adj_593), 
         .Z(n2002)) /* synthesis lut_function=(A (B)+!A (B+(C (D)+!C !(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1393_4_lut.init = 16'hdccd;
    LUT4 i1_4_lut_adj_82 (.A(n7354), .B(n6_adj_594), .C(n16), .D(h21[0]), 
         .Z(n898)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_82.init = 16'hccdc;
    LUT4 i1_4_lut_adj_83 (.A(h21[2]), .B(n17), .C(n2_adj_595), .D(n6544), 
         .Z(n6_adj_594)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_83.init = 16'h5450;
    LUT4 i28_4_lut (.A(h21[1]), .B(h21[3]), .C(n7342), .D(n7_c), .Z(n17)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B))) */ ;
    defparam i28_4_lut.init = 16'h4644;
    LUT4 i3_4_lut_adj_84 (.A(n7431), .B(h21[1]), .C(h21[3]), .D(h21[0]), 
         .Z(n2_adj_595)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_84.init = 16'h0002;
    LUT4 i4922_4_lut_rep_50_3_lut (.A(s11[1]), .B(s11[0]), .C(n5942), 
         .Z(n7294)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4922_4_lut_rep_50_3_lut.init = 16'h8e8e;
    LUT4 i1_4_lut_adj_85 (.A(n7342), .B(h21[2]), .C(h21[1]), .D(n7_c), 
         .Z(n6606)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_85.init = 16'h0400;
    LUT4 h2_806_mux_6_i2_4_lut (.A(h21[1]), .B(n991), .C(n898), .D(n4_adj_596), 
         .Z(n27[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_806_mux_6_i2_4_lut.init = 16'hc5ca;
    LUT4 i1395_4_lut (.A(n1), .B(n1431), .C(m21[3]), .D(n4_adj_586), 
         .Z(n2004)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1395_4_lut.init = 16'hcddc;
    LUT4 i1_2_lut_4_lut_3_lut_adj_86 (.A(s11[1]), .B(s11[0]), .C(n5942), 
         .Z(n4_adj_593)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_4_lut_3_lut_adj_86.init = 16'h7e7e;
    LUT4 i2_3_lut_4_lut_4_lut_adj_87 (.A(h21[2]), .B(n7323), .C(n4_c), 
         .D(n7299), .Z(n5954)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_87.init = 16'hb45a;
    LUT4 i1_2_lut_rep_53_3_lut_4_lut (.A(h21[2]), .B(n7323), .C(n7310), 
         .D(n7346), .Z(n7297)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_53_3_lut_4_lut.init = 16'he000;
    LUT4 i3089_2_lut (.A(s11[0]), .B(s11[2]), .Z(n3711)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3089_2_lut.init = 16'heeee;
    LUT4 i2_2_lut (.A(h11[1]), .B(h11[0]), .Z(n7_c)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    PFUMX i6265 (.BLUT(n7100), .ALUT(n7099), .C0(Clock_status[0]), .Z(Clock_top_c_enable_76));
    LUT4 i3234_2_lut (.A(mode[0]), .B(mode[1]), .Z(n1509[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(65[3] 77[11])
    defparam i3234_2_lut.init = 16'h8888;
    LUT4 i1276_2_lut (.A(mode[0]), .B(mode[1]), .Z(n1509[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(65[3] 77[11])
    defparam i1276_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_88 (.A(h21[2]), .B(n7_adj_597), .C(n6), .D(h11[1]), 
         .Z(n10_adj_575)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_4_lut_adj_88.init = 16'hc4cc;
    LUT4 i3_4_lut_adj_89 (.A(h21[3]), .B(h21[1]), .C(h21[0]), .D(h21[2]), 
         .Z(n7_adj_597)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(122[15:24])
    defparam i3_4_lut_adj_89.init = 16'hfff7;
    LUT4 i6129_4_lut (.A(n6870), .B(n5846), .C(n6685), .D(n5896), .Z(one_sec_cnt_23__N_407)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(230[6:26])
    defparam i6129_4_lut.init = 16'h8000;
    LUT4 i6128_4_lut (.A(n13), .B(one_sec_cnt[19]), .C(n12_adj_598), .D(one_sec_cnt[13]), 
         .Z(n6870)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(230[6:26])
    defparam i6128_4_lut.init = 16'h0001;
    LUT4 i3_4_lut_adj_90 (.A(one_sec_cnt[0]), .B(one_sec_cnt[12]), .C(one_sec_cnt[6]), 
         .D(one_sec_cnt[3]), .Z(n5846)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_90.init = 16'h8000;
    LUT4 i1_4_lut_adj_91 (.A(n1441), .B(n38), .C(n5969), .D(n40), .Z(n2009)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_91.init = 16'haaba;
    LUT4 i2_3_lut_adj_92 (.A(h11[1]), .B(n1066), .C(h11[0]), .Z(n5969)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_adj_92.init = 16'h9696;
    LUT4 i3444_4_lut (.A(n3978), .B(COUNT1[14]), .C(COUNT1[13]), .D(COUNT1[12]), 
         .Z(n4070)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i3444_4_lut.init = 16'hfcec;
    LUT4 i5925_3_lut (.A(n5895), .B(one_sec_cnt[1]), .C(one_sec_cnt[18]), 
         .Z(n6685)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5925_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_93 (.A(one_sec_cnt[20]), .B(one_sec_cnt[17]), .C(one_sec_cnt[11]), 
         .D(one_sec_cnt[23]), .Z(n5896)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_93.init = 16'h8000;
    LUT4 i5_4_lut (.A(one_sec_cnt[10]), .B(one_sec_cnt[22]), .C(one_sec_cnt[8]), 
         .D(one_sec_cnt[15]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(230[6:26])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i3352_4_lut (.A(COUNT1[10]), .B(COUNT1[11]), .C(n3844), .D(COUNT1[9]), 
         .Z(n3978)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i3352_4_lut.init = 16'hccc8;
    LUT4 i3222_2_lut (.A(COUNT1[7]), .B(COUNT1[8]), .Z(n3844)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3222_2_lut.init = 16'h8888;
    LUT4 i4_4_lut_adj_94 (.A(one_sec_cnt[14]), .B(one_sec_cnt[16]), .C(one_sec_cnt[5]), 
         .D(one_sec_cnt[21]), .Z(n12_adj_598)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(230[6:26])
    defparam i4_4_lut_adj_94.init = 16'hbfff;
    LUT4 i3_4_lut_adj_95 (.A(one_sec_cnt[9]), .B(one_sec_cnt[7]), .C(one_sec_cnt[4]), 
         .D(one_sec_cnt[2]), .Z(n5895)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_95.init = 16'h8000;
    LUT4 i2_3_lut_adj_96 (.A(COUNT1[17]), .B(COUNT1[16]), .C(COUNT1[15]), 
         .Z(n5857)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(37[8:21])
    defparam i2_3_lut_adj_96.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_97 (.A(n7346), .B(n7310), .C(h21[0]), 
         .D(n7307), .Z(n4_adj_596)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_97.init = 16'h78f0;
    LUT4 i6204_3_lut (.A(s11[2]), .B(s11[0]), .C(n6573), .Z(n2_adj_573)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6204_3_lut.init = 16'h1313;
    LUT4 i2_3_lut_4_lut_adj_98 (.A(h21[2]), .B(n7323), .C(n7308), .D(n6615), 
         .Z(n1066)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_98.init = 16'h1000;
    LUT4 i1902_2_lut (.A(clr), .B(n1247), .Z(n2537)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam i1902_2_lut.init = 16'h2222;
    LUT4 i1_3_lut (.A(s11[2]), .B(n6573), .C(n6609), .Z(n1_adj_592)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i5_3_lut_rep_56_4_lut (.A(h21[2]), .B(n7323), .C(n10), .D(\Clock_status[1] ), 
         .Z(n7300)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i5_3_lut_rep_56_4_lut.init = 16'h0010;
    LUT4 i4889_2_lut_rep_97 (.A(h21[1]), .B(h21[0]), .Z(n7341)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4889_2_lut_rep_97.init = 16'heeee;
    LUT4 n374_bdd_3_lut_6307 (.A(\Clock_status[1] ), .B(n7_adj_583), .C(n7_adj_590), 
         .Z(n7100)) /* synthesis lut_function=(!(A+(B (C)))) */ ;
    defparam n374_bdd_3_lut_6307.init = 16'h1515;
    
endmodule
//
// Verilog Description of module Display
//

module Display (Clock_top_c, Clock_top_c_enable_83, seg_number_out1, n288, 
            Clock_top_c_enable_73, sclk_out1_c, Clkout1M, sclk_out_N_515, 
            Clock_top_c_enable_57, n9, n3634, rclk_out1_c, Rst1_c, 
            ser_out1_c, \digit1[7] , \digit1[6] , \digit1[5] , \digit1[4] , 
            \digit1[3] , \digit1[2] );
    input Clock_top_c;
    input Clock_top_c_enable_83;
    input [7:0]seg_number_out1;
    output n288;
    input Clock_top_c_enable_73;
    output sclk_out1_c;
    input Clkout1M;
    output sclk_out_N_515;
    input Clock_top_c_enable_57;
    output n9;
    input n3634;
    output rclk_out1_c;
    input Rst1_c;
    output ser_out1_c;
    input \digit1[7] ;
    input \digit1[6] ;
    input \digit1[5] ;
    input \digit1[4] ;
    input \digit1[3] ;
    input \digit1[2] ;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    wire Clkout1M /* synthesis is_clock=1, SET_AS_NETWORK=Clkout1M */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(97[8:16])
    wire [7:0]number_reg;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(24[8:18])
    wire [3:0]n284;
    
    wire n2516;
    wire [4:0]write_times_counter;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(23[8:27])
    
    wire Clock_top_c_enable_52, n2551;
    wire [4:0]n25;
    wire [15:0]data_reg;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(22[8:16])
    
    wire n633, n632, n631, n630, n629, n628, n7, n625, n624, 
        n623, n622, n621, n620, n619, n7313, n2513, n7334;
    wire [7:0]digit_reg;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(25[8:17])
    
    wire n7364, n618, n298;
    
    FD1P3AX number_reg_i0_i0 (.D(seg_number_out1[0]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i0.GSR = "DISABLED";
    FD1P3AY data_state_FSM_i0_i0 (.D(n284[3]), .SP(Clock_top_c_enable_73), 
            .CK(Clock_top_c), .Q(n288));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i0.GSR = "ENABLED";
    FD1S3AX sclk_out_33 (.D(n2516), .CK(Clkout1M), .Q(sclk_out1_c)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam sclk_out_33.GSR = "ENABLED";
    FD1P3IX write_times_counter_809__i0 (.D(n25[0]), .SP(Clock_top_c_enable_52), 
            .CD(n2551), .CK(Clock_top_c), .Q(write_times_counter[0]));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam write_times_counter_809__i0.GSR = "DISABLED";
    LUT4 i1882_3_lut (.A(n284[1]), .B(sclk_out_N_515), .C(sclk_out1_c), 
         .Z(n2516)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam i1882_3_lut.init = 16'hdcdc;
    FD1P3AX data_reg__i15 (.D(n633), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[15])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i15.GSR = "DISABLED";
    FD1P3AX data_reg__i14 (.D(n632), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[14])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i14.GSR = "DISABLED";
    FD1P3AX data_reg__i13 (.D(n631), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[13])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i13.GSR = "DISABLED";
    FD1P3AX data_reg__i12 (.D(n630), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[12])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i12.GSR = "DISABLED";
    FD1P3AX data_reg__i11 (.D(n629), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i11.GSR = "DISABLED";
    LUT4 i5001_2_lut (.A(n284[1]), .B(write_times_counter[0]), .Z(n25[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam i5001_2_lut.init = 16'h6666;
    FD1P3AX data_reg__i10 (.D(n628), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i10.GSR = "DISABLED";
    LUT4 i4_4_lut (.A(n7), .B(write_times_counter[2]), .C(write_times_counter[1]), 
         .D(write_times_counter[4]), .Z(n9)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(48[9:33])
    defparam i4_4_lut.init = 16'hfeff;
    LUT4 i2_2_lut (.A(write_times_counter[3]), .B(write_times_counter[0]), 
         .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(48[9:33])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3IX data_reg__i8 (.D(data_reg[9]), .SP(Clock_top_c_enable_57), .CD(n3634), 
            .CK(Clock_top_c), .Q(data_reg[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i8.GSR = "DISABLED";
    FD1P3AX data_reg__i7 (.D(n625), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i7.GSR = "DISABLED";
    FD1P3IX data_reg__i9 (.D(data_reg[10]), .SP(Clock_top_c_enable_57), 
            .CD(n3634), .CK(Clock_top_c), .Q(data_reg[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i9.GSR = "DISABLED";
    FD1P3AX data_reg__i6 (.D(n624), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i6.GSR = "DISABLED";
    FD1P3AX data_reg__i5 (.D(n623), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i5.GSR = "DISABLED";
    FD1P3AX data_reg__i4 (.D(n622), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i4.GSR = "DISABLED";
    FD1P3AX data_reg__i3 (.D(n621), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i3.GSR = "DISABLED";
    FD1P3AX data_reg__i2 (.D(n620), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i2.GSR = "DISABLED";
    FD1P3AX data_reg__i1 (.D(n619), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i1.GSR = "DISABLED";
    LUT4 i91_2_lut_rep_69 (.A(n9), .B(sclk_out_N_515), .Z(n7313)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam i91_2_lut_rep_69.init = 16'h4444;
    LUT4 i1879_3_lut_4_lut (.A(n9), .B(sclk_out_N_515), .C(rclk_out1_c), 
         .D(n284[3]), .Z(n2513)) /* synthesis lut_function=(A (C+(D))+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam i1879_3_lut_4_lut.init = 16'hffb0;
    LUT4 i5030_3_lut_4_lut (.A(write_times_counter[2]), .B(n7334), .C(write_times_counter[3]), 
         .D(write_times_counter[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam i5030_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX write_times_counter_809__i3 (.D(n25[3]), .SP(Clock_top_c_enable_52), 
            .CD(n2551), .CK(Clock_top_c), .Q(write_times_counter[3]));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam write_times_counter_809__i3.GSR = "DISABLED";
    FD1P3IX write_times_counter_809__i1 (.D(n25[1]), .SP(Clock_top_c_enable_52), 
            .CD(n2551), .CK(Clock_top_c), .Q(write_times_counter[1]));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam write_times_counter_809__i1.GSR = "DISABLED";
    FD1P3IX write_times_counter_809__i2 (.D(n25[2]), .SP(Clock_top_c_enable_52), 
            .CD(n2551), .CK(Clock_top_c), .Q(write_times_counter[2]));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam write_times_counter_809__i2.GSR = "DISABLED";
    FD1P3IX write_times_counter_809__i4 (.D(n25[4]), .SP(Clock_top_c_enable_52), 
            .CD(n2551), .CK(Clock_top_c), .Q(write_times_counter[4]));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam write_times_counter_809__i4.GSR = "DISABLED";
    FD1S3AX rclk_out_32 (.D(n2513), .CK(Clkout1M), .Q(rclk_out1_c));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam rclk_out_32.GSR = "ENABLED";
    LUT4 i6144_3_lut_rep_62_4_lut (.A(sclk_out_N_515), .B(n9), .C(Clock_top_c_enable_73), 
         .D(Rst1_c), .Z(Clock_top_c_enable_52)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam i6144_3_lut_rep_62_4_lut.init = 16'h7000;
    LUT4 i1916_2_lut_4_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(Clock_top_c_enable_73), 
         .D(Rst1_c), .Z(n2551)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam i1916_2_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 mux_289_i16_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[0]), 
         .D(digit_reg[7]), .Z(n633)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i16_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i15_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[15]), 
         .D(digit_reg[6]), .Z(n632)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i15_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i14_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[14]), 
         .D(digit_reg[5]), .Z(n631)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i14_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i13_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[13]), 
         .D(digit_reg[4]), .Z(n630)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i13_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i12_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[12]), 
         .D(digit_reg[3]), .Z(n629)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i12_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i11_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[11]), 
         .D(digit_reg[2]), .Z(n628)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i11_3_lut_4_lut.init = 16'hf780;
    FD1P3AX ser_out_34 (.D(data_reg[0]), .SP(n284[1]), .CK(Clkout1M), 
            .Q(ser_out1_c));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam ser_out_34.GSR = "ENABLED";
    LUT4 mux_289_i8_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[8]), 
         .D(number_reg[7]), .Z(n625)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i7_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[7]), 
         .D(number_reg[6]), .Z(n624)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 i5003_2_lut_rep_120 (.A(n284[1]), .B(write_times_counter[0]), .Z(n7364)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam i5003_2_lut_rep_120.init = 16'h8888;
    LUT4 mux_289_i6_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[6]), 
         .D(number_reg[5]), .Z(n623)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 i5009_2_lut_3_lut (.A(n284[1]), .B(write_times_counter[0]), .C(write_times_counter[1]), 
         .Z(n25[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam i5009_2_lut_3_lut.init = 16'h7878;
    LUT4 i5012_2_lut_rep_90_3_lut (.A(n284[1]), .B(write_times_counter[0]), 
         .C(write_times_counter[1]), .Z(n7334)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam i5012_2_lut_rep_90_3_lut.init = 16'h8080;
    LUT4 mux_289_i5_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[5]), 
         .D(number_reg[4]), .Z(n622)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 i5016_2_lut_3_lut_4_lut (.A(n284[1]), .B(write_times_counter[0]), 
         .C(write_times_counter[2]), .D(write_times_counter[1]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam i5016_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX data_reg__i0 (.D(n618), .SP(Clock_top_c_enable_57), .CK(Clock_top_c), 
            .Q(data_reg[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam data_reg__i0.GSR = "DISABLED";
    LUT4 mux_289_i4_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[4]), 
         .D(number_reg[3]), .Z(n621)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i3_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[3]), 
         .D(number_reg[2]), .Z(n620)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i2_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[2]), 
         .D(number_reg[1]), .Z(n619)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i1_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[1]), 
         .D(number_reg[0]), .Z(n618)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam mux_289_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 reduce_or_88_i1_2_lut_3_lut (.A(sclk_out_N_515), .B(n9), .C(n288), 
         .Z(n298)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam reduce_or_88_i1_2_lut_3_lut.init = 16'hf8f8;
    FD1P3AX digit_reg_i0_i7 (.D(\digit1[7] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i7.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i6 (.D(\digit1[6] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i6.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i5 (.D(\digit1[5] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i5.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i4 (.D(\digit1[4] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i4.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i3 (.D(\digit1[3] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i3.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i2 (.D(\digit1[2] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i2.GSR = "DISABLED";
    FD1P3AX data_state_FSM_i0_i3 (.D(n7313), .SP(Clock_top_c_enable_73), 
            .CK(Clock_top_c), .Q(n284[3]));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX data_state_FSM_i0_i2 (.D(n284[1]), .SP(Clock_top_c_enable_73), 
            .CK(Clock_top_c), .Q(sclk_out_N_515));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX data_state_FSM_i0_i1 (.D(n298), .SP(Clock_top_c_enable_73), 
            .CK(Clock_top_c), .Q(n284[1]));   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i1.GSR = "ENABLED";
    FD1P3AX number_reg_i0_i7 (.D(seg_number_out1[7]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i7.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i6 (.D(seg_number_out1[6]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i6.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i5 (.D(seg_number_out1[5]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i5.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i4 (.D(seg_number_out1[4]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i4.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i3 (.D(seg_number_out1[3]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i3.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i2 (.D(seg_number_out1[2]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i2.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i1 (.D(seg_number_out1[1]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=11, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(30[7] 62[11])
    defparam number_reg_i0_i1.GSR = "DISABLED";
    LUT4 i5023_2_lut_3_lut_4_lut (.A(write_times_counter[1]), .B(n7364), 
         .C(write_times_counter[3]), .D(write_times_counter[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/display.vhd(46[28:47])
    defparam i5023_2_lut_3_lut_4_lut.init = 16'h78f0;
    
endmodule
//
// Verilog Description of module Clock_Div
//

module Clock_Div (Clock_top_c, n2519, Clkout1M, Clkout200, n7, GND_net);
    input Clock_top_c;
    output n2519;
    output Clkout1M;
    output Clkout200;
    output n7;
    input GND_net;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    wire Clkout1M /* synthesis is_clock=1, SET_AS_NETWORK=Clkout1M */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(97[8:16])
    wire Clkout200 /* synthesis is_clock=1, SET_AS_NETWORK=Clkout200 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(98[8:17])
    wire [13:0]cnt_200;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(16[8:15])
    wire [13:0]n61;
    
    wire Clk1_N_557, Clk2_N_558;
    wire [3:0]cnt_1M;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(17[8:14])
    wire [3:0]n21;
    
    wire n5769, n5768, n5767, n5766, n5765, n5764, n6805, n12, 
        n5763, n6784, n6723;
    
    FD1S3IX cnt_200_811__i12 (.D(n61[12]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i12.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i11 (.D(n61[11]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i11.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i10 (.D(n61[10]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i10.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i9 (.D(n61[9]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i9.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i8 (.D(n61[8]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i8.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i7 (.D(n61[7]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i7.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i6 (.D(n61[6]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i6.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i5 (.D(n61[5]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i5.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i4 (.D(n61[4]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i4.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i3 (.D(n61[3]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i3.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i2 (.D(n61[2]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i2.GSR = "ENABLED";
    FD1S3IX cnt_200_811__i1 (.D(n61[1]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i1.GSR = "ENABLED";
    FD1S3AX Clk1_20 (.D(Clk1_N_557), .CK(Clock_top_c), .Q(Clkout1M)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=142, LSE_RLINE=142 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(21[3] 44[10])
    defparam Clk1_20.GSR = "ENABLED";
    FD1S3AX Clk2_22 (.D(Clk2_N_558), .CK(Clock_top_c), .Q(Clkout200)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=142, LSE_RLINE=142 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(21[3] 44[10])
    defparam Clk2_22.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(Clkout1M), .B(n7), .Z(Clk1_N_557)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    FD1S3IX cnt_1M_810__i0 (.D(n21[0]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_810__i0.GSR = "ENABLED";
    CCU2D cnt_200_811_add_4_15 (.A0(cnt_200[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5769), .S0(n61[13]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_200_811_add_4_15.INIT1 = 16'h0000;
    defparam cnt_200_811_add_4_15.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_200_811_add_4_13 (.A0(cnt_200[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5768), .COUT(n5769), .S0(n61[11]), .S1(n61[12]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_200_811_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_200_811_add_4_13.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_200_811_add_4_11 (.A0(cnt_200[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5767), .COUT(n5768), .S0(n61[9]), .S1(n61[10]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_200_811_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_200_811_add_4_11.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_48 (.A(Clkout200), .B(n2519), .Z(Clk2_N_558)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_48.init = 16'h6666;
    CCU2D cnt_200_811_add_4_9 (.A0(cnt_200[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5766), .COUT(n5767), .S0(n61[7]), .S1(n61[8]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_200_811_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_200_811_add_4_9.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_9.INJECT1_1 = "NO";
    LUT4 i4979_1_lut (.A(cnt_1M[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4979_1_lut.init = 16'h5555;
    CCU2D cnt_200_811_add_4_7 (.A0(cnt_200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5765), .COUT(n5766), .S0(n61[5]), .S1(n61[6]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_200_811_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_200_811_add_4_7.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_200_811_add_4_5 (.A0(cnt_200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5764), .COUT(n5765), .S0(n61[3]), .S1(n61[4]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_200_811_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_200_811_add_4_5.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_5.INJECT1_1 = "NO";
    LUT4 i6111_4_lut (.A(n6805), .B(n12), .C(cnt_200[4]), .D(cnt_200[7]), 
         .Z(n2519)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(36[6:18])
    defparam i6111_4_lut.init = 16'h0002;
    CCU2D cnt_200_811_add_4_3 (.A0(cnt_200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5763), .COUT(n5764), .S0(n61[1]), .S1(n61[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_200_811_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_200_811_add_4_3.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_3.INJECT1_1 = "NO";
    LUT4 i6043_4_lut (.A(cnt_200[0]), .B(n6784), .C(n6723), .D(cnt_200[8]), 
         .Z(n6805)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6043_4_lut.init = 16'h8000;
    LUT4 i5_4_lut (.A(cnt_200[11]), .B(cnt_200[5]), .C(cnt_200[12]), .D(cnt_200[6]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6022_4_lut (.A(cnt_200[9]), .B(cnt_200[10]), .C(cnt_200[2]), 
         .D(cnt_200[13]), .Z(n6784)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6022_4_lut.init = 16'h8000;
    FD1S3IX cnt_200_811__i13 (.D(n61[13]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i13.GSR = "ENABLED";
    CCU2D cnt_200_811_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5763), .S1(n61[0]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811_add_4_1.INIT0 = 16'hF000;
    defparam cnt_200_811_add_4_1.INIT1 = 16'h0555;
    defparam cnt_200_811_add_4_1.INJECT1_0 = "NO";
    defparam cnt_200_811_add_4_1.INJECT1_1 = "NO";
    LUT4 i5962_2_lut (.A(cnt_200[1]), .B(cnt_200[3]), .Z(n6723)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5962_2_lut.init = 16'h8888;
    FD1S3IX cnt_200_811__i0 (.D(n61[0]), .CK(Clock_top_c), .CD(n2519), 
            .Q(cnt_200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_811__i0.GSR = "ENABLED";
    FD1S3IX cnt_1M_810__i1 (.D(n21[1]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[1]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_810__i1.GSR = "ENABLED";
    FD1S3IX cnt_1M_810__i2 (.D(n21[2]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[2]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_810__i2.GSR = "ENABLED";
    FD1S3IX cnt_1M_810__i3 (.D(n21[3]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[3]));   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_810__i3.GSR = "ENABLED";
    LUT4 i4988_2_lut_3_lut (.A(cnt_1M[1]), .B(cnt_1M[0]), .C(cnt_1M[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4988_2_lut_3_lut.init = 16'h7878;
    LUT4 i4995_3_lut_4_lut (.A(cnt_1M[1]), .B(cnt_1M[0]), .C(cnt_1M[2]), 
         .D(cnt_1M[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4995_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4981_2_lut (.A(cnt_1M[1]), .B(cnt_1M[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4981_2_lut.init = 16'h6666;
    LUT4 i6193_4_lut (.A(cnt_1M[3]), .B(cnt_1M[2]), .C(cnt_1M[1]), .D(cnt_1M[0]), 
         .Z(n7)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/clock_div.vhd(28[6:15])
    defparam i6193_4_lut.init = 16'h2000;
    
endmodule
//
// Verilog Description of module Matrix_button_input
//

module Matrix_button_input (Clock_top_c, column1_c_2, column1_c_0, row1_c_0, 
            Clk_N_41, column1_c_1, column1_c_3, Rst1_c, \h11[1] , 
            n6544, n7343, n6687, n38, Keyout1, n11, n7346, n7431, 
            n7311, n7325, n7314, n6627, \m21[0] , n1, n7310, GND_net, 
            n7333, n9, n7, n8, n4, row1_c_3, row1_c_2, row1_c_1, 
            n6615, n7340, \Clock_status[1] , n6680, n3677, n6549, 
            \m11[2] , n4487, n4_adj_1, n2006, n7299, n2387, n7330);
    input Clock_top_c;
    input column1_c_2;
    input column1_c_0;
    output row1_c_0;
    input Clk_N_41;
    input column1_c_1;
    input column1_c_3;
    input Rst1_c;
    input \h11[1] ;
    input n6544;
    input n7343;
    input n6687;
    output n38;
    output [4:0]Keyout1;
    input n11;
    input n7346;
    output n7431;
    output n7311;
    output n7325;
    input n7314;
    input n6627;
    input \m21[0] ;
    output n1;
    output n7310;
    input GND_net;
    input n7333;
    input n9;
    input n7;
    input n8;
    output n4;
    output row1_c_3;
    output row1_c_2;
    output row1_c_1;
    output n6615;
    output n7340;
    input \Clock_status[1] ;
    output n6680;
    input n3677;
    output n6549;
    input \m11[2] ;
    input n4487;
    input n4_adj_1;
    output n2006;
    output n7299;
    input n2387;
    output n7330;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/top.vhd(9[2:11])
    wire Clk_N_41 /* synthesis is_inv_clock=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    wire [15:0]R_cache;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(22[8:15])
    
    wire Clock_top_c_enable_60;
    wire [4:0]key_get;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(26[8:15])
    
    wire key_get_4__N_121;
    wire [4:0]key_get_4__N_116;
    
    wire Clock_top_c_enable_33;
    wire [2:0]num_cnt;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(20[8:15])
    
    wire n7367, Clock_top_c_enable_12, n1483, n6838;
    wire [13:0]Clk_cnt;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(17[8:15])
    wire [13:0]n61;
    
    wire num_cnt_2__N_115, n13, n11_c, n6815;
    wire [19:0]Delay_cnt;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(25[8:17])
    
    wire n2527;
    wire [19:0]n85;
    
    wire n6803, n7347, n7318, key_get_temp_4__N_122, n10, n6798, 
        n6813, n6794, n6743, n6811, n6, n9_c, refresh_flag_N_170, 
        n6632, n7316, n7372, n6598, n6656, n6557, n7373, n6634, 
        n7336, n32, n7335, n7_c, n7303, n6653, n7304, n20, n6651, 
        n7370, n7371, n6564, n7338, n7185, n7337, n7186, n6550, 
        n33, n4_c, n6593, n6645, n6647, n27, n7366, n6600, n20_adj_560, 
        n26, n7339, n7298, n6599, n4_adj_561, n52, n32_adj_562;
    wire [4:0]key_get_temp;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(27[8:20])
    
    wire n6611, n6591, n6592, n5762, n5761, n7362, n5760, n4_adj_563, 
        n6584, n20_adj_564, n35, n5759, refresh_flag, Clock_top_c_enable_56, 
        n5758, n26_adj_565, n6579, n4_adj_566, n3884, n5757, n5756, 
        n5755, n6453, n6487, n5754, n5753, n29, Clock_top_c_enable_98, 
        n1481, n5752, n5751, n5750, n5749, n6582, n6638, n6581, 
        n6648, n7369, n7322;
    wire [3:0]ROW_3__N_36;
    
    wire Clock_top_c_enable_102, n5748, n5747, n5746, n6567, n7296, 
        n28, n25, n6650, n24, n6654, n6583, n7_adj_570, n6_adj_571, 
        n22, n7301, n520;
    
    FD1P3AX R_cache_i0_i10 (.D(column1_c_2), .SP(Clock_top_c_enable_60), 
            .CK(Clock_top_c), .Q(R_cache[10])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i10.GSR = "DISABLED";
    FD1P3AX key_get_i0_i0 (.D(key_get_4__N_116[0]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i0.GSR = "ENABLED";
    FD1P3AX R_cache_i0_i0 (.D(column1_c_0), .SP(Clock_top_c_enable_33), 
            .CK(Clock_top_c), .Q(R_cache[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i0.GSR = "DISABLED";
    FD1S3IX ROW_i1 (.D(n7367), .CK(Clk_N_41), .CD(num_cnt[2]), .Q(row1_c_0)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i1.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i9 (.D(column1_c_1), .SP(Clock_top_c_enable_60), 
            .CK(Clock_top_c), .Q(R_cache[9])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i9.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i8 (.D(column1_c_0), .SP(Clock_top_c_enable_60), 
            .CK(Clock_top_c), .Q(R_cache[8])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i8.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i7 (.D(column1_c_3), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[7])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i7.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i6 (.D(column1_c_2), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[6])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i6.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i5 (.D(column1_c_1), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[5])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i5.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i4 (.D(column1_c_0), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i4.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i3 (.D(column1_c_3), .SP(Clock_top_c_enable_33), 
            .CK(Clock_top_c), .Q(R_cache[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i3.GSR = "DISABLED";
    FD1S3IX num_cnt__i0 (.D(n6838), .CK(Clock_top_c), .CD(n1483), .Q(num_cnt[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam num_cnt__i0.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i0 (.D(n61[0]), .CK(Clock_top_c), .Q(Clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i0.GSR = "DISABLED";
    LUT4 i6096_2_lut (.A(num_cnt[0]), .B(num_cnt_2__N_115), .Z(n6838)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam i6096_2_lut.init = 16'h6666;
    LUT4 i6187_4_lut (.A(n13), .B(n11_c), .C(Clk_cnt[1]), .D(n6815), 
         .Z(num_cnt_2__N_115)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(33[6:20])
    defparam i6187_4_lut.init = 16'h0100;
    FD1P3AX R_cache_i0_i2 (.D(column1_c_2), .SP(Clock_top_c_enable_33), 
            .CK(Clock_top_c), .Q(R_cache[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i2.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i14 (.D(n85[14]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i14.GSR = "DISABLED";
    LUT4 i5_4_lut (.A(Clk_cnt[0]), .B(Clk_cnt[3]), .C(Clk_cnt[2]), .D(Clk_cnt[7]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(Clk_cnt[13]), .B(Clk_cnt[11]), .Z(n11_c)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i6053_4_lut (.A(Clk_cnt[9]), .B(n6803), .C(Clk_cnt[6]), .D(Clk_cnt[5]), 
         .Z(n6815)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6053_4_lut.init = 16'h8000;
    LUT4 i6041_4_lut (.A(Clk_cnt[10]), .B(Clk_cnt[4]), .C(Clk_cnt[12]), 
         .D(Clk_cnt[8]), .Z(n6803)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6041_4_lut.init = 16'h8000;
    LUT4 i4_4_lut (.A(\h11[1] ), .B(n6544), .C(n7343), .D(n6687), .Z(n38)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i4_4_lut.init = 16'h0080;
    LUT4 Keyout1_0__bdd_4_lut_6527 (.A(Keyout1[0]), .B(n7347), .C(n11), 
         .D(n7346), .Z(n7431)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam Keyout1_0__bdd_4_lut_6527.init = 16'h4000;
    FD1P3IX Delay_cnt_800__i0 (.D(n85[0]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i0.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i1 (.D(column1_c_1), .SP(Clock_top_c_enable_33), 
            .CK(Clock_top_c), .Q(R_cache[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i1.GSR = "DISABLED";
    LUT4 i1914_3_lut (.A(Rst1_c), .B(n7318), .C(key_get_temp_4__N_122), 
         .Z(n2527)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam i1914_3_lut.init = 16'ha2a2;
    LUT4 i4_4_lut_adj_2 (.A(Delay_cnt[9]), .B(Delay_cnt[16]), .C(Delay_cnt[12]), 
         .D(Delay_cnt[11]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_2.init = 16'hfffe;
    FD1P3IX Delay_cnt_800__i1 (.D(n85[1]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i1.GSR = "DISABLED";
    LUT4 i6051_4_lut (.A(Delay_cnt[18]), .B(n6798), .C(Delay_cnt[19]), 
         .D(Delay_cnt[7]), .Z(n6813)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6051_4_lut.init = 16'h8000;
    FD1P3IX Delay_cnt_800__i2 (.D(n85[2]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i2.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i3 (.D(n85[3]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i3.GSR = "DISABLED";
    LUT4 i6049_4_lut (.A(Delay_cnt[6]), .B(n6794), .C(n6743), .D(Delay_cnt[1]), 
         .Z(n6811)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6049_4_lut.init = 16'h8000;
    LUT4 i6036_4_lut (.A(Delay_cnt[5]), .B(Delay_cnt[13]), .C(Delay_cnt[0]), 
         .D(Delay_cnt[3]), .Z(n6798)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6036_4_lut.init = 16'h8000;
    FD1P3IX Delay_cnt_800__i4 (.D(n85[4]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i4.GSR = "DISABLED";
    LUT4 i6032_4_lut (.A(Delay_cnt[4]), .B(Delay_cnt[17]), .C(Delay_cnt[8]), 
         .D(Delay_cnt[15]), .Z(n6794)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6032_4_lut.init = 16'h8000;
    FD1P3IX Delay_cnt_800__i5 (.D(n85[5]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i5.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i6 (.D(n85[6]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i6.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i7 (.D(n85[7]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i7.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i8 (.D(n85[8]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i8.GSR = "DISABLED";
    LUT4 i5982_2_lut (.A(Delay_cnt[2]), .B(Delay_cnt[10]), .Z(n6743)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5982_2_lut.init = 16'h8888;
    FD1P3IX Delay_cnt_800__i9 (.D(n85[9]), .SP(Rst1_c), .CD(n2527), .CK(Clock_top_c), 
            .Q(Delay_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i9.GSR = "DISABLED";
    LUT4 i6117_4_lut (.A(key_get[3]), .B(key_get[2]), .C(key_get[0]), 
         .D(n6), .Z(key_get_temp_4__N_122)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(98[6:16])
    defparam i6117_4_lut.init = 16'h0001;
    FD1P3AX key_get_i0_i4 (.D(key_get_4__N_116[4]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i4.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(key_get[1]), .B(key_get[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(98[6:16])
    defparam i1_2_lut.init = 16'heeee;
    FD1P3IX Delay_cnt_800__i10 (.D(n85[10]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i10.GSR = "DISABLED";
    LUT4 i6174_2_lut_2_lut (.A(n7318), .B(n9_c), .Z(refresh_flag_N_170)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6174_2_lut_2_lut.init = 16'h1111;
    FD1P3IX Delay_cnt_800__i11 (.D(n85[11]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i11.GSR = "DISABLED";
    FD1P3AX key_get_i0_i3 (.D(key_get_4__N_116[3]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i3.GSR = "ENABLED";
    FD1P3AX key_get_i0_i2 (.D(key_get_4__N_116[2]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i2.GSR = "ENABLED";
    FD1P3AX key_get_i0_i1 (.D(key_get_4__N_116[1]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i1.GSR = "ENABLED";
    FD1P3IX Delay_cnt_800__i12 (.D(n85[12]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i12.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i13 (.D(n85[13]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i13.GSR = "DISABLED";
    LUT4 i6124_3_lut (.A(R_cache[2]), .B(n6632), .C(R_cache[0]), .Z(key_get_4__N_116[4])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(93[9:27])
    defparam i6124_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_103 (.A(Keyout1[4]), .B(Keyout1[3]), .Z(n7347)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_103.init = 16'h4444;
    LUT4 i1_2_lut_rep_67_3_lut_4_lut (.A(Keyout1[4]), .B(Keyout1[3]), .C(Keyout1[2]), 
         .D(Keyout1[0]), .Z(n7311)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_67_3_lut_4_lut.init = 16'h0040;
    LUT4 i2_3_lut_4_lut (.A(n7316), .B(R_cache[9]), .C(R_cache[0]), .D(n7372), 
         .Z(n6598)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 reduce_or_478_i1_3_lut_4_lut (.A(n7325), .B(n7314), .C(n6627), 
         .D(\m21[0] ), .Z(n1)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam reduce_or_478_i1_3_lut_4_lut.init = 16'h88f8;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(Keyout1[4]), .B(Keyout1[3]), .C(n11), 
         .D(Keyout1[0]), .Z(n7310)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_4_lut (.A(n6656), .B(n6557), .C(n7373), .D(n6634), .Z(key_get_4__N_116[3])) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfaea;
    LUT4 i3_4_lut (.A(n7372), .B(n7336), .C(n32), .D(n7335), .Z(n6656)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i4_4_lut_adj_3 (.A(n7_c), .B(n7303), .C(n7372), .D(R_cache[12]), 
         .Z(n6557)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_3.init = 16'h8000;
    LUT4 i1_4_lut_adj_4 (.A(n6653), .B(R_cache[1]), .C(n7304), .D(R_cache[4]), 
         .Z(n32)) /* synthesis lut_function=(A+!(B ((D)+!C)+!B !(C (D)))) */ ;
    defparam i1_4_lut_adj_4.init = 16'hbaea;
    LUT4 i3_4_lut_adj_5 (.A(R_cache[5]), .B(n7373), .C(n20), .D(n6651), 
         .Z(n6653)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_5.init = 16'h8000;
    LUT4 i68_2_lut (.A(R_cache[3]), .B(R_cache[6]), .Z(n20)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i68_2_lut.init = 16'h6666;
    LUT4 i2_4_lut (.A(R_cache[10]), .B(R_cache[6]), .C(R_cache[5]), .D(R_cache[8]), 
         .Z(n7_c)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_4_lut.init = 16'h0880;
    LUT4 i2_3_lut_4_lut_adj_6 (.A(n7370), .B(n7316), .C(R_cache[9]), .D(n7371), 
         .Z(n6564)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_6.init = 16'h8000;
    LUT4 n160_bdd_2_lut_6299_3_lut_4_lut (.A(R_cache[11]), .B(n7338), .C(n7185), 
         .D(n7337), .Z(n7186)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n160_bdd_2_lut_6299_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_7 (.A(R_cache[8]), .B(n6550), .C(n33), .D(n4_c), 
         .Z(key_get_4__N_116[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_7.init = 16'ha8a0;
    LUT4 i3_4_lut_adj_8 (.A(n7338), .B(n6593), .C(R_cache[9]), .D(n6645), 
         .Z(n6647)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_8.init = 16'h0800;
    LUT4 i2_4_lut_adj_9 (.A(n7186), .B(n7372), .C(n27), .D(R_cache[4]), 
         .Z(n33)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_9.init = 16'hc800;
    LUT4 i1_4_lut_adj_10 (.A(n7366), .B(n6600), .C(n7372), .D(n20_adj_560), 
         .Z(n4_c)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_10.init = 16'ha888;
    LUT4 i2_3_lut (.A(n26), .B(R_cache[1]), .C(R_cache[0]), .Z(n27)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_rep_54_4_lut (.A(n7370), .B(n7316), .C(n7372), .D(n7339), 
         .Z(n7298)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_54_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_11 (.A(R_cache[4]), .B(R_cache[11]), .C(n7338), 
         .D(n6599), .Z(n6600)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_11.init = 16'h2000;
    LUT4 i60_4_lut (.A(n7304), .B(n6651), .C(R_cache[4]), .D(n4_adj_561), 
         .Z(n20_adj_560)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i60_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_12 (.A(R_cache[0]), .B(n52), .C(R_cache[2]), .D(n6632), 
         .Z(key_get_4__N_116[1])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_12.init = 16'hcecc;
    LUT4 i58_4_lut_3_lut (.A(R_cache[15]), .B(R_cache[11]), .C(R_cache[7]), 
         .Z(n32_adj_562)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;
    defparam i58_4_lut_3_lut.init = 16'h6868;
    FD1S3IX key_get_temp__i0 (.D(key_get[0]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i0.GSR = "ENABLED";
    FD1P3IX Delay_cnt_800__i15 (.D(n85[15]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i15.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_13 (.A(R_cache[11]), .B(n7338), .C(n7370), 
         .D(n7372), .Z(n6611)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_13.init = 16'h8000;
    LUT4 i3_4_lut_adj_14 (.A(n7366), .B(R_cache[7]), .C(n7338), .D(n6591), 
         .Z(n6592)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_14.init = 16'h2000;
    LUT4 n6555_bdd_4_lut (.A(n7370), .B(R_cache[12]), .C(R_cache[10]), 
         .D(R_cache[1]), .Z(n7185)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;
    defparam n6555_bdd_4_lut.init = 16'h2880;
    LUT4 i2_4_lut_adj_15 (.A(num_cnt[2]), .B(num_cnt[1]), .C(Rst1_c), 
         .D(num_cnt[0]), .Z(Clock_top_c_enable_60)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i2_4_lut_adj_15.init = 16'h1000;
    CCU2D Delay_cnt_800_add_4_21 (.A0(Delay_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5762), .S0(n85[19]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_21.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_21.INIT1 = 16'h0000;
    defparam Delay_cnt_800_add_4_21.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_21.INJECT1_1 = "NO";
    LUT4 i5_4_lut_rep_74 (.A(Delay_cnt[14]), .B(n10), .C(n6813), .D(n6811), 
         .Z(n7318)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut_rep_74.init = 16'hefff;
    LUT4 i1_2_lut_adj_16 (.A(R_cache[11]), .B(R_cache[10]), .Z(n6593)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_16.init = 16'h8888;
    FD1P3IX Delay_cnt_800__i16 (.D(n85[16]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i16.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i17 (.D(n85[17]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i17.GSR = "DISABLED";
    CCU2D Delay_cnt_800_add_4_19 (.A0(Delay_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5761), .COUT(n5762), .S0(n85[17]), .S1(n85[18]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_19.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_19.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_19.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_19.INJECT1_1 = "NO";
    FD1P3IX Delay_cnt_800__i18 (.D(n85[18]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i18.GSR = "DISABLED";
    FD1P3IX Delay_cnt_800__i19 (.D(n85[19]), .SP(Rst1_c), .CD(n2527), 
            .CK(Clock_top_c), .Q(Delay_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800__i19.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_118 (.A(num_cnt[2]), .B(num_cnt[1]), .C(num_cnt[0]), 
         .Z(n7362)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i2_3_lut_rep_118.init = 16'hfbfb;
    LUT4 i1378_2_lut_4_lut (.A(num_cnt[2]), .B(num_cnt[1]), .C(num_cnt[0]), 
         .D(Rst1_c), .Z(Clock_top_c_enable_12)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1378_2_lut_4_lut.init = 16'h0400;
    CCU2D Delay_cnt_800_add_4_17 (.A0(Delay_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5760), .COUT(n5761), .S0(n85[15]), .S1(n85[16]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_17.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_17.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_17.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_17.INJECT1_1 = "NO";
    PFUMX i55 (.BLUT(n4_adj_563), .ALUT(n6584), .C0(R_cache[1]), .Z(n52));
    PFUMX i56 (.BLUT(n6611), .ALUT(n20_adj_564), .C0(R_cache[9]), .Z(n35));
    CCU2D Delay_cnt_800_add_4_15 (.A0(Delay_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5759), .COUT(n5760), .S0(n85[13]), .S1(n85[14]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_15.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_15.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_15.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_15.INJECT1_1 = "NO";
    FD1P3AX refresh_flag_92 (.D(refresh_flag_N_170), .SP(Clock_top_c_enable_56), 
            .CK(Clock_top_c), .Q(refresh_flag));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam refresh_flag_92.GSR = "DISABLED";
    CCU2D Delay_cnt_800_add_4_13 (.A0(Delay_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5758), .COUT(n5759), .S0(n85[11]), .S1(n85[12]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_13.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_13.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_13.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_17 (.A(n26_adj_565), .B(n32_adj_562), .C(n6579), 
         .D(n4_adj_566), .Z(n20_adj_564)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_17.init = 16'heca0;
    FD1P3AX R_cache_i0_i11 (.D(column1_c_3), .SP(Clock_top_c_enable_60), 
            .CK(Clock_top_c), .Q(R_cache[11])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i11.GSR = "DISABLED";
    LUT4 i3047_2_lut_rep_122 (.A(R_cache[9]), .B(R_cache[0]), .Z(n7366)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3047_2_lut_rep_122.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(R_cache[9]), .B(R_cache[0]), .C(R_cache[4]), 
         .D(R_cache[8]), .Z(n3884)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_92_3_lut (.A(R_cache[9]), .B(R_cache[0]), .C(R_cache[8]), 
         .Z(n7336)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_92_3_lut.init = 16'h8080;
    CCU2D Delay_cnt_800_add_4_11 (.A0(Delay_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5757), .COUT(n5758), .S0(n85[9]), .S1(n85[10]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_11.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_11.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_11.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_18 (.A(n7333), .B(n9), .C(n7), .D(n8), .Z(n4)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_18.init = 16'heaaa;
    LUT4 i1_2_lut_rep_93_3_lut (.A(R_cache[9]), .B(R_cache[0]), .C(R_cache[2]), 
         .Z(n7337)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_93_3_lut.init = 16'h8080;
    CCU2D Delay_cnt_800_add_4_9 (.A0(Delay_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5756), .COUT(n5757), .S0(n85[7]), .S1(n85[8]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_9.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_9.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_9.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_9.INJECT1_1 = "NO";
    CCU2D Delay_cnt_800_add_4_7 (.A0(Delay_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5755), .COUT(n5756), .S0(n85[5]), .S1(n85[6]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_7.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_7.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_7.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_7.INJECT1_1 = "NO";
    FD1S3AX Clk_cnt_798__i13 (.D(n61[13]), .CK(Clock_top_c), .Q(Clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i13.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i12 (.D(n61[12]), .CK(Clock_top_c), .Q(Clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i12.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i11 (.D(n61[11]), .CK(Clock_top_c), .Q(Clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i11.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i10 (.D(n61[10]), .CK(Clock_top_c), .Q(Clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i10.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i9 (.D(n61[9]), .CK(Clock_top_c), .Q(Clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i9.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i8 (.D(n61[8]), .CK(Clock_top_c), .Q(Clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i8.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i7 (.D(n61[7]), .CK(Clock_top_c), .Q(Clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i7.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i6 (.D(n61[6]), .CK(Clock_top_c), .Q(Clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i6.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i5 (.D(n61[5]), .CK(Clock_top_c), .Q(Clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i5.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i4 (.D(n61[4]), .CK(Clock_top_c), .Q(Clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i4.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i3 (.D(n61[3]), .CK(Clock_top_c), .Q(Clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i3.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i2 (.D(n61[2]), .CK(Clock_top_c), .Q(Clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i2.GSR = "DISABLED";
    FD1S3AX Clk_cnt_798__i1 (.D(n61[1]), .CK(Clock_top_c), .Q(Clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798__i1.GSR = "DISABLED";
    FD1P3IX num_cnt__i2 (.D(n6453), .SP(num_cnt_2__N_115), .CD(n1483), 
            .CK(Clock_top_c), .Q(num_cnt[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam num_cnt__i2.GSR = "DISABLED";
    FD1P3IX num_cnt__i1 (.D(n6487), .SP(num_cnt_2__N_115), .CD(n1483), 
            .CK(Clock_top_c), .Q(num_cnt[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam num_cnt__i1.GSR = "DISABLED";
    CCU2D Delay_cnt_800_add_4_5 (.A0(Delay_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5754), .COUT(n5755), .S0(n85[3]), .S1(n85[4]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_5.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_5.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_5.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_5.INJECT1_1 = "NO";
    CCU2D Delay_cnt_800_add_4_3 (.A0(Delay_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5753), .COUT(n5754), .S0(n85[1]), .S1(n85[2]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_3.INIT0 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_3.INIT1 = 16'hfaaa;
    defparam Delay_cnt_800_add_4_3.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_3.INJECT1_1 = "NO";
    PFUMX i61 (.BLUT(n6598), .ALUT(n6592), .C0(R_cache[2]), .Z(n29));
    FD1P3IX key_out__i4 (.D(key_get_temp[4]), .SP(Clock_top_c_enable_98), 
            .CD(n1481), .CK(Clock_top_c), .Q(Keyout1[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i4.GSR = "DISABLED";
    FD1P3IX key_out__i3 (.D(key_get_temp[3]), .SP(Clock_top_c_enable_98), 
            .CD(n1481), .CK(Clock_top_c), .Q(Keyout1[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i3.GSR = "DISABLED";
    CCU2D Delay_cnt_800_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5753), .S1(n85[0]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_800_add_4_1.INIT0 = 16'hF000;
    defparam Delay_cnt_800_add_4_1.INIT1 = 16'h0555;
    defparam Delay_cnt_800_add_4_1.INJECT1_0 = "NO";
    defparam Delay_cnt_800_add_4_1.INJECT1_1 = "NO";
    CCU2D Clk_cnt_798_add_4_15 (.A0(Clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5752), .S0(n61[13]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_15.INIT0 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_15.INIT1 = 16'h0000;
    defparam Clk_cnt_798_add_4_15.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_15.INJECT1_1 = "NO";
    LUT4 i6163_2_lut_rep_123 (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n7367)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i6163_2_lut_rep_123.init = 16'h7777;
    LUT4 i1317_3_lut_4_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(Rst1_c), 
         .D(num_cnt[2]), .Z(Clock_top_c_enable_33)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1317_3_lut_4_lut.init = 16'h0080;
    CCU2D Clk_cnt_798_add_4_13 (.A0(Clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5751), .COUT(n5752), .S0(n61[11]), .S1(n61[12]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_13.INIT0 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_13.INIT1 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_13.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_13.INJECT1_1 = "NO";
    CCU2D Clk_cnt_798_add_4_11 (.A0(Clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5750), .COUT(n5751), .S0(n61[9]), .S1(n61[10]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_11.INIT0 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_11.INIT1 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_11.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_11.INJECT1_1 = "NO";
    CCU2D Clk_cnt_798_add_4_9 (.A0(Clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5749), .COUT(n5750), .S0(n61[7]), .S1(n61[8]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_9.INIT0 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_9.INIT1 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_9.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_9.INJECT1_1 = "NO";
    LUT4 i15_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(n6453)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_4_lut_adj_19 (.A(n6582), .B(R_cache[4]), .C(n6638), .D(n6581), 
         .Z(n6584)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_19.init = 16'h8880;
    LUT4 i1_2_lut_3_lut (.A(R_cache[11]), .B(R_cache[14]), .C(R_cache[13]), 
         .Z(n6651)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(R_cache[11]), .B(R_cache[14]), .C(R_cache[3]), 
         .Z(n6648)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_20.init = 16'h8080;
    LUT4 i2_2_lut_3_lut (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(key_get_4__N_121)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_4_lut_adj_21 (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt_2__N_115), 
         .D(num_cnt[2]), .Z(n1483)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_21.init = 16'h1000;
    LUT4 i1_2_lut_rep_125 (.A(R_cache[13]), .B(R_cache[3]), .Z(n7369)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_125.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(R_cache[13]), .B(R_cache[3]), .C(n7370), 
         .D(R_cache[14]), .Z(n4_adj_566)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h8000;
    LUT4 i1_2_lut_rep_94_3_lut (.A(R_cache[13]), .B(R_cache[3]), .C(R_cache[14]), 
         .Z(n7338)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_94_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_72_3_lut_4_lut (.A(R_cache[13]), .B(R_cache[3]), .C(R_cache[11]), 
         .D(R_cache[14]), .Z(n7316)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_72_3_lut_4_lut.init = 16'h8000;
    FD1S3IX key_get_temp__i4 (.D(key_get[4]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[4])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i4.GSR = "ENABLED";
    FD1S3IX key_get_temp__i3 (.D(key_get[3]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[3])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i3.GSR = "ENABLED";
    FD1S3IX key_get_temp__i2 (.D(key_get[2]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i2.GSR = "ENABLED";
    FD1S3IX key_get_temp__i1 (.D(key_get[1]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i1.GSR = "ENABLED";
    FD1S3AX ROW_i4 (.D(n7322), .CK(Clk_N_41), .Q(row1_c_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i4.GSR = "DISABLED";
    FD1P3IX key_out__i2 (.D(key_get_temp[2]), .SP(Clock_top_c_enable_98), 
            .CD(n1481), .CK(Clock_top_c), .Q(Keyout1[2])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i2.GSR = "DISABLED";
    FD1P3IX key_out__i1 (.D(key_get_temp[1]), .SP(Clock_top_c_enable_98), 
            .CD(n1481), .CK(Clock_top_c), .Q(Keyout1[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i1.GSR = "DISABLED";
    FD1P3IX key_out__i0 (.D(key_get_temp[0]), .SP(Clock_top_c_enable_98), 
            .CD(n1481), .CK(Clock_top_c), .Q(Keyout1[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i0.GSR = "DISABLED";
    FD1S3AX ROW_i3 (.D(ROW_3__N_36[2]), .CK(Clk_N_41), .Q(row1_c_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i3.GSR = "DISABLED";
    FD1S3AX ROW_i2 (.D(n7362), .CK(Clk_N_41), .Q(row1_c_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i2.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i15 (.D(column1_c_3), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[15])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i15.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i14 (.D(column1_c_2), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[14])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i14.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i13 (.D(column1_c_1), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[13])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i13.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i12 (.D(column1_c_0), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[12])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i12.GSR = "DISABLED";
    LUT4 i3115_2_lut_rep_126 (.A(R_cache[6]), .B(R_cache[5]), .Z(n7370)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3115_2_lut_rep_126.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(R_cache[6]), .B(R_cache[5]), .C(R_cache[3]), 
         .Z(n4_adj_561)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'h0808;
    LUT4 i2_3_lut_4_lut_adj_24 (.A(R_cache[6]), .B(R_cache[5]), .C(R_cache[15]), 
         .D(R_cache[7]), .Z(n6599)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_24.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(R_cache[6]), .B(R_cache[5]), .C(R_cache[12]), 
         .Z(n6645)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h8080;
    CCU2D Clk_cnt_798_add_4_7 (.A0(Clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5748), .COUT(n5749), .S0(n61[5]), .S1(n61[6]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_7.INIT0 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_7.INIT1 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_7.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_7.INJECT1_1 = "NO";
    LUT4 i3091_2_lut_rep_127 (.A(R_cache[12]), .B(R_cache[10]), .Z(n7371)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3091_2_lut_rep_127.init = 16'h8888;
    LUT4 i1_2_lut_rep_91_3_lut (.A(R_cache[12]), .B(R_cache[10]), .C(R_cache[2]), 
         .Z(n7335)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_91_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_95_3_lut (.A(R_cache[12]), .B(R_cache[10]), .C(R_cache[8]), 
         .Z(n7339)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_95_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_26 (.A(R_cache[12]), .B(R_cache[10]), 
         .C(R_cache[1]), .D(R_cache[2]), .Z(n6550)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_26.init = 16'h8000;
    CCU2D Clk_cnt_798_add_4_5 (.A0(Clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5747), .COUT(n5748), .S0(n61[3]), .S1(n61[4]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_5.INIT0 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_5.INIT1 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_5.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(n7347), .B(Keyout1[0]), .C(n11), .D(n7346), 
         .Z(n6615)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_4_lut.init = 16'h2000;
    PFUMX i62 (.BLUT(n6564), .ALUT(n6647), .C0(R_cache[2]), .Z(n26));
    LUT4 i3107_2_lut_rep_128 (.A(R_cache[7]), .B(R_cache[15]), .Z(n7372)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3107_2_lut_rep_128.init = 16'h8888;
    CCU2D Clk_cnt_798_add_4_3 (.A0(Clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5746), .COUT(n5747), .S0(n61[1]), .S1(n61[2]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_3.INIT0 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_3.INIT1 = 16'hfaaa;
    defparam Clk_cnt_798_add_4_3.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_27 (.A(R_cache[7]), .B(R_cache[15]), .C(R_cache[5]), 
         .Z(n6567)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'h8080;
    CCU2D Clk_cnt_798_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5746), .S1(n61[0]));   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_798_add_4_1.INIT0 = 16'hF000;
    defparam Clk_cnt_798_add_4_1.INIT1 = 16'h0555;
    defparam Clk_cnt_798_add_4_1.INJECT1_0 = "NO";
    defparam Clk_cnt_798_add_4_1.INJECT1_1 = "NO";
    LUT4 i55_4_lut (.A(n7316), .B(R_cache[13]), .C(R_cache[5]), .D(n6648), 
         .Z(n26_adj_565)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i55_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_3_lut_adj_28 (.A(R_cache[7]), .B(R_cache[15]), .C(R_cache[6]), 
         .Z(n6579)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_28.init = 16'h8080;
    LUT4 i1_2_lut_rep_129 (.A(R_cache[4]), .B(R_cache[1]), .Z(n7373)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_129.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_29 (.A(R_cache[4]), .B(R_cache[1]), .C(n7298), 
         .D(R_cache[9]), .Z(n6632)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_29.init = 16'h8000;
    LUT4 i1_2_lut_rep_52_4_lut (.A(n7339), .B(n7372), .C(n7304), .D(n7337), 
         .Z(n7296)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_52_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_30 (.A(R_cache[2]), .B(R_cache[12]), .C(R_cache[0]), 
         .D(R_cache[8]), .Z(n6582)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_30.init = 16'h8000;
    LUT4 i3_4_lut_adj_31 (.A(R_cache[9]), .B(n6593), .C(n28), .D(n7369), 
         .Z(n6638)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_31.init = 16'h8000;
    LUT4 i66_2_lut (.A(R_cache[9]), .B(R_cache[13]), .Z(n25)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i66_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_32 (.A(R_cache[10]), .B(n25), .C(R_cache[5]), .D(n6648), 
         .Z(n6650)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_32.init = 16'h8000;
    LUT4 i1_4_lut_adj_33 (.A(R_cache[6]), .B(n24), .C(R_cache[3]), .D(n6654), 
         .Z(key_get_4__N_116[0])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_33.init = 16'hcecc;
    LUT4 i1_4_lut_adj_34 (.A(R_cache[4]), .B(n7296), .C(n6583), .D(R_cache[1]), 
         .Z(n24)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_34.init = 16'ha088;
    LUT4 i1287_2_lut (.A(key_get_temp_4__N_122), .B(Rst1_c), .Z(Clock_top_c_enable_56)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1287_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_35 (.A(R_cache[2]), .B(n7366), .C(R_cache[4]), 
         .D(n7298), .Z(n4_adj_563)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_35.init = 16'h8000;
    LUT4 i2_4_lut_adj_36 (.A(n6651), .B(n6550), .C(n6567), .D(n3884), 
         .Z(n6654)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_36.init = 16'h8000;
    LUT4 i4_4_lut_adj_37 (.A(n7_adj_570), .B(key_get[2]), .C(n6_adj_571), 
         .D(key_get_temp[2]), .Z(n9_c)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(109[10:30])
    defparam i4_4_lut_adj_37.init = 16'hfbfe;
    LUT4 i59_4_lut (.A(n6599), .B(R_cache[6]), .C(R_cache[14]), .D(n6567), 
         .Z(n28)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i59_4_lut.init = 16'h3a0a;
    LUT4 i2_4_lut_adj_38 (.A(key_get[3]), .B(key_get[0]), .C(key_get_temp[3]), 
         .D(key_get_temp[0]), .Z(n7_adj_570)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(109[10:30])
    defparam i2_4_lut_adj_38.init = 16'h7bde;
    LUT4 i67_2_lut (.A(R_cache[5]), .B(R_cache[10]), .Z(n22)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i67_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_39 (.A(n22), .B(n6579), .C(n6650), .D(n7301), 
         .Z(n6581)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_39.init = 16'hc8c0;
    LUT4 i1_4_lut_adj_40 (.A(key_get[1]), .B(key_get[4]), .C(key_get_temp[1]), 
         .D(key_get_temp[4]), .Z(n6_adj_571)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(109[10:30])
    defparam i1_4_lut_adj_40.init = 16'h7bde;
    LUT4 i1_2_lut_rep_59_3_lut_4_lut (.A(R_cache[2]), .B(n7366), .C(n7338), 
         .D(R_cache[11]), .Z(n7303)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_59_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_57_3_lut_4_lut (.A(R_cache[14]), .B(n7369), .C(R_cache[9]), 
         .D(R_cache[11]), .Z(n7301)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_57_3_lut_4_lut.init = 16'h8000;
    LUT4 i15_2_lut (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n6487)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_41 (.A(R_cache[11]), .B(R_cache[15]), .Z(n6591)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_41.init = 16'h8888;
    LUT4 i1_2_lut_rep_60_3_lut_4_lut (.A(R_cache[14]), .B(n7369), .C(n7370), 
         .D(R_cache[11]), .Z(n7304)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_60_3_lut_4_lut.init = 16'h8000;
    LUT4 i6134_4_lut (.A(n7318), .B(Rst1_c), .C(n520), .D(refresh_flag), 
         .Z(Clock_top_c_enable_98)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i6134_4_lut.init = 16'hcc4c;
    LUT4 i6171_2_lut (.A(Rst1_c), .B(n520), .Z(n1481)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i6171_2_lut.init = 16'h2222;
    LUT4 i204_4_lut (.A(n9_c), .B(key_get_temp_4__N_122), .C(refresh_flag), 
         .D(n7318), .Z(n520)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(98[3] 121[10])
    defparam i204_4_lut.init = 16'h0311;
    LUT4 i1_2_lut_4_lut_adj_42 (.A(n7340), .B(n7347), .C(Keyout1[2]), 
         .D(\Clock_status[1] ), .Z(n6680)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(D)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_4_lut_adj_42.init = 16'h80ff;
    LUT4 i2_3_lut_4_lut_adj_43 (.A(R_cache[8]), .B(n7371), .C(n29), .D(n7370), 
         .Z(n6634)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_43.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_44 (.A(Keyout1[0]), .B(n7347), .C(n3677), 
         .D(Keyout1[2]), .Z(n6549)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_3_lut_4_lut_adj_44.init = 16'h0400;
    LUT4 i1_4_lut_adj_45 (.A(\m11[2] ), .B(n4487), .C(n4), .D(n4_adj_1), 
         .Z(n2006)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_45.init = 16'hcecd;
    LUT4 i1_2_lut_rep_55_3_lut_4_lut (.A(Keyout1[0]), .B(n7347), .C(n7346), 
         .D(n11), .Z(n7299)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_55_3_lut_4_lut.init = 16'h4000;
    LUT4 i2_3_lut_adj_46 (.A(n6582), .B(R_cache[10]), .C(n35), .Z(n6583)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_46.init = 16'h8080;
    LUT4 i1_2_lut_rep_96 (.A(Keyout1[0]), .B(Keyout1[1]), .Z(n7340)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_96.init = 16'h2222;
    LUT4 i2_3_lut_rep_81_4_lut (.A(Keyout1[0]), .B(Keyout1[1]), .C(Keyout1[2]), 
         .D(n7347), .Z(n7325)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i2_3_lut_rep_81_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_86_3_lut (.A(Keyout1[0]), .B(Keyout1[1]), .C(n2387), 
         .Z(n7330)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_86_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_78_3_lut (.A(num_cnt[2]), .B(num_cnt[1]), .C(num_cnt[0]), 
         .Z(n7322)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam i1_2_lut_rep_78_3_lut.init = 16'hfefe;
    LUT4 i1362_2_lut_3_lut_4_lut (.A(num_cnt[2]), .B(num_cnt[1]), .C(Rst1_c), 
         .D(num_cnt[0]), .Z(Clock_top_c_enable_102)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam i1362_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_adj_47 (.A(num_cnt[2]), .B(num_cnt[1]), .C(num_cnt[0]), 
         .Z(ROW_3__N_36[2])) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/70735/desktop/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam i1_2_lut_3_lut_adj_47.init = 16'hefef;
    
endmodule
