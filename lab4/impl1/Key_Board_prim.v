// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Wed Dec 09 20:59:54 2020
//
// Verilog Description of module Key_Board
//

module Key_Board (Clk, reset, ROW, COL, key_out);   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(6[8:17])
    input Clk;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(8[1:4])
    input reset;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(9[1:6])
    output [3:0]ROW;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    input [3:0]COL;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(11[1:4])
    output [4:0]key_out;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(12[1:8])
    
    wire Clk_c /* synthesis SET_AS_NETWORK=Clk_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(8[1:4])
    wire Clk_N_6 /* synthesis is_inv_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    
    wire GND_net, reset_c, ROW_c_3, ROW_c_2, ROW_c_1, ROW_c_0, COL_c_3, 
        COL_c_2, COL_c_1, COL_c_0, key_out_c_4, key_out_c_3, key_out_c_2, 
        key_out_c_1, key_out_c_0;
    wire [13:0]Clk_cnt;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(17[8:15])
    wire [2:0]num_cnt;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(20[8:15])
    
    wire refresh_flag;
    wire [15:0]R_cache;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(22[8:15])
    wire [19:0]Delay_cnt;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(25[8:17])
    wire [4:0]key_get;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(26[8:15])
    wire [4:0]key_get_temp;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(27[8:20])
    
    wire num_cnt_2__N_80;
    wire [3:0]ROW_3__N_1;
    
    wire n36;
    wire [4:0]key_get_4__N_81;
    
    wire n36_adj_1, key_get_temp_4__N_87, n1667, n1883, refresh_flag_N_135, 
        n30, n1251, n1861, n1862, n24, n528, n526, n9, n1955, 
        n1644, n1817, n1177, n472, Clk_c_enable_3, n1081, n2063, 
        n2062, n1872, n3, Clk_c_enable_23, n1245, n1712, n1894, 
        n32, n1229, n2060, n7, n6, n1890, n2059, n2058, n1845, 
        n21, n1945, n2057, n13, n1882, n1653, n1879, n1838, 
        n934, n1652, n11, n1953, n1643, n1646, n1951, n1947, 
        n1157, n1651, n4, n1850, n2056, n1650, n1931, n1927, 
        n1921, n2055, n1917, n1878, n2054, n1907, n1649, n1648, 
        n1884, n2053, n2052, n913, n910, n907, n6_adj_2, n1659, 
        n1658, n1657, n1656, n62, n63, n64, n65, n66, n67, 
        n68, n69, n70, n71, n72, n73, n74, n75, n1655, n1645, 
        n1647, VCC_net, n1654, Clk_c_enable_19, Clk_c_enable_8, n4_adj_3, 
        Clk_c_enable_12, Clk_c_enable_16, n86, n87, n88, n89, n90, 
        n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, 
        n101, n102, n103, n104, n105, Clk_c_enable_27, n2065, 
        n1799, n1895, n4_adj_4, n2064, n1868;
    
    LUT4 i3_4_lut (.A(n2056), .B(R_cache[11]), .C(R_cache[3]), .D(n2053), 
         .Z(n1245)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(n1157), .B(R_cache[13]), .C(n1245), .D(R_cache[14]), 
         .Z(n1884)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h7555;
    FD1P3AX key_get_i0_i0 (.D(key_get_4__N_81[0]), .SP(Clk_c_enable_27), 
            .CK(Clk_c), .Q(key_get[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n2059), .B(n2058), .C(n1817), .D(R_cache[4]), 
         .Z(n1251)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    OB ROW_pad_2 (.I(ROW_c_2), .O(ROW[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    OB ROW_pad_3 (.I(ROW_c_3), .O(ROW[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    CCU2D Delay_cnt_187_add_4_5 (.A0(Delay_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1651), .COUT(n1652), .S0(n102), .S1(n101));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_5.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_5.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_5.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_5.INJECT1_1 = "NO";
    FD1S3IX num_cnt__i0 (.D(n1955), .CK(Clk_c), .CD(n528), .Q(num_cnt[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam num_cnt__i0.GSR = "DISABLED";
    FD1S3AX ROW_i2 (.D(ROW_3__N_1[1]), .CK(Clk_N_6), .Q(ROW_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i2.GSR = "DISABLED";
    LUT4 i1604_4_lut (.A(Clk_cnt[9]), .B(n1947), .C(Clk_cnt[6]), .D(Clk_cnt[5]), 
         .Z(n1953)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1604_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_7_4_lut (.A(n2065), .B(R_cache[6]), .C(R_cache[5]), 
         .D(n2059), .Z(n2053)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_7_4_lut.init = 16'h8000;
    LUT4 i1598_4_lut (.A(Clk_cnt[10]), .B(Clk_cnt[4]), .C(Clk_cnt[12]), 
         .D(Clk_cnt[8]), .Z(n1947)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1598_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_13 (.A(R_cache[2]), .B(R_cache[1]), .Z(n2059)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_13.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(R_cache[2]), .B(R_cache[1]), .C(R_cache[9]), 
         .D(n2058), .Z(n1845)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i1627_2_lut_rep_14 (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n2060)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1627_2_lut_rep_14.init = 16'h7777;
    FD1P3IX key_out__i1 (.D(key_get_temp[0]), .SP(Clk_c_enable_23), .CD(n526), 
            .CK(Clk_c), .Q(key_out_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i1.GSR = "DISABLED";
    FD1P3AX refresh_flag_92 (.D(refresh_flag_N_135), .SP(Clk_c_enable_3), 
            .CK(Clk_c), .Q(refresh_flag)) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam refresh_flag_92.GSR = "DISABLED";
    LUT4 i15_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(n1799)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_3_lut.init = 16'h7878;
    LUT4 i4_4_lut (.A(n7), .B(key_get[2]), .C(n6), .D(key_get_temp[2]), 
         .Z(n9)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(109[10:30])
    defparam i4_4_lut.init = 16'hfbfe;
    CCU2D Delay_cnt_187_add_4_3 (.A0(Delay_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1650), .COUT(n1651), .S0(n104), .S1(n103));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_3.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_3.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_3.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_3.INJECT1_1 = "NO";
    FD1P3AX R_cache_i0_i0 (.D(COL_c_0), .SP(Clk_c_enable_19), .CK(Clk_c), 
            .Q(R_cache[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i0.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i0 (.D(n75), .CK(Clk_c), .Q(Clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i0.GSR = "DISABLED";
    LUT4 i2_4_lut (.A(key_get[3]), .B(key_get[0]), .C(key_get_temp[3]), 
         .D(key_get_temp[0]), .Z(n7)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(109[10:30])
    defparam i2_4_lut.init = 16'h7bde;
    LUT4 i1_4_lut_adj_1 (.A(key_get[1]), .B(key_get[4]), .C(key_get_temp[1]), 
         .D(key_get_temp[4]), .Z(n6)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(109[10:30])
    defparam i1_4_lut_adj_1.init = 16'h7bde;
    LUT4 i2_3_lut_rep_8_4_lut (.A(R_cache[10]), .B(R_cache[6]), .C(R_cache[12]), 
         .D(R_cache[1]), .Z(n2054)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_8_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_adj_2 (.A(R_cache[3]), .B(n2055), .C(n2064), .D(R_cache[8]), 
         .Z(n1872)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_2.init = 16'h8000;
    LUT4 i1639_4_lut (.A(key_get[3]), .B(key_get[2]), .C(key_get[0]), 
         .D(n6_adj_2), .Z(key_get_temp_4__N_87)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(98[6:16])
    defparam i1639_4_lut.init = 16'h0001;
    LUT4 i1_2_lut (.A(key_get[1]), .B(key_get[4]), .Z(n6_adj_2)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(98[6:16])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_3 (.A(R_cache[4]), .B(R_cache[8]), .C(R_cache[0]), 
         .D(R_cache[9]), .Z(n1177)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i3_4_lut_adj_3.init = 16'h8000;
    LUT4 i463_2_lut (.A(key_get_temp_4__N_87), .B(reset_c), .Z(Clk_c_enable_3)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i463_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_4_lut_adj_4 (.A(R_cache[15]), .B(n2057), .C(n1850), 
         .D(n2065), .Z(n1229)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_4.init = 16'h8000;
    LUT4 i1_2_lut_3_lut (.A(R_cache[10]), .B(R_cache[6]), .C(R_cache[7]), 
         .Z(n1878)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1623_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[2]), .C(num_cnt[1]), 
         .Z(ROW_3__N_1[1])) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1623_2_lut_3_lut.init = 16'hefef;
    LUT4 i614_3_lut (.A(reset_c), .B(n2052), .C(key_get_temp_4__N_87), 
         .Z(n934)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam i614_3_lut.init = 16'ha2a2;
    LUT4 i161_2_lut (.A(num_cnt[0]), .B(num_cnt[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(37[16:23])
    defparam i161_2_lut.init = 16'h6666;
    LUT4 i871_2_lut_3_lut (.A(num_cnt[0]), .B(num_cnt[2]), .C(num_cnt[1]), 
         .Z(ROW_3__N_1[3])) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i871_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut (.A(n1712), .B(R_cache[1]), .C(R_cache[0]), .Z(key_get_4__N_81[4])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i2_4_lut_adj_5 (.A(n2058), .B(n2062), .C(R_cache[4]), .D(n1872), 
         .Z(n1712)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_5.init = 16'h8000;
    LUT4 i1_2_lut_rep_16 (.A(R_cache[9]), .B(R_cache[2]), .Z(n2062)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_16.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(R_cache[9]), .B(R_cache[2]), .C(R_cache[5]), 
         .D(n2054), .Z(n1882)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h8000;
    LUT4 i1_2_lut_rep_17 (.A(R_cache[14]), .B(R_cache[13]), .Z(n2063)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_17.init = 16'h8888;
    LUT4 i2_4_lut_adj_7 (.A(n1890), .B(n907), .C(n1931), .D(n4_adj_4), 
         .Z(key_get_4__N_81[3])) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2_4_lut_adj_7.init = 16'hffbf;
    LUT4 i1_4_lut_adj_8 (.A(R_cache[5]), .B(n1667), .C(n1883), .D(R_cache[4]), 
         .Z(n4_adj_4)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_8.init = 16'hccec;
    LUT4 i2_3_lut_adj_9 (.A(R_cache[9]), .B(n1251), .C(R_cache[8]), .Z(n1667)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_9.init = 16'h0808;
    LUT4 i1_2_lut_rep_9_3_lut (.A(R_cache[14]), .B(R_cache[13]), .C(R_cache[11]), 
         .Z(n2055)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_9_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_10 (.A(R_cache[7]), .B(n910), .C(n1229), .D(R_cache[6]), 
         .Z(n1890)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_10.init = 16'h7333;
    LUT4 i2_3_lut_adj_11 (.A(R_cache[3]), .B(n1868), .C(R_cache[2]), .Z(n910)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(90[9:27])
    defparam i2_3_lut_adj_11.init = 16'hbfbf;
    FD1P3IX Delay_cnt_187__i1 (.D(n104), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i1.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i2 (.D(n103), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i2.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i3 (.D(n102), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i3.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i4 (.D(n101), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i4.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i5 (.D(n100), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i5.GSR = "DISABLED";
    LUT4 i2_4_lut_adj_12 (.A(n1868), .B(n4), .C(R_cache[3]), .D(R_cache[2]), 
         .Z(key_get_4__N_81[2])) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B)) */ ;
    defparam i2_4_lut_adj_12.init = 16'hceec;
    FD1P3IX Delay_cnt_187__i0 (.D(n105), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i0.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i6 (.D(n99), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i6.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i7 (.D(n98), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i7.GSR = "DISABLED";
    LUT4 i1641_2_lut (.A(reset_c), .B(n472), .Z(n526)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1641_2_lut.init = 16'h2222;
    LUT4 i137_4_lut (.A(n9), .B(key_get_temp_4__N_87), .C(refresh_flag), 
         .D(n2052), .Z(n472)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(98[3] 121[10])
    defparam i137_4_lut.init = 16'h0311;
    LUT4 i1_4_lut_adj_13 (.A(R_cache[0]), .B(n30), .C(n24), .D(n1850), 
         .Z(n4)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_13.init = 16'heca0;
    FD1P3IX Delay_cnt_187__i8 (.D(n97), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i8.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_14 (.A(reset_c), .B(num_cnt[2]), .C(num_cnt[1]), 
         .D(num_cnt[0]), .Z(Clk_c_enable_16)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_14.init = 16'h0020;
    CCU2D Delay_cnt_187_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1650), .S1(n105));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_1.INIT0 = 16'hF000;
    defparam Delay_cnt_187_add_4_1.INIT1 = 16'h0555;
    defparam Delay_cnt_187_add_4_1.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_1.INJECT1_1 = "NO";
    FD1P3IX Delay_cnt_187__i9 (.D(n96), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i9.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i10 (.D(n95), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i10.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i11 (.D(n94), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i11.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i12 (.D(n93), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i12.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i13 (.D(n92), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i13.GSR = "DISABLED";
    CCU2D Clk_cnt_185_add_4_15 (.A0(Clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1649), .S0(n62));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_15.INIT0 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_15.INIT1 = 16'h0000;
    defparam Clk_cnt_185_add_4_15.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_18 (.A(R_cache[7]), .B(R_cache[15]), .Z(n2064)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i1_2_lut_rep_18.init = 16'h8888;
    LUT4 i1602_4_lut (.A(Delay_cnt[0]), .B(n1945), .C(n1927), .D(Delay_cnt[13]), 
         .Z(n1951)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1602_4_lut.init = 16'h8000;
    LUT4 i883_2_lut_rep_10_3_lut (.A(R_cache[7]), .B(R_cache[15]), .C(n1177), 
         .Z(n2056)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam i883_2_lut_rep_10_3_lut.init = 16'h8080;
    LUT4 i2_4_lut_adj_15 (.A(n1931), .B(n1894), .C(n1884), .D(n1895), 
         .Z(key_get_4__N_81[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_4_lut_adj_15.init = 16'hfffd;
    LUT4 i2_3_lut_adj_16 (.A(R_cache[13]), .B(n1245), .C(R_cache[14]), 
         .Z(n1894)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_16.init = 16'h0808;
    FD1P3IX Delay_cnt_187__i14 (.D(n91), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i14.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_17 (.A(reset_c), .B(num_cnt[2]), .C(num_cnt[0]), 
         .D(num_cnt[1]), .Z(Clk_c_enable_12)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_17.init = 16'h0020;
    FD1P3IX Delay_cnt_187__i15 (.D(n90), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i15.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_18 (.A(R_cache[3]), .B(n2055), .C(R_cache[0]), 
         .D(n2064), .Z(n1817)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_18.init = 16'h8000;
    FD1P3IX Delay_cnt_187__i16 (.D(n89), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i16.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i17 (.D(n88), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i17.GSR = "DISABLED";
    FD1P3IX Delay_cnt_187__i18 (.D(n87), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i18.GSR = "DISABLED";
    LUT4 i1572_2_lut (.A(Delay_cnt[8]), .B(Delay_cnt[17]), .Z(n1921)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1572_2_lut.init = 16'h8888;
    CCU2D Delay_cnt_187_add_4_21 (.A0(Delay_cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1659), .S0(n86));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_21.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_21.INIT1 = 16'h0000;
    defparam Delay_cnt_187_add_4_21.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_21.INJECT1_1 = "NO";
    CCU2D Delay_cnt_187_add_4_19 (.A0(Delay_cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1658), .COUT(n1659), .S0(n88), .S1(n87));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_19.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_19.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_19.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_19.INJECT1_1 = "NO";
    LUT4 i821_4_lut (.A(R_cache[9]), .B(n907), .C(n1251), .D(R_cache[8]), 
         .Z(n1157)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;
    defparam i821_4_lut.init = 16'h8ccc;
    LUT4 i2_3_lut_adj_19 (.A(R_cache[11]), .B(n1862), .C(R_cache[10]), 
         .Z(n1895)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_19.init = 16'h0808;
    CCU2D Delay_cnt_187_add_4_17 (.A0(Delay_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1657), .COUT(n1658), .S0(n90), .S1(n89));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_17.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_17.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_17.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_17.INJECT1_1 = "NO";
    CCU2D Clk_cnt_185_add_4_13 (.A0(Clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1648), .COUT(n1649), .S0(n64), .S1(n63));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_13.INIT0 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_13.INIT1 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_13.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_13.INJECT1_1 = "NO";
    CCU2D Delay_cnt_187_add_4_15 (.A0(Delay_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1656), .COUT(n1657), .S0(n92), .S1(n91));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_15.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_15.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_15.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_15.INJECT1_1 = "NO";
    CCU2D Clk_cnt_185_add_4_3 (.A0(Clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1643), .COUT(n1644), .S0(n74), .S1(n73));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_3.INIT0 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_3.INIT1 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_3.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_3.INJECT1_1 = "NO";
    CCU2D Clk_cnt_185_add_4_7 (.A0(Clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1645), .COUT(n1646), .S0(n70), .S1(n69));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_7.INIT0 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_7.INIT1 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_7.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_7.INJECT1_1 = "NO";
    CCU2D Clk_cnt_185_add_4_5 (.A0(Clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1644), .COUT(n1645), .S0(n72), .S1(n71));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_5.INIT0 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_5.INIT1 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_5.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_5.INJECT1_1 = "NO";
    FD1P3IX Delay_cnt_187__i19 (.D(n86), .SP(reset_c), .CD(n934), .CK(Clk_c), 
            .Q(Delay_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187__i19.GSR = "DISABLED";
    FD1S3IX key_get_temp__i0 (.D(key_get[0]), .CK(Clk_c), .CD(key_get_temp_4__N_87), 
            .Q(key_get_temp[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i0.GSR = "ENABLED";
    LUT4 i16_4_lut (.A(n21), .B(n32), .C(Delay_cnt[19]), .D(Delay_cnt[16]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i16_4_lut.init = 16'hffef;
    CCU2D Clk_cnt_185_add_4_11 (.A0(Clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1647), .COUT(n1648), .S0(n66), .S1(n65));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_11.INIT0 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_11.INIT1 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_11.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_20 (.A(R_cache[15]), .B(n1878), .C(R_cache[12]), 
         .D(n4_adj_3), .Z(n1838)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(78[9:27])
    defparam i1_4_lut_adj_20.init = 16'hbfff;
    LUT4 i2_3_lut_adj_21 (.A(R_cache[5]), .B(n1883), .C(R_cache[4]), .Z(n907)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(88[9:27])
    defparam i2_3_lut_adj_21.init = 16'hbfbf;
    GSR GSR_INST (.GSR(reset_c));
    LUT4 i1582_4_lut (.A(R_cache[7]), .B(n1081), .C(n1229), .D(R_cache[6]), 
         .Z(n1931)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i1582_4_lut.init = 16'hcc4c;
    LUT4 i2_2_lut_3_lut (.A(n1712), .B(R_cache[1]), .C(R_cache[0]), .Z(n913)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i2_3_lut_4_lut_adj_22 (.A(R_cache[6]), .B(n2056), .C(n1850), 
         .D(R_cache[12]), .Z(n1862)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_22.init = 16'h8000;
    CCU2D Delay_cnt_187_add_4_13 (.A0(Delay_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1655), .COUT(n1656), .S0(n94), .S1(n93));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_13.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_13.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_13.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_13.INJECT1_1 = "NO";
    CCU2D Clk_cnt_185_add_4_9 (.A0(Clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1646), .COUT(n1647), .S0(n68), .S1(n67));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_9.INIT0 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_9.INIT1 = 16'hfaaa;
    defparam Clk_cnt_185_add_4_9.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_9.INJECT1_1 = "NO";
    CCU2D Delay_cnt_187_add_4_11 (.A0(Delay_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1654), .COUT(n1655), .S0(n96), .S1(n95));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_11.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_11.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_11.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_11.INJECT1_1 = "NO";
    CCU2D Delay_cnt_187_add_4_9 (.A0(Delay_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1653), .COUT(n1654), .S0(n98), .S1(n97));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_9.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_9.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_9.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_9.INJECT1_1 = "NO";
    LUT4 i1616_3_lut (.A(num_cnt[0]), .B(num_cnt[1]), .C(num_cnt[2]), 
         .Z(ROW_3__N_1[2])) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(49[3] 55[12])
    defparam i1616_3_lut.init = 16'hfdfd;
    LUT4 i779_2_lut_rep_19 (.A(R_cache[12]), .B(R_cache[10]), .Z(n2065)) /* synthesis lut_function=(A (B)) */ ;
    defparam i779_2_lut_rep_19.init = 16'h8888;
    LUT4 i1_3_lut_rep_12_4_lut (.A(R_cache[12]), .B(R_cache[10]), .C(R_cache[5]), 
         .D(R_cache[6]), .Z(n2058)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_rep_12_4_lut.init = 16'h8000;
    LUT4 i1633_3_lut_rep_20 (.A(num_cnt[0]), .B(num_cnt[2]), .C(num_cnt[1]), 
         .Z(Clk_c_enable_27)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(75[6:17])
    defparam i1633_3_lut_rep_20.init = 16'h0404;
    LUT4 i1_3_lut_4_lut (.A(n1712), .B(R_cache[1]), .C(n1872), .D(n36_adj_1), 
         .Z(n24)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf222;
    CCU2D Clk_cnt_185_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1643), .S1(n75));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185_add_4_1.INIT0 = 16'hF000;
    defparam Clk_cnt_185_add_4_1.INIT1 = 16'h0555;
    defparam Clk_cnt_185_add_4_1.INJECT1_0 = "NO";
    defparam Clk_cnt_185_add_4_1.INJECT1_1 = "NO";
    LUT4 i1613_2_lut_4_lut (.A(num_cnt[0]), .B(num_cnt[2]), .C(num_cnt[1]), 
         .D(num_cnt_2__N_80), .Z(n528)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(75[6:17])
    defparam i1613_2_lut_4_lut.init = 16'h0400;
    LUT4 i1568_2_lut (.A(Delay_cnt[15]), .B(Delay_cnt[18]), .Z(n1917)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1568_2_lut.init = 16'h8888;
    LUT4 i1644_2_lut_2_lut (.A(n2052), .B(n9), .Z(refresh_flag_N_135)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1644_2_lut_2_lut.init = 16'h1111;
    LUT4 i1596_4_lut (.A(Delay_cnt[1]), .B(Delay_cnt[10]), .C(Delay_cnt[2]), 
         .D(Delay_cnt[4]), .Z(n1945)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1596_4_lut.init = 16'h8000;
    LUT4 i19_4_lut_rep_6 (.A(n1951), .B(n1921), .C(n36), .D(n1917), 
         .Z(n2052)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i19_4_lut_rep_6.init = 16'hf7ff;
    LUT4 i1609_2_lut (.A(num_cnt[0]), .B(num_cnt_2__N_80), .Z(n1955)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam i1609_2_lut.init = 16'h6666;
    LUT4 i1621_4_lut (.A(n13), .B(n11), .C(Clk_cnt[1]), .D(n1953), .Z(num_cnt_2__N_80)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(33[6:20])
    defparam i1621_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_23 (.A(n2059), .B(n2063), .C(R_cache[5]), .D(R_cache[3]), 
         .Z(n1850)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_23.init = 16'h8000;
    LUT4 i1578_2_lut (.A(Delay_cnt[3]), .B(Delay_cnt[6]), .Z(n1927)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1578_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_24 (.A(Delay_cnt[9]), .B(Delay_cnt[12]), .Z(n21)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_24.init = 16'heeee;
    FD1S3IX ROW_i1 (.D(n2060), .CK(Clk_N_6), .CD(num_cnt[2]), .Q(ROW_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i1.GSR = "DISABLED";
    CCU2D Delay_cnt_187_add_4_7 (.A0(Delay_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Delay_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1652), .COUT(n1653), .S0(n100), .S1(n99));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(108[18:27])
    defparam Delay_cnt_187_add_4_7.INIT0 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_7.INIT1 = 16'hfaaa;
    defparam Delay_cnt_187_add_4_7.INJECT1_0 = "NO";
    defparam Delay_cnt_187_add_4_7.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(Clk_cnt[0]), .B(Clk_cnt[3]), .C(Clk_cnt[2]), .D(Clk_cnt[7]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_11 (.A(R_cache[11]), .B(n1177), .Z(n2057)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_11.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(R_cache[11]), .B(n1177), .C(n1850), 
         .Z(n4_adj_3)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_26 (.A(reset_c), .B(num_cnt[2]), .C(num_cnt[1]), 
         .D(num_cnt[0]), .Z(Clk_c_enable_19)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_26.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_27 (.A(R_cache[11]), .B(n1177), .C(n1878), 
         .D(R_cache[15]), .Z(n1879)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_27.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_28 (.A(R_cache[6]), .B(n2056), .C(R_cache[10]), 
         .D(R_cache[11]), .Z(n1861)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_28.init = 16'h0880;
    LUT4 i3_2_lut (.A(Clk_cnt[13]), .B(Clk_cnt[11]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    OB ROW_pad_1 (.I(ROW_c_1), .O(ROW[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    LUT4 i2_3_lut_4_lut_adj_29 (.A(n2054), .B(n2062), .C(n1817), .D(R_cache[8]), 
         .Z(n1883)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_29.init = 16'h8000;
    FD1S3AX Clk_cnt_185__i13 (.D(n62), .CK(Clk_c), .Q(Clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i13.GSR = "DISABLED";
    LUT4 i12_4_lut (.A(Delay_cnt[11]), .B(Delay_cnt[7]), .C(Delay_cnt[14]), 
         .D(Delay_cnt[5]), .Z(n32)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i12_4_lut.init = 16'hfbff;
    LUT4 i1558_4_lut (.A(R_cache[11]), .B(n913), .C(n1862), .D(R_cache[10]), 
         .Z(n1907)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;
    defparam i1558_4_lut.init = 16'h8ccc;
    LUT4 i2_4_lut_adj_30 (.A(n1890), .B(n1838), .C(n1884), .D(n1907), 
         .Z(key_get_4__N_81[0])) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_30.init = 16'hfbff;
    PFUMX i58 (.BLUT(n1879), .ALUT(n1861), .C0(R_cache[12]), .Z(n30));
    LUT4 i745_4_lut (.A(n913), .B(R_cache[3]), .C(n1868), .D(R_cache[2]), 
         .Z(n1081)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i745_4_lut.init = 16'haa2a;
    LUT4 i1629_4_lut (.A(n2052), .B(reset_c), .C(n472), .D(refresh_flag), 
         .Z(Clk_c_enable_23)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i1629_4_lut.init = 16'hcc4c;
    FD1S3AX Clk_cnt_185__i12 (.D(n63), .CK(Clk_c), .Q(Clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i12.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i11 (.D(n64), .CK(Clk_c), .Q(Clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i11.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i10 (.D(n65), .CK(Clk_c), .Q(Clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i10.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i9 (.D(n66), .CK(Clk_c), .Q(Clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i9.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i8 (.D(n67), .CK(Clk_c), .Q(Clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i8.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i7 (.D(n68), .CK(Clk_c), .Q(Clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i7.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i6 (.D(n69), .CK(Clk_c), .Q(Clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i6.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i5 (.D(n70), .CK(Clk_c), .Q(Clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i5.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i4 (.D(n71), .CK(Clk_c), .Q(Clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i4.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i3 (.D(n72), .CK(Clk_c), .Q(Clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i3.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i2 (.D(n73), .CK(Clk_c), .Q(Clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i2.GSR = "DISABLED";
    FD1S3AX Clk_cnt_185__i1 (.D(n74), .CK(Clk_c), .Q(Clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(42[14:21])
    defparam Clk_cnt_185__i1.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i15 (.D(COL_c_3), .SP(Clk_c_enable_8), .CK(Clk_c), 
            .Q(R_cache[15]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i15.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i14 (.D(COL_c_2), .SP(Clk_c_enable_8), .CK(Clk_c), 
            .Q(R_cache[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i14.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i13 (.D(COL_c_1), .SP(Clk_c_enable_8), .CK(Clk_c), 
            .Q(R_cache[13]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i13.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i12 (.D(COL_c_0), .SP(Clk_c_enable_8), .CK(Clk_c), 
            .Q(R_cache[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i12.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i11 (.D(COL_c_3), .SP(Clk_c_enable_12), .CK(Clk_c), 
            .Q(R_cache[11]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i11.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i10 (.D(COL_c_2), .SP(Clk_c_enable_12), .CK(Clk_c), 
            .Q(R_cache[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i10.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i9 (.D(COL_c_1), .SP(Clk_c_enable_12), .CK(Clk_c), 
            .Q(R_cache[9]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i9.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i8 (.D(COL_c_0), .SP(Clk_c_enable_12), .CK(Clk_c), 
            .Q(R_cache[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i8.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i7 (.D(COL_c_3), .SP(Clk_c_enable_16), .CK(Clk_c), 
            .Q(R_cache[7]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i7.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i6 (.D(COL_c_2), .SP(Clk_c_enable_16), .CK(Clk_c), 
            .Q(R_cache[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i6.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i5 (.D(COL_c_1), .SP(Clk_c_enable_16), .CK(Clk_c), 
            .Q(R_cache[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i5.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i4 (.D(COL_c_0), .SP(Clk_c_enable_16), .CK(Clk_c), 
            .Q(R_cache[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i4.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i3 (.D(COL_c_3), .SP(Clk_c_enable_19), .CK(Clk_c), 
            .Q(R_cache[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i3.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i2 (.D(COL_c_2), .SP(Clk_c_enable_19), .CK(Clk_c), 
            .Q(R_cache[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i2.GSR = "DISABLED";
    FD1P3AX R_cache_i0_i1 (.D(COL_c_1), .SP(Clk_c_enable_19), .CK(Clk_c), 
            .Q(R_cache[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam R_cache_i0_i1.GSR = "DISABLED";
    FD1P3IX key_out__i5 (.D(key_get_temp[4]), .SP(Clk_c_enable_23), .CD(n526), 
            .CK(Clk_c), .Q(key_out_c_4));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i5.GSR = "DISABLED";
    FD1P3IX key_out__i4 (.D(key_get_temp[3]), .SP(Clk_c_enable_23), .CD(n526), 
            .CK(Clk_c), .Q(key_out_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i4.GSR = "DISABLED";
    FD1P3IX key_out__i3 (.D(key_get_temp[2]), .SP(Clk_c_enable_23), .CD(n526), 
            .CK(Clk_c), .Q(key_out_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i3.GSR = "DISABLED";
    FD1P3IX key_out__i2 (.D(key_get_temp[1]), .SP(Clk_c_enable_23), .CD(n526), 
            .CK(Clk_c), .Q(key_out_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_out__i2.GSR = "DISABLED";
    FD1P3IX num_cnt__i2 (.D(n1799), .SP(num_cnt_2__N_80), .CD(n528), .CK(Clk_c), 
            .Q(num_cnt[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam num_cnt__i2.GSR = "DISABLED";
    VHI i1719 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    FD1P3IX num_cnt__i1 (.D(n3), .SP(num_cnt_2__N_80), .CD(n528), .CK(Clk_c), 
            .Q(num_cnt[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(32[2] 43[10])
    defparam num_cnt__i1.GSR = "DISABLED";
    FD1P3AX key_get_i0_i4 (.D(key_get_4__N_81[4]), .SP(Clk_c_enable_27), 
            .CK(Clk_c), .Q(key_get[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i4.GSR = "ENABLED";
    FD1P3AX key_get_i0_i3 (.D(key_get_4__N_81[3]), .SP(Clk_c_enable_27), 
            .CK(Clk_c), .Q(key_get[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i3.GSR = "ENABLED";
    FD1P3AX key_get_i0_i2 (.D(key_get_4__N_81[2]), .SP(Clk_c_enable_27), 
            .CK(Clk_c), .Q(key_get[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i2.GSR = "ENABLED";
    FD1P3AX key_get_i0_i1 (.D(key_get_4__N_81[1]), .SP(Clk_c_enable_27), 
            .CK(Clk_c), .Q(key_get[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_i0_i1.GSR = "ENABLED";
    FD1S3IX key_get_temp__i4 (.D(key_get[4]), .CK(Clk_c), .CD(key_get_temp_4__N_87), 
            .Q(key_get_temp[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i4.GSR = "ENABLED";
    FD1S3IX key_get_temp__i3 (.D(key_get[3]), .CK(Clk_c), .CD(key_get_temp_4__N_87), 
            .Q(key_get_temp[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i3.GSR = "ENABLED";
    FD1S3IX key_get_temp__i2 (.D(key_get[2]), .CK(Clk_c), .CD(key_get_temp_4__N_87), 
            .Q(key_get_temp[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i2.GSR = "ENABLED";
    FD1S3IX key_get_temp__i1 (.D(key_get[1]), .CK(Clk_c), .CD(key_get_temp_4__N_87), 
            .Q(key_get_temp[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(62[2] 122[9])
    defparam key_get_temp__i1.GSR = "ENABLED";
    FD1S3AX ROW_i4 (.D(ROW_3__N_1[3]), .CK(Clk_N_6), .Q(ROW_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i4.GSR = "DISABLED";
    FD1S3AX ROW_i3 (.D(ROW_3__N_1[2]), .CK(Clk_N_6), .Q(ROW_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(48[2] 56[9])
    defparam ROW_i3.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    OB ROW_pad_0 (.I(ROW_c_0), .O(ROW[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(10[1:4])
    OB key_out_pad_4 (.I(key_out_c_4), .O(key_out[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(12[1:8])
    OB key_out_pad_3 (.I(key_out_c_3), .O(key_out[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(12[1:8])
    OB key_out_pad_2 (.I(key_out_c_2), .O(key_out[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(12[1:8])
    OB key_out_pad_1 (.I(key_out_c_1), .O(key_out[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(12[1:8])
    OB key_out_pad_0 (.I(key_out_c_0), .O(key_out[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(12[1:8])
    IB Clk_pad (.I(Clk), .O(Clk_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(8[1:4])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(9[1:6])
    IB COL_pad_3 (.I(COL[3]), .O(COL_c_3));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(11[1:4])
    IB COL_pad_2 (.I(COL[2]), .O(COL_c_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(11[1:4])
    IB COL_pad_1 (.I(COL[1]), .O(COL_c_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(11[1:4])
    IB COL_pad_0 (.I(COL[0]), .O(COL_c_0));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(11[1:4])
    LUT4 i1_2_lut_3_lut_4_lut_adj_31 (.A(reset_c), .B(num_cnt[2]), .C(num_cnt[0]), 
         .D(num_cnt[1]), .Z(Clk_c_enable_8)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_31.init = 16'h0002;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i3_4_lut_adj_32 (.A(n2056), .B(n2055), .C(R_cache[5]), .D(n2054), 
         .Z(n1868)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_32.init = 16'h8000;
    INV i1721 (.A(Clk_c), .Z(Clk_N_6));   // c:/users/onion/desktop/fpga-labs/aac_re_code_refined_rec/lab4/impl1/source/matrix_button_input.vhd(8[1:4])
    PFUMX i56 (.BLUT(n1882), .ALUT(n1845), .C0(R_cache[4]), .Z(n36_adj_1));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

