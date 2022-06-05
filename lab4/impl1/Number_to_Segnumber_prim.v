// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Wed Dec 09 20:53:53 2020
//
// Verilog Description of module Number_to_Segnumber
//

module Number_to_Segnumber (Clk, Rst, dot, number_in, seg_number_out);   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(6[8:27])
    input Clk;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(9[2:5])
    input Rst;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(10[2:5])
    input dot;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(11[2:5])
    input [3:0]number_in;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(12[2:11])
    output [7:0]seg_number_out;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    
    wire Clk_c /* synthesis is_clock=1, SET_AS_NETWORK=Clk_c */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(9[2:5])
    
    wire GND_net, VCC_net, Rst_c, number_in_c_3, number_in_c_2, number_in_c_1, 
        number_in_c_0, seg_number_out_c_7, seg_number_out_c_6, seg_number_out_c_5, 
        seg_number_out_c_4, seg_number_out_c_3, seg_number_out_c_2, seg_number_out_c_1, 
        seg_number_out_c_0;
    wire [3:0]number_in_reg;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(18[9:22])
    
    wire n210;
    wire [7:0]seg_number_out_7__N_15;
    
    wire seg_number_out_7__N_15_c_0, n180, n252;
    
    VHI i2 (.Z(VCC_net));
    OB seg_number_out_pad_1 (.I(seg_number_out_c_1), .O(seg_number_out[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    FD1P3AX seg_number_out_i0_i1 (.D(seg_number_out_7__N_15_c_0), .SP(Rst_c), 
            .CK(Clk_c), .Q(seg_number_out_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i1.GSR = "ENABLED";
    FD1P3AX number_in_reg_i0_i0 (.D(number_in_c_0), .SP(Rst_c), .CK(Clk_c), 
            .Q(number_in_reg[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i0.GSR = "ENABLED";
    FD1P3JX seg_number_out_i0_i3 (.D(n210), .SP(Rst_c), .PD(n180), .CK(Clk_c), 
            .Q(seg_number_out_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i3.GSR = "ENABLED";
    LUT4 mux_4_Mux_1_i15_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[3]), .D(number_in_reg[2]), .Z(seg_number_out_7__N_15[1])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)+!C !(D)))+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(28[3] 52[12])
    defparam mux_4_Mux_1_i15_4_lut.init = 16'h073c;
    FD1P3JX seg_number_out_i0_i5 (.D(n252), .SP(Rst_c), .PD(n180), .CK(Clk_c), 
            .Q(seg_number_out_c_4));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i5.GSR = "ENABLED";
    FD1P3AX seg_number_out_i0_i6 (.D(seg_number_out_7__N_15[5]), .SP(Rst_c), 
            .CK(Clk_c), .Q(seg_number_out_c_5));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i6.GSR = "ENABLED";
    FD1P3AX number_in_reg_i0_i3 (.D(number_in_c_3), .SP(Rst_c), .CK(Clk_c), 
            .Q(number_in_reg[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i3.GSR = "ENABLED";
    FD1P3AX seg_number_out_i0_i7 (.D(seg_number_out_7__N_15[6]), .SP(Rst_c), 
            .CK(Clk_c), .Q(seg_number_out_c_6));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i7.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), .C(number_in_reg[2]), 
         .D(number_in_reg[3]), .Z(seg_number_out_7__N_15[5])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut.init = 16'hfffb;
    LUT4 i113_2_lut (.A(Rst_c), .B(number_in_reg[3]), .Z(n180)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam i113_2_lut.init = 16'h8888;
    LUT4 i2_4_lut (.A(number_in_reg[3]), .B(number_in_reg[0]), .C(number_in_reg[1]), 
         .D(number_in_reg[2]), .Z(seg_number_out_7__N_15[7])) /* synthesis lut_function=(A+(B (C+(D))+!B (C+!(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(28[3] 52[12])
    defparam i2_4_lut.init = 16'hfefb;
    FD1P3AX number_in_reg_i0_i2 (.D(number_in_c_2), .SP(Rst_c), .CK(Clk_c), 
            .Q(number_in_reg[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i2.GSR = "ENABLED";
    FD1P3AX number_in_reg_i0_i1 (.D(number_in_c_1), .SP(Rst_c), .CK(Clk_c), 
            .Q(number_in_reg[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam number_in_reg_i0_i1.GSR = "ENABLED";
    FD1P3AX seg_number_out_i0_i8 (.D(seg_number_out_7__N_15[7]), .SP(Rst_c), 
            .CK(Clk_c), .Q(seg_number_out_c_7));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i8.GSR = "ENABLED";
    LUT4 number_in_reg_0__bdd_4_lut (.A(number_in_reg[0]), .B(number_in_reg[3]), 
         .C(number_in_reg[2]), .D(number_in_reg[1]), .Z(seg_number_out_7__N_15[3])) /* synthesis lut_function=(A (B (C+(D)))+!A (B+((D)+!C))) */ ;
    defparam number_in_reg_0__bdd_4_lut.init = 16'hddc5;
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3AX seg_number_out_i0_i4 (.D(seg_number_out_7__N_15[3]), .SP(Rst_c), 
            .CK(Clk_c), .Q(seg_number_out_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i4.GSR = "ENABLED";
    FD1P3AX seg_number_out_i0_i2 (.D(seg_number_out_7__N_15[1]), .SP(Rst_c), 
            .CK(Clk_c), .Q(seg_number_out_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(23[2] 80[8])
    defparam seg_number_out_i0_i2.GSR = "ENABLED";
    LUT4 mux_4_Mux_2_i7_4_lut_3_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), 
         .C(number_in_reg[2]), .Z(n210)) /* synthesis lut_function=(!(A (B+!(C))+!A !((C)+!B))) */ ;
    defparam mux_4_Mux_2_i7_4_lut_3_lut.init = 16'h7171;
    IB number_in_pad_0 (.I(number_in[0]), .O(number_in_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(12[2:11])
    IB number_in_pad_1 (.I(number_in[1]), .O(number_in_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(12[2:11])
    IB number_in_pad_2 (.I(number_in[2]), .O(number_in_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(12[2:11])
    IB number_in_pad_3 (.I(number_in[3]), .O(number_in_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(12[2:11])
    IB seg_number_out_7__N_15_pad_0 (.I(dot), .O(seg_number_out_7__N_15_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(11[2:5])
    IB Rst_pad (.I(Rst), .O(Rst_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(10[2:5])
    IB Clk_pad (.I(Clk), .O(Clk_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(9[2:5])
    OB seg_number_out_pad_0 (.I(seg_number_out_c_0), .O(seg_number_out[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    VLO i186 (.Z(GND_net));
    OB seg_number_out_pad_7 (.I(seg_number_out_c_7), .O(seg_number_out[7]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB seg_number_out_pad_6 (.I(seg_number_out_c_6), .O(seg_number_out[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    OB seg_number_out_pad_5 (.I(seg_number_out_c_5), .O(seg_number_out[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    TSALL TSALL_INST (.TSALL(GND_net));
    OB seg_number_out_pad_4 (.I(seg_number_out_c_4), .O(seg_number_out[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    OB seg_number_out_pad_3 (.I(seg_number_out_c_3), .O(seg_number_out[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    LUT4 number_in_reg_0__bdd_3_lut (.A(number_in_reg[0]), .B(number_in_reg[2]), 
         .C(number_in_reg[1]), .Z(n252)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;
    defparam number_in_reg_0__bdd_3_lut.init = 16'h7979;
    LUT4 i185_3_lut_4_lut (.A(number_in_reg[0]), .B(number_in_reg[1]), .C(number_in_reg[2]), 
         .D(number_in_reg[3]), .Z(seg_number_out_7__N_15[6])) /* synthesis lut_function=(A (B+((D)+!C))+!A (((D)+!C)+!B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(28[3] 52[12])
    defparam i185_3_lut_4_lut.init = 16'hff9f;
    OB seg_number_out_pad_2 (.I(seg_number_out_c_2), .O(seg_number_out[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/code_shape_provider.vhd(13[2:16])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

