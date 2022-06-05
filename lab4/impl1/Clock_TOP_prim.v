// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Mon Dec 07 22:22:20 2020
//
// Verilog Description of module Clock_TOP
//

module Clock_TOP (Clock_top, Rst1, Mod1, led, row1, column1, rclk_out1, 
            sclk_out1, ser_out1);   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(7[8:17])
    input Clock_top;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    input Rst1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(10[2:6])
    input Mod1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(11[2:6])
    output [7:0]led;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    output [3:0]row1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(13[2:6])
    input [3:0]column1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(14[2:9])
    output rclk_out1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(15[2:11])
    output sclk_out1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(16[2:11])
    output ser_out1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(17[2:10])
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    wire Clkout1M /* synthesis is_clock=1, SET_AS_NETWORK=Clkout1M */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(97[8:16])
    wire Clkout200 /* synthesis is_clock=1, SET_AS_NETWORK=Clkout200 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(98[8:17])
    wire Clk_N_41 /* synthesis is_inv_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(10[1:4])
    
    wire GND_net, Rst1_c, Mod1_c, led_c, n1561, n1563, n1565, 
        row1_c_3, row1_c_2, row1_c_1, row1_c_0, column1_c_3, column1_c_2, 
        column1_c_1, column1_c_0, rclk_out1_c, sclk_out1_c, ser_out1_c;
    wire [2:0]segstate;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(83[8:16])
    wire [2:0]ledstate;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(84[8:16])
    wire [3:0]h11;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(86[8:11])
    wire [3:0]h21;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(87[8:11])
    wire [3:0]m11;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(88[8:11])
    wire [3:0]m21;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(89[8:11])
    wire [3:0]s11;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(90[8:11])
    wire [3:0]s21;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(91[8:11])
    wire [4:0]Keyout1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(93[8:15])
    wire [7:0]digit1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(94[8:14])
    wire [3:0]number_in1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(95[8:18])
    wire [7:0]seg_number_out1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(96[8:23])
    wire [2:0]segstate_2__N_1;
    wire [3:0]number_in1_3__N_14;
    wire [7:0]digit1_7__N_6;
    
    wire n7251, n7120, n7119, n7249, n7300, n7114, n7113, n7303, 
        n7108;
    wire [1:0]Clock_status;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(26[8:20])
    
    wire n7107, n7230, n3, n1415, n6691, n6, n3708;
    wire [7:0]seg_number_out_7__N_424;
    
    wire n7, sclk_out_N_515, n288, n7247, n5789, Clock_top_c_enable_58, 
        n9, Clock_top_c_enable_92, Clock_top_c_enable_83, n6768, Clock_top_c_enable_89, 
        n2499, Clock_top_c_enable_29, n20, n6514, n6455, n21, n7242, 
        n6491, n7241, n7240, n7237, n6507, n7293, Clock_top_c_enable_52, 
        n7295, n7291, n7288, Clock_top_c_enable_60, n7232, n7283, 
        n7282, n7294, n7305, n7304, n7271, n7302, n7268, n6515, 
        n7267, n7301, n7266, n7265, VCC_net, Clock_top_c_enable_75, 
        n6556, n7140, n7299, n7139, n7257, n7256, n7254, n7297, 
        n7298, n7296, n6562;
    
    INV i6483 (.A(Clock_top_c), .Z(Clk_N_41));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    FD1S3AX leddot_20 (.D(n7293), .CK(Clkout200), .Q(seg_number_out_7__N_424[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam leddot_20.GSR = "ENABLED";
    OB rclk_out1_pad (.I(rclk_out1_c), .O(rclk_out1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(15[2:11])
    OB row1_pad_0 (.I(row1_c_0), .O(row1[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(13[2:6])
    OB row1_pad_1 (.I(row1_c_1), .O(row1[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(13[2:6])
    OB row1_pad_2 (.I(row1_c_2), .O(row1[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(13[2:6])
    OB row1_pad_3 (.I(row1_c_3), .O(row1[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(13[2:6])
    OB led_pad_0 (.I(n1565), .O(led[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    OB sclk_out1_pad (.I(sclk_out1_c), .O(sclk_out1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(16[2:11])
    FD1P3AX number_in1_i0_i0 (.D(number_in1_3__N_14[0]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i0.GSR = "DISABLED";
    LUT4 i3229_4_lut_4_lut_4_lut (.A(segstate[0]), .B(segstate[2]), .C(Rst1_c), 
         .D(segstate[1]), .Z(digit1_7__N_6[6])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam i3229_4_lut_4_lut_4_lut.init = 16'h6fff;
    LUT4 mux_5_Mux_3_i7_3_lut_4_lut_4_lut_4_lut_4_lut (.A(segstate[0]), .B(segstate[1]), 
         .C(Rst1_c), .D(segstate[2]), .Z(digit1_7__N_6[3])) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam mux_5_Mux_3_i7_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h50e0;
    LUT4 i6103_4_lut_rep_109 (.A(n288), .B(n7242), .C(n9), .D(sclk_out_N_515), 
         .Z(Clock_top_c_enable_58)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i6103_4_lut_rep_109.init = 16'h3022;
    LUT4 i6222_then_4_lut (.A(Rst1_c), .B(s21[2]), .C(m21[2]), .D(segstate[0]), 
         .Z(n7301)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;
    defparam i6222_then_4_lut.init = 16'h50d8;
    LUT4 i6222_else_4_lut (.A(s11[2]), .B(Rst1_c), .C(m21[2]), .D(segstate[0]), 
         .Z(n7300)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6222_else_4_lut.init = 16'hb8f0;
    LUT4 i6079_2_lut_2_lut_3_lut_3_lut (.A(n288), .B(n7242), .C(sclk_out_N_515), 
         .Z(n3708)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i6079_2_lut_2_lut_3_lut_3_lut.init = 16'h0202;
    OB led_pad_1 (.I(n1565), .O(led[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    OB led_pad_2 (.I(n1563), .O(led[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i6217_then_4_lut (.A(Rst1_c), .B(h21[1]), .C(s21[1]), .D(segstate[0]), 
         .Z(n7304)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B))) */ ;
    defparam i6217_then_4_lut.init = 16'h44e4;
    LUT4 i6217_else_4_lut (.A(m11[1]), .B(Rst1_c), .C(h21[1]), .D(segstate[0]), 
         .Z(n7303)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6217_else_4_lut.init = 16'hb8f0;
    OB led_pad_3 (.I(n1563), .O(led[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    OB led_pad_4 (.I(n1561), .O(led[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    OB led_pad_5 (.I(n1561), .O(led[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i1_2_lut_rep_86 (.A(h11[2]), .B(h11[3]), .Z(n7271)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(86[8:11])
    defparam i1_2_lut_rep_86.init = 16'heeee;
    OB led_pad_6 (.I(led_c), .O(led[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i5851_2_lut_rep_80_3_lut (.A(h11[2]), .B(h11[3]), .C(h11[0]), 
         .Z(n7265)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(86[8:11])
    defparam i5851_2_lut_rep_80_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_66_3_lut_4_lut (.A(h11[2]), .B(h11[3]), .C(h11[0]), 
         .D(h11[1]), .Z(n7251)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(86[8:11])
    defparam i1_2_lut_rep_66_3_lut_4_lut.init = 16'h0100;
    OB led_pad_7 (.I(led_c), .O(led[7]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(12[2:5])
    LUT4 i2_2_lut_3_lut_4_lut (.A(h11[2]), .B(h11[3]), .C(n7267), .D(h11[0]), 
         .Z(n6)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(86[8:11])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(h11[2]), .B(h11[3]), .C(h21[1]), .D(n20), 
         .Z(n21)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(86[8:11])
    defparam i2_3_lut_4_lut.init = 16'h0100;
    VHI i6481 (.Z(VCC_net));
    LUT4 n183_bdd_3_lut_6221_4_lut (.A(segstate[0]), .B(Rst1_c), .C(s11[1]), 
         .D(m21[1]), .Z(n7107)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_6221_4_lut.init = 16'hf780;
    LUT4 n183_bdd_3_lut_6231_4_lut (.A(segstate[0]), .B(Rst1_c), .C(m11[3]), 
         .D(h21[3]), .Z(n7119)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_6231_4_lut.init = 16'hf780;
    LUT4 n183_bdd_3_lut_6226_4_lut (.A(segstate[0]), .B(Rst1_c), .C(m11[2]), 
         .D(h21[2]), .Z(n7113)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_6226_4_lut.init = 16'hf780;
    LUT4 n183_bdd_3_lut_4_lut (.A(segstate[0]), .B(Rst1_c), .C(m11[0]), 
         .D(h21[0]), .Z(n7139)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n183_bdd_3_lut_4_lut.init = 16'hf780;
    FD1P3AX digit1_i0_i5 (.D(digit1_7__N_6[5]), .SP(Clock_top_c_enable_52), 
            .CK(Clock_top_c), .Q(digit1[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i5.GSR = "DISABLED";
    LUT4 i6232_then_4_lut (.A(Rst1_c), .B(s21[0]), .C(m21[0]), .D(segstate[0]), 
         .Z(n7295)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;
    defparam i6232_then_4_lut.init = 16'h50d8;
    LUT4 h11_3__bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7119), 
         .D(h11[3]), .Z(n7120)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_3__bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 Rst1_c_bdd_4_lut_6255_4_lut (.A(segstate[1]), .B(Rst1_c), .C(segstate[0]), 
         .D(segstate[2]), .Z(digit1_7__N_6[5])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C+(D))))) */ ;
    defparam Rst1_c_bdd_4_lut_6255_4_lut.init = 16'h4c48;
    LUT4 h11_2__bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7113), 
         .D(h11[2]), .Z(n7114)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_2__bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n7108_bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7305), 
         .D(n7108), .Z(number_in1_3__N_14[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7108_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 h11_0__bdd_3_lut_4_lut (.A(segstate[1]), .B(Rst1_c), .C(n7139), 
         .D(h11[0]), .Z(n7140)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_0__bdd_3_lut_4_lut.init = 16'hf780;
    FD1S3AY segstate_i0_i0 (.D(n6768), .CK(Clock_top_c), .Q(segstate[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam segstate_i0_i0.GSR = "ENABLED";
    PFUMX i6276 (.BLUT(n7294), .ALUT(n7295), .C0(segstate[1]), .Z(n7296));
    LUT4 i6095_3_lut_4_lut (.A(Rst1_c), .B(Clock_top_c_enable_60), .C(segstate[2]), 
         .D(n7291), .Z(Clock_top_c_enable_92)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i6095_3_lut_4_lut.init = 16'h8880;
    FD1P3AX segstate_i0_i2 (.D(segstate_2__N_1[2]), .SP(Clock_top_c_enable_60), 
            .CK(Clock_top_c), .Q(segstate[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam segstate_i0_i2.GSR = "ENABLED";
    FD1P3AX segstate_i0_i1 (.D(segstate_2__N_1[1]), .SP(Clock_top_c_enable_60), 
            .CK(Clock_top_c), .Q(segstate[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam segstate_i0_i1.GSR = "ENABLED";
    GSR GSR_INST (.GSR(Rst1_c));
    FD1P3AX number_in1_i0_i3 (.D(number_in1_3__N_14[3]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i3.GSR = "DISABLED";
    FD1P3AX number_in1_i0_i2 (.D(number_in1_3__N_14[2]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i2.GSR = "DISABLED";
    FD1P3AX number_in1_i0_i1 (.D(number_in1_3__N_14[1]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(number_in1[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam number_in1_i0_i1.GSR = "DISABLED";
    LUT4 i6107_2_lut_rep_50 (.A(Clkout200), .B(n2499), .Z(Clock_top_c_enable_60)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i6107_2_lut_rep_50.init = 16'h4444;
    Clock_Div U5 (.Clock_top_c(Clock_top_c), .n2499(n2499), .Clkout1M(Clkout1M), 
            .Clkout200(Clkout200), .n7(n7), .GND_net(GND_net));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(142[4:13])
    LUT4 i6121_2_lut_2_lut_3_lut_4_lut (.A(Clkout200), .B(n2499), .C(n6691), 
         .D(Rst1_c), .Z(Clock_top_c_enable_52)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i6121_2_lut_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1892_1_lut (.A(Mod1_c), .Z(Clock_top_c_enable_29)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(11[2:6])
    defparam i1892_1_lut.init = 16'h5555;
    FD1P3AX digit1_i0_i7 (.D(digit1_7__N_6[7]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(digit1[7]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i7.GSR = "DISABLED";
    FD1P3AX digit1_i0_i6 (.D(digit1_7__N_6[6]), .SP(Clock_top_c_enable_89), 
            .CK(Clock_top_c), .Q(digit1[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i6.GSR = "DISABLED";
    FD1P3AX digit1_i0_i4 (.D(digit1_7__N_6[4]), .SP(Clock_top_c_enable_92), 
            .CK(Clock_top_c), .Q(digit1[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i4.GSR = "DISABLED";
    FD1P3AX digit1_i0_i3 (.D(digit1_7__N_6[3]), .SP(Clock_top_c_enable_92), 
            .CK(Clock_top_c), .Q(digit1[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i3.GSR = "DISABLED";
    FD1P3AX digit1_i0_i2 (.D(digit1_7__N_6[2]), .SP(Clock_top_c_enable_92), 
            .CK(Clock_top_c), .Q(digit1[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam digit1_i0_i2.GSR = "DISABLED";
    OB ser_out1_pad (.I(ser_out1_c), .O(ser_out1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(17[2:10])
    IB Clock_top_pad (.I(Clock_top), .O(Clock_top_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    IB Rst1_pad (.I(Rst1), .O(Rst1_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(10[2:6])
    IB Mod1_pad (.I(Mod1), .O(Mod1_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(11[2:6])
    IB column1_pad_3 (.I(column1[3]), .O(column1_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(14[2:9])
    IB column1_pad_2 (.I(column1[2]), .O(column1_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(14[2:9])
    IB column1_pad_1 (.I(column1[1]), .O(column1_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(14[2:9])
    IB column1_pad_0 (.I(column1[0]), .O(column1_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(14[2:9])
    VLO i1 (.Z(GND_net));
    LUT4 i24_4_lut_3_lut (.A(ledstate[1]), .B(ledstate[2]), .C(ledstate[0]), 
         .Z(n1563)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i24_4_lut_3_lut.init = 16'h1616;
    LUT4 i5930_2_lut_3_lut (.A(segstate[2]), .B(segstate[0]), .C(segstate[1]), 
         .Z(n6691)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5930_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1318_2_lut_rep_106 (.A(segstate[0]), .B(segstate[1]), .Z(n7291)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam i1318_2_lut_rep_106.init = 16'heeee;
    LUT4 i6232_else_4_lut (.A(s11[0]), .B(Rst1_c), .C(m21[0]), .D(segstate[0]), 
         .Z(n7294)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6232_else_4_lut.init = 16'hb8f0;
    LUT4 mux_5_Mux_2_i7_3_lut_4_lut_4_lut_4_lut (.A(segstate[2]), .B(Rst1_c), 
         .C(segstate[1]), .D(segstate[0]), .Z(digit1_7__N_6[2])) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C+(D))))) */ ;
    defparam mux_5_Mux_2_i7_3_lut_4_lut_4_lut_4_lut.init = 16'h4c48;
    LUT4 Rst1_c_bdd_4_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(segstate[0]), 
         .D(segstate[1]), .Z(digit1_7__N_6[4])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C+(D))))) */ ;
    defparam Rst1_c_bdd_4_lut_4_lut.init = 16'h4cc0;
    LUT4 n7120_bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7299), 
         .D(n7120), .Z(number_in1_3__N_14[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7120_bdd_3_lut_4_lut.init = 16'hf780;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 n7114_bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7302), 
         .D(n7114), .Z(number_in1_3__N_14[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7114_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 h11_1__bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7107), 
         .D(h11[1]), .Z(n7108)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam h11_1__bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 n7140_bdd_3_lut_4_lut (.A(segstate[2]), .B(Rst1_c), .C(n7296), 
         .D(n7140), .Z(number_in1_3__N_14[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n7140_bdd_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_5_Mux_7_i7_3_lut_4_lut_4_lut (.A(segstate[2]), .B(Rst1_c), 
         .C(segstate[0]), .D(segstate[1]), .Z(digit1_7__N_6[7])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (D)))) */ ;
    defparam mux_5_Mux_7_i7_3_lut_4_lut_4_lut.init = 16'h4c88;
    LUT4 segstate_0__I_0_1_lut_rep_108 (.A(segstate[0]), .Z(n7293)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(161[3] 192[12])
    defparam segstate_0__I_0_1_lut_rep_108.init = 16'h5555;
    LUT4 i13_3_lut (.A(ledstate[1]), .B(ledstate[0]), .C(ledstate[2]), 
         .Z(n1561)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(200[2] 206[27])
    defparam i13_3_lut.init = 16'h1c1c;
    LUT4 i13_3_lut_adj_95 (.A(ledstate[0]), .B(ledstate[1]), .C(ledstate[2]), 
         .Z(led_c)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(200[2] 206[27])
    defparam i13_3_lut_adj_95.init = 16'h1c1c;
    LUT4 i6028_2_lut_3_lut (.A(Clkout200), .B(n2499), .C(segstate[0]), 
         .Z(n6768)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i6028_2_lut_3_lut.init = 16'hb4b4;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i2_3_lut_4_lut_adj_96 (.A(Clkout200), .B(n2499), .C(Rst1_c), 
         .D(n6691), .Z(Clock_top_c_enable_89)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(152[1] 198[8])
    defparam i2_3_lut_4_lut_adj_96.init = 16'h4000;
    LUT4 i6227_then_4_lut (.A(Rst1_c), .B(s21[3]), .C(m21[3]), .D(segstate[0]), 
         .Z(n7298)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(C))) */ ;
    defparam i6227_then_4_lut.init = 16'h50d8;
    Number_to_Segnumber U3 (.seg_number_out1({seg_number_out1}), .Clock_top_c(Clock_top_c), 
            .Rst1_c(Rst1_c), .\seg_number_out_7__N_424[0] (seg_number_out_7__N_424[0]), 
            .number_in1({number_in1}));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(124[4:23])
    Clock_Logic U2 (.GND_net(GND_net), .Clock_status({Clock_status}), .Clock_top_c(Clock_top_c), 
            .ledstate({ledstate}), .s21({s21}), .m11({m11}), .h21({h21}), 
            .Mod1_c(Mod1_c), .s11({s11}), .n7247(n7247), .n7283(n7283), 
            .n7271(n7271), .h11({h11}), .n6(n6), .Clock_top_c_enable_29(Clock_top_c_enable_29), 
            .m21({m21}), .n3(n3), .n7249(n7249), .n7256(n7256), .n7268(n7268), 
            .n7265(n7265), .n7267(n7267), .n7240(n7240), .n7232(n7232), 
            .\Keyout1[2] (Keyout1[2]), .n7254(n7254), .n6562(n6562), .n5789(n5789), 
            .n1415(n1415), .n7230(n7230), .n7241(n7241), .n6514(n6514), 
            .n21(n21), .n6556(n6556), .n7288(n7288), .n20(n20), .\Keyout1[1] (Keyout1[1]), 
            .n7237(n7237), .\Keyout1[0] (Keyout1[0]), .n6515(n6515), .n7257(n7257), 
            .n6491(n6491), .n7266(n7266), .n6455(n6455), .n7251(n7251), 
            .n6507(n6507), .n7282(n7282));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(109[4:15])
    LUT4 i6036_2_lut_rep_79 (.A(Clkout1M), .B(n7), .Z(Clock_top_c_enable_75)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam i6036_2_lut_rep_79.init = 16'h4444;
    LUT4 i1_3_lut (.A(ledstate[2]), .B(ledstate[0]), .C(ledstate[1]), 
         .Z(n1565)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(200[2] 206[27])
    defparam i1_3_lut.init = 16'h5454;
    LUT4 i283_2_lut_rep_57_3_lut (.A(Clkout1M), .B(n7), .C(Rst1_c), .Z(n7242)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam i283_2_lut_rep_57_3_lut.init = 16'hbfbf;
    LUT4 i276_2_lut_3_lut_4_lut (.A(Clkout1M), .B(n7), .C(n288), .D(Rst1_c), 
         .Z(Clock_top_c_enable_83)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam i276_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i6227_else_4_lut (.A(s11[3]), .B(Rst1_c), .C(m21[3]), .D(segstate[0]), 
         .Z(n7297)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i6227_else_4_lut.init = 16'hb8f0;
    Segment_Display U4 (.Clock_top_c(Clock_top_c), .Clock_top_c_enable_83(Clock_top_c_enable_83), 
            .seg_number_out1({seg_number_out1}), .n288(n288), .Clock_top_c_enable_75(Clock_top_c_enable_75), 
            .sclk_out1_c(sclk_out1_c), .Clkout1M(Clkout1M), .Clock_top_c_enable_58(Clock_top_c_enable_58), 
            .sclk_out_N_515(sclk_out_N_515), .n3708(n3708), .n9(n9), .rclk_out1_c(rclk_out1_c), 
            .ser_out1_c(ser_out1_c), .Rst1_c(Rst1_c), .\digit1[7] (digit1[7]), 
            .\digit1[6] (digit1[6]), .\digit1[5] (digit1[5]), .\digit1[4] (digit1[4]), 
            .\digit1[3] (digit1[3]), .\digit1[2] (digit1[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(132[4:19])
    LUT4 i12_3_lut (.A(segstate[1]), .B(segstate[2]), .C(segstate[0]), 
         .Z(segstate_2__N_1[2])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(194[3] 196[9])
    defparam i12_3_lut.init = 16'h6464;
    LUT4 i872_3_lut (.A(segstate[1]), .B(segstate[0]), .C(segstate[2]), 
         .Z(segstate_2__N_1[1])) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(194[3] 196[9])
    defparam i872_3_lut.init = 16'h4646;
    PFUMX i6282 (.BLUT(n7303), .ALUT(n7304), .C0(segstate[2]), .Z(n7305));
    Key_Board U1 (.Clock_top_c(Clock_top_c), .column1_c_0(column1_c_0), 
            .row1_c_0(row1_c_0), .Clk_N_41(Clk_N_41), .column1_c_3(column1_c_3), 
            .column1_c_2(column1_c_2), .column1_c_1(column1_c_1), .Rst1_c(Rst1_c), 
            .Keyout1({Open_0, Open_1, Open_2, Keyout1[1], Open_3}), 
            .n6491(n6491), .n7241(n7241), .n6514(n6514), .n6507(n6507), 
            .\m11[0] (m11[0]), .n6455(n6455), .\Keyout1[2] (Keyout1[2]), 
            .n7282(n7282), .\Keyout1[0] (Keyout1[0]), .n7256(n7256), .n7283(n7283), 
            .n7240(n7240), .\h11[1] (h11[1]), .n7247(n7247), .n7254(n7254), 
            .GND_net(GND_net), .n7257(n7257), .Clock_status({Clock_status}), 
            .n7249(n7249), .n7266(n7266), .n5789(n5789), .n6556(n6556), 
            .n6562(n6562), .n7288(n7288), .n1415(n1415), .row1_c_3(row1_c_3), 
            .row1_c_2(row1_c_2), .row1_c_1(row1_c_1), .n6515(n6515), .n7268(n7268), 
            .n7237(n7237), .n7230(n7230), .n7232(n7232), .n3(n3));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(101[4:13])
    PFUMX i6280 (.BLUT(n7300), .ALUT(n7301), .C0(segstate[1]), .Z(n7302));
    PFUMX i6278 (.BLUT(n7297), .ALUT(n7298), .C0(segstate[1]), .Z(n7299));
    
endmodule
//
// Verilog Description of module Clock_Div
//

module Clock_Div (Clock_top_c, n2499, Clkout1M, Clkout200, n7, GND_net);
    input Clock_top_c;
    output n2499;
    output Clkout1M;
    output Clkout200;
    output n7;
    input GND_net;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    wire Clkout1M /* synthesis is_clock=1, SET_AS_NETWORK=Clkout1M */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(97[8:16])
    wire Clkout200 /* synthesis is_clock=1, SET_AS_NETWORK=Clkout200 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(98[8:17])
    wire [13:0]cnt_200;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(16[8:15])
    wire [13:0]n61;
    
    wire Clk1_N_557, Clk2_N_558;
    wire [3:0]cnt_1M;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(17[8:14])
    wire [3:0]n21;
    
    wire n5680, n5679, n5678, n5677, n5676, n5675, n5674, n17, 
        n6702, n26, n22;
    
    FD1S3IX cnt_200_783__i12 (.D(n61[12]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i12.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i11 (.D(n61[11]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i11.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i10 (.D(n61[10]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i10.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i9 (.D(n61[9]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i9.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i8 (.D(n61[8]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i8.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i7 (.D(n61[7]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i7.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i6 (.D(n61[6]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i6.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i5 (.D(n61[5]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i5.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i4 (.D(n61[4]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i4.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i3 (.D(n61[3]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i3.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i2 (.D(n61[2]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i2.GSR = "ENABLED";
    FD1S3IX cnt_200_783__i1 (.D(n61[1]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i1.GSR = "ENABLED";
    FD1S3AX Clk1_20 (.D(Clk1_N_557), .CK(Clock_top_c), .Q(Clkout1M)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=142, LSE_RLINE=142 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(21[3] 44[10])
    defparam Clk1_20.GSR = "ENABLED";
    FD1S3AX Clk2_22 (.D(Clk2_N_558), .CK(Clock_top_c), .Q(Clkout200)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=142, LSE_RLINE=142 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(21[3] 44[10])
    defparam Clk2_22.GSR = "ENABLED";
    FD1S3IX cnt_1M_782__i0 (.D(n21[0]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_782__i0.GSR = "ENABLED";
    LUT4 i6116_4_lut (.A(cnt_1M[3]), .B(cnt_1M[2]), .C(cnt_1M[1]), .D(cnt_1M[0]), 
         .Z(n7)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(28[6:15])
    defparam i6116_4_lut.init = 16'h2000;
    LUT4 i4892_2_lut (.A(cnt_1M[1]), .B(cnt_1M[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4892_2_lut.init = 16'h6666;
    LUT4 i1_2_lut (.A(Clkout1M), .B(n7), .Z(Clk1_N_557)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_94 (.A(Clkout200), .B(n2499), .Z(Clk2_N_558)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_94.init = 16'h6666;
    CCU2D cnt_200_783_add_4_15 (.A0(cnt_200[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5680), .S0(n61[13]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_200_783_add_4_15.INIT1 = 16'h0000;
    defparam cnt_200_783_add_4_15.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_200_783_add_4_13 (.A0(cnt_200[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5679), .COUT(n5680), .S0(n61[11]), .S1(n61[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_200_783_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_200_783_add_4_13.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_200_783_add_4_11 (.A0(cnt_200[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5678), .COUT(n5679), .S0(n61[9]), .S1(n61[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_200_783_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_200_783_add_4_11.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_200_783_add_4_9 (.A0(cnt_200[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5677), .COUT(n5678), .S0(n61[7]), .S1(n61[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_200_783_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_200_783_add_4_9.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_200_783_add_4_7 (.A0(cnt_200[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5676), .COUT(n5677), .S0(n61[5]), .S1(n61[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_200_783_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_200_783_add_4_7.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_200_783_add_4_5 (.A0(cnt_200[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5675), .COUT(n5676), .S0(n61[3]), .S1(n61[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_200_783_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_200_783_add_4_5.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_200_783_add_4_3 (.A0(cnt_200[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5674), .COUT(n5675), .S0(n61[1]), .S1(n61[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_200_783_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_200_783_add_4_3.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_3.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(n17), .B(n6702), .C(cnt_200[6]), .D(cnt_200[8]), 
         .Z(n26)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i12_4_lut.init = 16'hfbff;
    LUT4 i8_4_lut (.A(cnt_200[0]), .B(cnt_200[7]), .C(cnt_200[4]), .D(cnt_200[11]), 
         .Z(n22)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i8_4_lut.init = 16'hfffd;
    LUT4 i3_2_lut (.A(cnt_200[12]), .B(cnt_200[5]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    FD1S3IX cnt_200_783__i13 (.D(n61[13]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i13.GSR = "ENABLED";
    LUT4 i5941_4_lut (.A(cnt_200[1]), .B(cnt_200[9]), .C(cnt_200[3]), 
         .D(cnt_200[2]), .Z(n6702)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5941_4_lut.init = 16'h8000;
    CCU2D cnt_200_783_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_200[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5674), .S1(n61[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783_add_4_1.INIT0 = 16'hF000;
    defparam cnt_200_783_add_4_1.INIT1 = 16'h0555;
    defparam cnt_200_783_add_4_1.INJECT1_0 = "NO";
    defparam cnt_200_783_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_200_783__i0 (.D(n61[0]), .CK(Clock_top_c), .CD(n2499), 
            .Q(cnt_200[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(40[15:22])
    defparam cnt_200_783__i0.GSR = "ENABLED";
    LUT4 i4890_1_lut (.A(cnt_1M[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4890_1_lut.init = 16'h5555;
    FD1S3IX cnt_1M_782__i1 (.D(n21[1]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_782__i1.GSR = "ENABLED";
    FD1S3IX cnt_1M_782__i2 (.D(n21[2]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_782__i2.GSR = "ENABLED";
    FD1S3IX cnt_1M_782__i3 (.D(n21[3]), .CK(Clock_top_c), .CD(n7), .Q(cnt_1M[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam cnt_1M_782__i3.GSR = "ENABLED";
    LUT4 i4899_2_lut_3_lut (.A(cnt_1M[1]), .B(cnt_1M[0]), .C(cnt_1M[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4899_2_lut_3_lut.init = 16'h7878;
    LUT4 i4906_3_lut_4_lut (.A(cnt_1M[1]), .B(cnt_1M[0]), .C(cnt_1M[2]), 
         .D(cnt_1M[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(32[12:18])
    defparam i4906_3_lut_4_lut.init = 16'h7f80;
    LUT4 i6050_4_lut (.A(cnt_200[10]), .B(n26), .C(n22), .D(cnt_200[13]), 
         .Z(n2499)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_div.vhd(36[6:18])
    defparam i6050_4_lut.init = 16'h0200;
    
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
// Verilog Description of module Number_to_Segnumber
//

module Number_to_Segnumber (seg_number_out1, Clock_top_c, Rst1_c, \seg_number_out_7__N_424[0] , 
            number_in1);
    output [7:0]seg_number_out1;
    input Clock_top_c;
    input Rst1_c;
    input \seg_number_out_7__N_424[0] ;
    input [3:0]number_in1;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    wire [3:0]number_in_reg;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(18[9:22])
    wire [7:0]seg_number_out_7__N_424;
    
    wire n3944, n2567, n7;
    
    FD1P3AX seg_number_out_i0_i0 (.D(\seg_number_out_7__N_424[0] ), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i0.GSR = "DISABLED";
    FD1P3AX number_in_reg_i0_i0 (.D(number_in1[0]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i0.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(number_in_reg[3]), .B(number_in_reg[0]), .C(number_in_reg[1]), 
         .D(number_in_reg[2]), .Z(seg_number_out_7__N_424[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(54[3] 78[12])
    defparam i2_4_lut.init = 16'hfefb;
    LUT4 mux_4_Mux_1_i15_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[3]), .D(number_in_reg[2]), .Z(seg_number_out_7__N_424[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(28[3] 52[12])
    defparam mux_4_Mux_1_i15_4_lut.init = 16'h073c;
    FD1P3AX seg_number_out_i0_i6 (.D(seg_number_out_7__N_424[6]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i6.GSR = "DISABLED";
    LUT4 mux_4_Mux_2_i7_4_lut_3_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[2]), .Z(n3944)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam mux_4_Mux_2_i7_4_lut_3_lut.init = 16'h7171;
    FD1P3JX seg_number_out_i0_i2 (.D(n3944), .SP(Rst1_c), .PD(n2567), 
            .CK(Clock_top_c), .Q(seg_number_out1[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i2.GSR = "DISABLED";
    FD1P3JX seg_number_out_i0_i4 (.D(n7), .SP(Rst1_c), .PD(n2567), .CK(Clock_top_c), 
            .Q(seg_number_out1[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i4.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i5 (.D(seg_number_out_7__N_424[5]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i5.GSR = "DISABLED";
    LUT4 mux_5_Mux_4_i7_3_lut_4_lut_3_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[2]), .Z(n7)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+!(C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(54[3] 78[12])
    defparam mux_5_Mux_4_i7_3_lut_4_lut_3_lut.init = 16'h6d6d;
    LUT4 i6092_3_lut_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[2]), .D(number_in_reg[3]), .Z(seg_number_out_7__N_424[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (((D)+!C)+!B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(54[3] 78[12])
    defparam i6092_3_lut_4_lut.init = 16'hff9f;
    FD1P3AX number_in_reg_i0_i3 (.D(number_in1[3]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i3.GSR = "DISABLED";
    FD1P3AX number_in_reg_i0_i2 (.D(number_in1[2]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i2.GSR = "DISABLED";
    FD1P3AX number_in_reg_i0_i1 (.D(number_in1[1]), .SP(Rst1_c), .CK(Clock_top_c), 
            .Q(number_in_reg[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i1.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i7 (.D(seg_number_out_7__N_424[7]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i7.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i3 (.D(seg_number_out_7__N_424[3]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i3.GSR = "DISABLED";
    FD1P3AX seg_number_out_i0_i1 (.D(seg_number_out_7__N_424[1]), .SP(Rst1_c), 
            .CK(Clock_top_c), .Q(seg_number_out1[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=23, LSE_LLINE=124, LSE_RLINE=124 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i1.GSR = "DISABLED";
    LUT4 number_in_reg_0__bdd_4_lut (.A(number_in_reg[0]), .B(number_in_reg[3]), 
         .C(number_in_reg[1]), .D(number_in_reg[2]), .Z(seg_number_out_7__N_424[3])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam number_in_reg_0__bdd_4_lut.init = 16'hdcd5;
    LUT4 i1931_2_lut (.A(Rst1_c), .B(number_in_reg[3]), .Z(n2567)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/number_to_segnumber.vhd(23[2] 80[8])
    defparam i1931_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), .C(number_in_reg[2]), 
         .D(number_in_reg[3]), .Z(seg_number_out_7__N_424[5])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    
endmodule
//
// Verilog Description of module Clock_Logic
//

module Clock_Logic (GND_net, Clock_status, Clock_top_c, ledstate, s21, 
            m11, h21, Mod1_c, s11, n7247, n7283, n7271, h11, 
            n6, Clock_top_c_enable_29, m21, n3, n7249, n7256, n7268, 
            n7265, n7267, n7240, n7232, \Keyout1[2] , n7254, n6562, 
            n5789, n1415, n7230, n7241, n6514, n21, n6556, n7288, 
            n20, \Keyout1[1] , n7237, \Keyout1[0] , n6515, n7257, 
            n6491, n7266, n6455, n7251, n6507, n7282);
    input GND_net;
    output [1:0]Clock_status;
    input Clock_top_c;
    output [2:0]ledstate;
    output [3:0]s21;
    output [3:0]m11;
    output [3:0]h21;
    input Mod1_c;
    output [3:0]s11;
    input n7247;
    input n7283;
    input n7271;
    output [3:0]h11;
    input n6;
    input Clock_top_c_enable_29;
    output [3:0]m21;
    input n3;
    input n7249;
    input n7256;
    output n7268;
    input n7265;
    output n7267;
    input n7240;
    input n7232;
    input \Keyout1[2] ;
    input n7254;
    output n6562;
    output n5789;
    input n1415;
    input n7230;
    output n7241;
    input n6514;
    input n21;
    input n6556;
    output n7288;
    output n20;
    input \Keyout1[1] ;
    input n7237;
    input \Keyout1[0] ;
    input n6515;
    input n7257;
    output n6491;
    output n7266;
    input n6455;
    input n7251;
    output n6507;
    input n7282;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    
    wire n5687;
    wire [23:0]one_sec_cnt;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(28[8:19])
    wire [23:0]n101;
    
    wire n5688, n5686, n5685, n5684, Clock_top_c_enable_98;
    wire [31:0]mode;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(25[8:12])
    
    wire n1108, n5683, Clock_top_c_enable_87, n1868, clr, n2512;
    wire [31:0]n133;
    
    wire Clock_top_c_enable_61, n1871, Clock_top_c_enable_85;
    wire [3:0]n27;
    
    wire one_sec_flag, one_sec_cnt_23__N_407;
    wire [17:0]COUNT1;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(33[12:18])
    wire [17:0]COUNT1_17__N_278;
    
    wire Clock_top_c_enable_76, n2, n1020, n7229, n7068, n951, n870, 
        n4, n8, n1369, n4_adj_571, n6560, n5879, n12, n1977, 
        n8_adj_572, n1, n2501, n5682, n7269, n5689, n7, n1014, 
        n7_adj_573, n4_adj_574, n5681, n13, n12_adj_575, n6697, 
        n6734, n6695, n2532, n5868, n4750, n71, n4_adj_576, n1979, 
        n7_adj_577, n6693, n6699, n7016, n7015, n7017, n6540;
    wire [1:0]n1481;
    
    wire clr_N_409, n7270, n1_adj_578, n1401, n4_adj_579, n1981, 
        n7090, n7273, n6561, n14, n6534, n6544, n3964, n2360, 
        n2347, n7248, n6537, n7250, n6915, n1032, n5870, n7275, 
        n6400, n7280, n61, n4052, n4124, n3968, n5773, Clock_top_c_enable_103, 
        n2579, n5880, Clock_top_c_enable_86, n2570, n5877, n7002, 
        n2569, n5878, n5881, n7255, n2282, n5741, n1219, n5647, 
        n5648, n5740, n5874, n5646, n3725, n2961, n5871, n4997, 
        n6993, n5636, n5637, n5739, n4_adj_580, n51, n5738, n5645, 
        n6848, n49, n56, n50, n54, n46, n7281, n5737, n1_adj_581, 
        n6762, n6763, n5635, n5736, n52, n42, n7284, n4_adj_582, 
        n6760, n6761, n4988, n5735, n5734, n5733, n7258, n5732, 
        n5731, n5644, n5730, n5643, n5642, n42_adj_583, n5729, 
        n55, n3992, n933, n2_adj_584, n48, n34, n4_adj_585, n1974, 
        n1948, n6558, n5728, n5634, n5727, n5641, n6_adj_586, 
        n7287, n7_adj_587, n6673, n5726, n5692, n5691, n5690, 
        n6503, n5, n6535, n23, n7289, n6795, n6716, n6732, n5633, 
        n5640, n6677, n7233, n4_adj_588, n6720, n6683, n7_adj_589, 
        n7_adj_590, n5639, n5632, n5638, n5656, n5655, n5654, 
        n5653, n5652, n5651, n5650, n5649, n6552, n6529, n4_adj_591, 
        n1002, n7228, n5786, n7236, n3936, n4_adj_592, n5_adj_593, 
        n5_adj_594, n6435, n4_adj_595, n17;
    
    CCU2D one_sec_cnt_780_add_4_15 (.A0(one_sec_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5687), .COUT(n5688), .S0(n101[13]), 
          .S1(n101[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_15.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_15.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_15.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_15.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_780_add_4_13 (.A0(one_sec_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5686), .COUT(n5687), .S0(n101[11]), 
          .S1(n101[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_13.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_13.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_13.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_13.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_780_add_4_11 (.A0(one_sec_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5685), .COUT(n5686), .S0(n101[9]), .S1(n101[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_11.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_11.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_11.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_11.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_780_add_4_9 (.A0(one_sec_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5684), .COUT(n5685), .S0(n101[7]), .S1(n101[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_9.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_9.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_9.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_9.INJECT1_1 = "NO";
    FD1P3AX Clock_status_i0_i0 (.D(mode[0]), .SP(Clock_top_c_enable_98), 
            .CK(Clock_top_c), .Q(Clock_status[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam Clock_status_i0_i0.GSR = "ENABLED";
    FD1P3AY state_i0_i0 (.D(n1108), .SP(Clock_top_c_enable_98), .CK(Clock_top_c), 
            .Q(ledstate[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam state_i0_i0.GSR = "ENABLED";
    CCU2D one_sec_cnt_780_add_4_7 (.A0(one_sec_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5683), .COUT(n5684), .S0(n101[5]), .S1(n101[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_7.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_7.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_7.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_7.INJECT1_1 = "NO";
    FD1P3AX s2_776__i0 (.D(n1868), .SP(Clock_top_c_enable_87), .CK(Clock_top_c), 
            .Q(s21[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_776__i0.GSR = "ENABLED";
    FD1P3IX mode_774__i5 (.D(n133[5]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i5.GSR = "DISABLED";
    FD1P3IX mode_774__i10 (.D(n133[10]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i10.GSR = "DISABLED";
    FD1P3AX m1_784__i2 (.D(n1871), .SP(Clock_top_c_enable_61), .CK(Clock_top_c), 
            .Q(m11[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_784__i2.GSR = "ENABLED";
    FD1P3AX h2_778__i0 (.D(n27[0]), .SP(Clock_top_c_enable_85), .CK(Clock_top_c), 
            .Q(h21[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_778__i0.GSR = "ENABLED";
    FD1S3AX one_sec_flag_190 (.D(one_sec_cnt_23__N_407), .CK(Clock_top_c), 
            .Q(one_sec_flag)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(225[2] 236[9])
    defparam one_sec_flag_190.GSR = "ENABLED";
    FD1S3DX COUNT1_i0 (.D(COUNT1_17__N_278[0]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i0.GSR = "DISABLED";
    FD1P3AX s1_775__i0 (.D(n2), .SP(Clock_top_c_enable_76), .CK(Clock_top_c), 
            .Q(s11[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_775__i0.GSR = "ENABLED";
    LUT4 s11_3__bdd_4_lut (.A(s11[3]), .B(n1020), .C(s11[2]), .D(n7229), 
         .Z(n7068)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam s11_3__bdd_4_lut.init = 16'h9aa6;
    LUT4 h2_778_mux_6_i2_4_lut (.A(h21[1]), .B(n951), .C(n870), .D(n4), 
         .Z(n27[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_778_mux_6_i2_4_lut.init = 16'hc5ca;
    LUT4 i1266_4_lut_4_lut (.A(m11[2]), .B(n8), .C(n1369), .D(n4_adj_571), 
         .Z(n1871)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C+(D))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1266_4_lut_4_lut.init = 16'hf5f2;
    LUT4 i1368_4_lut (.A(h21[3]), .B(n6560), .C(n5879), .D(n12), .Z(n1977)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1368_4_lut.init = 16'hecfc;
    LUT4 i1865_3_lut_4_lut (.A(Clock_status[0]), .B(n8_adj_572), .C(n1369), 
         .D(n1), .Z(n2501)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1865_3_lut_4_lut.init = 16'h1110;
    FD1P3IX mode_774__i27 (.D(n133[27]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i27.GSR = "DISABLED";
    CCU2D one_sec_cnt_780_add_4_5 (.A0(one_sec_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5682), .COUT(n5683), .S0(n101[3]), .S1(n101[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_5.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_5.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_5.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_84 (.A(m11[1]), .B(m11[3]), .Z(n7269)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_rep_84.init = 16'h2222;
    CCU2D one_sec_cnt_780_add_4_17 (.A0(one_sec_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5688), .COUT(n5689), .S0(n101[15]), 
          .S1(n101[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_17.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_17.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_17.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_17.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n7), .B(n7247), .C(n7283), .D(n7271), .Z(n6560)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i4_4_lut.init = 16'h0080;
    LUT4 i2_3_lut (.A(h11[1]), .B(n1014), .C(h11[0]), .Z(n5879)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut.init = 16'h9696;
    FD1P3IX mode_774__i28 (.D(n133[28]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i28.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(h21[2]), .B(n7_adj_573), .C(n6), .D(h11[1]), .Z(n4_adj_574)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(122[15:24])
    defparam i1_4_lut.init = 16'hc4cc;
    CCU2D one_sec_cnt_780_add_4_3 (.A0(one_sec_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5681), .COUT(n5682), .S0(n101[1]), .S1(n101[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_3.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_3.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_3.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_3.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(h21[3]), .B(h21[1]), .C(h21[0]), .D(h21[2]), .Z(n7_adj_573)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(122[15:24])
    defparam i3_4_lut.init = 16'hfff7;
    FD1P3IX mode_774__i29 (.D(n133[29]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i29.GSR = "DISABLED";
    FD1P3IX mode_774__i30 (.D(n133[30]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i30.GSR = "DISABLED";
    FD1P3IX mode_774__i31 (.D(n133[31]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i31.GSR = "DISABLED";
    LUT4 i6084_4_lut (.A(n13), .B(one_sec_cnt[22]), .C(n12_adj_575), .D(one_sec_cnt[8]), 
         .Z(one_sec_cnt_23__N_407)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(230[6:26])
    defparam i6084_4_lut.init = 16'h0001;
    LUT4 i5_4_lut (.A(one_sec_cnt[15]), .B(one_sec_cnt[19]), .C(one_sec_cnt[10]), 
         .D(one_sec_cnt[13]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_43 (.A(one_sec_cnt[14]), .B(n6697), .C(n6734), .D(n6695), 
         .Z(n12_adj_575)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i4_4_lut_adj_43.init = 16'hbfff;
    LUT4 i5936_4_lut (.A(one_sec_cnt[9]), .B(one_sec_cnt[3]), .C(one_sec_cnt[1]), 
         .D(one_sec_cnt[17]), .Z(n6697)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5936_4_lut.init = 16'h8000;
    FD1P3IX s1_775__i1 (.D(n5868), .SP(Clock_top_c_enable_76), .CD(n2532), 
            .CK(Clock_top_c), .Q(s11[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_775__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_44 (.A(s21[3]), .B(n4750), .C(n71), .D(n4_adj_576), 
         .Z(n1979)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_44.init = 16'hcdce;
    LUT4 i3_4_lut_adj_45 (.A(m11[0]), .B(m11[2]), .C(m11[1]), .D(m11[3]), 
         .Z(n7_adj_577)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(115[13:22])
    defparam i3_4_lut_adj_45.init = 16'hffbf;
    FD1P3IX s1_775__i3 (.D(n7068), .SP(Clock_top_c_enable_76), .CD(n2532), 
            .CK(Clock_top_c), .Q(s11[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_775__i3.GSR = "ENABLED";
    LUT4 i5973_4_lut (.A(n6693), .B(one_sec_cnt[2]), .C(n6699), .D(one_sec_cnt[0]), 
         .Z(n6734)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5973_4_lut.init = 16'h8000;
    LUT4 i5934_4_lut (.A(one_sec_cnt[5]), .B(one_sec_cnt[4]), .C(one_sec_cnt[16]), 
         .D(one_sec_cnt[7]), .Z(n6695)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5934_4_lut.init = 16'h8000;
    LUT4 i5932_4_lut (.A(one_sec_cnt[18]), .B(one_sec_cnt[11]), .C(one_sec_cnt[23]), 
         .D(one_sec_cnt[20]), .Z(n6693)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5932_4_lut.init = 16'h8000;
    LUT4 i5938_3_lut (.A(one_sec_cnt[12]), .B(one_sec_cnt[6]), .C(one_sec_cnt[21]), 
         .Z(n6699)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5938_3_lut.init = 16'h8080;
    PFUMX i6179 (.BLUT(n7016), .ALUT(n7015), .C0(n870), .Z(n7017));
    LUT4 i6132_3_lut (.A(n6540), .B(s11[0]), .C(s11[2]), .Z(n2)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6132_3_lut.init = 16'h1313;
    LUT4 i3283_2_lut (.A(mode[0]), .B(mode[1]), .Z(n1481[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(65[3] 77[11])
    defparam i3283_2_lut.init = 16'h8888;
    LUT4 i1248_2_lut (.A(mode[0]), .B(mode[1]), .Z(n1481[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(65[3] 77[11])
    defparam i1248_2_lut.init = 16'h6666;
    FD1P3AX clr_179 (.D(clr_N_409), .SP(Clock_top_c_enable_29), .CK(Clock_top_c), 
            .Q(clr)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam clr_179.GSR = "DISABLED";
    LUT4 i3_2_lut_rep_85 (.A(h11[1]), .B(h11[0]), .Z(n7270)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i3_2_lut_rep_85.init = 16'h2222;
    LUT4 i1372_4_lut (.A(n1_adj_578), .B(n1401), .C(m21[3]), .D(n4_adj_579), 
         .Z(n1981)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1372_4_lut.init = 16'hcddc;
    LUT4 n3_bdd_4_lut (.A(n3), .B(Clock_status[0]), .C(n7090), .D(Clock_status[1]), 
         .Z(Clock_top_c_enable_87)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n3_bdd_4_lut.init = 16'h44f0;
    LUT4 i6_1_lut_rep_88 (.A(h11[0]), .Z(n7273)) /* synthesis lut_function=(!(A)) */ ;
    defparam i6_1_lut_rep_88.init = 16'h5555;
    LUT4 i2_3_lut_4_lut_4_lut (.A(h11[0]), .B(n7249), .C(h11[1]), .D(n7256), 
         .Z(n6561)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2_3_lut_4_lut_4_lut_adj_46 (.A(h11[0]), .B(n14), .C(n6534), 
         .D(n7268), .Z(n6544)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_46.init = 16'h4000;
    LUT4 n996_bdd_3_lut_4_lut (.A(h11[1]), .B(n7265), .C(n3964), .D(n2360), 
         .Z(n7015)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam n996_bdd_3_lut_4_lut.init = 16'he000;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(h11[0]), .B(n7268), .C(n7267), 
         .D(h21[2]), .Z(n7)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2_2_lut_3_lut_4_lut (.A(h11[1]), .B(n7265), .C(n7249), .D(n7256), 
         .Z(n2347)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h00e0;
    LUT4 i2_3_lut_4_lut (.A(h11[1]), .B(n7265), .C(n7248), .D(n6537), 
         .Z(n1014)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'he000;
    LUT4 i1_2_lut_rep_65_3_lut_3_lut (.A(h11[0]), .B(Clock_status[1]), .C(Clock_status[0]), 
         .Z(n7250)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_65_3_lut_3_lut.init = 16'h1010;
    LUT4 n6576_bdd_4_lut_6189 (.A(n7240), .B(n7232), .C(s21[3]), .D(s21[0]), 
         .Z(n6915)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+(D))+!B !(C (D)))) */ ;
    defparam n6576_bdd_4_lut_6189.init = 16'hcffb;
    LUT4 i2_3_lut_4_lut_adj_47 (.A(s21[1]), .B(s21[0]), .C(n1032), .D(s21[2]), 
         .Z(n5870)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_4_lut_adj_47.init = 16'he718;
    LUT4 i1_4_lut_3_lut_4_lut (.A(s21[1]), .B(s21[0]), .C(n1032), .D(s21[2]), 
         .Z(n4_adj_576)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_4_lut_3_lut_4_lut.init = 16'h0810;
    LUT4 i1_4_lut_4_lut (.A(n7232), .B(n7275), .C(n6400), .D(n7280), 
         .Z(n61)) /* synthesis lut_function=(A (C+(D))+!A ((D)+!B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(127[9:18])
    defparam i1_4_lut_4_lut.init = 16'hffb1;
    LUT4 i3498_4_lut (.A(n4052), .B(COUNT1[14]), .C(COUNT1[13]), .D(COUNT1[12]), 
         .Z(n4124)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i3498_4_lut.init = 16'hfcec;
    LUT4 i3426_4_lut (.A(COUNT1[10]), .B(COUNT1[11]), .C(n3968), .D(COUNT1[9]), 
         .Z(n4052)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i3426_4_lut.init = 16'hccc8;
    LUT4 i3342_2_lut (.A(COUNT1[7]), .B(COUNT1[8]), .Z(n3968)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3342_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_adj_48 (.A(COUNT1[17]), .B(COUNT1[16]), .C(COUNT1[15]), 
         .Z(n5773)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[8:21])
    defparam i2_3_lut_adj_48.init = 16'h8080;
    LUT4 i1_3_lut_4_lut (.A(\Keyout1[2] ), .B(n7254), .C(s21[0]), .D(s21[3]), 
         .Z(n6562)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i1_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n7248), .B(h21[0]), .C(n7249), 
         .D(n7256), .Z(n4)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C)+!B !((D)+!C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(140[5] 154[12])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hcc9c;
    FD1P3IX m2_779__i2 (.D(n5880), .SP(Clock_top_c_enable_103), .CD(n2579), 
            .CK(Clock_top_c), .Q(m21[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_779__i2.GSR = "ENABLED";
    FD1P3IX h1_777__i2 (.D(n5877), .SP(Clock_top_c_enable_86), .CD(n2570), 
            .CK(Clock_top_c), .Q(h11[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_777__i2.GSR = "ENABLED";
    FD1P3IX mode_774__i1 (.D(n133[1]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i1.GSR = "DISABLED";
    FD1P3IX h1_777__i3 (.D(n7002), .SP(Clock_top_c_enable_86), .CD(n2570), 
            .CK(Clock_top_c), .Q(h11[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_777__i3.GSR = "ENABLED";
    FD1P3IX mode_774__i2 (.D(n133[2]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i2.GSR = "DISABLED";
    FD1P3IX h2_778__i2 (.D(n5878), .SP(Clock_top_c_enable_85), .CD(n2569), 
            .CK(Clock_top_c), .Q(h21[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_778__i2.GSR = "ENABLED";
    FD1P3IX mode_774__i4 (.D(n133[4]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i4.GSR = "DISABLED";
    FD1P3IX mode_774__i9 (.D(n133[9]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i9.GSR = "DISABLED";
    FD1P3IX mode_774__i7 (.D(n133[7]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i7.GSR = "DISABLED";
    FD1P3IX mode_774__i8 (.D(n133[8]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i8.GSR = "DISABLED";
    FD1P3IX mode_774__i6 (.D(n133[6]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i6.GSR = "DISABLED";
    FD1P3IX m2_779__i1 (.D(n5881), .SP(Clock_top_c_enable_103), .CD(n2579), 
            .CK(Clock_top_c), .Q(m21[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_779__i1.GSR = "ENABLED";
    FD1P3IX mode_774__i13 (.D(n133[13]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i13.GSR = "DISABLED";
    FD1P3IX mode_774__i11 (.D(n133[11]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i11.GSR = "DISABLED";
    FD1P3IX mode_774__i12 (.D(n133[12]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i12.GSR = "DISABLED";
    CCU2D one_sec_cnt_780_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(one_sec_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5681), .S1(n101[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_1.INIT0 = 16'hF000;
    defparam one_sec_cnt_780_add_4_1.INIT1 = 16'h0555;
    defparam one_sec_cnt_780_add_4_1.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_90 (.A(m21[3]), .B(m21[0]), .Z(n7275)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_90.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_49 (.A(m21[3]), .B(m21[0]), .C(n7255), .D(n2282), 
         .Z(n5789)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_49.init = 16'h8000;
    FD1P3IX mode_774__i14 (.D(n133[14]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i14.GSR = "DISABLED";
    FD1P3IX mode_774__i18 (.D(n133[18]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i18.GSR = "DISABLED";
    FD1P3IX mode_774__i24 (.D(n133[24]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i24.GSR = "DISABLED";
    FD1P3IX mode_774__i25 (.D(n133[25]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i25.GSR = "DISABLED";
    FD1P3IX mode_774__i19 (.D(n133[19]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i19.GSR = "DISABLED";
    CCU2D add_4721_33 (.A0(mode[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5741), 
          .S1(n1219));
    defparam add_4721_33.INIT0 = 16'h5555;
    defparam add_4721_33.INIT1 = 16'h0000;
    defparam add_4721_33.INJECT1_0 = "NO";
    defparam add_4721_33.INJECT1_1 = "NO";
    FD1P3IX mode_774__i20 (.D(n133[20]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i20.GSR = "DISABLED";
    FD1P3IX mode_774__i15 (.D(n133[15]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i15.GSR = "DISABLED";
    FD1P3IX mode_774__i21 (.D(n133[21]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i21.GSR = "DISABLED";
    CCU2D mode_774_add_4_15 (.A0(mode[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5647), .COUT(n5648), .S0(n133[13]), .S1(n133[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_15.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_15.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_15.INJECT1_0 = "NO";
    defparam mode_774_add_4_15.INJECT1_1 = "NO";
    FD1P3IX mode_774__i22 (.D(n133[22]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i22.GSR = "DISABLED";
    FD1P3IX mode_774__i16 (.D(n133[16]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i16.GSR = "DISABLED";
    FD1P3IX mode_774__i23 (.D(n133[23]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i23.GSR = "DISABLED";
    FD1P3IX mode_774__i17 (.D(n133[17]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i17.GSR = "DISABLED";
    FD1P3IX mode_774__i0 (.D(n133[0]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i0.GSR = "DISABLED";
    CCU2D add_4721_31 (.A0(mode[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5740), 
          .COUT(n5741));
    defparam add_4721_31.INIT0 = 16'hf555;
    defparam add_4721_31.INIT1 = 16'hf555;
    defparam add_4721_31.INJECT1_0 = "NO";
    defparam add_4721_31.INJECT1_1 = "NO";
    FD1P3IX m1_784__i1 (.D(n5874), .SP(Clock_top_c_enable_61), .CD(n2501), 
            .CK(Clock_top_c), .Q(m11[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_784__i1.GSR = "ENABLED";
    CCU2D mode_774_add_4_13 (.A0(mode[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5646), .COUT(n5647), .S0(n133[11]), .S1(n133[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_13.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_13.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_13.INJECT1_0 = "NO";
    defparam mode_774_add_4_13.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_50 (.A(n7283), .B(n7256), .C(n3725), .D(n7255), 
         .Z(n1401)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i2_3_lut_4_lut_adj_50.init = 16'h0200;
    FD1P3IX mode_774__i3 (.D(n133[3]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i3.GSR = "DISABLED";
    FD1P3IX s2_776__i1 (.D(n5871), .SP(Clock_top_c_enable_87), .CD(n2961), 
            .CK(Clock_top_c), .Q(s21[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_776__i1.GSR = "ENABLED";
    LUT4 n3_bdd_3_lut (.A(Clock_status[0]), .B(n4997), .C(one_sec_flag), 
         .Z(n7090)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam n3_bdd_3_lut.init = 16'h5151;
    FD1P3IX s2_776__i2 (.D(n5870), .SP(Clock_top_c_enable_87), .CD(n2961), 
            .CK(Clock_top_c), .Q(s21[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_776__i2.GSR = "ENABLED";
    FD1P3IX m1_784__i3 (.D(n6993), .SP(Clock_top_c_enable_61), .CD(n2501), 
            .CK(Clock_top_c), .Q(m11[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_784__i3.GSR = "ENABLED";
    CCU2D add_8_11 (.A0(COUNT1[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5636), .COUT(n5637), .S0(COUNT1_17__N_278[9]), .S1(COUNT1_17__N_278[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    FD1P3IX h1_777__i0 (.D(n7273), .SP(Clock_top_c_enable_86), .CD(n2570), 
            .CK(Clock_top_c), .Q(h11[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_777__i0.GSR = "ENABLED";
    CCU2D add_4721_29 (.A0(mode[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5739), 
          .COUT(n5740));
    defparam add_4721_29.INIT0 = 16'hf555;
    defparam add_4721_29.INIT1 = 16'hf555;
    defparam add_4721_29.INJECT1_0 = "NO";
    defparam add_4721_29.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_95 (.A(m21[1]), .B(m21[2]), .Z(n7280)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_rep_95.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(m21[1]), .B(m21[2]), .C(m21[3]), .Z(n4_adj_580)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i59_4_lut_4_lut (.A(m21[0]), .B(n7240), .C(m21[3]), .D(n7232), 
         .Z(n51)) /* synthesis lut_function=(A ((D)+!C)+!A (B+(C+!(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i59_4_lut_4_lut.init = 16'hfe5f;
    LUT4 i2_3_lut_rep_70_4_lut (.A(m21[1]), .B(m21[2]), .C(Clock_status[0]), 
         .D(Clock_status[1]), .Z(n7255)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_rep_70_4_lut.init = 16'h0100;
    CCU2D add_4721_27 (.A0(mode[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5738), 
          .COUT(n5739));
    defparam add_4721_27.INIT0 = 16'hf555;
    defparam add_4721_27.INIT1 = 16'hf555;
    defparam add_4721_27.INJECT1_0 = "NO";
    defparam add_4721_27.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_11 (.A0(mode[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5645), .COUT(n5646), .S0(n133[9]), .S1(n133[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_11.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_11.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_11.INJECT1_0 = "NO";
    defparam mode_774_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n7256), .B(n7283), .C(m21[3]), .D(m21[0]), 
         .Z(n6400)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i6110_4_lut (.A(n6848), .B(n49), .C(n56), .D(n50), .Z(Clock_top_c_enable_98)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i6110_4_lut.init = 16'h0002;
    LUT4 i6108_4_lut (.A(mode[21]), .B(n54), .C(n46), .D(mode[4]), .Z(n6848)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6108_4_lut.init = 16'h0001;
    LUT4 i4769_4_lut_3_lut_rep_96 (.A(h11[1]), .B(h11[0]), .C(n1014), 
         .Z(n7281)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4769_4_lut_3_lut_rep_96.init = 16'he8e8;
    LUT4 i2_3_lut_4_lut_adj_51 (.A(h11[1]), .B(h11[0]), .C(n1014), .D(h11[2]), 
         .Z(n5877)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_4_lut_adj_51.init = 16'he718;
    CCU2D add_4721_25 (.A0(mode[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5737), 
          .COUT(n5738));
    defparam add_4721_25.INIT0 = 16'hf555;
    defparam add_4721_25.INIT1 = 16'hf555;
    defparam add_4721_25.INJECT1_0 = "NO";
    defparam add_4721_25.INJECT1_1 = "NO";
    LUT4 i1896_3_lut (.A(Clock_top_c_enable_76), .B(n1415), .C(n1_adj_581), 
         .Z(n2532)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1896_3_lut.init = 16'ha8a8;
    PFUMX i27 (.BLUT(n6762), .ALUT(n6763), .C0(Clock_status[0]), .Z(Clock_top_c_enable_76));
    LUT4 i2_3_lut_adj_52 (.A(s11[1]), .B(n1020), .C(s11[0]), .Z(n5868)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_adj_52.init = 16'h9696;
    CCU2D add_8_9 (.A0(COUNT1[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5635), .COUT(n5636), .S0(COUNT1_17__N_278[7]), .S1(COUNT1_17__N_278[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    CCU2D add_4721_23 (.A0(mode[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5736), 
          .COUT(n5737));
    defparam add_4721_23.INIT0 = 16'hf555;
    defparam add_4721_23.INIT1 = 16'hf555;
    defparam add_4721_23.INJECT1_0 = "NO";
    defparam add_4721_23.INJECT1_1 = "NO";
    LUT4 i19_4_lut (.A(mode[23]), .B(mode[20]), .C(mode[15]), .D(mode[17]), 
         .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i26_4_lut (.A(mode[19]), .B(n52), .C(n42), .D(mode[14]), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i26_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_99 (.A(s21[2]), .B(s21[1]), .Z(n7284)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_rep_99.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_53 (.A(s21[2]), .B(s21[1]), .C(s21[0]), .Z(n4_adj_582)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_3_lut_adj_53.init = 16'hfefe;
    PFUMX i30 (.BLUT(n6760), .ALUT(n6761), .C0(n7230), .Z(n4988));
    CCU2D add_4721_21 (.A0(mode[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5735), 
          .COUT(n5736));
    defparam add_4721_21.INIT0 = 16'hf555;
    defparam add_4721_21.INIT1 = 16'hf555;
    defparam add_4721_21.INJECT1_0 = "NO";
    defparam add_4721_21.INJECT1_1 = "NO";
    LUT4 i6020_1_lut_3_lut_3_lut_4_lut (.A(s21[2]), .B(s21[1]), .C(n6915), 
         .D(Clock_status[1]), .Z(n6763)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6020_1_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    CCU2D add_4721_19 (.A0(mode[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5734), 
          .COUT(n5735));
    defparam add_4721_19.INIT0 = 16'hf555;
    defparam add_4721_19.INIT1 = 16'hf555;
    defparam add_4721_19.INJECT1_0 = "NO";
    defparam add_4721_19.INJECT1_1 = "NO";
    CCU2D add_4721_17 (.A0(mode[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5733), 
          .COUT(n5734));
    defparam add_4721_17.INIT0 = 16'hf555;
    defparam add_4721_17.INIT1 = 16'hf555;
    defparam add_4721_17.INJECT1_0 = "NO";
    defparam add_4721_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_73_4_lut (.A(s21[2]), .B(s21[1]), .C(Clock_status[1]), 
         .D(Clock_status[0]), .Z(n7258)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_rep_73_4_lut.init = 16'h1000;
    CCU2D add_4721_15 (.A0(mode[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5732), 
          .COUT(n5733));
    defparam add_4721_15.INIT0 = 16'hf555;
    defparam add_4721_15.INIT1 = 16'hf555;
    defparam add_4721_15.INJECT1_0 = "NO";
    defparam add_4721_15.INJECT1_1 = "NO";
    CCU2D add_4721_13 (.A0(mode[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5731), 
          .COUT(n5732));
    defparam add_4721_13.INIT0 = 16'hf555;
    defparam add_4721_13.INIT1 = 16'hf555;
    defparam add_4721_13.INJECT1_0 = "NO";
    defparam add_4721_13.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_9 (.A0(mode[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5644), .COUT(n5645), .S0(n133[7]), .S1(n133[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_9.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_9.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_9.INJECT1_0 = "NO";
    defparam mode_774_add_4_9.INJECT1_1 = "NO";
    CCU2D add_4721_11 (.A0(mode[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5730), 
          .COUT(n5731));
    defparam add_4721_11.INIT0 = 16'hf555;
    defparam add_4721_11.INIT1 = 16'hf555;
    defparam add_4721_11.INJECT1_0 = "NO";
    defparam add_4721_11.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_7 (.A0(mode[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5643), .COUT(n5644), .S0(n133[5]), .S1(n133[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_7.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_7.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_7.INJECT1_0 = "NO";
    defparam mode_774_add_4_7.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_5 (.A0(mode[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5642), .COUT(n5643), .S0(n133[3]), .S1(n133[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_5.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_5.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_5.INJECT1_0 = "NO";
    defparam mode_774_add_4_5.INJECT1_1 = "NO";
    LUT4 i4473_4_lut_4_lut (.A(s21[0]), .B(n7240), .C(s21[3]), .D(n7232), 
         .Z(n42_adj_583)) /* synthesis lut_function=(A ((D)+!C)+!A (B+(C+!(D)))) */ ;
    defparam i4473_4_lut_4_lut.init = 16'hfe5f;
    CCU2D add_4721_9 (.A0(mode[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5729), 
          .COUT(n5730));
    defparam add_4721_9.INIT0 = 16'hf555;
    defparam add_4721_9.INIT1 = 16'hf555;
    defparam add_4721_9.INJECT1_0 = "NO";
    defparam add_4721_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_56_3_lut (.A(s21[3]), .B(s21[0]), .C(n2282), .Z(n7241)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_56_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_54 (.A(s21[3]), .B(s21[0]), .C(n7258), 
         .D(n2282), .Z(n55)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_54.init = 16'h8000;
    LUT4 i2_4_lut (.A(n7258), .B(n2282), .C(n42_adj_583), .D(n3992), 
         .Z(n1020)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_4_lut.init = 16'h0200;
    LUT4 i2_3_lut_4_lut_adj_55 (.A(m21[1]), .B(m21[0]), .C(n933), .D(m21[2]), 
         .Z(n5880)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_4_lut_adj_55.init = 16'he718;
    FD1P3AX m1_784__i0 (.D(n2_adj_584), .SP(Clock_top_c_enable_61), .CK(Clock_top_c), 
            .Q(m11[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m1_784__i0.GSR = "ENABLED";
    LUT4 i20_4_lut (.A(mode[12]), .B(mode[5]), .C(mode[6]), .D(mode[28]), 
         .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_3_lut_4_lut_adj_56 (.A(m21[1]), .B(m21[0]), .C(n933), 
         .D(m21[2]), .Z(n4_adj_579)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+((D)+!C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_4_lut_3_lut_4_lut_adj_56.init = 16'h0810;
    FD1S3IX one_sec_cnt_780__i0 (.D(n101[0]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i0.GSR = "ENABLED";
    LUT4 i24_4_lut (.A(mode[16]), .B(n48), .C(n34), .D(mode[10]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i1365_4_lut (.A(n1_adj_581), .B(n1415), .C(s11[2]), .D(n4_adj_585), 
         .Z(n1974)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)+!C !(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1365_4_lut.init = 16'hcddc;
    FD1P3AX m2_779__i0 (.D(n1948), .SP(Clock_top_c_enable_103), .CK(Clock_top_c), 
            .Q(m21[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_779__i0.GSR = "ENABLED";
    PFUMX i23 (.BLUT(n6558), .ALUT(n6544), .C0(h21[0]), .Z(n12));
    LUT4 i1_4_lut_adj_57 (.A(s11[2]), .B(n6540), .C(n6514), .D(s11[0]), 
         .Z(n1_adj_581)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_57.init = 16'ha088;
    CCU2D add_4721_7 (.A0(mode[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5728), 
          .COUT(n5729));
    defparam add_4721_7.INIT0 = 16'hf555;
    defparam add_4721_7.INIT1 = 16'hf555;
    defparam add_4721_7.INJECT1_0 = "NO";
    defparam add_4721_7.INJECT1_1 = "NO";
    CCU2D add_8_7 (.A0(COUNT1[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5634), .COUT(n5635), .S0(COUNT1_17__N_278[5]), .S1(COUNT1_17__N_278[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    CCU2D add_4721_5 (.A0(mode[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5727), 
          .COUT(n5728));
    defparam add_4721_5.INIT0 = 16'hf555;
    defparam add_4721_5.INIT1 = 16'hf555;
    defparam add_4721_5.INJECT1_0 = "NO";
    defparam add_4721_5.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_3 (.A0(mode[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5641), .COUT(n5642), .S0(n133[1]), .S1(n133[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_3.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_3.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_3.INJECT1_0 = "NO";
    defparam mode_774_add_4_3.INJECT1_1 = "NO";
    PFUMX i14 (.BLUT(n6_adj_586), .ALUT(n61), .C0(Clock_status[1]), .Z(n8_adj_572));
    LUT4 i6061_2_lut_rep_102 (.A(Clock_status[1]), .B(Clock_status[0]), 
         .Z(n7287)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6061_2_lut_rep_102.init = 16'h1111;
    FD1P3AX s1_775__i2 (.D(n1974), .SP(Clock_top_c_enable_76), .CK(Clock_top_c), 
            .Q(s11[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s1_775__i2.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(n7_adj_587), .B(n7_adj_577), .Z(n6_adj_586)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(111[11:20])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i5912_3_lut_4_lut (.A(Clock_status[1]), .B(Clock_status[0]), .C(s21[2]), 
         .D(s21[0]), .Z(n6673)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5912_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_4721_3 (.A0(mode[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5726), 
          .COUT(n5727));
    defparam add_4721_3.INIT0 = 16'h0aaa;
    defparam add_4721_3.INIT1 = 16'hf555;
    defparam add_4721_3.INJECT1_0 = "NO";
    defparam add_4721_3.INJECT1_1 = "NO";
    CCU2D add_4721_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(mode[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n5726));
    defparam add_4721_1.INIT0 = 16'hF000;
    defparam add_4721_1.INIT1 = 16'h0aaa;
    defparam add_4721_1.INJECT1_0 = "NO";
    defparam add_4721_1.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_780_add_4_25 (.A0(one_sec_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5692), .S0(n101[23]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_25.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_25.INIT1 = 16'h0000;
    defparam one_sec_cnt_780_add_4_25.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_25.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_780_add_4_23 (.A0(one_sec_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5691), .COUT(n5692), .S0(n101[21]), 
          .S1(n101[22]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_23.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_23.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_23.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_23.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_780_add_4_21 (.A0(one_sec_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5690), .COUT(n5691), .S0(n101[19]), 
          .S1(n101[20]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_21.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_21.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_21.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_21.INJECT1_1 = "NO";
    CCU2D one_sec_cnt_780_add_4_19 (.A0(one_sec_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(one_sec_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n5689), .COUT(n5690), .S0(n101[17]), 
          .S1(n101[18]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780_add_4_19.INIT0 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_19.INIT1 = 16'hfaaa;
    defparam one_sec_cnt_780_add_4_19.INJECT1_0 = "NO";
    defparam one_sec_cnt_780_add_4_19.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n5641), .S1(n133[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_1.INIT0 = 16'hF000;
    defparam mode_774_add_4_1.INIT1 = 16'h0555;
    defparam mode_774_add_4_1.INJECT1_0 = "NO";
    defparam mode_774_add_4_1.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut_4_lut_adj_58 (.A(Clock_status[1]), .B(Clock_status[0]), 
         .C(m11[3]), .D(m11[1]), .Z(n6503)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut_adj_58.init = 16'h0100;
    LUT4 i2_3_lut_4_lut_adj_59 (.A(Clock_status[1]), .B(Clock_status[0]), 
         .C(s11[3]), .D(s11[1]), .Z(n6540)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_59.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_60 (.A(Clock_status[1]), .B(Clock_status[0]), 
         .C(h11[0]), .D(h11[1]), .Z(n5)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_60.init = 16'h0100;
    FD1S3DX COUNT1_i17 (.D(COUNT1_17__N_278[17]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[17])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i17.GSR = "DISABLED";
    FD1S3DX COUNT1_i16 (.D(COUNT1_17__N_278[16]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[16])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i16.GSR = "DISABLED";
    FD1S3DX COUNT1_i15 (.D(COUNT1_17__N_278[15]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i15.GSR = "DISABLED";
    FD1S3DX COUNT1_i14 (.D(COUNT1_17__N_278[14]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i14.GSR = "DISABLED";
    FD1S3DX COUNT1_i13 (.D(COUNT1_17__N_278[13]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i13.GSR = "DISABLED";
    FD1S3DX COUNT1_i12 (.D(COUNT1_17__N_278[12]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i12.GSR = "DISABLED";
    FD1S3DX COUNT1_i11 (.D(COUNT1_17__N_278[11]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i11.GSR = "DISABLED";
    FD1S3DX COUNT1_i10 (.D(COUNT1_17__N_278[10]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i10.GSR = "DISABLED";
    FD1S3DX COUNT1_i9 (.D(COUNT1_17__N_278[9]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i9.GSR = "DISABLED";
    FD1S3DX COUNT1_i8 (.D(COUNT1_17__N_278[8]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i8.GSR = "DISABLED";
    FD1S3DX COUNT1_i7 (.D(COUNT1_17__N_278[7]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i7.GSR = "DISABLED";
    FD1S3DX COUNT1_i6 (.D(COUNT1_17__N_278[6]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i6.GSR = "DISABLED";
    FD1S3DX COUNT1_i5 (.D(COUNT1_17__N_278[5]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i5.GSR = "DISABLED";
    FD1S3DX COUNT1_i4 (.D(COUNT1_17__N_278[4]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i4.GSR = "DISABLED";
    FD1S3DX COUNT1_i3 (.D(COUNT1_17__N_278[3]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i3.GSR = "DISABLED";
    FD1S3DX COUNT1_i2 (.D(COUNT1_17__N_278[2]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i2.GSR = "DISABLED";
    FD1S3DX COUNT1_i1 (.D(COUNT1_17__N_278[1]), .CK(Clock_top_c), .CD(Mod1_c), 
            .Q(COUNT1[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(36[4] 41[10])
    defparam COUNT1_i1.GSR = "DISABLED";
    LUT4 i16_4_lut (.A(mode[8]), .B(mode[29]), .C(mode[22]), .D(mode[31]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i16_4_lut.init = 16'hfffe;
    PFUMX i36 (.BLUT(n21), .ALUT(n6535), .C0(h21[0]), .Z(n23));
    LUT4 i4833_4_lut_rep_44_3_lut (.A(s11[1]), .B(s11[0]), .C(n1020), 
         .Z(n7229)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4833_4_lut_rep_44_3_lut.init = 16'he8e8;
    LUT4 i18_4_lut (.A(mode[25]), .B(mode[7]), .C(mode[13]), .D(mode[30]), 
         .Z(n48)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_3_lut (.A(s11[1]), .B(s11[0]), .C(n1020), .Z(n4_adj_585)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_4_lut_3_lut.init = 16'h1818;
    FD1P3AX h2_778__i3 (.D(n7017), .SP(Clock_top_c_enable_85), .CK(Clock_top_c), 
            .Q(h21[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_778__i3.GSR = "ENABLED";
    FD1P3AX h2_778__i1 (.D(n27[1]), .SP(Clock_top_c_enable_85), .CK(Clock_top_c), 
            .Q(h21[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_778__i1.GSR = "ENABLED";
    PFUMX i19 (.BLUT(n6503), .ALUT(n6556), .C0(m11[0]), .Z(n8));
    LUT4 i4_2_lut (.A(mode[3]), .B(mode[26]), .Z(n34)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    FD1P3AX h1_777__i1 (.D(n1977), .SP(Clock_top_c_enable_86), .CK(Clock_top_c), 
            .Q(h11[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h1_777__i1.GSR = "ENABLED";
    FD1P3AX s2_776__i3 (.D(n1979), .SP(Clock_top_c_enable_87), .CK(Clock_top_c), 
            .Q(s21[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam s2_776__i3.GSR = "ENABLED";
    LUT4 i3299_2_lut_rep_103 (.A(s11[2]), .B(s11[0]), .Z(n7288)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3299_2_lut_rep_103.init = 16'heeee;
    LUT4 i22_4_lut (.A(mode[2]), .B(mode[18]), .C(mode[24]), .D(mode[9]), 
         .Z(n52)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i3297_2_lut_rep_104 (.A(s11[3]), .B(s11[1]), .Z(n7289)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3297_2_lut_rep_104.init = 16'heeee;
    LUT4 i3366_2_lut_3_lut_4_lut (.A(s11[3]), .B(s11[1]), .C(s11[0]), 
         .D(s11[2]), .Z(n3992)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3366_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX state_i0_i2 (.D(n1481[1]), .SP(Clock_top_c_enable_98), .CK(Clock_top_c), 
            .Q(ledstate[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam state_i0_i2.GSR = "ENABLED";
    FD1P3AX state_i0_i1 (.D(n1481[0]), .SP(Clock_top_c_enable_98), .CK(Clock_top_c), 
            .Q(ledstate[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam state_i0_i1.GSR = "ENABLED";
    FD1P3AX Clock_status_i0_i1 (.D(mode[1]), .SP(Clock_top_c_enable_98), 
            .CK(Clock_top_c), .Q(Clock_status[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=109, LSE_RLINE=109 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam Clock_status_i0_i1.GSR = "ENABLED";
    PFUMX i37 (.BLUT(n6561), .ALUT(n5), .C0(h21[2]), .Z(n20));
    LUT4 i6056_4_lut (.A(COUNT1_17__N_278[12]), .B(n6795), .C(n6716), 
         .D(n6732), .Z(clr_N_409)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(39[8:21])
    defparam i6056_4_lut.init = 16'h4000;
    FD1S3IX one_sec_cnt_780__i1 (.D(n101[1]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i1.GSR = "ENABLED";
    CCU2D add_8_5 (.A0(COUNT1[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5633), .COUT(n5634), .S0(COUNT1_17__N_278[3]), .S1(COUNT1_17__N_278[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    CCU2D add_8_19 (.A0(COUNT1[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5640), 
          .S0(COUNT1_17__N_278[17]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_19.INIT0 = 16'h5aaa;
    defparam add_8_19.INIT1 = 16'h0000;
    defparam add_8_19.INJECT1_0 = "NO";
    defparam add_8_19.INJECT1_1 = "NO";
    FD1S3IX one_sec_cnt_780__i2 (.D(n101[2]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i2.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i3 (.D(n101[3]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i3.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i4 (.D(n101[4]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i4.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i5 (.D(n101[5]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i5.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i6 (.D(n101[6]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i6.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i7 (.D(n101[7]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i7.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i8 (.D(n101[8]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i8.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i9 (.D(n101[9]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i9.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i10 (.D(n101[10]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i10.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i11 (.D(n101[11]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i11.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i12 (.D(n101[12]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i12.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i13 (.D(n101[13]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i13.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i14 (.D(n101[14]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i14.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i15 (.D(n101[15]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i15.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i16 (.D(n101[16]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i16.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i17 (.D(n101[17]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i17.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i18 (.D(n101[18]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i18.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i19 (.D(n101[19]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i19.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i20 (.D(n101[20]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i20.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i21 (.D(n101[21]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i21.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i22 (.D(n101[22]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i22.GSR = "ENABLED";
    FD1S3IX one_sec_cnt_780__i23 (.D(n101[23]), .CK(Clock_top_c), .CD(one_sec_cnt_23__N_407), 
            .Q(one_sec_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(229[16:27])
    defparam one_sec_cnt_780__i23.GSR = "ENABLED";
    LUT4 i12_2_lut (.A(mode[11]), .B(mode[27]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12_2_lut.init = 16'heeee;
    LUT4 i6055_4_lut (.A(COUNT1_17__N_278[7]), .B(COUNT1_17__N_278[14]), 
         .C(COUNT1_17__N_278[9]), .D(COUNT1_17__N_278[10]), .Z(n6795)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(39[8:21])
    defparam i6055_4_lut.init = 16'h0001;
    FD1P3AX m2_779__i3 (.D(n1981), .SP(Clock_top_c_enable_103), .CK(Clock_top_c), 
            .Q(m21[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam m2_779__i3.GSR = "ENABLED";
    LUT4 i5955_4_lut (.A(n6677), .B(COUNT1_17__N_278[15]), .C(COUNT1_17__N_278[16]), 
         .D(COUNT1_17__N_278[2]), .Z(n6716)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5955_4_lut.init = 16'h8000;
    LUT4 n996_bdd_4_lut (.A(n7233), .B(n4_adj_588), .C(h21[3]), .D(h21[2]), 
         .Z(n7016)) /* synthesis lut_function=(A (B (C)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam n996_bdd_4_lut.init = 16'hb4d2;
    LUT4 i5971_4_lut (.A(n6720), .B(COUNT1_17__N_278[1]), .C(n6683), .D(COUNT1_17__N_278[0]), 
         .Z(n6732)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5971_4_lut.init = 16'h8000;
    LUT4 i6098_4_lut (.A(Clock_status[0]), .B(n7_adj_589), .C(n3), .D(Clock_status[1]), 
         .Z(Clock_top_c_enable_103)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6098_4_lut.init = 16'h0511;
    LUT4 i1_2_lut_adj_61 (.A(n7_adj_590), .B(n7_adj_587), .Z(n7_adj_589)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_adj_61.init = 16'h8888;
    LUT4 i5916_2_lut (.A(COUNT1_17__N_278[11]), .B(COUNT1_17__N_278[4]), 
         .Z(n6677)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5916_2_lut.init = 16'h8888;
    LUT4 i5959_4_lut (.A(COUNT1_17__N_278[17]), .B(COUNT1_17__N_278[6]), 
         .C(COUNT1_17__N_278[8]), .D(COUNT1_17__N_278[13]), .Z(n6720)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5959_4_lut.init = 16'h8000;
    LUT4 i5922_2_lut (.A(COUNT1_17__N_278[3]), .B(COUNT1_17__N_278[5]), 
         .Z(n6683)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5922_2_lut.init = 16'h8888;
    FD1P3IX mode_774__i26 (.D(n133[26]), .SP(clr), .CD(n2512), .CK(Clock_top_c), 
            .Q(mode[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774__i26.GSR = "DISABLED";
    LUT4 i571_1_lut (.A(mode[0]), .Z(n1108)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(48[3] 55[10])
    defparam i571_1_lut.init = 16'h5555;
    CCU2D add_8_17 (.A0(COUNT1[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5639), .COUT(n5640), .S0(COUNT1_17__N_278[15]), .S1(COUNT1_17__N_278[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h5aaa;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    CCU2D add_8_3 (.A0(COUNT1[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5632), .COUT(n5633), .S0(COUNT1_17__N_278[1]), .S1(COUNT1_17__N_278[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    CCU2D add_8_15 (.A0(COUNT1[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5638), .COUT(n5639), .S0(COUNT1_17__N_278[13]), .S1(COUNT1_17__N_278[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_33 (.A0(mode[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5656), .S0(n133[31]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_33.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_33.INIT1 = 16'h0000;
    defparam mode_774_add_4_33.INJECT1_0 = "NO";
    defparam mode_774_add_4_33.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_31 (.A0(mode[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5655), .COUT(n5656), .S0(n133[29]), .S1(n133[30]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_31.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_31.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_31.INJECT1_0 = "NO";
    defparam mode_774_add_4_31.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(s21[0]), .B(n4750), .C(n71), .Z(n1868)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i1_3_lut.init = 16'hcdcd;
    CCU2D mode_774_add_4_29 (.A0(mode[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5654), .COUT(n5655), .S0(n133[27]), .S1(n133[28]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_29.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_29.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_29.INJECT1_0 = "NO";
    defparam mode_774_add_4_29.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_27 (.A0(mode[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5653), .COUT(n5654), .S0(n133[25]), .S1(n133[26]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_27.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_27.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_27.INJECT1_0 = "NO";
    defparam mode_774_add_4_27.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_25 (.A0(mode[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5652), .COUT(n5653), .S0(n133[23]), .S1(n133[24]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_25.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_25.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_25.INJECT1_0 = "NO";
    defparam mode_774_add_4_25.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_23 (.A0(mode[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5651), .COUT(n5652), .S0(n133[21]), .S1(n133[22]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_23.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_23.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_23.INJECT1_0 = "NO";
    defparam mode_774_add_4_23.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_21 (.A0(mode[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5650), .COUT(n5651), .S0(n133[19]), .S1(n133[20]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_21.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_21.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_21.INJECT1_0 = "NO";
    defparam mode_774_add_4_21.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_62 (.A(n6562), .B(\Keyout1[1] ), .C(n7258), .Z(n4750)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(93[8:15])
    defparam i2_3_lut_adj_62.init = 16'h8080;
    LUT4 i90_4_lut (.A(s21[3]), .B(n55), .C(n6673), .D(s21[1]), .Z(n71)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i90_4_lut.init = 16'hcecc;
    LUT4 i1_2_lut_rep_83 (.A(Clock_status[0]), .B(Clock_status[1]), .Z(n7268)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(60[4] 79[11])
    defparam i1_2_lut_rep_83.init = 16'h2222;
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n4124), .B1(n5773), .C1(COUNT1[0]), .D1(GND_net), .COUT(n5632), 
          .S1(COUNT1_17__N_278[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h8787;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    CCU2D add_8_13 (.A0(COUNT1[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5637), .COUT(n5638), .S0(COUNT1_17__N_278[11]), .S1(COUNT1_17__N_278[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(37[35:41])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_19 (.A0(mode[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5649), .COUT(n5650), .S0(n133[17]), .S1(n133[18]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_19.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_19.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_19.INJECT1_0 = "NO";
    defparam mode_774_add_4_19.INJECT1_1 = "NO";
    CCU2D mode_774_add_4_17 (.A0(mode[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(mode[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5648), .COUT(n5649), .S0(n133[15]), .S1(n133[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam mode_774_add_4_17.INIT0 = 16'hfaaa;
    defparam mode_774_add_4_17.INIT1 = 16'hfaaa;
    defparam mode_774_add_4_17.INJECT1_0 = "NO";
    defparam mode_774_add_4_17.INJECT1_1 = "NO";
    LUT4 i1943_3_lut (.A(Clock_top_c_enable_103), .B(n1401), .C(n1_adj_578), 
         .Z(n2579)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1943_3_lut.init = 16'ha8a8;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(n7267), .B(h21[2]), .C(n7237), 
         .D(n4_adj_588), .Z(n5878)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(140[5] 154[12])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'hd32c;
    LUT4 i2_4_lut_adj_63 (.A(\Keyout1[0] ), .B(n7283), .C(\Keyout1[2] ), 
         .D(\Keyout1[1] ), .Z(n2282)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i2_4_lut_adj_63.init = 16'h0080;
    LUT4 i1_2_lut_rep_48_3_lut_3_lut_4_lut (.A(n7267), .B(h21[2]), .C(n7256), 
         .D(n7249), .Z(n7233)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(140[5] 154[12])
    defparam i1_2_lut_rep_48_3_lut_3_lut_4_lut.init = 16'h0e00;
    LUT4 i2_4_lut_adj_64 (.A(n6515), .B(m21[0]), .C(Clock_status[0]), 
         .D(n4_adj_580), .Z(n933)) /* synthesis lut_function=(!((B (C)+!B (C+!(D)))+!A)) */ ;
    defparam i2_4_lut_adj_64.init = 16'h0a08;
    LUT4 i6016_1_lut_3_lut_4_lut (.A(n7267), .B(h21[2]), .C(n7257), .D(n6552), 
         .Z(n6760)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(140[5] 154[12])
    defparam i6016_1_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 reduce_or_450_i1_3_lut (.A(n5789), .B(m21[0]), .C(n6529), .Z(n1_adj_578)) /* synthesis lut_function=(A+!(B+!(C))) */ ;
    defparam reduce_or_450_i1_3_lut.init = 16'hbaba;
    LUT4 i3_4_lut_adj_65 (.A(n7287), .B(m21[1]), .C(m21[3]), .D(m21[2]), 
         .Z(n6529)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_4_lut_adj_65.init = 16'h0080;
    LUT4 i1_2_lut_4_lut (.A(n7280), .B(Clock_status[1]), .C(Clock_status[0]), 
         .D(n2282), .Z(n4_adj_591)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0004;
    LUT4 m11_3__bdd_4_lut (.A(m11[3]), .B(n1002), .C(m11[2]), .D(n7228), 
         .Z(n6993)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam m11_3__bdd_4_lut.init = 16'h9aa6;
    LUT4 i2_4_lut_adj_66 (.A(s11[2]), .B(s11[3]), .C(s11[1]), .D(s11[0]), 
         .Z(n7_adj_590)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_4_lut_adj_66.init = 16'hffdf;
    LUT4 i2_4_lut_adj_67 (.A(m21[3]), .B(m21[2]), .C(m21[1]), .D(m21[0]), 
         .Z(n7_adj_587)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_67.init = 16'hffdf;
    LUT4 i6090_4_lut (.A(Clock_status[1]), .B(n4_adj_574), .C(n4988), 
         .D(Clock_status[0]), .Z(Clock_top_c_enable_86)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6090_4_lut.init = 16'h0511;
    LUT4 i1934_3_lut (.A(Clock_top_c_enable_86), .B(h21[3]), .C(n23), 
         .Z(n2570)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1934_3_lut.init = 16'h2020;
    LUT4 i1933_2_lut (.A(Clock_top_c_enable_85), .B(n870), .Z(n2569)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1933_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_68 (.A(m11[2]), .B(n8), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_68.init = 16'h8888;
    LUT4 i2_3_lut_adj_69 (.A(m21[1]), .B(n933), .C(m21[0]), .Z(n5881)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_adj_69.init = 16'h9696;
    LUT4 i2_3_lut_adj_70 (.A(m11[1]), .B(n1002), .C(m11[0]), .Z(n5874)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_adj_70.init = 16'h9696;
    LUT4 h11_3__bdd_4_lut (.A(h11[3]), .B(n1014), .C(h11[2]), .D(n7281), 
         .Z(n7002)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam h11_3__bdd_4_lut.init = 16'h9aa6;
    LUT4 i1_2_lut_4_lut_adj_71 (.A(Clock_status[0]), .B(Clock_status[1]), 
         .C(n7284), .D(n7289), .Z(n6491)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_71.init = 16'h0008;
    LUT4 i3_4_lut_adj_72 (.A(n7255), .B(n7266), .C(m11[2]), .D(n6455), 
         .Z(n1369)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_72.init = 16'h0200;
    LUT4 i6019_1_lut_3_lut (.A(Clock_status[1]), .B(n7_adj_590), .C(n4997), 
         .Z(n6762)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6019_1_lut_3_lut.init = 16'h1515;
    LUT4 i1_3_lut_adj_73 (.A(Clock_top_c_enable_87), .B(n4750), .C(n71), 
         .Z(n2961)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut_adj_73.init = 16'ha8a8;
    LUT4 i3103_2_lut (.A(m21[3]), .B(m21[0]), .Z(n3725)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3103_2_lut.init = 16'heeee;
    LUT4 i6045_4_lut (.A(Clock_status[1]), .B(n5786), .C(n3), .D(Clock_status[0]), 
         .Z(Clock_top_c_enable_85)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6045_4_lut.init = 16'h0511;
    LUT4 i2_2_lut (.A(n7_adj_577), .B(n4_adj_574), .Z(n5786)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(122[15:24])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_rep_51_4_lut (.A(n7271), .B(n7270), .C(h21[1]), .D(h21[2]), 
         .Z(n7236)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_rep_51_4_lut.init = 16'h0400;
    LUT4 h2_778_mux_6_i1_4_lut (.A(h21[0]), .B(n2360), .C(n870), .D(n3936), 
         .Z(n27[0])) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam h2_778_mux_6_i1_4_lut.init = 16'hc505;
    LUT4 i3338_4_lut (.A(h11[1]), .B(h11[3]), .C(h11[2]), .D(h11[0]), 
         .Z(n3964)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3338_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_adj_74 (.A(s21[1]), .B(n1032), .C(s21[0]), .Z(n5871)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i2_3_lut_adj_74.init = 16'h9696;
    LUT4 i1876_2_lut (.A(clr), .B(n1219), .Z(n2512)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(50[13:17])
    defparam i1876_2_lut.init = 16'h2222;
    LUT4 i2_4_lut_adj_75 (.A(n6515), .B(s21[3]), .C(Clock_status[0]), 
         .D(n4_adj_582), .Z(n1032)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_75.init = 16'ha080;
    LUT4 i4_4_lut_adj_76 (.A(\Keyout1[2] ), .B(n6552), .C(n7249), .D(n7248), 
         .Z(n2360)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i4_4_lut_adj_76.init = 16'h8000;
    LUT4 i1_4_lut_adj_77 (.A(n7287), .B(h21[2]), .C(n4_adj_592), .D(n5_adj_593), 
         .Z(n870)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;
    defparam i1_4_lut_adj_77.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_78 (.A(n7236), .B(h21[0]), .C(n14), .D(h21[3]), 
         .Z(n4_adj_592)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_78.init = 16'h3022;
    LUT4 i1_4_lut_adj_79 (.A(n5_adj_594), .B(n6435), .C(h21[0]), .D(n2282), 
         .Z(n5_adj_593)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_79.init = 16'heccc;
    LUT4 i1_4_lut_adj_80 (.A(h21[1]), .B(n7268), .C(h21[3]), .D(n7251), 
         .Z(n5_adj_594)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C)))) */ ;
    defparam i1_4_lut_adj_80.init = 16'h4840;
    LUT4 i1_4_lut_adj_81 (.A(n3964), .B(n7267), .C(n2347), .D(n6537), 
         .Z(n6435)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_81.init = 16'h3130;
    LUT4 i6087_2_lut (.A(Clock_status[0]), .B(n8_adj_572), .Z(Clock_top_c_enable_61)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6087_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_adj_82 (.A(n2360), .B(n3964), .Z(n951)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i1_2_lut_adj_82.init = 16'h2222;
    LUT4 i3090_2_lut_3_lut_4_lut (.A(n7271), .B(h11[0]), .C(n3964), .D(h11[1]), 
         .Z(n3936)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i3090_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_81 (.A(m11[1]), .B(m11[3]), .Z(n7266)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_81.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_83 (.A(m11[1]), .B(m11[3]), .C(m11[2]), .Z(n4_adj_595)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_83.init = 16'hfefe;
    LUT4 i4865_4_lut_rep_43_3_lut (.A(m11[1]), .B(m11[0]), .C(n1002), 
         .Z(n7228)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4865_4_lut_rep_43_3_lut.init = 16'he8e8;
    LUT4 i1_2_lut_4_lut_3_lut_adj_84 (.A(m11[1]), .B(m11[0]), .C(n1002), 
         .Z(n4_adj_571)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1_2_lut_4_lut_3_lut_adj_84.init = 16'h1818;
    LUT4 i1_2_lut_4_lut_adj_85 (.A(n7251), .B(h21[2]), .C(h21[1]), .D(n7287), 
         .Z(n6558)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_85.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(n7283), .B(\Keyout1[0] ), .C(n3725), 
         .D(\Keyout1[2] ), .Z(n6507)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'h0200;
    LUT4 i6076_2_lut_rep_63_4_lut (.A(h21[1]), .B(h21[0]), .C(h21[3]), 
         .D(h21[2]), .Z(n7248)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(119[26:35])
    defparam i6076_2_lut_rep_63_4_lut.init = 16'h0001;
    LUT4 i2_4_lut_adj_87 (.A(m11[0]), .B(n4_adj_591), .C(n51), .D(n4_adj_595), 
         .Z(n1002)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_87.init = 16'h0c08;
    LUT4 i3_4_lut_adj_88 (.A(s21[1]), .B(s21[2]), .C(s21[0]), .D(s21[3]), 
         .Z(n4997)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_88.init = 16'hfdff;
    LUT4 i5861_2_lut_3_lut (.A(h21[1]), .B(h21[0]), .C(h21[3]), .Z(n7267)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i5861_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4801_4_lut_3_lut (.A(h21[1]), .B(h21[0]), .C(n7233), .Z(n4_adj_588)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i4801_4_lut_3_lut.init = 16'he8e8;
    LUT4 i2_3_lut_4_lut_4_lut_adj_89 (.A(h21[2]), .B(n6534), .C(h21[1]), 
         .D(n7250), .Z(n6535)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i2_3_lut_4_lut_4_lut_adj_89.init = 16'h4000;
    LUT4 i2_3_lut_4_lut_adj_90 (.A(n7283), .B(\Keyout1[0] ), .C(n7282), 
         .D(n7268), .Z(n6537)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i2_3_lut_4_lut_adj_90.init = 16'h2000;
    LUT4 i6017_1_lut_3_lut_3_lut (.A(h21[2]), .B(n17), .C(h21[0]), .Z(n6761)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(84[4] 220[11])
    defparam i6017_1_lut_3_lut_3_lut.init = 16'hbfbf;
    LUT4 i1_2_lut_adj_91 (.A(h21[2]), .B(h21[1]), .Z(n14)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_91.init = 16'h4444;
    LUT4 i6072_4_lut (.A(n7269), .B(m11[0]), .C(n7287), .D(m11[2]), 
         .Z(n2_adj_584)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i6072_4_lut.init = 16'h1333;
    LUT4 i31_4_lut (.A(h21[3]), .B(h11[1]), .C(h21[1]), .D(n7265), .Z(n17)) /* synthesis lut_function=(!(A (C)+!A (((D)+!C)+!B))) */ ;
    defparam i31_4_lut.init = 16'h0a4a;
    LUT4 i1339_4_lut (.A(n6529), .B(n1401), .C(m21[0]), .D(n5789), .Z(n1948)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/clock_logic.vhd(96[4] 219[12])
    defparam i1339_4_lut.init = 16'hcccd;
    LUT4 i1_2_lut_adj_92 (.A(\Keyout1[1] ), .B(\Keyout1[0] ), .Z(n6552)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_92.init = 16'h2222;
    LUT4 i3_4_lut_adj_93 (.A(n2282), .B(h11[1]), .C(h11[2]), .D(h11[3]), 
         .Z(n6534)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_93.init = 16'h0008;
    
endmodule
//
// Verilog Description of module Segment_Display
//

module Segment_Display (Clock_top_c, Clock_top_c_enable_83, seg_number_out1, 
            n288, Clock_top_c_enable_75, sclk_out1_c, Clkout1M, Clock_top_c_enable_58, 
            sclk_out_N_515, n3708, n9, rclk_out1_c, ser_out1_c, Rst1_c, 
            \digit1[7] , \digit1[6] , \digit1[5] , \digit1[4] , \digit1[3] , 
            \digit1[2] );
    input Clock_top_c;
    input Clock_top_c_enable_83;
    input [7:0]seg_number_out1;
    output n288;
    input Clock_top_c_enable_75;
    output sclk_out1_c;
    input Clkout1M;
    input Clock_top_c_enable_58;
    output sclk_out_N_515;
    input n3708;
    output n9;
    output rclk_out1_c;
    output ser_out1_c;
    input Rst1_c;
    input \digit1[7] ;
    input \digit1[6] ;
    input \digit1[5] ;
    input \digit1[4] ;
    input \digit1[3] ;
    input \digit1[2] ;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    wire Clkout1M /* synthesis is_clock=1, SET_AS_NETWORK=Clkout1M */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(97[8:16])
    wire [7:0]number_reg;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(24[8:18])
    wire [3:0]n284;
    
    wire n2497;
    wire [15:0]data_reg;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(22[8:16])
    
    wire n633;
    wire [4:0]write_times_counter;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(23[8:27])
    
    wire Clock_top_c_enable_46, n2531;
    wire [4:0]n25;
    
    wire n632, n631, n630, n629, n628, n625, n7238, n624, n623, 
        n622, n621, n620, n619, n2494, n7, n7259, n618;
    wire [7:0]digit_reg;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(25[8:17])
    
    wire n7286, n298;
    
    FD1P3AX number_reg_i0_i0 (.D(seg_number_out1[0]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i0.GSR = "DISABLED";
    FD1P3AY data_state_FSM_i0_i0 (.D(n284[3]), .SP(Clock_top_c_enable_75), 
            .CK(Clock_top_c), .Q(n288));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i0.GSR = "ENABLED";
    FD1S3AX sclk_out_33 (.D(n2497), .CK(Clkout1M), .Q(sclk_out1_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam sclk_out_33.GSR = "ENABLED";
    FD1P3AX data_reg__i15 (.D(n633), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i15.GSR = "DISABLED";
    FD1P3IX write_times_counter_781__i0 (.D(n25[0]), .SP(Clock_top_c_enable_46), 
            .CD(n2531), .CK(Clock_top_c), .Q(write_times_counter[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam write_times_counter_781__i0.GSR = "DISABLED";
    LUT4 i1861_3_lut (.A(n284[1]), .B(sclk_out_N_515), .C(sclk_out1_c), 
         .Z(n2497)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam i1861_3_lut.init = 16'hdcdc;
    FD1P3AX data_reg__i14 (.D(n632), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i14.GSR = "DISABLED";
    FD1P3AX data_reg__i13 (.D(n631), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i13.GSR = "DISABLED";
    FD1P3AX data_reg__i12 (.D(n630), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i12.GSR = "DISABLED";
    FD1P3AX data_reg__i11 (.D(n629), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i11.GSR = "DISABLED";
    FD1P3AX data_reg__i10 (.D(n628), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i10.GSR = "DISABLED";
    FD1P3IX data_reg__i8 (.D(data_reg[9]), .SP(Clock_top_c_enable_58), .CD(n3708), 
            .CK(Clock_top_c), .Q(data_reg[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i8.GSR = "DISABLED";
    FD1P3IX data_reg__i9 (.D(data_reg[10]), .SP(Clock_top_c_enable_58), 
            .CD(n3708), .CK(Clock_top_c), .Q(data_reg[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i9.GSR = "DISABLED";
    FD1P3AX data_reg__i7 (.D(n625), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i7.GSR = "DISABLED";
    LUT4 i91_2_lut_rep_53 (.A(n9), .B(sclk_out_N_515), .Z(n7238)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam i91_2_lut_rep_53.init = 16'h4444;
    FD1P3AX data_reg__i6 (.D(n624), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i6.GSR = "DISABLED";
    FD1P3AX data_reg__i5 (.D(n623), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i5.GSR = "DISABLED";
    FD1P3AX data_reg__i4 (.D(n622), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i4.GSR = "DISABLED";
    FD1P3AX data_reg__i3 (.D(n621), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i3.GSR = "DISABLED";
    FD1P3AX data_reg__i2 (.D(n620), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i2.GSR = "DISABLED";
    FD1P3AX data_reg__i1 (.D(n619), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i1.GSR = "DISABLED";
    LUT4 i1858_3_lut_4_lut (.A(n9), .B(sclk_out_N_515), .C(rclk_out1_c), 
         .D(n284[3]), .Z(n2494)) /* synthesis lut_function=(A (C+(D))+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam i1858_3_lut_4_lut.init = 16'hffb0;
    FD1P3IX write_times_counter_781__i4 (.D(n25[4]), .SP(Clock_top_c_enable_46), 
            .CD(n2531), .CK(Clock_top_c), .Q(write_times_counter[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam write_times_counter_781__i4.GSR = "DISABLED";
    FD1P3IX write_times_counter_781__i2 (.D(n25[2]), .SP(Clock_top_c_enable_46), 
            .CD(n2531), .CK(Clock_top_c), .Q(write_times_counter[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam write_times_counter_781__i2.GSR = "DISABLED";
    FD1P3IX write_times_counter_781__i3 (.D(n25[3]), .SP(Clock_top_c_enable_46), 
            .CD(n2531), .CK(Clock_top_c), .Q(write_times_counter[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam write_times_counter_781__i3.GSR = "DISABLED";
    FD1P3IX write_times_counter_781__i1 (.D(n25[1]), .SP(Clock_top_c_enable_46), 
            .CD(n2531), .CK(Clock_top_c), .Q(write_times_counter[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam write_times_counter_781__i1.GSR = "DISABLED";
    FD1S3AX rclk_out_32 (.D(n2494), .CK(Clkout1M), .Q(rclk_out1_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam rclk_out_32.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n7), .B(write_times_counter[2]), .C(write_times_counter[1]), 
         .D(write_times_counter[4]), .Z(n9)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(48[9:33])
    defparam i4_4_lut.init = 16'hfeff;
    FD1P3AX ser_out_34 (.D(data_reg[0]), .SP(n284[1]), .CK(Clkout1M), 
            .Q(ser_out1_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam ser_out_34.GSR = "ENABLED";
    LUT4 i4941_3_lut_4_lut (.A(write_times_counter[2]), .B(n7259), .C(write_times_counter[3]), 
         .D(write_times_counter[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam i4941_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2_2_lut (.A(write_times_counter[3]), .B(write_times_counter[0]), 
         .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(48[9:33])
    defparam i2_2_lut.init = 16'heeee;
    FD1P3AX data_reg__i0 (.D(n618), .SP(Clock_top_c_enable_58), .CK(Clock_top_c), 
            .Q(data_reg[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam data_reg__i0.GSR = "DISABLED";
    LUT4 i1895_2_lut_4_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(Clock_top_c_enable_75), 
         .D(Rst1_c), .Z(n2531)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam i1895_2_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 i6100_3_lut_rep_49_4_lut (.A(sclk_out_N_515), .B(n9), .C(Clock_top_c_enable_75), 
         .D(Rst1_c), .Z(Clock_top_c_enable_46)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam i6100_3_lut_rep_49_4_lut.init = 16'h7000;
    LUT4 mux_289_i16_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[0]), 
         .D(digit_reg[7]), .Z(n633)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i16_3_lut_4_lut.init = 16'hf780;
    LUT4 i4914_2_lut_rep_101 (.A(n284[1]), .B(write_times_counter[0]), .Z(n7286)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam i4914_2_lut_rep_101.init = 16'h8888;
    LUT4 i4920_2_lut_3_lut (.A(n284[1]), .B(write_times_counter[0]), .C(write_times_counter[1]), 
         .Z(n25[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam i4920_2_lut_3_lut.init = 16'h7878;
    LUT4 i4923_2_lut_rep_74_3_lut (.A(n284[1]), .B(write_times_counter[0]), 
         .C(write_times_counter[1]), .Z(n7259)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam i4923_2_lut_rep_74_3_lut.init = 16'h8080;
    LUT4 i4927_2_lut_3_lut_4_lut (.A(n284[1]), .B(write_times_counter[0]), 
         .C(write_times_counter[2]), .D(write_times_counter[1]), .Z(n25[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam i4927_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3AX digit_reg_i0_i7 (.D(\digit1[7] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i7.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i6 (.D(\digit1[6] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i6.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i5 (.D(\digit1[5] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i5.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i4 (.D(\digit1[4] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i4.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i3 (.D(\digit1[3] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i3.GSR = "DISABLED";
    FD1P3AX digit_reg_i0_i2 (.D(\digit1[2] ), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(digit_reg[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam digit_reg_i0_i2.GSR = "DISABLED";
    FD1P3AX data_state_FSM_i0_i3 (.D(n7238), .SP(Clock_top_c_enable_75), 
            .CK(Clock_top_c), .Q(n284[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX data_state_FSM_i0_i2 (.D(n284[1]), .SP(Clock_top_c_enable_75), 
            .CK(Clock_top_c), .Q(sclk_out_N_515));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX data_state_FSM_i0_i1 (.D(n298), .SP(Clock_top_c_enable_75), 
            .CK(Clock_top_c), .Q(n284[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam data_state_FSM_i0_i1.GSR = "ENABLED";
    FD1P3AX number_reg_i0_i7 (.D(seg_number_out1[7]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i7.GSR = "DISABLED";
    LUT4 i4912_2_lut (.A(n284[1]), .B(write_times_counter[0]), .Z(n25[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam i4912_2_lut.init = 16'h6666;
    LUT4 mux_289_i15_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[15]), 
         .D(digit_reg[6]), .Z(n632)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i15_3_lut_4_lut.init = 16'hf780;
    FD1P3AX number_reg_i0_i6 (.D(seg_number_out1[6]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i6.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i5 (.D(seg_number_out1[5]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i5.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i4 (.D(seg_number_out1[4]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i4.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i3 (.D(seg_number_out1[3]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i3.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i2 (.D(seg_number_out1[2]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i2.GSR = "DISABLED";
    FD1P3AX number_reg_i0_i1 (.D(seg_number_out1[1]), .SP(Clock_top_c_enable_83), 
            .CK(Clock_top_c), .Q(number_reg[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=19, LSE_LLINE=132, LSE_RLINE=132 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(30[7] 62[11])
    defparam number_reg_i0_i1.GSR = "DISABLED";
    LUT4 mux_289_i14_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[14]), 
         .D(digit_reg[5]), .Z(n631)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i14_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i13_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[13]), 
         .D(digit_reg[4]), .Z(n630)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i13_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i12_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[12]), 
         .D(digit_reg[3]), .Z(n629)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i12_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i11_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[11]), 
         .D(digit_reg[2]), .Z(n628)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i11_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i8_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[8]), 
         .D(number_reg[7]), .Z(n625)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i7_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[7]), 
         .D(number_reg[6]), .Z(n624)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i6_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[6]), 
         .D(number_reg[5]), .Z(n623)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i6_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i5_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[5]), 
         .D(number_reg[4]), .Z(n622)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i4_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[4]), 
         .D(number_reg[3]), .Z(n621)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i3_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[3]), 
         .D(number_reg[2]), .Z(n620)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i2_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[2]), 
         .D(number_reg[1]), .Z(n619)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_289_i1_3_lut_4_lut (.A(sclk_out_N_515), .B(n9), .C(data_reg[1]), 
         .D(number_reg[0]), .Z(n618)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam mux_289_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 reduce_or_88_i1_2_lut_3_lut (.A(sclk_out_N_515), .B(n9), .C(n288), 
         .Z(n298)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(36[3] 61[12])
    defparam reduce_or_88_i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i4934_2_lut_3_lut_4_lut (.A(write_times_counter[1]), .B(n7286), 
         .C(write_times_counter[3]), .D(write_times_counter[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/segment_display.vhd(46[28:47])
    defparam i4934_2_lut_3_lut_4_lut.init = 16'h78f0;
    
endmodule
//
// Verilog Description of module Key_Board
//

module Key_Board (Clock_top_c, column1_c_0, row1_c_0, Clk_N_41, column1_c_3, 
            column1_c_2, column1_c_1, Rst1_c, Keyout1, n6491, n7241, 
            n6514, n6507, \m11[0] , n6455, \Keyout1[2] , n7282, 
            \Keyout1[0] , n7256, n7283, n7240, \h11[1] , n7247, 
            n7254, GND_net, n7257, Clock_status, n7249, n7266, n5789, 
            n6556, n6562, n7288, n1415, row1_c_3, row1_c_2, row1_c_1, 
            n6515, n7268, n7237, n7230, n7232, n3);
    input Clock_top_c;
    input column1_c_0;
    output row1_c_0;
    input Clk_N_41;
    input column1_c_3;
    input column1_c_2;
    input column1_c_1;
    input Rst1_c;
    output [4:0]Keyout1;
    input n6491;
    input n7241;
    output n6514;
    input n6507;
    input \m11[0] ;
    output n6455;
    output \Keyout1[2] ;
    output n7282;
    output \Keyout1[0] ;
    output n7256;
    output n7283;
    output n7240;
    input \h11[1] ;
    output n7247;
    output n7254;
    input GND_net;
    output n7257;
    input [1:0]Clock_status;
    output n7249;
    input n7266;
    input n5789;
    output n6556;
    input n6562;
    input n7288;
    output n1415;
    output row1_c_3;
    output row1_c_2;
    output row1_c_1;
    output n6515;
    input n7268;
    output n7237;
    output n7230;
    output n7232;
    output n3;
    
    wire Clock_top_c /* synthesis SET_AS_NETWORK=Clock_top_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(9[2:11])
    wire Clk_N_41 /* synthesis is_inv_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(10[1:4])
    wire [15:0]R_cache;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(22[8:15])
    
    wire Clock_top_c_enable_15;
    wire [2:0]num_cnt;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(20[8:15])
    
    wire n7290, Clock_top_c_enable_7, Clock_top_c_enable_12;
    wire [4:0]key_get;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(26[8:15])
    
    wire key_get_4__N_121;
    wire [4:0]key_get_4__N_116;
    
    wire n1455, n6766;
    wire [13:0]Clk_cnt;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(17[8:15])
    wire [13:0]n61;
    wire [19:0]Delay_cnt;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(25[8:17])
    
    wire n2507;
    wire [19:0]n85;
    
    wire n6394, n7239, num_cnt_2__N_115;
    wire [3:0]ROW_3__N_36;
    
    wire n13, n11, n6730, n6712, n32, n11_adj_559, n4, n7277, 
        n10;
    wire [4:0]Keyout1_c;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/top.vhd(93[8:15])
    
    wire Clock_top_c_enable_97, n1453;
    wire [4:0]key_get_temp;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(27[8:20])
    
    wire n6550, n29, n7261, n6469, n25, n3958, n6532, n7244, 
        n9, refresh_flag_N_170, n7262, n7253, n6490, n6485, n6548, 
        key_get_temp_4__N_122, n7274, n10_adj_560, n6708, n6728, n6704, 
        n6641, n6726, n7252, n7246, n6, n7276, n6481, n7278, 
        n3849, n10_adj_561, n4_adj_562, n2385, n6477, n7, n3735, 
        n6669, n7243, n4110, n6551, n6462, n4_adj_563, n4_adj_564, 
        n6_adj_565, n6417, n6416, n6_adj_566, n8, n6475, n12, 
        n23, n7098, n5673, refresh_flag, n520, Clock_top_c_enable_57, 
        n7_adj_567, n6_adj_568, n5672, n5671, n5670, n5669, n5668, 
        n6378, n5667, n5666, n5665, n7260, n7263, Clock_top_c_enable_102, 
        n5664, n5663, n5662, n5661, n5660, n5659, n5658, n5657, 
        n6473, n6470, n7245, n6422, n6_adj_569, n7226, n6476, 
        n27, n6520, n6546, n6927, n10_adj_570;
    
    FD1P3AX R_cache_i0_i0 (.D(column1_c_0), .SP(Clock_top_c_enable_15), 
            .CK(Clock_top_c), .Q(R_cache[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i0.GSR = "DISABLED";
    FD1S3IX ROW_i1 (.D(n7290), .CK(Clk_N_41), .CD(num_cnt[2]), .Q(row1_c_0)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(48[2] 56[9])
    defparam ROW_i1.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i11 (.D(column1_c_3), .SP(Clock_top_c_enable_7), 
            .CK(Clock_top_c), .Q(R_cache[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i11.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i10 (.D(column1_c_2), .SP(Clock_top_c_enable_7), 
            .CK(Clock_top_c), .Q(R_cache[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i10.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i9 (.D(column1_c_1), .SP(Clock_top_c_enable_7), .CK(Clock_top_c), 
            .Q(R_cache[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i9.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i8 (.D(column1_c_0), .SP(Clock_top_c_enable_7), .CK(Clock_top_c), 
            .Q(R_cache[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i8.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i7 (.D(column1_c_3), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i7.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i6 (.D(column1_c_2), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i6.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i5 (.D(column1_c_1), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i5.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i4 (.D(column1_c_0), .SP(Clock_top_c_enable_12), 
            .CK(Clock_top_c), .Q(R_cache[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i4.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i3 (.D(column1_c_3), .SP(Clock_top_c_enable_15), 
            .CK(Clock_top_c), .Q(R_cache[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i3.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i2 (.D(column1_c_2), .SP(Clock_top_c_enable_15), 
            .CK(Clock_top_c), .Q(R_cache[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i2.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i1 (.D(column1_c_1), .SP(Clock_top_c_enable_15), 
            .CK(Clock_top_c), .Q(R_cache[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i1.GSR = "DISABLED";
    FD1P3AX key_get_i0_i4 (.D(key_get_4__N_116[4]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_i0_i4.GSR = "ENABLED";
    FD1S3IX num_cnt__i0 (.D(n6766), .CK(Clock_top_c), .CD(n1455), .Q(num_cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(32[2] 43[10])
    defparam num_cnt__i0.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i0 (.D(n61[0]), .CK(Clock_top_c), .Q(Clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i0.GSR = "DISABLED";
    FD1P3AX key_get_i0_i3 (.D(key_get_4__N_116[3]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_i0_i3.GSR = "ENABLED";
    FD1P3IX Delay_cnt_772__i15 (.D(n85[15]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i15.GSR = "DISABLED";
    FD1P3AX key_get_i0_i2 (.D(key_get_4__N_116[2]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_i0_i2.GSR = "ENABLED";
    FD1P3IX Delay_cnt_772__i18 (.D(n85[18]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i18.GSR = "DISABLED";
    LUT4 i15_2_lut (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n6394)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    FD1P3IX Delay_cnt_772__i0 (.D(n85[0]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i0.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(Keyout1[1]), .B(n7239), .C(n6491), .D(n7241), 
         .Z(n6514)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_3_lut (.A(Keyout1[1]), .B(n6507), .C(\m11[0] ), .Z(n6455)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_4_lut_3_lut.init = 16'h0808;
    LUT4 i6026_2_lut (.A(num_cnt[0]), .B(num_cnt_2__N_115), .Z(n6766)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(32[2] 43[10])
    defparam i6026_2_lut.init = 16'h6666;
    LUT4 i2_3_lut (.A(num_cnt[1]), .B(num_cnt[2]), .C(num_cnt[0]), .Z(ROW_3__N_36[2])) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(32[2] 43[10])
    defparam i2_3_lut.init = 16'hefef;
    FD1P3AX key_get_i0_i1 (.D(key_get_4__N_116[1]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_i0_i1.GSR = "ENABLED";
    LUT4 i6067_4_lut (.A(n13), .B(n11), .C(Clk_cnt[1]), .D(n6730), .Z(num_cnt_2__N_115)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(33[6:20])
    defparam i6067_4_lut.init = 16'h0100;
    LUT4 i5_4_lut (.A(Clk_cnt[0]), .B(Clk_cnt[3]), .C(Clk_cnt[2]), .D(Clk_cnt[7]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(Clk_cnt[13]), .B(Clk_cnt[11]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    FD1P3IX Delay_cnt_772__i1 (.D(n85[1]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i1.GSR = "DISABLED";
    LUT4 i5969_4_lut (.A(Clk_cnt[9]), .B(n6712), .C(Clk_cnt[6]), .D(Clk_cnt[5]), 
         .Z(n6730)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5969_4_lut.init = 16'h8000;
    LUT4 i5951_4_lut (.A(Clk_cnt[10]), .B(Clk_cnt[4]), .C(Clk_cnt[12]), 
         .D(Clk_cnt[8]), .Z(n6712)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5951_4_lut.init = 16'h8000;
    LUT4 i59_4_lut_3_lut (.A(R_cache[14]), .B(R_cache[9]), .C(R_cache[13]), 
         .Z(n32)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)))) */ ;
    defparam i59_4_lut_3_lut.init = 16'h6868;
    LUT4 i2_4_lut (.A(n11_adj_559), .B(n4), .C(n7277), .D(n10), .Z(key_get_4__N_116[3])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i2_4_lut.init = 16'heccc;
    FD1P3IX key_out__i4 (.D(key_get_temp[4]), .SP(Clock_top_c_enable_97), 
            .CD(n1453), .CK(Clock_top_c), .Q(Keyout1_c[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_out__i4.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n6550), .B(n29), .C(R_cache[1]), .D(R_cache[6]), 
         .Z(n4)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'hceec;
    FD1P3IX Delay_cnt_772__i2 (.D(n85[2]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i2.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(n7261), .B(n6469), .C(n25), .D(R_cache[3]), .Z(n10)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hc088;
    FD1P3IX Delay_cnt_772__i3 (.D(n85[3]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i3.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_2 (.A(n3958), .B(n6532), .C(R_cache[15]), .D(R_cache[7]), 
         .Z(n25)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_2.init = 16'hccec;
    FD1P3IX Delay_cnt_772__i4 (.D(n85[4]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i4.GSR = "DISABLED";
    LUT4 i6119_2_lut_2_lut (.A(n7244), .B(n9), .Z(refresh_flag_N_170)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6119_2_lut_2_lut.init = 16'h1111;
    LUT4 i2_4_lut_adj_3 (.A(n7262), .B(R_cache[9]), .C(R_cache[4]), .D(R_cache[8]), 
         .Z(n6532)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_4_lut_adj_3.init = 16'h0880;
    LUT4 i2_4_lut_adj_4 (.A(R_cache[4]), .B(R_cache[9]), .C(R_cache[8]), 
         .D(R_cache[0]), .Z(n3958)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_4.init = 16'h8000;
    FD1P3IX Delay_cnt_772__i5 (.D(n85[5]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i5.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(n7261), .B(n7253), .C(R_cache[5]), .D(R_cache[1]), 
         .Z(n6490)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0880;
    FD1P3IX Delay_cnt_772__i6 (.D(n85[6]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i6.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_5 (.A(R_cache[1]), .B(R_cache[2]), .C(R_cache[10]), 
         .Z(n6469)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_5.init = 16'h8080;
    LUT4 i3_4_lut_adj_6 (.A(n7261), .B(n6485), .C(R_cache[10]), .D(n6548), 
         .Z(n6550)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_6.init = 16'h8000;
    LUT4 i1_2_lut (.A(R_cache[12]), .B(R_cache[5]), .Z(n6548)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1893_3_lut (.A(Rst1_c), .B(n7244), .C(key_get_temp_4__N_122), 
         .Z(n2507)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam i1893_3_lut.init = 16'ha2a2;
    FD1P3IX Delay_cnt_772__i7 (.D(n85[7]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i7.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_89 (.A(R_cache[12]), .B(R_cache[6]), .Z(n7274)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_89.init = 16'h8888;
    FD1P3IX Delay_cnt_772__i8 (.D(n85[8]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i8.GSR = "DISABLED";
    LUT4 i4_3_lut_4_lut (.A(R_cache[12]), .B(R_cache[6]), .C(R_cache[5]), 
         .D(R_cache[13]), .Z(n11_adj_559)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i4_3_lut_4_lut.init = 16'h8000;
    LUT4 i4_4_lut (.A(Delay_cnt[9]), .B(Delay_cnt[16]), .C(Delay_cnt[12]), 
         .D(Delay_cnt[11]), .Z(n10_adj_560)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i5967_4_lut (.A(Delay_cnt[18]), .B(n6708), .C(Delay_cnt[19]), 
         .D(Delay_cnt[7]), .Z(n6728)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5967_4_lut.init = 16'h8000;
    LUT4 i5965_4_lut (.A(Delay_cnt[6]), .B(n6704), .C(n6641), .D(Delay_cnt[1]), 
         .Z(n6726)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5965_4_lut.init = 16'h8000;
    FD1P3IX Delay_cnt_772__i9 (.D(n85[9]), .SP(Rst1_c), .CD(n2507), .CK(Clock_top_c), 
            .Q(Delay_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i9.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_67_3_lut (.A(R_cache[12]), .B(R_cache[6]), .C(R_cache[10]), 
         .Z(n7252)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_67_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_61_3_lut_4_lut (.A(R_cache[12]), .B(R_cache[6]), .C(R_cache[1]), 
         .D(R_cache[10]), .Z(n7246)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_61_3_lut_4_lut.init = 16'h8000;
    FD1P3IX Delay_cnt_772__i16 (.D(n85[16]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i16.GSR = "DISABLED";
    FD1P3IX Delay_cnt_772__i10 (.D(n85[10]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i10.GSR = "DISABLED";
    FD1P3IX Delay_cnt_772__i11 (.D(n85[11]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i11.GSR = "DISABLED";
    LUT4 i5947_4_lut (.A(Delay_cnt[5]), .B(Delay_cnt[13]), .C(Delay_cnt[0]), 
         .D(Delay_cnt[3]), .Z(n6708)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5947_4_lut.init = 16'h8000;
    LUT4 i5943_4_lut (.A(Delay_cnt[4]), .B(Delay_cnt[17]), .C(Delay_cnt[8]), 
         .D(Delay_cnt[15]), .Z(n6704)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5943_4_lut.init = 16'h8000;
    FD1P3IX Delay_cnt_772__i12 (.D(n85[12]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i12.GSR = "DISABLED";
    LUT4 i5880_2_lut (.A(Delay_cnt[2]), .B(Delay_cnt[10]), .Z(n6641)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5880_2_lut.init = 16'h8888;
    LUT4 i6042_4_lut (.A(key_get[3]), .B(key_get[2]), .C(key_get[0]), 
         .D(n6), .Z(key_get_temp_4__N_122)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(98[6:16])
    defparam i6042_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_7 (.A(key_get[1]), .B(key_get[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(98[6:16])
    defparam i1_2_lut_adj_7.init = 16'heeee;
    LUT4 i1_2_lut_rep_91 (.A(R_cache[1]), .B(R_cache[2]), .Z(n7276)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_91.init = 16'h8888;
    FD1P3IX Delay_cnt_772__i13 (.D(n85[13]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i13.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut (.A(R_cache[1]), .B(R_cache[2]), .C(R_cache[13]), 
         .Z(n6481)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1P3IX Delay_cnt_772__i14 (.D(n85[14]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i14.GSR = "DISABLED";
    LUT4 i2_2_lut_3_lut (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt[2]), 
         .Z(key_get_4__N_121)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_4_lut_adj_8 (.A(num_cnt[1]), .B(num_cnt[0]), .C(num_cnt_2__N_115), 
         .D(num_cnt[2]), .Z(n1455)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_8.init = 16'h1000;
    LUT4 i1_2_lut_rep_92 (.A(R_cache[14]), .B(R_cache[11]), .Z(n7277)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_92.init = 16'h8888;
    LUT4 i2_3_lut_rep_68_4_lut (.A(R_cache[14]), .B(R_cache[11]), .C(R_cache[13]), 
         .D(R_cache[3]), .Z(n7253)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i2_3_lut_rep_68_4_lut.init = 16'h8000;
    LUT4 i3123_2_lut_rep_93 (.A(R_cache[7]), .B(R_cache[15]), .Z(n7278)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3123_2_lut_rep_93.init = 16'h8888;
    LUT4 i3438_2_lut_rep_76_3_lut (.A(R_cache[7]), .B(R_cache[15]), .C(n3958), 
         .Z(n7261)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3438_2_lut_rep_76_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_77_3_lut (.A(R_cache[7]), .B(R_cache[15]), .C(R_cache[0]), 
         .Z(n7262)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_77_3_lut.init = 16'h8080;
    LUT4 i5_4_lut_adj_9 (.A(n3849), .B(n10_adj_561), .C(R_cache[4]), .D(n4_adj_562), 
         .Z(key_get_4__N_116[2])) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i5_4_lut_adj_9.init = 16'hdfdd;
    LUT4 i3227_4_lut (.A(R_cache[14]), .B(n2385), .C(n6477), .D(R_cache[9]), 
         .Z(n3849)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i3227_4_lut.init = 16'hcc4c;
    LUT4 i4_4_lut_adj_10 (.A(n7), .B(R_cache[12]), .C(n3735), .D(n6669), 
         .Z(n10_adj_561)) /* synthesis lut_function=(A+!(B (C)+!B !((D)+!C))) */ ;
    defparam i4_4_lut_adj_10.init = 16'hbfaf;
    LUT4 i1_2_lut_rep_58_3_lut_4_lut (.A(R_cache[7]), .B(R_cache[15]), .C(R_cache[6]), 
         .D(n3958), .Z(n7243)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_58_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_11 (.A(n4110), .B(R_cache[0]), .Z(n4_adj_562)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_11.init = 16'h8888;
    LUT4 i2_3_lut_adj_12 (.A(R_cache[3]), .B(n6551), .C(R_cache[10]), 
         .Z(n2385)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(90[9:27])
    defparam i2_3_lut_adj_12.init = 16'hbfbf;
    LUT4 i1_4_lut_adj_13 (.A(n6462), .B(R_cache[3]), .C(n6551), .D(R_cache[10]), 
         .Z(n7)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_13.init = 16'haaea;
    LUT4 i3113_4_lut (.A(R_cache[6]), .B(R_cache[5]), .C(n4_adj_563), 
         .D(n4_adj_564), .Z(n3735)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A ((D)+!B)) */ ;
    defparam i3113_4_lut.init = 16'hf531;
    LUT4 i5908_4_lut (.A(R_cache[11]), .B(R_cache[15]), .C(n6_adj_565), 
         .D(R_cache[7]), .Z(n6669)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5908_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(R_cache[7]), .B(n6417), .C(R_cache[11]), .Z(n6462)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_adj_14 (.A(n6550), .B(R_cache[1]), .Z(n4_adj_563)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(92[9:27])
    defparam i1_2_lut_adj_14.init = 16'hdddd;
    LUT4 i3_4_lut_adj_15 (.A(R_cache[15]), .B(n6416), .C(R_cache[3]), 
         .D(n6548), .Z(n6417)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i3_4_lut_adj_15.init = 16'h8000;
    LUT4 i2_3_lut_adj_16 (.A(n6416), .B(R_cache[5]), .C(R_cache[3]), .Z(n6_adj_565)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i2_3_lut_adj_16.init = 16'h8080;
    LUT4 i4_4_lut_adj_17 (.A(R_cache[14]), .B(n6481), .C(R_cache[6]), 
         .D(n6_adj_566), .Z(n6416)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_17.init = 16'h8000;
    LUT4 i1_2_lut_adj_18 (.A(n3958), .B(R_cache[10]), .Z(n6_adj_566)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_18.init = 16'h8888;
    LUT4 i3_4_lut_adj_19 (.A(n7277), .B(n6481), .C(n7243), .D(n6548), 
         .Z(n6551)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i3_4_lut_adj_19.init = 16'h8000;
    FD1P3IX Delay_cnt_772__i19 (.D(n85[19]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i19.GSR = "DISABLED";
    LUT4 i4_4_lut_adj_20 (.A(R_cache[13]), .B(n8), .C(R_cache[5]), .D(R_cache[3]), 
         .Z(n6477)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i4_4_lut_adj_20.init = 16'h8000;
    LUT4 i3_4_lut_adj_21 (.A(n6475), .B(n7246), .C(R_cache[4]), .D(R_cache[2]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i3_4_lut_adj_21.init = 16'h8000;
    PFUMX i56 (.BLUT(n12), .ALUT(n23), .C0(R_cache[5]), .Z(key_get_4__N_116[1]));
    LUT4 i1_2_lut_rep_97 (.A(\Keyout1[2] ), .B(Keyout1[1]), .Z(n7282)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_97.init = 16'h8888;
    LUT4 n6485_bdd_4_lut_6275 (.A(n6481), .B(R_cache[14]), .C(R_cache[11]), 
         .D(R_cache[3]), .Z(n7098)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n6485_bdd_4_lut_6275.init = 16'h8000;
    LUT4 i1_2_lut_rep_71_3_lut (.A(\Keyout1[2] ), .B(Keyout1[1]), .C(\Keyout1[0] ), 
         .Z(n7256)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_71_3_lut.init = 16'hf7f7;
    FD1S3IX key_get_temp__i0 (.D(key_get[0]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_temp__i0.GSR = "ENABLED";
    FD1P3AX key_get_i0_i0 (.D(key_get_4__N_116[0]), .SP(key_get_4__N_121), 
            .CK(Clock_top_c), .Q(key_get[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_55_3_lut_4_lut (.A(\Keyout1[2] ), .B(Keyout1[1]), 
         .C(n7283), .D(\Keyout1[0] ), .Z(n7240)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_55_3_lut_4_lut.init = 16'hff7f;
    LUT4 i6124_2_lut_rep_62_3_lut_4_lut (.A(\Keyout1[2] ), .B(Keyout1[1]), 
         .C(\h11[1] ), .D(\Keyout1[0] ), .Z(n7247)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i6124_2_lut_rep_62_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_98 (.A(Keyout1_c[3]), .B(Keyout1_c[4]), .Z(n7283)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_98.init = 16'h2222;
    LUT4 i5847_2_lut_rep_54_3_lut_4_lut (.A(Keyout1_c[3]), .B(Keyout1_c[4]), 
         .C(\Keyout1[0] ), .D(\Keyout1[2] ), .Z(n7239)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i5847_2_lut_rep_54_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_69_3_lut (.A(Keyout1_c[3]), .B(Keyout1_c[4]), .C(\Keyout1[0] ), 
         .Z(n7254)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_69_3_lut.init = 16'h0202;
    CCU2D Delay_cnt_772_add_4_21 (.A0(Delay_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5673), .S0(n85[19]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_21.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_21.INIT1 = 16'h0000;
    defparam Delay_cnt_772_add_4_21.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_21.INJECT1_1 = "NO";
    LUT4 i204_4_lut (.A(n9), .B(key_get_temp_4__N_122), .C(refresh_flag), 
         .D(n7244), .Z(n520)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(98[3] 121[10])
    defparam i204_4_lut.init = 16'h0311;
    LUT4 i3082_2_lut_rep_72_3_lut (.A(Keyout1_c[3]), .B(Keyout1_c[4]), .C(\Keyout1[2] ), 
         .Z(n7257)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i3082_2_lut_rep_72_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_rep_64_3_lut_4_lut (.A(Keyout1_c[3]), .B(Keyout1_c[4]), 
         .C(Clock_status[1]), .D(Clock_status[0]), .Z(n7249)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_64_3_lut_4_lut.init = 16'h0200;
    FD1P3AX refresh_flag_92 (.D(refresh_flag_N_170), .SP(Clock_top_c_enable_57), 
            .CK(Clock_top_c), .Q(refresh_flag)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam refresh_flag_92.GSR = "DISABLED";
    LUT4 i4_4_lut_adj_22 (.A(n7_adj_567), .B(key_get[2]), .C(n6_adj_568), 
         .D(key_get_temp[2]), .Z(n9)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(109[10:30])
    defparam i4_4_lut_adj_22.init = 16'hfbfe;
    LUT4 i2_4_lut_adj_23 (.A(key_get[3]), .B(key_get[0]), .C(key_get_temp[3]), 
         .D(key_get_temp[0]), .Z(n7_adj_567)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(109[10:30])
    defparam i2_4_lut_adj_23.init = 16'h7bde;
    CCU2D Delay_cnt_772_add_4_19 (.A0(Delay_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5672), .COUT(n5673), .S0(n85[17]), .S1(n85[18]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_19.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_19.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_19.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_19.INJECT1_1 = "NO";
    CCU2D Delay_cnt_772_add_4_17 (.A0(Delay_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5671), .COUT(n5672), .S0(n85[15]), .S1(n85[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_17.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_17.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_17.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_17.INJECT1_1 = "NO";
    CCU2D Delay_cnt_772_add_4_15 (.A0(Delay_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5670), .COUT(n5671), .S0(n85[13]), .S1(n85[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_15.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_15.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_15.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_15.INJECT1_1 = "NO";
    CCU2D Delay_cnt_772_add_4_13 (.A0(Delay_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5669), .COUT(n5670), .S0(n85[11]), .S1(n85[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_13.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_13.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_13.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_13.INJECT1_1 = "NO";
    CCU2D Delay_cnt_772_add_4_11 (.A0(Delay_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5668), .COUT(n5669), .S0(n85[9]), .S1(n85[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_11.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_11.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_11.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_24 (.A(key_get[1]), .B(key_get[4]), .C(key_get_temp[1]), 
         .D(key_get_temp[4]), .Z(n6_adj_568)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(109[10:30])
    defparam i1_4_lut_adj_24.init = 16'h7bde;
    FD1P3IX key_out__i3 (.D(key_get_temp[3]), .SP(Clock_top_c_enable_97), 
            .CD(n1453), .CK(Clock_top_c), .Q(Keyout1_c[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_out__i3.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i13 (.D(n61[13]), .CK(Clock_top_c), .Q(Clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i13.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i12 (.D(n61[12]), .CK(Clock_top_c), .Q(Clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i12.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i11 (.D(n61[11]), .CK(Clock_top_c), .Q(Clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i11.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i10 (.D(n61[10]), .CK(Clock_top_c), .Q(Clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i10.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i9 (.D(n61[9]), .CK(Clock_top_c), .Q(Clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i9.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i8 (.D(n61[8]), .CK(Clock_top_c), .Q(Clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i8.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i7 (.D(n61[7]), .CK(Clock_top_c), .Q(Clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i7.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i6 (.D(n61[6]), .CK(Clock_top_c), .Q(Clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i6.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i5 (.D(n61[5]), .CK(Clock_top_c), .Q(Clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i5.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i4 (.D(n61[4]), .CK(Clock_top_c), .Q(Clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i4.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i3 (.D(n61[3]), .CK(Clock_top_c), .Q(Clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i3.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i2 (.D(n61[2]), .CK(Clock_top_c), .Q(Clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i2.GSR = "DISABLED";
    FD1S3AX Clk_cnt_770__i1 (.D(n61[1]), .CK(Clock_top_c), .Q(Clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770__i1.GSR = "DISABLED";
    FD1P3IX num_cnt__i2 (.D(n6378), .SP(num_cnt_2__N_115), .CD(n1455), 
            .CK(Clock_top_c), .Q(num_cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(32[2] 43[10])
    defparam num_cnt__i2.GSR = "DISABLED";
    FD1P3IX num_cnt__i1 (.D(n6394), .SP(num_cnt_2__N_115), .CD(n1455), 
            .CK(Clock_top_c), .Q(num_cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(32[2] 43[10])
    defparam num_cnt__i1.GSR = "DISABLED";
    CCU2D Delay_cnt_772_add_4_9 (.A0(Delay_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5667), .COUT(n5668), .S0(n85[7]), .S1(n85[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_9.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_9.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_9.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_9.INJECT1_1 = "NO";
    CCU2D Delay_cnt_772_add_4_7 (.A0(Delay_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5666), .COUT(n5667), .S0(n85[5]), .S1(n85[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_7.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_7.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_7.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_7.INJECT1_1 = "NO";
    CCU2D Delay_cnt_772_add_4_5 (.A0(Delay_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5665), .COUT(n5666), .S0(n85[3]), .S1(n85[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_5.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_5.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_5.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_25 (.A(Keyout1[1]), .B(n7239), .C(n7266), 
         .D(n5789), .Z(n6556)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_25.init = 16'h0400;
    LUT4 i1_2_lut_rep_75_3_lut (.A(num_cnt[0]), .B(num_cnt[2]), .C(num_cnt[1]), 
         .Z(n7260)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_75_3_lut.init = 16'hefef;
    LUT4 i1350_2_lut_3_lut_4_lut (.A(num_cnt[0]), .B(num_cnt[2]), .C(Rst1_c), 
         .D(num_cnt[1]), .Z(Clock_top_c_enable_12)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1350_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_78_3_lut (.A(num_cnt[0]), .B(num_cnt[2]), .C(num_cnt[1]), 
         .Z(n7263)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_78_3_lut.init = 16'hfefe;
    LUT4 i1331_2_lut_3_lut_4_lut (.A(num_cnt[0]), .B(num_cnt[2]), .C(Rst1_c), 
         .D(num_cnt[1]), .Z(Clock_top_c_enable_102)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1331_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_4_lut (.A(Keyout1[1]), .B(n6562), .C(n6491), .D(n7288), 
         .Z(n1415)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0080;
    FD1P3IX key_out__i2 (.D(key_get_temp[2]), .SP(Clock_top_c_enable_97), 
            .CD(n1453), .CK(Clock_top_c), .Q(\Keyout1[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_out__i2.GSR = "DISABLED";
    FD1P3IX key_out__i1 (.D(key_get_temp[1]), .SP(Clock_top_c_enable_97), 
            .CD(n1453), .CK(Clock_top_c), .Q(Keyout1[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_out__i1.GSR = "DISABLED";
    FD1P3IX key_out__i0 (.D(key_get_temp[0]), .SP(Clock_top_c_enable_97), 
            .CD(n1453), .CK(Clock_top_c), .Q(\Keyout1[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_out__i0.GSR = "DISABLED";
    FD1S3IX key_get_temp__i4 (.D(key_get[4]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_temp__i4.GSR = "ENABLED";
    FD1S3IX key_get_temp__i3 (.D(key_get[3]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_temp__i3.GSR = "ENABLED";
    FD1S3IX key_get_temp__i2 (.D(key_get[2]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_temp__i2.GSR = "ENABLED";
    FD1S3IX key_get_temp__i1 (.D(key_get[1]), .CK(Clock_top_c), .CD(key_get_temp_4__N_122), 
            .Q(key_get_temp[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam key_get_temp__i1.GSR = "ENABLED";
    FD1S3AX ROW_i4 (.D(n7263), .CK(Clk_N_41), .Q(row1_c_3)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(48[2] 56[9])
    defparam ROW_i4.GSR = "DISABLED";
    FD1S3AX ROW_i3 (.D(ROW_3__N_36[2]), .CK(Clk_N_41), .Q(row1_c_2)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(48[2] 56[9])
    defparam ROW_i3.GSR = "DISABLED";
    FD1S3AX ROW_i2 (.D(n7260), .CK(Clk_N_41), .Q(row1_c_1)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(48[2] 56[9])
    defparam ROW_i2.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i15 (.D(column1_c_3), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i15.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i14 (.D(column1_c_2), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i14.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i13 (.D(column1_c_1), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i13.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i12 (.D(column1_c_0), .SP(Clock_top_c_enable_102), 
            .CK(Clock_top_c), .Q(R_cache[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=4, LSE_RCOL=13, LSE_LLINE=101, LSE_RLINE=101 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam R_cache_i0_i12.GSR = "DISABLED";
    LUT4 i6129_2_lut_rep_105 (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n7290)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i6129_2_lut_rep_105.init = 16'h7777;
    CCU2D Delay_cnt_772_add_4_3 (.A0(Delay_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5664), .COUT(n5665), .S0(n85[1]), .S1(n85[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_3.INIT0 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_3.INIT1 = 16'hfaaa;
    defparam Delay_cnt_772_add_4_3.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_3.INJECT1_1 = "NO";
    LUT4 i1304_3_lut_4_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(Rst1_c), 
         .D(num_cnt[2]), .Z(Clock_top_c_enable_15)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1304_3_lut_4_lut.init = 16'h0080;
    CCU2D Delay_cnt_772_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5664), .S1(n85[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772_add_4_1.INIT0 = 16'hF000;
    defparam Delay_cnt_772_add_4_1.INIT1 = 16'h0555;
    defparam Delay_cnt_772_add_4_1.INJECT1_0 = "NO";
    defparam Delay_cnt_772_add_4_1.INJECT1_1 = "NO";
    CCU2D Clk_cnt_770_add_4_15 (.A0(Clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n5663), .S0(n61[13]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_15.INIT0 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_15.INIT1 = 16'h0000;
    defparam Clk_cnt_770_add_4_15.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_15.INJECT1_1 = "NO";
    CCU2D Clk_cnt_770_add_4_13 (.A0(Clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5662), .COUT(n5663), .S0(n61[11]), .S1(n61[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_13.INIT0 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_13.INIT1 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_13.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_13.INJECT1_1 = "NO";
    LUT4 i15_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(n6378)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    FD1P3IX Delay_cnt_772__i17 (.D(n85[17]), .SP(Rst1_c), .CD(n2507), 
            .CK(Clock_top_c), .Q(Delay_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(108[18:27])
    defparam Delay_cnt_772__i17.GSR = "DISABLED";
    CCU2D Clk_cnt_770_add_4_11 (.A0(Clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5661), .COUT(n5662), .S0(n61[9]), .S1(n61[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_11.INIT0 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_11.INIT1 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_11.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_11.INJECT1_1 = "NO";
    CCU2D Clk_cnt_770_add_4_9 (.A0(Clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5660), .COUT(n5661), .S0(n61[7]), .S1(n61[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_9.INIT0 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_9.INIT1 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_9.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_9.INJECT1_1 = "NO";
    CCU2D Clk_cnt_770_add_4_7 (.A0(Clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5659), .COUT(n5660), .S0(n61[5]), .S1(n61[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_7.INIT0 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_7.INIT1 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_7.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_7.INJECT1_1 = "NO";
    CCU2D Clk_cnt_770_add_4_5 (.A0(Clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5658), .COUT(n5659), .S0(n61[3]), .S1(n61[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_5.INIT0 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_5.INIT1 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_5.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_5.INJECT1_1 = "NO";
    CCU2D Clk_cnt_770_add_4_3 (.A0(Clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n5657), .COUT(n5658), .S0(n61[1]), .S1(n61[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_3.INIT0 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_3.INIT1 = 16'hfaaa;
    defparam Clk_cnt_770_add_4_3.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_3.INJECT1_1 = "NO";
    CCU2D Clk_cnt_770_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n5657), .S1(n61[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(42[14:21])
    defparam Clk_cnt_770_add_4_1.INIT0 = 16'hF000;
    defparam Clk_cnt_770_add_4_1.INIT1 = 16'h0555;
    defparam Clk_cnt_770_add_4_1.INJECT1_0 = "NO";
    defparam Clk_cnt_770_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_26 (.A(n4_adj_564), .B(R_cache[12]), .C(n6473), 
         .D(n6470), .Z(n23)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_26.init = 16'hddd5;
    LUT4 i5_4_lut_rep_59 (.A(Delay_cnt[14]), .B(n10_adj_560), .C(n6728), 
         .D(n6726), .Z(n7244)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut_rep_59.init = 16'hefff;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n7261), .B(n7253), .C(R_cache[2]), .D(n7246), 
         .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(n7261), .B(n7253), .C(R_cache[2]), 
         .D(n7246), .Z(n4_adj_564)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'hf7ff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(\Keyout1[0] ), .B(n7282), .C(Clock_status[1]), 
         .D(n7283), .Z(n6515)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'h4000;
    LUT4 i1_2_lut_rep_52_3_lut_4_lut (.A(\Keyout1[0] ), .B(n7282), .C(n7268), 
         .D(n7283), .Z(n7237)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_52_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_29 (.A(n7246), .B(n7245), .C(R_cache[5]), 
         .D(R_cache[2]), .Z(n29)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_29.init = 16'h0880;
    LUT4 i6081_4_lut (.A(n7244), .B(Rst1_c), .C(n520), .D(refresh_flag), 
         .Z(Clock_top_c_enable_97)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i6081_4_lut.init = 16'hcc4c;
    LUT4 equal_84_i10_1_lut_rep_45_2_lut_3_lut_4_lut (.A(\Keyout1[2] ), .B(n7283), 
         .C(Keyout1[1]), .D(\Keyout1[0] ), .Z(n7230)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam equal_84_i10_1_lut_rep_45_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i2_2_lut_rep_47_3_lut_4_lut (.A(\Keyout1[2] ), .B(n7283), .C(Keyout1[1]), 
         .D(\Keyout1[0] ), .Z(n7232)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i2_2_lut_rep_47_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1303_3_lut_4_lut (.A(\Keyout1[2] ), .B(n7283), .C(\Keyout1[0] ), 
         .D(Keyout1[1]), .Z(n3)) /* synthesis lut_function=(((C (D)+!C !(D))+!B)+!A) */ ;
    defparam i1303_3_lut_4_lut.init = 16'hf77f;
    LUT4 i6063_3_lut (.A(R_cache[4]), .B(n4110), .C(R_cache[0]), .Z(key_get_4__N_116[4])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(93[9:27])
    defparam i6063_3_lut.init = 16'h0808;
    LUT4 i4_4_lut_adj_30 (.A(n6422), .B(n7252), .C(n7276), .D(n6_adj_569), 
         .Z(n4110)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i4_4_lut_adj_30.init = 16'h8000;
    LUT4 i6069_2_lut (.A(Rst1_c), .B(n520), .Z(n1453)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i6069_2_lut.init = 16'h2222;
    LUT4 i2_3_lut_adj_31 (.A(R_cache[5]), .B(R_cache[8]), .C(R_cache[9]), 
         .Z(n6422)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_31.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_32 (.A(n7278), .B(n3958), .C(n7226), 
         .D(R_cache[6]), .Z(n6473)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_32.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_33 (.A(R_cache[0]), .B(n7278), .C(R_cache[8]), 
         .D(R_cache[11]), .Z(n6475)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_33.init = 16'h8000;
    LUT4 n6485_bdd_4_lut_6344 (.A(n6485), .B(R_cache[1]), .C(n7098), .D(R_cache[10]), 
         .Z(n7226)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n6485_bdd_4_lut_6344.init = 16'h22f0;
    LUT4 i2_4_lut_adj_34 (.A(num_cnt[2]), .B(num_cnt[1]), .C(Rst1_c), 
         .D(num_cnt[0]), .Z(Clock_top_c_enable_7)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i2_4_lut_adj_34.init = 16'h1000;
    LUT4 i1_4_lut_adj_35 (.A(n7245), .B(n6469), .C(n6476), .D(R_cache[6]), 
         .Z(n6470)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_35.init = 16'hc088;
    LUT4 i3_4_lut_adj_36 (.A(R_cache[3]), .B(n32), .C(R_cache[4]), .D(n6475), 
         .Z(n6476)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_36.init = 16'h8000;
    LUT4 i1_4_lut_adj_37 (.A(R_cache[14]), .B(n27), .C(n6477), .D(R_cache[9]), 
         .Z(key_get_4__N_116[0])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_37.init = 16'hccec;
    LUT4 i1_4_lut_adj_38 (.A(R_cache[10]), .B(R_cache[3]), .C(n6520), 
         .D(n6551), .Z(n27)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_38.init = 16'ha2a0;
    LUT4 i2_4_lut_adj_39 (.A(n7274), .B(R_cache[2]), .C(n6490), .D(n6546), 
         .Z(n6520)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut_adj_39.init = 16'h8880;
    LUT4 i5_4_lut_adj_40 (.A(n6927), .B(n10_adj_570), .C(R_cache[14]), 
         .D(R_cache[3]), .Z(n6546)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut_adj_40.init = 16'h8000;
    LUT4 i1_2_lut_rep_60_4_lut (.A(n7277), .B(R_cache[3]), .C(R_cache[13]), 
         .D(n7261), .Z(n7245)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_60_4_lut.init = 16'h8000;
    LUT4 R_cache_15__bdd_4_lut_6294 (.A(R_cache[15]), .B(R_cache[13]), .C(R_cache[7]), 
         .D(R_cache[11]), .Z(n6927)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))))) */ ;
    defparam R_cache_15__bdd_4_lut_6294.init = 16'h6880;
    LUT4 i1_2_lut_4_lut (.A(n7277), .B(R_cache[3]), .C(R_cache[13]), .D(R_cache[2]), 
         .Z(n6485)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_4_lut.init = 16'h8000;
    LUT4 i4_4_lut_adj_41 (.A(R_cache[0]), .B(n6422), .C(R_cache[4]), .D(R_cache[1]), 
         .Z(n10_adj_570)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_41.init = 16'h8000;
    LUT4 i1_2_lut_4_lut_adj_42 (.A(n7277), .B(R_cache[3]), .C(R_cache[13]), 
         .D(n7278), .Z(n6_adj_569)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1_2_lut_4_lut_adj_42.init = 16'h8000;
    LUT4 i1259_2_lut (.A(key_get_temp_4__N_122), .B(Rst1_c), .Z(Clock_top_c_enable_57)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/key_board.vhd(62[2] 122[9])
    defparam i1259_2_lut.init = 16'h4444;
    
endmodule
