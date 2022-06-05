// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.3.469
// Netlist written on Mon Nov 16 15:46:49 2020
//
// Verilog Description of module huxideng
//

module huxideng (clk, clrin, supin, sdnin, litin, Y);   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(5[8:16])
    input clk;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[6:9])
    input clrin;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[10:15])
    input supin;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[16:21])
    input sdnin;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[22:27])
    input litin;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[28:33])
    output Y;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(7[6:7])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[6:9])
    
    wire GND_net, VCC_net, clrin_c, supin_c, sdnin_c, litin_c, Y_c, 
        n3160, n3161, n3162;
    wire [31:0]LIGHT_CTL;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(13[8:17])
    wire [31:0]T;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(14[8:9])
    
    wire n3157, n3158, n3159;
    wire [31:0]cnt_clk;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(15[8:15])
    wire [31:0]cur1;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(16[8:12])
    wire [31:0]cur2;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(16[13:17])
    
    wire sup, sdn, clr, lit, n87, n88, n89, n90, n91, n92, 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
        n103, n104;
    wire [17:0]n87_N_179;
    
    wire s_mult_31s_19s_0_1_9, co_mult_31s_19s_0_5_3, s_mult_31s_19s_0_0_8, 
        clr_N_507, n4008, n190, n191, n192, n193, n194, n195, 
        n196, n197, n198, n199, n200, n201, n202, n203, n204, 
        n205, n206, n207;
    wire [17:0]n190_N_216;
    
    wire s_mult_31s_19s_0_0_7, s_mult_31s_19s_0_1_8, s_mult_31s_19s_0_1_7, 
        co_mult_31s_19s_0_5_2, s_mult_31s_19s_0_0_6, s_mult_31s_19s_0_0_5, 
        s_mult_31s_19s_0_1_6, co_mult_31s_19s_0_5_1, s_mult_31s_19s_0_0_4, 
        mult_31s_19s_0_pp_2_4, sup_N_503, n3887, n293, n294, n295, 
        n296, n297, n298, n299, n300, n301, n302, n303, n304, 
        n305, n306, n307, n308, n309, n310;
    wire [17:0]n293_N_253;
    
    wire n2444, sdn_N_505, n3886;
    wire [17:0]COUNT1;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(71[12:18])
    
    wire n4258;
    wire [17:0]COUNT1_17__N_290;
    
    wire n3885, n3944, clk_c_enable_24, n3221, lit_N_509, n3943, 
        n3936, n3935, n3934, n3933, n4039, n4038, n4037, n4036, 
        n4035;
    wire [31:0]LIGHT_CTL_31__N_309;
    
    wire n3920, n3919, n3918, n3917, n3916, n3915, n3914, n3913, 
        n3884, n3883, n3882, n4034, n4256, n3948, n2141, n2142, 
        n2143, n2144, n2145, n2146, n2147, n2148, n2149, n2150, 
        n2151, n2152, n2153, n2154, n2155, n2156, n2157, n2158, 
        n2159, n4009, n4004, n4003, n4002, n4001, n4000, mult_31s_19s_0_pp_9_32, 
        mult_31s_19s_0_pp_9_31, co_mult_31s_19s_0_4_7, mult_31s_19s_0_pp_9_30, 
        mult_31s_19s_0_pp_9_29, co_mult_31s_19s_0_4_6, mult_31s_19s_0_pp_9_28, 
        mult_31s_19s_0_pp_9_27, co_mult_31s_19s_0_4_5, mult_31s_19s_0_pp_9_26, 
        mult_31s_19s_0_pp_9_25, co_mult_31s_19s_0_4_4, mult_31s_19s_0_pp_9_24, 
        mult_31s_19s_0_pp_9_23, co_mult_31s_19s_0_4_3, mult_31s_19s_0_pp_9_22, 
        mult_31s_19s_0_pp_9_21, co_mult_31s_19s_0_4_2, mult_31s_19s_0_pp_9_20, 
        mult_31s_19s_0_pp_9_19, co_mult_31s_19s_0_4_1, mult_31s_19s_0_pp_9_18, 
        n2409, n4049, n4048, n4047, n4046, n4045, n4033, n4043, 
        n3530, n3528, n3999, n4032, n4031, n4030, n4029, n4028, 
        n4027;
    wire [31:0]T_31__N_33;
    
    wire n4026, n4025, n4024, n4023, n4022, n4021, n4007, n3881, 
        n3880, n3879, n3878, n3877, n3942, n3941, n3932, n3931, 
        n3930, n3929, n3912, n3911, n3910, n3909, n3908, n3907, 
        n3906, n4252, n938, n939, n940, n941, n942, n943, n944, 
        n945, n946, n947, n948, n949, n950, n951, n952, n953, 
        n954, n955, n956, n957, n958, n959, n960, n961, n962, 
        n963, n964, n965, n966, n3905, n3648, n3876, n3875, 
        n21, n3947, n3998, n1024, n1025, n1026, n1027, n1028, 
        n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, 
        n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, 
        n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, 
        n3997, clk_c_enable_2, n3996, n3995, n3994, n3993, n4006, 
        n4044, n3874, n3873, n3872, n3871, n4020, n3156, n4019, 
        clk_c_enable_33, n4246, n4244, n4238, n4234, n4230, n4226, 
        n4222, n4218, n4214, n4210, n4208, n4206, n3870, n4055, 
        n3940, n1844, n2134, n3939, n4156, n3928, co_mult_31s_19s_0_3_9, 
        co_mult_31s_19s_0_3_8, co_mult_31s_19s_0_3_7, co_mult_31s_19s_0_3_6, 
        co_mult_31s_19s_0_3_5, co_mult_31s_19s_0_3_4, co_mult_31s_19s_0_3_3, 
        co_mult_31s_19s_0_3_2, co_mult_31s_19s_0_3_1, mult_31s_19s_0_pp_7_14, 
        co_mult_31s_19s_0_2_11, co_mult_31s_19s_0_2_10, co_mult_31s_19s_0_2_9, 
        co_mult_31s_19s_0_2_8, co_mult_31s_19s_0_2_7, co_mult_31s_19s_0_2_6, 
        co_mult_31s_19s_0_2_5, co_mult_31s_19s_0_2_4, co_mult_31s_19s_0_2_3, 
        co_mult_31s_19s_0_2_2, co_mult_31s_19s_0_2_1, mult_31s_19s_0_pp_5_10, 
        n4018, n4017, n4016, n4015, n4042, n2135, n2136, n2137, 
        n2138, n2139, n2140, clk_c_enable_23, clk_c_enable_25, n3326, 
        n6, cnt_clk_31__N_437, n3927, n3926, n3925, n3904, n3903, 
        n3902, n3901, n3900, n3899, n3898, n3896, n3869, n3868, 
        n3946, n3992, n3991, n3990, n3989, n3987, n3986, n4005, 
        n3867, n3866, n3865, n3864, n3863, n3938, n3937, n3924, 
        n3923, n3922, n3921, n4178, n4176, n4054, n3895, n2479, 
        co_mult_31s_19s_0_1_13, co_mult_31s_19s_0_1_12, co_mult_31s_19s_0_1_11, 
        co_mult_31s_19s_0_1_10, co_mult_31s_19s_0_1_9, co_mult_31s_19s_0_1_8, 
        co_mult_31s_19s_0_1_7, co_mult_31s_19s_0_1_6, co_mult_31s_19s_0_1_5, 
        co_mult_31s_19s_0_1_4, co_mult_31s_19s_0_1_3, co_mult_31s_19s_0_1_2, 
        co_mult_31s_19s_0_1_1, mult_31s_19s_0_pp_3_6, co_mult_31s_19s_0_0_15, 
        co_mult_31s_19s_0_0_14, co_mult_31s_19s_0_0_13, co_mult_31s_19s_0_0_12, 
        co_mult_31s_19s_0_0_11, co_mult_31s_19s_0_0_10, co_mult_31s_19s_0_0_9, 
        co_mult_31s_19s_0_0_8, co_mult_31s_19s_0_0_7, co_mult_31s_19s_0_0_6, 
        co_mult_31s_19s_0_0_5, co_mult_31s_19s_0_0_4, co_mult_31s_19s_0_0_3, 
        n3894, n3893, n3892, n3891, n3890, n3889, n3888, n3862, 
        n3861, n3945, n3985, n3984, n3983, n3981, n3980, n3979, 
        n3978, n3977, n3976, n3975, n3974, n3973, n3972, n3971, 
        n3970, co_mult_31s_19s_0_0_2, co_mult_31s_19s_0_0_1, mult_31s_19s_0_pp_1_2, 
        n2549, n3969, n3968, n3222, n3223, n3224, n3225, n3226, 
        n3227, n3228, n3229, n3230, n3231, n4014, n4013, n3967, 
        n2584, s_mult_31s_19s_0_1_10, s_mult_31s_19s_0_0_9, s_mult_31s_19s_0_0_10, 
        co_mult_31s_19s_0_5_4, s_mult_31s_19s_0_1_11, s_mult_31s_19s_0_1_12, 
        s_mult_31s_19s_0_0_11, s_mult_31s_19s_0_0_12, co_mult_31s_19s_0_5_5, 
        s_mult_31s_19s_0_1_13, s_mult_31s_19s_0_1_14, s_mult_31s_19s_0_0_13, 
        s_mult_31s_19s_0_0_14, co_mult_31s_19s_0_5_6, s_mult_31s_19s_0_1_15, 
        s_mult_31s_19s_0_1_16, s_mult_31s_19s_0_0_15, s_mult_31s_19s_0_0_16, 
        co_mult_31s_19s_0_5_7, s_mult_31s_19s_0_1_17, s_mult_31s_19s_0_1_18, 
        s_mult_31s_19s_0_0_17, s_mult_31s_19s_0_0_18, co_mult_31s_19s_0_5_8, 
        s_mult_31s_19s_0_1_19, s_mult_31s_19s_0_1_20, s_mult_31s_19s_0_0_19, 
        s_mult_31s_19s_0_0_20, co_mult_31s_19s_0_5_9, s_mult_31s_19s_0_1_21, 
        s_mult_31s_19s_0_1_22, s_mult_31s_19s_0_0_21, s_mult_31s_19s_0_0_22, 
        co_mult_31s_19s_0_5_10, s_mult_31s_19s_0_1_23, s_mult_31s_19s_0_1_24, 
        s_mult_31s_19s_0_0_23, s_mult_31s_19s_0_0_24, co_mult_31s_19s_0_5_11, 
        s_mult_31s_19s_0_1_25, s_mult_31s_19s_0_1_26, s_mult_31s_19s_0_0_25, 
        s_mult_31s_19s_0_0_26, co_mult_31s_19s_0_5_12, s_mult_31s_19s_0_1_27, 
        s_mult_31s_19s_0_1_28, s_mult_31s_19s_0_0_27, s_mult_31s_19s_0_0_28, 
        co_mult_31s_19s_0_5_13, s_mult_31s_19s_0_1_29, s_mult_31s_19s_0_1_30, 
        s_mult_31s_19s_0_0_29, s_mult_31s_19s_0_0_30, co_mult_31s_19s_0_5_14, 
        s_mult_31s_19s_0_1_31, s_mult_31s_19s_0_1_32, s_mult_31s_19s_0_0_31, 
        s_mult_31s_19s_0_0_32, mult_31s_19s_0_pp_6_12, s_mult_31s_19s_0_2_12, 
        co_mult_31s_19s_0_6_1, s_mult_31s_19s_0_3_14, s_mult_31s_19s_0_2_13, 
        s_mult_31s_19s_0_2_14, co_mult_31s_19s_0_6_2, s_mult_31s_19s_0_3_15, 
        s_mult_31s_19s_0_3_16, s_mult_31s_19s_0_2_15, s_mult_31s_19s_0_2_16, 
        co_mult_31s_19s_0_6_3, s_mult_31s_19s_0_3_17, s_mult_31s_19s_0_3_18, 
        s_mult_31s_19s_0_2_17, s_mult_31s_19s_0_2_18, co_mult_31s_19s_0_6_4, 
        s_mult_31s_19s_0_3_19, s_mult_31s_19s_0_3_20, s_mult_31s_19s_0_2_19, 
        s_mult_31s_19s_0_2_20, co_mult_31s_19s_0_6_5, s_mult_31s_19s_0_3_21, 
        s_mult_31s_19s_0_3_22, s_mult_31s_19s_0_2_21, s_mult_31s_19s_0_2_22, 
        co_mult_31s_19s_0_6_6, s_mult_31s_19s_0_3_23, s_mult_31s_19s_0_3_24, 
        s_mult_31s_19s_0_2_23, s_mult_31s_19s_0_2_24, co_mult_31s_19s_0_6_7, 
        s_mult_31s_19s_0_3_25, s_mult_31s_19s_0_3_26, s_mult_31s_19s_0_2_25, 
        s_mult_31s_19s_0_2_26, co_mult_31s_19s_0_6_8, s_mult_31s_19s_0_3_27, 
        s_mult_31s_19s_0_3_28, s_mult_31s_19s_0_2_27, s_mult_31s_19s_0_2_28, 
        co_mult_31s_19s_0_6_9, s_mult_31s_19s_0_3_29, s_mult_31s_19s_0_3_30, 
        s_mult_31s_19s_0_2_29, s_mult_31s_19s_0_2_30, co_mult_31s_19s_0_6_10, 
        s_mult_31s_19s_0_3_31, s_mult_31s_19s_0_3_32, s_mult_31s_19s_0_2_31, 
        s_mult_31s_19s_0_2_32, s_mult_31s_19s_0_4_18, co_mult_31s_19s_0_7_1, 
        s_mult_31s_19s_0_4_19, s_mult_31s_19s_0_4_20, co_mult_31s_19s_0_7_2, 
        s_mult_31s_19s_0_4_21, s_mult_31s_19s_0_4_22, co_mult_31s_19s_0_7_3, 
        s_mult_31s_19s_0_4_23, s_mult_31s_19s_0_4_24, co_mult_31s_19s_0_7_4, 
        s_mult_31s_19s_0_4_25, s_mult_31s_19s_0_4_26, co_mult_31s_19s_0_7_5, 
        s_mult_31s_19s_0_4_27, s_mult_31s_19s_0_4_28, co_mult_31s_19s_0_7_6, 
        s_mult_31s_19s_0_4_29, s_mult_31s_19s_0_4_30, co_mult_31s_19s_0_7_7, 
        s_mult_31s_19s_0_4_31, s_mult_31s_19s_0_4_32, mult_31s_19s_0_pp_4_8, 
        s_mult_31s_19s_0_5_8, co_mult_31s_19s_0_8_1, s_mult_31s_19s_0_2_10, 
        s_mult_31s_19s_0_5_9, s_mult_31s_19s_0_5_10, co_mult_31s_19s_0_8_2, 
        s_mult_31s_19s_0_2_11, s_mult_31s_19s_0_6_12, s_mult_31s_19s_0_5_11, 
        s_mult_31s_19s_0_5_12, co_mult_31s_19s_0_8_3, s_mult_31s_19s_0_6_13, 
        s_mult_31s_19s_0_6_14, s_mult_31s_19s_0_5_13, s_mult_31s_19s_0_5_14, 
        co_mult_31s_19s_0_8_4, s_mult_31s_19s_0_6_15, s_mult_31s_19s_0_6_16, 
        s_mult_31s_19s_0_5_15, s_mult_31s_19s_0_5_16, co_mult_31s_19s_0_8_5, 
        s_mult_31s_19s_0_6_17, s_mult_31s_19s_0_6_18, s_mult_31s_19s_0_5_17, 
        s_mult_31s_19s_0_5_18, co_mult_31s_19s_0_8_6, s_mult_31s_19s_0_6_19, 
        s_mult_31s_19s_0_6_20, s_mult_31s_19s_0_5_19, s_mult_31s_19s_0_5_20, 
        co_mult_31s_19s_0_8_7, s_mult_31s_19s_0_6_21, s_mult_31s_19s_0_6_22, 
        s_mult_31s_19s_0_5_21, s_mult_31s_19s_0_5_22, co_mult_31s_19s_0_8_8, 
        s_mult_31s_19s_0_6_23, s_mult_31s_19s_0_6_24, s_mult_31s_19s_0_5_23, 
        s_mult_31s_19s_0_5_24, co_mult_31s_19s_0_8_9, s_mult_31s_19s_0_6_25, 
        s_mult_31s_19s_0_6_26, s_mult_31s_19s_0_5_25, s_mult_31s_19s_0_5_26, 
        co_mult_31s_19s_0_8_10, s_mult_31s_19s_0_6_27, s_mult_31s_19s_0_6_28, 
        s_mult_31s_19s_0_5_27, s_mult_31s_19s_0_5_28, co_mult_31s_19s_0_8_11, 
        s_mult_31s_19s_0_6_29, s_mult_31s_19s_0_6_30, s_mult_31s_19s_0_5_29, 
        s_mult_31s_19s_0_5_30, co_mult_31s_19s_0_8_12, s_mult_31s_19s_0_6_31, 
        s_mult_31s_19s_0_6_32, s_mult_31s_19s_0_5_31, s_mult_31s_19s_0_5_32, 
        mult_31s_19s_0_pp_8_16, s_mult_31s_19s_0_8_16, co_t_mult_31s_19s_0_9_1, 
        s_mult_31s_19s_0_7_18, s_mult_31s_19s_0_8_17, s_mult_31s_19s_0_8_18, 
        co_t_mult_31s_19s_0_9_2, s_mult_31s_19s_0_7_19, s_mult_31s_19s_0_7_20, 
        s_mult_31s_19s_0_8_19, s_mult_31s_19s_0_8_20, co_t_mult_31s_19s_0_9_3, 
        s_mult_31s_19s_0_7_21, s_mult_31s_19s_0_7_22, s_mult_31s_19s_0_8_21, 
        s_mult_31s_19s_0_8_22, co_t_mult_31s_19s_0_9_4, s_mult_31s_19s_0_7_23, 
        s_mult_31s_19s_0_7_24, s_mult_31s_19s_0_8_23, s_mult_31s_19s_0_8_24, 
        co_t_mult_31s_19s_0_9_5, s_mult_31s_19s_0_7_25, s_mult_31s_19s_0_7_26, 
        s_mult_31s_19s_0_8_25, s_mult_31s_19s_0_8_26, co_t_mult_31s_19s_0_9_6, 
        s_mult_31s_19s_0_7_27, s_mult_31s_19s_0_7_28, s_mult_31s_19s_0_8_27, 
        s_mult_31s_19s_0_8_28, co_t_mult_31s_19s_0_9_7, s_mult_31s_19s_0_7_29, 
        s_mult_31s_19s_0_7_30, s_mult_31s_19s_0_8_29, s_mult_31s_19s_0_8_30, 
        co_t_mult_31s_19s_0_9_8, s_mult_31s_19s_0_7_31, s_mult_31s_19s_0_7_32, 
        s_mult_31s_19s_0_8_31, s_mult_31s_19s_0_8_32, mult_31s_19s_0_pp_0_2, 
        mult_31s_19s_0_cin_lr_0, mult_31s_19s_0_pp_0_4, mult_31s_19s_0_pp_0_3, 
        mco, mult_31s_19s_0_pp_0_6, mult_31s_19s_0_pp_0_5, mco_1, mult_31s_19s_0_pp_0_8, 
        mult_31s_19s_0_pp_0_7, mco_2, mult_31s_19s_0_pp_0_10, mult_31s_19s_0_pp_0_9, 
        mco_3, mult_31s_19s_0_pp_0_12, mult_31s_19s_0_pp_0_11, mco_4, 
        mult_31s_19s_0_pp_0_14, mult_31s_19s_0_pp_0_13, mco_5, mult_31s_19s_0_pp_0_16, 
        mult_31s_19s_0_pp_0_15, mco_6, mult_31s_19s_0_pp_0_18, mult_31s_19s_0_pp_0_17, 
        mco_7, mult_31s_19s_0_pp_0_20, mult_31s_19s_0_pp_0_19, mco_8, 
        mult_31s_19s_0_pp_0_22, mult_31s_19s_0_pp_0_21, mco_9, mult_31s_19s_0_pp_0_24, 
        mult_31s_19s_0_pp_0_23, mco_10, mult_31s_19s_0_pp_0_26, mult_31s_19s_0_pp_0_25, 
        mco_11, mult_31s_19s_0_pp_0_28, mult_31s_19s_0_pp_0_27, mco_12, 
        mult_31s_19s_0_pp_0_30, mult_31s_19s_0_pp_0_29, mco_13, mult_31s_19s_0_pp_0_32, 
        mult_31s_19s_0_pp_0_31, mco_14, mult_31s_19s_0_mult_0_15_n2, mult_31s_19s_0_mult_0_15_n2_1, 
        mult_31s_19s_0_pp_1_4, mult_31s_19s_0_pp_1_3, mult_31s_19s_0_cin_lr_2, 
        mult_31s_19s_0_pp_1_6, mult_31s_19s_0_pp_1_5, mco_15, mult_31s_19s_0_pp_1_8, 
        mult_31s_19s_0_pp_1_7, mco_16, mult_31s_19s_0_pp_1_10, mult_31s_19s_0_pp_1_9, 
        mco_17, mult_31s_19s_0_pp_1_12, mult_31s_19s_0_pp_1_11, mco_18, 
        mult_31s_19s_0_pp_1_14, mult_31s_19s_0_pp_1_13, mco_19, mult_31s_19s_0_pp_1_16, 
        mult_31s_19s_0_pp_1_15, mco_20, mult_31s_19s_0_pp_1_18, mult_31s_19s_0_pp_1_17, 
        mco_21, mult_31s_19s_0_pp_1_20, mult_31s_19s_0_pp_1_19, mco_22, 
        mult_31s_19s_0_pp_1_22, mult_31s_19s_0_pp_1_21, mco_23, mult_31s_19s_0_pp_1_24, 
        mult_31s_19s_0_pp_1_23, mco_24, mult_31s_19s_0_pp_1_26, mult_31s_19s_0_pp_1_25, 
        mco_25, mult_31s_19s_0_pp_1_28, mult_31s_19s_0_pp_1_27, mco_26, 
        mult_31s_19s_0_pp_1_30, mult_31s_19s_0_pp_1_29, mco_27, mult_31s_19s_0_pp_1_32, 
        mult_31s_19s_0_pp_1_31, mco_28, mult_31s_19s_0_mult_2_14_n3, mult_31s_19s_0_pp_2_6, 
        mult_31s_19s_0_pp_2_5, mult_31s_19s_0_cin_lr_4, mult_31s_19s_0_pp_2_8, 
        mult_31s_19s_0_pp_2_7, mco_30, mult_31s_19s_0_pp_2_10, mult_31s_19s_0_pp_2_9, 
        mco_31, mult_31s_19s_0_pp_2_12, mult_31s_19s_0_pp_2_11, mco_32, 
        mult_31s_19s_0_pp_2_14, mult_31s_19s_0_pp_2_13, mco_33, mult_31s_19s_0_pp_2_16, 
        mult_31s_19s_0_pp_2_15, mco_34, mult_31s_19s_0_pp_2_18, mult_31s_19s_0_pp_2_17, 
        mco_35, mult_31s_19s_0_pp_2_20, mult_31s_19s_0_pp_2_19, mco_36, 
        mult_31s_19s_0_pp_2_22, mult_31s_19s_0_pp_2_21, mco_37, mult_31s_19s_0_pp_2_24, 
        mult_31s_19s_0_pp_2_23, mco_38, mult_31s_19s_0_pp_2_26, mult_31s_19s_0_pp_2_25, 
        mco_39, mult_31s_19s_0_pp_2_28, mult_31s_19s_0_pp_2_27, mco_40, 
        mult_31s_19s_0_pp_2_30, mult_31s_19s_0_pp_2_29, mco_41, mult_31s_19s_0_pp_2_32, 
        mult_31s_19s_0_pp_2_31, mco_42, mult_31s_19s_0_pp_3_8, mult_31s_19s_0_pp_3_7, 
        mult_31s_19s_0_cin_lr_6, mult_31s_19s_0_pp_3_10, mult_31s_19s_0_pp_3_9, 
        mco_45, mult_31s_19s_0_pp_3_12, mult_31s_19s_0_pp_3_11, mco_46, 
        mult_31s_19s_0_pp_3_14, mult_31s_19s_0_pp_3_13, mco_47, mult_31s_19s_0_pp_3_16, 
        mult_31s_19s_0_pp_3_15, mco_48, mult_31s_19s_0_pp_3_18, mult_31s_19s_0_pp_3_17, 
        mco_49, mult_31s_19s_0_pp_3_20, mult_31s_19s_0_pp_3_19, mco_50, 
        mult_31s_19s_0_pp_3_22, mult_31s_19s_0_pp_3_21, mco_51, mult_31s_19s_0_pp_3_24, 
        mult_31s_19s_0_pp_3_23, mco_52, mult_31s_19s_0_pp_3_26, mult_31s_19s_0_pp_3_25, 
        mco_53, mult_31s_19s_0_pp_3_28, mult_31s_19s_0_pp_3_27, mco_54, 
        mult_31s_19s_0_pp_3_30, mult_31s_19s_0_pp_3_29, mco_55, mult_31s_19s_0_pp_3_32, 
        mult_31s_19s_0_pp_3_31, mco_56, mult_31s_19s_0_pp_4_10, mult_31s_19s_0_pp_4_9, 
        mult_31s_19s_0_cin_lr_8, mult_31s_19s_0_pp_4_12, mult_31s_19s_0_pp_4_11, 
        mco_60, mult_31s_19s_0_pp_4_14, mult_31s_19s_0_pp_4_13, mco_61, 
        mult_31s_19s_0_pp_4_16, mult_31s_19s_0_pp_4_15, mco_62, mult_31s_19s_0_pp_4_18, 
        mult_31s_19s_0_pp_4_17, mco_63, mult_31s_19s_0_pp_4_20, mult_31s_19s_0_pp_4_19, 
        mco_64, mult_31s_19s_0_pp_4_22, mult_31s_19s_0_pp_4_21, mco_65, 
        mult_31s_19s_0_pp_4_24, mult_31s_19s_0_pp_4_23, mco_66, mult_31s_19s_0_pp_4_26, 
        mult_31s_19s_0_pp_4_25, mco_67, mult_31s_19s_0_pp_4_28, mult_31s_19s_0_pp_4_27, 
        mco_68, mult_31s_19s_0_pp_4_30, mult_31s_19s_0_pp_4_29, mco_69, 
        mult_31s_19s_0_pp_4_32, mult_31s_19s_0_pp_4_31, mco_70, mult_31s_19s_0_pp_5_12, 
        mult_31s_19s_0_pp_5_11, mult_31s_19s_0_cin_lr_10, mult_31s_19s_0_pp_5_14, 
        mult_31s_19s_0_pp_5_13, mco_75, mult_31s_19s_0_pp_5_16, mult_31s_19s_0_pp_5_15, 
        mco_76, mult_31s_19s_0_pp_5_18, mult_31s_19s_0_pp_5_17, mco_77, 
        mult_31s_19s_0_pp_5_20, mult_31s_19s_0_pp_5_19, mco_78, mult_31s_19s_0_pp_5_22, 
        mult_31s_19s_0_pp_5_21, mco_79, mult_31s_19s_0_pp_5_24, mult_31s_19s_0_pp_5_23, 
        mco_80, mult_31s_19s_0_pp_5_26, mult_31s_19s_0_pp_5_25, mco_81, 
        mult_31s_19s_0_pp_5_28, mult_31s_19s_0_pp_5_27, mco_82, mult_31s_19s_0_pp_5_30, 
        mult_31s_19s_0_pp_5_29, mco_83, mult_31s_19s_0_pp_5_32, mult_31s_19s_0_pp_5_31, 
        mco_84, mult_31s_19s_0_pp_6_14, mult_31s_19s_0_pp_6_13, mult_31s_19s_0_cin_lr_12, 
        mult_31s_19s_0_pp_6_16, mult_31s_19s_0_pp_6_15, mco_90, mult_31s_19s_0_pp_6_18, 
        mult_31s_19s_0_pp_6_17, mco_91, mult_31s_19s_0_pp_6_20, mult_31s_19s_0_pp_6_19, 
        mco_92, mult_31s_19s_0_pp_6_22, mult_31s_19s_0_pp_6_21, mco_93, 
        mult_31s_19s_0_pp_6_24, mult_31s_19s_0_pp_6_23, mco_94, mult_31s_19s_0_pp_6_26, 
        mult_31s_19s_0_pp_6_25, mco_95, mult_31s_19s_0_pp_6_28, mult_31s_19s_0_pp_6_27, 
        mco_96, mult_31s_19s_0_pp_6_30, mult_31s_19s_0_pp_6_29, mco_97, 
        mult_31s_19s_0_pp_6_32, mult_31s_19s_0_pp_6_31, mco_98, mult_31s_19s_0_pp_7_16, 
        mult_31s_19s_0_pp_7_15, mult_31s_19s_0_cin_lr_14, mult_31s_19s_0_pp_7_18, 
        mult_31s_19s_0_pp_7_17, mco_105, mult_31s_19s_0_pp_7_20, mult_31s_19s_0_pp_7_19, 
        mco_106, mult_31s_19s_0_pp_7_22, mult_31s_19s_0_pp_7_21, mco_107, 
        mult_31s_19s_0_pp_7_24, mult_31s_19s_0_pp_7_23, mco_108, mult_31s_19s_0_pp_7_26, 
        mult_31s_19s_0_pp_7_25, mco_109, mult_31s_19s_0_pp_7_28, mult_31s_19s_0_pp_7_27, 
        mco_110, mult_31s_19s_0_pp_7_30, mult_31s_19s_0_pp_7_29, mco_111, 
        mult_31s_19s_0_pp_7_32, mult_31s_19s_0_pp_7_31, mco_112, mult_31s_19s_0_pp_8_18, 
        mult_31s_19s_0_pp_8_17, mult_31s_19s_0_cin_lr_16, mult_31s_19s_0_pp_8_20, 
        mult_31s_19s_0_pp_8_19, mco_120, mult_31s_19s_0_pp_8_22, mult_31s_19s_0_pp_8_21, 
        mco_121, mult_31s_19s_0_pp_8_24, mult_31s_19s_0_pp_8_23, mco_122, 
        mult_31s_19s_0_pp_8_26, mult_31s_19s_0_pp_8_25, mco_123, mult_31s_19s_0_pp_8_28, 
        mult_31s_19s_0_pp_8_27, mco_124, mult_31s_19s_0_pp_8_30, mult_31s_19s_0_pp_8_29, 
        mco_125, mult_31s_19s_0_pp_8_32, mult_31s_19s_0_pp_8_31, mco_126, 
        n134, n135, n136, n137, n138, n139, n140, n141, n142, 
        n143, n144, n145, n146, n147, n148, n149, n150, n151, 
        n152, n153, n154, n155, n156, n157, n158, n159, n160, 
        n161, n162, n163, n164, n165, n4012, n4011, n4010, n3966, 
        n4041, n4173, n3965, n3964, n3963, n3962, n3617, n3613, 
        n3554, n3961, n3960, n3685, n3681, clk_c_enable_19, n4174, 
        clk_c_enable_4, n3959, n3958, n3957, n134_adj_1, n135_adj_2, 
        n136_adj_3, n137_adj_4, n138_adj_5, n139_adj_6, n140_adj_7, 
        n141_adj_8, n142_adj_9, n143_adj_10, n144_adj_11, n145_adj_12, 
        n146_adj_13, n147_adj_14, n148_adj_15, n149_adj_16, n150_adj_17, 
        n151_adj_18, n152_adj_19, n153_adj_20, n154_adj_21, n155_adj_22, 
        n156_adj_23, n157_adj_24, n158_adj_25, n159_adj_26, n160_adj_27, 
        n161_adj_28, n162_adj_29, n163_adj_30, n164_adj_31, n165_adj_32, 
        n4040, n3956, n3955, n3954, n3953, n3952, n3635, n3608, 
        n3532, n4059, n3669, n4274, n4271, n3951, n3950, n28, 
        n3949, n4268, n4359, n4264, n4358, n4053;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1478_2_lut (.A(n190_N_216[1]), .B(n190_N_216[6]), .Z(n4208)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1478_2_lut.init = 16'h8888;
    CCU2D add_67_13 (.A0(n299), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n298), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3884), 
          .COUT(n3885), .S0(n293_N_253[11]), .S1(n293_N_253[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_13.INIT0 = 16'h5aaa;
    defparam add_67_13.INIT1 = 16'h5aaa;
    defparam add_67_13.INJECT1_0 = "NO";
    defparam add_67_13.INJECT1_1 = "NO";
    CCU2D add_67_11 (.A0(n301), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n300), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3883), 
          .COUT(n3884), .S0(n293_N_253[9]), .S1(n293_N_253[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_11.INIT0 = 16'h5aaa;
    defparam add_67_11.INIT1 = 16'h5aaa;
    defparam add_67_11.INJECT1_0 = "NO";
    defparam add_67_11.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i21 (.D(n144), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i21.GSR = "DISABLED";
    CCU2D add_67_9 (.A0(n303), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n302), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3882), 
          .COUT(n3883), .S0(n293_N_253[7]), .S1(n293_N_253[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_9.INIT0 = 16'h5aaa;
    defparam add_67_9.INIT1 = 16'h5aaa;
    defparam add_67_9.INJECT1_0 = "NO";
    defparam add_67_9.INJECT1_1 = "NO";
    FD1S3DX COUNT1_i0 (.D(COUNT1_17__N_290[0]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i0.GSR = "DISABLED";
    CCU2D add_67_7 (.A0(n305), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n304), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3881), 
          .COUT(n3882), .S0(n293_N_253[5]), .S1(n293_N_253[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_7.INIT0 = 16'h5aaa;
    defparam add_67_7.INIT1 = 16'h5aaa;
    defparam add_67_7.INJECT1_0 = "NO";
    defparam add_67_7.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i20 (.D(n145), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i20.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i19 (.D(n146), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i19.GSR = "DISABLED";
    CCU2D add_67_5 (.A0(n307), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n306), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3880), 
          .COUT(n3881), .S0(n293_N_253[3]), .S1(n293_N_253[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_5.INIT0 = 16'h5aaa;
    defparam add_67_5.INIT1 = 16'h5aaa;
    defparam add_67_5.INJECT1_0 = "NO";
    defparam add_67_5.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_33 (.A0(n2549), .B0(cur2[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4036), .S0(n134_adj_1));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_33.INIT0 = 16'h5666;
    defparam cur2_419_add_4_33.INIT1 = 16'h0000;
    defparam cur2_419_add_4_33.INJECT1_0 = "NO";
    defparam cur2_419_add_4_33.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_5 (.A0(cur2[6]), .B0(cur1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(cur2[7]), .B1(cur1[7]), .C1(GND_net), .D1(GND_net), .CIN(n3913), 
          .COUT(n3914));
    defparam sub_336_add_2_5.INIT0 = 16'h5999;
    defparam sub_336_add_2_5.INIT1 = 16'h5999;
    defparam sub_336_add_2_5.INJECT1_0 = "NO";
    defparam sub_336_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_3 (.A0(cur2[4]), .B0(cur1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(cur2[5]), .B1(cur1[5]), .C1(GND_net), .D1(GND_net), .CIN(n3912), 
          .COUT(n3913));
    defparam sub_336_add_2_3.INIT0 = 16'h5999;
    defparam sub_336_add_2_3.INIT1 = 16'h5999;
    defparam sub_336_add_2_3.INJECT1_0 = "NO";
    defparam sub_336_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur2[3]), .B1(cur1[3]), .C1(GND_net), .D1(GND_net), .COUT(n3912));
    defparam sub_336_add_2_1.INIT0 = 16'h0000;
    defparam sub_336_add_2_1.INIT1 = 16'h5999;
    defparam sub_336_add_2_1.INJECT1_0 = "NO";
    defparam sub_336_add_2_1.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i18 (.D(n147), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i18.GSR = "DISABLED";
    FD1S3AX COUNT1_42_i0 (.D(n87_N_179[0]), .CK(clk_c), .Q(n104));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i0.GSR = "ENABLED";
    CCU2D add_154_30 (.A0(cur1[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3911), 
          .S0(n938));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_30.INIT0 = 16'h5aaa;
    defparam add_154_30.INIT1 = 16'h0000;
    defparam add_154_30.INJECT1_0 = "NO";
    defparam add_154_30.INJECT1_1 = "NO";
    FD1P3IX T_i13 (.D(n2152), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i13.GSR = "DISABLED";
    CCU2D add_8_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3635), .B1(n4059), .C1(n104), .D1(GND_net), .COUT(n3861), 
          .S1(n87_N_179[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_1.INIT0 = 16'hF000;
    defparam add_8_1.INIT1 = 16'h8787;
    defparam add_8_1.INJECT1_0 = "NO";
    defparam add_8_1.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_11 (.A0(n2549), .B0(cur2[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n2549), .B1(cur2[10]), .C1(GND_net), .D1(GND_net), .CIN(n4025), 
          .COUT(n4026), .S0(n156_adj_23), .S1(n155_adj_22));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_11.INIT0 = 16'h5666;
    defparam cur2_419_add_4_11.INIT1 = 16'h5666;
    defparam cur2_419_add_4_11.INJECT1_0 = "NO";
    defparam cur2_419_add_4_11.INJECT1_1 = "NO";
    CCU2D add_154_28 (.A0(cur1[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3910), 
          .COUT(n3911), .S0(n940), .S1(n939));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_28.INIT0 = 16'h5aaa;
    defparam add_154_28.INIT1 = 16'h5aaa;
    defparam add_154_28.INJECT1_0 = "NO";
    defparam add_154_28.INJECT1_1 = "NO";
    CCU2D add_154_26 (.A0(cur1[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3909), 
          .COUT(n3910), .S0(n942), .S1(n941));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_26.INIT0 = 16'h5aaa;
    defparam add_154_26.INIT1 = 16'h5aaa;
    defparam add_154_26.INJECT1_0 = "NO";
    defparam add_154_26.INJECT1_1 = "NO";
    IB supin_pad (.I(supin), .O(supin_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[16:21])
    FD1P3AX clr_188 (.D(clr_N_507), .SP(clk_c_enable_2), .CK(clk_c), .Q(clr)) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam clr_188.GSR = "DISABLED";
    CCU2D add_154_24 (.A0(cur1[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3908), 
          .COUT(n3909), .S0(n944), .S1(n943));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_24.INIT0 = 16'h5aaa;
    defparam add_154_24.INIT1 = 16'h5aaa;
    defparam add_154_24.INJECT1_0 = "NO";
    defparam add_154_24.INJECT1_1 = "NO";
    CCU2D add_154_22 (.A0(cur1[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3907), 
          .COUT(n3908), .S0(n946), .S1(n945));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_22.INIT0 = 16'h5aaa;
    defparam add_154_22.INIT1 = 16'h5aaa;
    defparam add_154_22.INJECT1_0 = "NO";
    defparam add_154_22.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_5 (.A0(n1049), .B0(cur1[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n1048), .B1(cur1[7]), .C1(GND_net), .D1(GND_net), .CIN(n3928), 
          .COUT(n3929));
    defparam sub_330_add_2_5.INIT0 = 16'h5999;
    defparam sub_330_add_2_5.INIT1 = 16'h5999;
    defparam sub_330_add_2_5.INJECT1_0 = "NO";
    defparam sub_330_add_2_5.INJECT1_1 = "NO";
    LUT4 i1476_4_lut (.A(n293_N_253[0]), .B(n293_N_253[5]), .C(n293_N_253[3]), 
         .D(n293_N_253[11]), .Z(n4206)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1476_4_lut.init = 16'h8000;
    CCU2D cur2_419_add_4_31 (.A0(n2549), .B0(cur2[29]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[30]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4035), .COUT(n4036), .S0(n136_adj_3), .S1(n135_adj_2));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_31.INIT0 = 16'h5666;
    defparam cur2_419_add_4_31.INIT1 = 16'h5666;
    defparam cur2_419_add_4_31.INJECT1_0 = "NO";
    defparam cur2_419_add_4_31.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_3 (.A0(n1051), .B0(cur1[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n1050), .B1(cur1[5]), .C1(GND_net), .D1(GND_net), .CIN(n3927), 
          .COUT(n3928));
    defparam sub_330_add_2_3.INIT0 = 16'h5999;
    defparam sub_330_add_2_3.INIT1 = 16'h5999;
    defparam sub_330_add_2_3.INJECT1_0 = "NO";
    defparam sub_330_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1052), .B1(cur1[3]), .C1(GND_net), .D1(GND_net), .COUT(n3927));
    defparam sub_330_add_2_1.INIT0 = 16'h0000;
    defparam sub_330_add_2_1.INIT1 = 16'h5999;
    defparam sub_330_add_2_1.INJECT1_0 = "NO";
    defparam sub_330_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3926), .S0(n2584));
    defparam sub_336_add_2_cout.INIT0 = 16'h0000;
    defparam sub_336_add_2_cout.INIT1 = 16'h0000;
    defparam sub_336_add_2_cout.INJECT1_0 = "NO";
    defparam sub_336_add_2_cout.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_29 (.A0(n2549), .B0(cur2[27]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[28]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4034), .COUT(n4035), .S0(n138_adj_5), .S1(n137_adj_4));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_29.INIT0 = 16'h5666;
    defparam cur2_419_add_4_29.INIT1 = 16'h5666;
    defparam cur2_419_add_4_29.INJECT1_0 = "NO";
    defparam cur2_419_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_21 (.A0(n1033), .B0(cur1[22]), .C0(GND_net), .D0(GND_net), 
          .A1(n1032), .B1(cur1[23]), .C1(GND_net), .D1(GND_net), .CIN(n3936), 
          .COUT(n3937));
    defparam sub_330_add_2_21.INIT0 = 16'h5999;
    defparam sub_330_add_2_21.INIT1 = 16'h5999;
    defparam sub_330_add_2_21.INJECT1_0 = "NO";
    defparam sub_330_add_2_21.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_27 (.A0(n2549), .B0(cur2[25]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[26]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4033), .COUT(n4034), .S0(n140_adj_7), .S1(n139_adj_6));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_27.INIT0 = 16'h5666;
    defparam cur2_419_add_4_27.INIT1 = 16'h5666;
    defparam cur2_419_add_4_27.INJECT1_0 = "NO";
    defparam cur2_419_add_4_27.INJECT1_1 = "NO";
    FD1P3IX LIGHT_CTL_i2 (.D(n4156), .SP(clk_c_enable_4), .CD(clr), .CK(clk_c), 
            .Q(LIGHT_CTL[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam LIGHT_CTL_i2.GSR = "DISABLED";
    FD1P3IX LIGHT_CTL_i7 (.D(n4173), .SP(clk_c_enable_4), .CD(clr), .CK(clk_c), 
            .Q(LIGHT_CTL[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam LIGHT_CTL_i7.GSR = "DISABLED";
    FD1P3AX T_i6 (.D(T_31__N_33[6]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i6.GSR = "DISABLED";
    CCU2D cur2_419_add_4_25 (.A0(n2549), .B0(cur2[23]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[24]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4032), .COUT(n4033), .S0(n142_adj_9), .S1(n141_adj_8));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_25.INIT0 = 16'h5666;
    defparam cur2_419_add_4_25.INIT1 = 16'h5666;
    defparam cur2_419_add_4_25.INJECT1_0 = "NO";
    defparam cur2_419_add_4_25.INJECT1_1 = "NO";
    FD1P3AY T_i8 (.D(T_31__N_33[8]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[8])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i8.GSR = "DISABLED";
    LUT4 i1085_4_lut (.A(n300), .B(n299), .C(n3530), .D(n301), .Z(n3608)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1085_4_lut.init = 16'hccc8;
    FD1P3AX T_i10 (.D(T_31__N_33[10]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i10.GSR = "DISABLED";
    FD1P3AY T_i11 (.D(T_31__N_33[11]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[11])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i11.GSR = "DISABLED";
    FD1P3AY T_i12 (.D(T_31__N_33[12]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[12])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i12.GSR = "DISABLED";
    FD1P3AX T_i14 (.D(T_31__N_33[14]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i14.GSR = "DISABLED";
    FD1P3AX T_i15 (.D(T_31__N_33[15]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i15.GSR = "DISABLED";
    FD1P3AY T_i18 (.D(T_31__N_33[18]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[18])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i18.GSR = "DISABLED";
    FD1P3AX T_i19 (.D(T_31__N_33[19]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i19.GSR = "DISABLED";
    FD1P3AY T_i20 (.D(T_31__N_33[20]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[20])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i20.GSR = "DISABLED";
    FD1P3AY T_i21 (.D(T_31__N_33[21]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[21])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i21.GSR = "DISABLED";
    FD1P3AY T_i23 (.D(T_31__N_33[23]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[23])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i23.GSR = "DISABLED";
    FD1P3AX T_i24 (.D(T_31__N_33[24]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i24.GSR = "DISABLED";
    FD1P3AX T_i25 (.D(T_31__N_33[25]), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(T[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i25.GSR = "DISABLED";
    LUT4 i1007_2_lut (.A(n303), .B(n302), .Z(n3530)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1007_2_lut.init = 16'h8888;
    FD1S3IX cnt_clk_420__i17 (.D(n148), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i17.GSR = "DISABLED";
    CCU2D cur2_419_add_4_23 (.A0(n2549), .B0(cur2[21]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[22]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4031), .COUT(n4032), .S0(n144_adj_11), .S1(n143_adj_10));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_23.INIT0 = 16'h5666;
    defparam cur2_419_add_4_23.INIT1 = 16'h5666;
    defparam cur2_419_add_4_23.INJECT1_0 = "NO";
    defparam cur2_419_add_4_23.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i16 (.D(n149), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i16.GSR = "DISABLED";
    CCU2D sub_330_add_2_19 (.A0(n1035), .B0(cur1[20]), .C0(GND_net), .D0(GND_net), 
          .A1(n1034), .B1(cur1[21]), .C1(GND_net), .D1(GND_net), .CIN(n3935), 
          .COUT(n3936));
    defparam sub_330_add_2_19.INIT0 = 16'h5999;
    defparam sub_330_add_2_19.INIT1 = 16'h5999;
    defparam sub_330_add_2_19.INJECT1_0 = "NO";
    defparam sub_330_add_2_19.INJECT1_1 = "NO";
    FD1S3DX COUNT1_i3 (.D(COUNT1_17__N_290[3]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[3]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i3.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i15 (.D(n150), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i15.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i14 (.D(n151), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i14.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i13 (.D(n152), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i13.GSR = "DISABLED";
    CCU2D cur2_419_add_4_21 (.A0(n2549), .B0(cur2[19]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[20]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4030), .COUT(n4031), .S0(n146_adj_13), .S1(n145_adj_12));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_21.INIT0 = 16'h5666;
    defparam cur2_419_add_4_21.INIT1 = 16'h5666;
    defparam cur2_419_add_4_21.INJECT1_0 = "NO";
    defparam cur2_419_add_4_21.INJECT1_1 = "NO";
    LUT4 i1444_2_lut (.A(n293_N_253[4]), .B(n293_N_253[15]), .Z(n4174)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1444_2_lut.init = 16'h8888;
    CCU2D sub_330_add_2_29 (.A0(n1025), .B0(cur1[30]), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[31]), .B1(n1024), .C1(GND_net), .D1(GND_net), .CIN(n3940), 
          .COUT(n3941));
    defparam sub_330_add_2_29.INIT0 = 16'h5999;
    defparam sub_330_add_2_29.INIT1 = 16'h5999;
    defparam sub_330_add_2_29.INJECT1_0 = "NO";
    defparam sub_330_add_2_29.INJECT1_1 = "NO";
    CCU2D add_1315_2 (.A0(T[7]), .B0(T[6]), .C0(GND_net), .D0(GND_net), 
          .A1(T[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3993));
    defparam add_1315_2.INIT0 = 16'h1000;
    defparam add_1315_2.INIT1 = 16'h5555;
    defparam add_1315_2.INJECT1_0 = "NO";
    defparam add_1315_2.INJECT1_1 = "NO";
    CCU2D add_67_3 (.A0(n309), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n308), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3879), 
          .COUT(n3880), .S0(n293_N_253[1]), .S1(n293_N_253[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_3.INIT0 = 16'h5aaa;
    defparam add_67_3.INIT1 = 16'h5aaa;
    defparam add_67_3.INJECT1_0 = "NO";
    defparam add_67_3.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_19 (.A0(n2549), .B0(cur2[17]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[18]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4029), .COUT(n4030), .S0(n148_adj_15), .S1(n147_adj_14));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_19.INIT0 = 16'h5666;
    defparam cur2_419_add_4_19.INIT1 = 16'h5666;
    defparam cur2_419_add_4_19.INJECT1_0 = "NO";
    defparam cur2_419_add_4_19.INJECT1_1 = "NO";
    CCU2D add_1315_6 (.A0(T[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3994), 
          .COUT(n3995));
    defparam add_1315_6.INIT0 = 16'h5555;
    defparam add_1315_6.INIT1 = 16'h5555;
    defparam add_1315_6.INJECT1_0 = "NO";
    defparam add_1315_6.INJECT1_1 = "NO";
    FD1P3JX LIGHT_CTL_i0 (.D(LIGHT_CTL_31__N_309[0]), .SP(clk_c_enable_19), 
            .PD(clr), .CK(clk_c), .Q(LIGHT_CTL[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam LIGHT_CTL_i0.GSR = "DISABLED";
    CCU2D add_723_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3992), 
          .S0(n3162));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_723_cout.INIT0 = 16'h0000;
    defparam add_723_cout.INIT1 = 16'h0000;
    defparam add_723_cout.INJECT1_0 = "NO";
    defparam add_723_cout.INJECT1_1 = "NO";
    CCU2D add_723_8 (.A0(LIGHT_CTL[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(LIGHT_CTL[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3991), .COUT(n3992));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_723_8.INIT0 = 16'h5aaa;
    defparam add_723_8.INIT1 = 16'h5aaa;
    defparam add_723_8.INJECT1_0 = "NO";
    defparam add_723_8.INJECT1_1 = "NO";
    CCU2D add_723_6 (.A0(LIGHT_CTL[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3990), 
          .COUT(n3991), .S0(n3157), .S1(n3156));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_723_6.INIT0 = 16'h5aaa;
    defparam add_723_6.INIT1 = 16'hf000;
    defparam add_723_6.INJECT1_0 = "NO";
    defparam add_723_6.INJECT1_1 = "NO";
    CCU2D add_723_4 (.A0(LIGHT_CTL[2]), .B0(LIGHT_CTL[7]), .C0(GND_net), 
          .D0(GND_net), .A1(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3989), .COUT(n3990), .S0(n3159), .S1(n3158));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_723_4.INIT0 = 16'h5666;
    defparam add_723_4.INIT1 = 16'h5666;
    defparam add_723_4.INJECT1_0 = "NO";
    defparam add_723_4.INJECT1_1 = "NO";
    CCU2D add_723_2 (.A0(LIGHT_CTL[0]), .B0(LIGHT_CTL[2]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3989), .S1(n3160));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_723_2.INIT0 = 16'h7000;
    defparam add_723_2.INIT1 = 16'hf000;
    defparam add_723_2.INJECT1_0 = "NO";
    defparam add_723_2.INJECT1_1 = "NO";
    CCU2D add_67_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3681), .B1(n4054), .C1(n310), .D1(GND_net), .COUT(n3879), 
          .S1(n293_N_253[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_1.INIT0 = 16'hF000;
    defparam add_67_1.INIT1 = 16'h8787;
    defparam add_67_1.INJECT1_0 = "NO";
    defparam add_67_1.INJECT1_1 = "NO";
    CCU2D add_37_19 (.A0(n190), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3878), 
          .S0(n190_N_216[17]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_19.INIT0 = 16'h5aaa;
    defparam add_37_19.INIT1 = 16'h0000;
    defparam add_37_19.INJECT1_0 = "NO";
    defparam add_37_19.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i12 (.D(n153), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i12.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i11 (.D(n154), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i11.GSR = "DISABLED";
    CCU2D add_37_17 (.A0(n192), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n191), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3877), 
          .COUT(n3878), .S0(n190_N_216[15]), .S1(n190_N_216[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_17.INIT0 = 16'h5aaa;
    defparam add_37_17.INIT1 = 16'h5aaa;
    defparam add_37_17.INJECT1_0 = "NO";
    defparam add_37_17.INJECT1_1 = "NO";
    CCU2D add_37_15 (.A0(n194), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n193), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3876), 
          .COUT(n3877), .S0(n190_N_216[13]), .S1(n190_N_216[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_15.INIT0 = 16'h5aaa;
    defparam add_37_15.INIT1 = 16'h5aaa;
    defparam add_37_15.INJECT1_0 = "NO";
    defparam add_37_15.INJECT1_1 = "NO";
    CCU2D add_37_13 (.A0(n196), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n195), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3875), 
          .COUT(n3876), .S0(n190_N_216[11]), .S1(n190_N_216[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_13.INIT0 = 16'h5aaa;
    defparam add_37_13.INIT1 = 16'h5aaa;
    defparam add_37_13.INJECT1_0 = "NO";
    defparam add_37_13.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i10 (.D(n155), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i10.GSR = "DISABLED";
    CCU2D add_37_11 (.A0(n198), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n197), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3874), 
          .COUT(n3875), .S0(n190_N_216[9]), .S1(n190_N_216[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_11.INIT0 = 16'h5aaa;
    defparam add_37_11.INIT1 = 16'h5aaa;
    defparam add_37_11.INJECT1_0 = "NO";
    defparam add_37_11.INJECT1_1 = "NO";
    CCU2D add_37_9 (.A0(n200), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n199), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3873), 
          .COUT(n3874), .S0(n190_N_216[7]), .S1(n190_N_216[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_9.INIT0 = 16'h5aaa;
    defparam add_37_9.INIT1 = 16'h5aaa;
    defparam add_37_9.INJECT1_0 = "NO";
    defparam add_37_9.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i9 (.D(n156), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i9.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i8 (.D(n157), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i8.GSR = "DISABLED";
    CCU2D add_154_20 (.A0(cur1[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3906), 
          .COUT(n3907), .S0(n948), .S1(n947));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_20.INIT0 = 16'h5aaa;
    defparam add_154_20.INIT1 = 16'h5aaa;
    defparam add_154_20.INJECT1_0 = "NO";
    defparam add_154_20.INJECT1_1 = "NO";
    CCU2D add_154_18 (.A0(cur1[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3905), 
          .COUT(n3906), .S0(n950), .S1(n949));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_18.INIT0 = 16'h5aaa;
    defparam add_154_18.INIT1 = 16'h5aaa;
    defparam add_154_18.INJECT1_0 = "NO";
    defparam add_154_18.INJECT1_1 = "NO";
    CCU2D add_154_16 (.A0(cur1[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3904), 
          .COUT(n3905), .S0(n952), .S1(n951));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_16.INIT0 = 16'h5aaa;
    defparam add_154_16.INIT1 = 16'h5aaa;
    defparam add_154_16.INJECT1_0 = "NO";
    defparam add_154_16.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i7 (.D(n158), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i7.GSR = "DISABLED";
    CCU2D add_154_14 (.A0(cur1[15]), .B0(n3221), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[16]), .B1(n3231), .C1(GND_net), .D1(GND_net), .CIN(n3903), 
          .COUT(n3904), .S0(n954), .S1(n953));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_14.INIT0 = 16'h5666;
    defparam add_154_14.INIT1 = 16'h5666;
    defparam add_154_14.INJECT1_0 = "NO";
    defparam add_154_14.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i6 (.D(n159), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i6.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i5 (.D(n160), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i5.GSR = "DISABLED";
    CCU2D add_154_12 (.A0(cur1[13]), .B0(n3223), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[14]), .B1(n3222), .C1(GND_net), .D1(GND_net), .CIN(n3902), 
          .COUT(n3903), .S0(n956), .S1(n955));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_12.INIT0 = 16'h5666;
    defparam add_154_12.INIT1 = 16'h5666;
    defparam add_154_12.INJECT1_0 = "NO";
    defparam add_154_12.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i4 (.D(n161), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i4.GSR = "DISABLED";
    CCU2D add_154_10 (.A0(cur1[11]), .B0(n3225), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[12]), .B1(n3224), .C1(GND_net), .D1(GND_net), .CIN(n3901), 
          .COUT(n3902), .S0(n958), .S1(n957));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_10.INIT0 = 16'h5666;
    defparam add_154_10.INIT1 = 16'h5666;
    defparam add_154_10.INJECT1_0 = "NO";
    defparam add_154_10.INJECT1_1 = "NO";
    CCU2D add_154_8 (.A0(cur1[9]), .B0(n3227), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[10]), .B1(n3226), .C1(GND_net), .D1(GND_net), .CIN(n3900), 
          .COUT(n3901), .S0(n960), .S1(n959));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_8.INIT0 = 16'h5666;
    defparam add_154_8.INIT1 = 16'h5666;
    defparam add_154_8.INJECT1_0 = "NO";
    defparam add_154_8.INJECT1_1 = "NO";
    CCU2D add_154_6 (.A0(cur1[7]), .B0(n3229), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[8]), .B1(n3228), .C1(GND_net), .D1(GND_net), .CIN(n3899), 
          .COUT(n3900), .S0(n962), .S1(n961));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_6.INIT0 = 16'h5666;
    defparam add_154_6.INIT1 = 16'h5666;
    defparam add_154_6.INJECT1_0 = "NO";
    defparam add_154_6.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_29 (.A0(cur2[30]), .B0(cur1[30]), .C0(GND_net), 
          .D0(GND_net), .A1(cur1[31]), .B1(cur2[31]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3925), .COUT(n3926));
    defparam sub_336_add_2_29.INIT0 = 16'h5999;
    defparam sub_336_add_2_29.INIT1 = 16'h5999;
    defparam sub_336_add_2_29.INJECT1_0 = "NO";
    defparam sub_336_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_27 (.A0(cur2[28]), .B0(cur1[28]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[29]), .B1(cur1[29]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3924), .COUT(n3925));
    defparam sub_336_add_2_27.INIT0 = 16'h5999;
    defparam sub_336_add_2_27.INIT1 = 16'h5999;
    defparam sub_336_add_2_27.INJECT1_0 = "NO";
    defparam sub_336_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_25 (.A0(cur2[26]), .B0(cur1[26]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[27]), .B1(cur1[27]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3923), .COUT(n3924));
    defparam sub_336_add_2_25.INIT0 = 16'h5999;
    defparam sub_336_add_2_25.INIT1 = 16'h5999;
    defparam sub_336_add_2_25.INJECT1_0 = "NO";
    defparam sub_336_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_23 (.A0(cur2[24]), .B0(cur1[24]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[25]), .B1(cur1[25]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3922), .COUT(n3923));
    defparam sub_336_add_2_23.INIT0 = 16'h5999;
    defparam sub_336_add_2_23.INIT1 = 16'h5999;
    defparam sub_336_add_2_23.INJECT1_0 = "NO";
    defparam sub_336_add_2_23.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(n293_N_253[7]), .B(n293_N_253[16]), .C(n293_N_253[9]), 
         .D(n293_N_253[14]), .Z(n28)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i10_4_lut.init = 16'hfffb;
    CCU2D sub_330_add_2_17 (.A0(n1037), .B0(cur1[18]), .C0(GND_net), .D0(GND_net), 
          .A1(n1036), .B1(cur1[19]), .C1(GND_net), .D1(GND_net), .CIN(n3934), 
          .COUT(n3935));
    defparam sub_330_add_2_17.INIT0 = 16'h5999;
    defparam sub_330_add_2_17.INIT1 = 16'h5999;
    defparam sub_330_add_2_17.INJECT1_0 = "NO";
    defparam sub_330_add_2_17.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i3 (.D(n162), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i3.GSR = "DISABLED";
    CCU2D sub_330_add_2_15 (.A0(n1039), .B0(cur1[16]), .C0(GND_net), .D0(GND_net), 
          .A1(n1038), .B1(cur1[17]), .C1(GND_net), .D1(GND_net), .CIN(n3933), 
          .COUT(n3934));
    defparam sub_330_add_2_15.INIT0 = 16'h5999;
    defparam sub_330_add_2_15.INIT1 = 16'h5999;
    defparam sub_330_add_2_15.INJECT1_0 = "NO";
    defparam sub_330_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_27 (.A0(n1027), .B0(cur1[28]), .C0(GND_net), .D0(GND_net), 
          .A1(n1026), .B1(cur1[29]), .C1(GND_net), .D1(GND_net), .CIN(n3939), 
          .COUT(n3940));
    defparam sub_330_add_2_27.INIT0 = 16'h5999;
    defparam sub_330_add_2_27.INIT1 = 16'h5999;
    defparam sub_330_add_2_27.INJECT1_0 = "NO";
    defparam sub_330_add_2_27.INJECT1_1 = "NO";
    CCU2D add_728_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3987), 
          .S0(n3231));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_728_cout.INIT0 = 16'h0000;
    defparam add_728_cout.INIT1 = 16'h0000;
    defparam add_728_cout.INJECT1_0 = "NO";
    defparam add_728_cout.INJECT1_1 = "NO";
    CCU2D add_728_10 (.A0(LIGHT_CTL[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3162), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3986), 
          .COUT(n3987), .S0(n3222), .S1(n3221));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_728_10.INIT0 = 16'h5aaa;
    defparam add_728_10.INIT1 = 16'h5aaa;
    defparam add_728_10.INJECT1_0 = "NO";
    defparam add_728_10.INJECT1_1 = "NO";
    CCU2D add_728_8 (.A0(n3156), .B0(LIGHT_CTL[7]), .C0(GND_net), .D0(GND_net), 
          .A1(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3985), .COUT(n3986), .S0(n3224), .S1(n3223));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_728_8.INIT0 = 16'h5666;
    defparam add_728_8.INIT1 = 16'h5666;
    defparam add_728_8.INJECT1_0 = "NO";
    defparam add_728_8.INJECT1_1 = "NO";
    CCU2D add_728_6 (.A0(n3158), .B0(LIGHT_CTL[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n3157), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3984), 
          .COUT(n3985), .S0(n3226), .S1(n3225));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_728_6.INIT0 = 16'h5666;
    defparam add_728_6.INIT1 = 16'h5aaa;
    defparam add_728_6.INJECT1_0 = "NO";
    defparam add_728_6.INJECT1_1 = "NO";
    CCU2D add_728_4 (.A0(n3160), .B0(LIGHT_CTL[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n3159), .B1(LIGHT_CTL[7]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3983), .COUT(n3984), .S0(n3228), .S1(n3227));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_728_4.INIT0 = 16'h5666;
    defparam add_728_4.INIT1 = 16'h5666;
    defparam add_728_4.INJECT1_0 = "NO";
    defparam add_728_4.INJECT1_1 = "NO";
    CCU2D add_728_2 (.A0(LIGHT_CTL[7]), .B0(LIGHT_CTL[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n3161), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n3983), .S1(n3229));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[19:22])
    defparam add_728_2.INIT0 = 16'h7000;
    defparam add_728_2.INIT1 = 16'h5aaa;
    defparam add_728_2.INJECT1_0 = "NO";
    defparam add_728_2.INJECT1_1 = "NO";
    CCU2D add_37_7 (.A0(n202), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n201), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3872), 
          .COUT(n3873), .S0(n190_N_216[5]), .S1(n190_N_216[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_7.INIT0 = 16'h5aaa;
    defparam add_37_7.INIT1 = 16'h5aaa;
    defparam add_37_7.INJECT1_0 = "NO";
    defparam add_37_7.INJECT1_1 = "NO";
    CCU2D add_37_5 (.A0(n204), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n203), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3871), 
          .COUT(n3872), .S0(n190_N_216[3]), .S1(n190_N_216[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_5.INIT0 = 16'h5aaa;
    defparam add_37_5.INIT1 = 16'h5aaa;
    defparam add_37_5.INJECT1_0 = "NO";
    defparam add_37_5.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i2 (.D(n163), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i2.GSR = "DISABLED";
    CCU2D add_37_3 (.A0(n206), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n205), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3870), 
          .COUT(n3871), .S0(n190_N_216[1]), .S1(n190_N_216[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_3.INIT0 = 16'h5aaa;
    defparam add_37_3.INIT1 = 16'h5aaa;
    defparam add_37_3.INJECT1_0 = "NO";
    defparam add_37_3.INJECT1_1 = "NO";
    CCU2D add_37_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3669), .B1(n4053), .C1(n207), .D1(GND_net), .COUT(n3870), 
          .S1(n190_N_216[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[35:41])
    defparam add_37_1.INIT0 = 16'hF000;
    defparam add_37_1.INIT1 = 16'h8787;
    defparam add_37_1.INJECT1_0 = "NO";
    defparam add_37_1.INJECT1_1 = "NO";
    CCU2D add_8_19 (.A0(n87), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3869), 
          .S0(n87_N_179[17]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_19.INIT0 = 16'h5aaa;
    defparam add_8_19.INIT1 = 16'h0000;
    defparam add_8_19.INJECT1_0 = "NO";
    defparam add_8_19.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i1 (.D(n164), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i1.GSR = "DISABLED";
    CCU2D add_8_17 (.A0(n89), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n88), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3868), 
          .COUT(n3869), .S0(n87_N_179[15]), .S1(n87_N_179[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_17.INIT0 = 16'h5aaa;
    defparam add_8_17.INIT1 = 16'h5aaa;
    defparam add_8_17.INJECT1_0 = "NO";
    defparam add_8_17.INJECT1_1 = "NO";
    CCU2D add_8_15 (.A0(n91), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n90), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3867), 
          .COUT(n3868), .S0(n87_N_179[13]), .S1(n87_N_179[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_15.INIT0 = 16'h5aaa;
    defparam add_8_15.INIT1 = 16'h5aaa;
    defparam add_8_15.INJECT1_0 = "NO";
    defparam add_8_15.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_17 (.A0(n2549), .B0(cur2[15]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[16]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4028), .COUT(n4029), .S0(n150_adj_17), .S1(n149_adj_16));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_17.INIT0 = 16'h5666;
    defparam cur2_419_add_4_17.INIT1 = 16'h5666;
    defparam cur2_419_add_4_17.INJECT1_0 = "NO";
    defparam cur2_419_add_4_17.INJECT1_1 = "NO";
    CCU2D add_154_4 (.A0(cur1[5]), .B0(LIGHT_CTL[2]), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[6]), .B1(n3230), .C1(GND_net), .D1(GND_net), .CIN(n3898), 
          .COUT(n3899), .S0(n964), .S1(n963));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_4.INIT0 = 16'h5666;
    defparam add_154_4.INIT1 = 16'h5666;
    defparam add_154_4.INJECT1_0 = "NO";
    defparam add_154_4.INJECT1_1 = "NO";
    CCU2D add_154_2 (.A0(cur1[3]), .B0(LIGHT_CTL[0]), .C0(GND_net), .D0(GND_net), 
          .A1(cur1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n3898), 
          .S1(n965));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(133[14:18])
    defparam add_154_2.INIT0 = 16'h7000;
    defparam add_154_2.INIT1 = 16'h5aaa;
    defparam add_154_2.INJECT1_0 = "NO";
    defparam add_154_2.INJECT1_1 = "NO";
    FD1S3DX COUNT1_i2 (.D(COUNT1_17__N_290[2]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i2.GSR = "DISABLED";
    CCU2D add_97_19 (.A0(COUNT1[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3896), 
          .S0(COUNT1_17__N_290[17]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_19.INIT0 = 16'h5aaa;
    defparam add_97_19.INIT1 = 16'h0000;
    defparam add_97_19.INJECT1_0 = "NO";
    defparam add_97_19.INJECT1_1 = "NO";
    CCU2D add_97_17 (.A0(COUNT1[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3895), .COUT(n3896), .S0(COUNT1_17__N_290[15]), .S1(COUNT1_17__N_290[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_17.INIT0 = 16'h5aaa;
    defparam add_97_17.INIT1 = 16'h5aaa;
    defparam add_97_17.INJECT1_0 = "NO";
    defparam add_97_17.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_13 (.A0(n2549), .B0(cur2[11]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4026), .COUT(n4027), .S0(n154_adj_21), .S1(n153_adj_20));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_13.INIT0 = 16'h5666;
    defparam cur2_419_add_4_13.INIT1 = 16'h5666;
    defparam cur2_419_add_4_13.INJECT1_0 = "NO";
    defparam cur2_419_add_4_13.INJECT1_1 = "NO";
    FD1S3DX COUNT1_i1 (.D(COUNT1_17__N_290[1]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[1]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i1.GSR = "DISABLED";
    CCU2D cur2_419_add_4_9 (.A0(n2549), .B0(cur2[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n2549), .B1(cur2[8]), .C1(GND_net), .D1(GND_net), .CIN(n4024), 
          .COUT(n4025), .S0(n158_adj_25), .S1(n157_adj_24));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_9.INIT0 = 16'h5666;
    defparam cur2_419_add_4_9.INIT1 = 16'h5666;
    defparam cur2_419_add_4_9.INJECT1_0 = "NO";
    defparam cur2_419_add_4_9.INJECT1_1 = "NO";
    FD1S3DX COUNT1_102_i17 (.D(n293_N_253[17]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n293));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i17.GSR = "DISABLED";
    FD1S3IX cur1__i31 (.D(n938), .CK(clk_c), .CD(n1844), .Q(cur1[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i31.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(n293), .B(n294), .C(n295), .Z(n4054)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[8:21])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D add_97_15 (.A0(COUNT1[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3894), .COUT(n3895), .S0(COUNT1_17__N_290[13]), .S1(COUNT1_17__N_290[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_15.INIT0 = 16'h5aaa;
    defparam add_97_15.INIT1 = 16'h5aaa;
    defparam add_97_15.INJECT1_0 = "NO";
    defparam add_97_15.INJECT1_1 = "NO";
    CCU2D add_97_13 (.A0(COUNT1[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3893), .COUT(n3894), .S0(COUNT1_17__N_290[11]), .S1(COUNT1_17__N_290[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_13.INIT0 = 16'h5aaa;
    defparam add_97_13.INIT1 = 16'h5aaa;
    defparam add_97_13.INJECT1_0 = "NO";
    defparam add_97_13.INJECT1_1 = "NO";
    CCU2D add_97_11 (.A0(COUNT1[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3892), .COUT(n3893), .S0(COUNT1_17__N_290[9]), .S1(COUNT1_17__N_290[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_11.INIT0 = 16'h5aaa;
    defparam add_97_11.INIT1 = 16'h5aaa;
    defparam add_97_11.INJECT1_0 = "NO";
    defparam add_97_11.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_21 (.A0(cur2[22]), .B0(cur1[22]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[23]), .B1(cur1[23]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3921), .COUT(n3922));
    defparam sub_336_add_2_21.INIT0 = 16'h5999;
    defparam sub_336_add_2_21.INIT1 = 16'h5999;
    defparam sub_336_add_2_21.INJECT1_0 = "NO";
    defparam sub_336_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_19 (.A0(cur2[20]), .B0(cur1[20]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[21]), .B1(cur1[21]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3920), .COUT(n3921));
    defparam sub_336_add_2_19.INIT0 = 16'h5999;
    defparam sub_336_add_2_19.INIT1 = 16'h5999;
    defparam sub_336_add_2_19.INJECT1_0 = "NO";
    defparam sub_336_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_17 (.A0(cur2[18]), .B0(cur1[18]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[19]), .B1(cur1[19]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3919), .COUT(n3920));
    defparam sub_336_add_2_17.INIT0 = 16'h5999;
    defparam sub_336_add_2_17.INIT1 = 16'h5999;
    defparam sub_336_add_2_17.INJECT1_0 = "NO";
    defparam sub_336_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_15 (.A0(cur2[16]), .B0(cur1[16]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[17]), .B1(cur1[17]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3918), .COUT(n3919));
    defparam sub_336_add_2_15.INIT0 = 16'h5999;
    defparam sub_336_add_2_15.INIT1 = 16'h5999;
    defparam sub_336_add_2_15.INJECT1_0 = "NO";
    defparam sub_336_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_13 (.A0(n1041), .B0(cur1[14]), .C0(GND_net), .D0(GND_net), 
          .A1(n1040), .B1(cur1[15]), .C1(GND_net), .D1(GND_net), .CIN(n3932), 
          .COUT(n3933));
    defparam sub_330_add_2_13.INIT0 = 16'h5999;
    defparam sub_330_add_2_13.INIT1 = 16'h5999;
    defparam sub_330_add_2_13.INJECT1_0 = "NO";
    defparam sub_330_add_2_13.INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(n293_N_253[10]), .B(n293_N_253[12]), .Z(n21)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.init = 16'heeee;
    CCU2D sub_330_add_2_11 (.A0(n1043), .B0(cur1[12]), .C0(GND_net), .D0(GND_net), 
          .A1(n1042), .B1(cur1[13]), .C1(GND_net), .D1(GND_net), .CIN(n3931), 
          .COUT(n3932));
    defparam sub_330_add_2_11.INIT0 = 16'h5999;
    defparam sub_330_add_2_11.INIT1 = 16'h5999;
    defparam sub_330_add_2_11.INJECT1_0 = "NO";
    defparam sub_330_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_25 (.A0(n1029), .B0(cur1[26]), .C0(GND_net), .D0(GND_net), 
          .A1(n1028), .B1(cur1[27]), .C1(GND_net), .D1(GND_net), .CIN(n3938), 
          .COUT(n3939));
    defparam sub_330_add_2_25.INIT0 = 16'h5999;
    defparam sub_330_add_2_25.INIT1 = 16'h5999;
    defparam sub_330_add_2_25.INJECT1_0 = "NO";
    defparam sub_330_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_332_add_2_27 (.A0(T[31]), .B0(cnt_clk[31]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3981), .S1(cnt_clk_31__N_437));
    defparam sub_332_add_2_27.INIT0 = 16'h5999;
    defparam sub_332_add_2_27.INIT1 = 16'h0000;
    defparam sub_332_add_2_27.INJECT1_0 = "NO";
    defparam sub_332_add_2_27.INJECT1_1 = "NO";
    LUT4 i1319_2_lut (.A(LIGHT_CTL[0]), .B(LIGHT_CTL[2]), .Z(n3161)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1319_2_lut.init = 16'h6666;
    LUT4 i1146_4_lut (.A(n3613), .B(n193), .C(n194), .D(n195), .Z(n3669)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1146_4_lut.init = 16'hfcec;
    LUT4 i1090_4_lut (.A(n197), .B(n196), .C(n3554), .D(n198), .Z(n3613)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1090_4_lut.init = 16'hccc8;
    LUT4 i1031_2_lut (.A(n200), .B(n199), .Z(n3554)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1031_2_lut.init = 16'h8888;
    CCU2D cur2_419_add_4_7 (.A0(n2549), .B0(cur2[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n2549), .B1(cur2[6]), .C1(GND_net), .D1(GND_net), .CIN(n4023), 
          .COUT(n4024), .S0(n160_adj_27), .S1(n159_adj_26));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_7.INIT0 = 16'h5666;
    defparam cur2_419_add_4_7.INIT1 = 16'h5666;
    defparam cur2_419_add_4_7.INJECT1_0 = "NO";
    defparam cur2_419_add_4_7.INJECT1_1 = "NO";
    CCU2D sub_332_add_2_25 (.A0(cnt_clk[29]), .B0(T[29]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[30]), .B1(T[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3980), .COUT(n3981));
    defparam sub_332_add_2_25.INIT0 = 16'h5999;
    defparam sub_332_add_2_25.INIT1 = 16'h5999;
    defparam sub_332_add_2_25.INJECT1_0 = "NO";
    defparam sub_332_add_2_25.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_15 (.A0(n2549), .B0(cur2[13]), .C0(GND_net), 
          .D0(GND_net), .A1(n2549), .B1(cur2[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n4027), .COUT(n4028), .S0(n152_adj_19), .S1(n151_adj_18));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_15.INIT0 = 16'h5666;
    defparam cur2_419_add_4_15.INIT1 = 16'h5666;
    defparam cur2_419_add_4_15.INJECT1_0 = "NO";
    defparam cur2_419_add_4_15.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_5 (.A0(n2549), .B0(cur2[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n2549), .B1(cur2[4]), .C1(GND_net), .D1(GND_net), .CIN(n4022), 
          .COUT(n4023), .S0(n162_adj_29), .S1(n161_adj_28));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_5.INIT0 = 16'h5666;
    defparam cur2_419_add_4_5.INIT1 = 16'h5666;
    defparam cur2_419_add_4_5.INJECT1_0 = "NO";
    defparam cur2_419_add_4_5.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_3 (.A0(n2549), .B0(cur2[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n2549), .B1(cur2[2]), .C1(GND_net), .D1(GND_net), .CIN(n4021), 
          .COUT(n4022), .S0(n164_adj_31), .S1(n163_adj_30));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_3.INIT0 = 16'h5666;
    defparam cur2_419_add_4_3.INIT1 = 16'h5666;
    defparam cur2_419_add_4_3.INJECT1_0 = "NO";
    defparam cur2_419_add_4_3.INJECT1_1 = "NO";
    CCU2D cur2_419_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n4021), .S1(n165_adj_32));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419_add_4_1.INIT0 = 16'hF000;
    defparam cur2_419_add_4_1.INIT1 = 16'h0555;
    defparam cur2_419_add_4_1.INJECT1_0 = "NO";
    defparam cur2_419_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_33 (.A0(cnt_clk[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4020), .S0(n134));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_33.INIT1 = 16'h0000;
    defparam cnt_clk_420_add_4_33.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_31 (.A0(cnt_clk[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4019), .COUT(n4020), .S0(n136), .S1(n135));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_31.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_29 (.A0(cnt_clk[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4018), .COUT(n4019), .S0(n138), .S1(n137));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_29.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_29.INJECT1_1 = "NO";
    CCU2D sub_332_add_2_23 (.A0(cnt_clk[27]), .B0(T[27]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[28]), .B1(T[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3979), .COUT(n3980));
    defparam sub_332_add_2_23.INIT0 = 16'h5999;
    defparam sub_332_add_2_23.INIT1 = 16'h5999;
    defparam sub_332_add_2_23.INJECT1_0 = "NO";
    defparam sub_332_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_332_add_2_21 (.A0(cnt_clk[25]), .B0(T[25]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[26]), .B1(T[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3978), .COUT(n3979));
    defparam sub_332_add_2_21.INIT0 = 16'h5999;
    defparam sub_332_add_2_21.INIT1 = 16'h5999;
    defparam sub_332_add_2_21.INJECT1_0 = "NO";
    defparam sub_332_add_2_21.INJECT1_1 = "NO";
    LUT4 i1480_4_lut (.A(n293_N_253[8]), .B(n293_N_253[13]), .C(n293_N_253[6]), 
         .D(n293_N_253[1]), .Z(n4210)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1480_4_lut.init = 16'h8000;
    FD1P3JX T_i9 (.D(n2156), .SP(clk_c_enable_33), .PD(n3326), .CK(clk_c), 
            .Q(T[9])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i9.GSR = "DISABLED";
    FD1S3IX cur1__i30 (.D(n939), .CK(clk_c), .CD(n1844), .Q(cur1[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i30.GSR = "DISABLED";
    FD1S3IX cur1__i29 (.D(n940), .CK(clk_c), .CD(n1844), .Q(cur1[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i29.GSR = "DISABLED";
    LUT4 i809_1_lut (.A(litin_c), .Z(clk_c_enable_25)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[28:33])
    defparam i809_1_lut.init = 16'h5555;
    CCU2D sub_332_add_2_19 (.A0(cnt_clk[23]), .B0(T[23]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[24]), .B1(T[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3977), .COUT(n3978));
    defparam sub_332_add_2_19.INIT0 = 16'h5999;
    defparam sub_332_add_2_19.INIT1 = 16'h5999;
    defparam sub_332_add_2_19.INJECT1_0 = "NO";
    defparam sub_332_add_2_19.INJECT1_1 = "NO";
    FD1S3IX cur1__i28 (.D(n941), .CK(clk_c), .CD(n1844), .Q(cur1[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i28.GSR = "DISABLED";
    CCU2D sub_332_add_2_17 (.A0(cnt_clk[21]), .B0(T[21]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[22]), .B1(T[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3976), .COUT(n3977));
    defparam sub_332_add_2_17.INIT0 = 16'h5999;
    defparam sub_332_add_2_17.INIT1 = 16'h5999;
    defparam sub_332_add_2_17.INJECT1_0 = "NO";
    defparam sub_332_add_2_17.INJECT1_1 = "NO";
    FD1S3IX cur1__i27 (.D(n942), .CK(clk_c), .CD(n1844), .Q(cur1[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i27.GSR = "DISABLED";
    FD1S3IX cur1__i26 (.D(n943), .CK(clk_c), .CD(n1844), .Q(cur1[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i26.GSR = "DISABLED";
    FD1S3IX cur1__i25 (.D(n944), .CK(clk_c), .CD(n1844), .Q(cur1[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i25.GSR = "DISABLED";
    FD1S3IX cur1__i24 (.D(n945), .CK(clk_c), .CD(n1844), .Q(cur1[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i24.GSR = "DISABLED";
    FD1S3IX cur1__i23 (.D(n946), .CK(clk_c), .CD(n1844), .Q(cur1[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i23.GSR = "DISABLED";
    FD1S3IX cur1__i22 (.D(n947), .CK(clk_c), .CD(n1844), .Q(cur1[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i22.GSR = "DISABLED";
    FD1S3IX cur1__i21 (.D(n948), .CK(clk_c), .CD(n1844), .Q(cur1[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i21.GSR = "DISABLED";
    FD1S3IX cur1__i20 (.D(n949), .CK(clk_c), .CD(n1844), .Q(cur1[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i20.GSR = "DISABLED";
    FD1S3IX cur1__i19 (.D(n950), .CK(clk_c), .CD(n1844), .Q(cur1[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i19.GSR = "DISABLED";
    FD1S3IX cur1__i18 (.D(n951), .CK(clk_c), .CD(n1844), .Q(cur1[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i18.GSR = "DISABLED";
    FD1S3IX cur1__i17 (.D(n952), .CK(clk_c), .CD(n1844), .Q(cur1[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i17.GSR = "DISABLED";
    FD1S3IX cur1__i16 (.D(n953), .CK(clk_c), .CD(n1844), .Q(cur1[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i16.GSR = "DISABLED";
    FD1S3IX cur1__i15 (.D(n954), .CK(clk_c), .CD(n1844), .Q(cur1[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i15.GSR = "DISABLED";
    FD1S3IX cur1__i14 (.D(n955), .CK(clk_c), .CD(n1844), .Q(cur1[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i14.GSR = "DISABLED";
    FD1S3IX cur1__i13 (.D(n956), .CK(clk_c), .CD(n1844), .Q(cur1[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i13.GSR = "DISABLED";
    FD1S3IX cur1__i12 (.D(n957), .CK(clk_c), .CD(n1844), .Q(cur1[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i12.GSR = "DISABLED";
    FD1S3IX cur1__i11 (.D(n958), .CK(clk_c), .CD(n1844), .Q(cur1[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i11.GSR = "DISABLED";
    FD1S3IX cur1__i10 (.D(n959), .CK(clk_c), .CD(n1844), .Q(cur1[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i10.GSR = "DISABLED";
    FD1S3IX cur1__i9 (.D(n960), .CK(clk_c), .CD(n1844), .Q(cur1[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i9.GSR = "DISABLED";
    FD1S3IX cur1__i8 (.D(n961), .CK(clk_c), .CD(n1844), .Q(cur1[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i8.GSR = "DISABLED";
    FD1S3IX cur1__i7 (.D(n962), .CK(clk_c), .CD(n1844), .Q(cur1[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i7.GSR = "DISABLED";
    FD1S3IX cur1__i6 (.D(n963), .CK(clk_c), .CD(n1844), .Q(cur1[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i6.GSR = "DISABLED";
    FD1S3IX cur1__i5 (.D(n964), .CK(clk_c), .CD(n1844), .Q(cur1[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i5.GSR = "DISABLED";
    FD1S3IX cur1__i4 (.D(n965), .CK(clk_c), .CD(n1844), .Q(cur1[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i4.GSR = "DISABLED";
    FD1S3IX cur1__i3 (.D(n966), .CK(clk_c), .CD(n1844), .Q(cur1[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(130[5] 153[11])
    defparam cur1__i3.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i16 (.D(n293_N_253[16]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n294));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i16.GSR = "DISABLED";
    LUT4 i1545_4_lut (.A(COUNT1_17__N_290[12]), .B(n4274), .C(n4258), 
         .D(n4256), .Z(lit_N_509)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(77[8:21])
    defparam i1545_4_lut.init = 16'h4000;
    FD1S3DX COUNT1_102_i15 (.D(n293_N_253[15]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n295));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i15.GSR = "DISABLED";
    CCU2D sub_332_add_2_15 (.A0(cnt_clk[19]), .B0(T[19]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[20]), .B1(T[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3975), .COUT(n3976));
    defparam sub_332_add_2_15.INIT0 = 16'h5999;
    defparam sub_332_add_2_15.INIT1 = 16'h5999;
    defparam sub_332_add_2_15.INJECT1_0 = "NO";
    defparam sub_332_add_2_15.INJECT1_1 = "NO";
    CCU2D add_8_13 (.A0(n93), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n92), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3866), 
          .COUT(n3867), .S0(n87_N_179[11]), .S1(n87_N_179[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_13.INIT0 = 16'h5aaa;
    defparam add_8_13.INIT1 = 16'h5aaa;
    defparam add_8_13.INJECT1_0 = "NO";
    defparam add_8_13.INJECT1_1 = "NO";
    CCU2D add_8_11 (.A0(n95), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n94), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3865), 
          .COUT(n3866), .S0(n87_N_179[9]), .S1(n87_N_179[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_11.INIT0 = 16'h5aaa;
    defparam add_8_11.INIT1 = 16'h5aaa;
    defparam add_8_11.INJECT1_0 = "NO";
    defparam add_8_11.INJECT1_1 = "NO";
    CCU2D add_8_9 (.A0(n97), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n96), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3864), 
          .COUT(n3865), .S0(n87_N_179[7]), .S1(n87_N_179[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_9.INIT0 = 16'h5aaa;
    defparam add_8_9.INIT1 = 16'h5aaa;
    defparam add_8_9.INJECT1_0 = "NO";
    defparam add_8_9.INJECT1_1 = "NO";
    CCU2D add_8_7 (.A0(n99), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n98), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3863), 
          .COUT(n3864), .S0(n87_N_179[5]), .S1(n87_N_179[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_7.INIT0 = 16'h5aaa;
    defparam add_8_7.INIT1 = 16'h5aaa;
    defparam add_8_7.INJECT1_0 = "NO";
    defparam add_8_7.INJECT1_1 = "NO";
    CCU2D add_8_5 (.A0(n101), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n100), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3862), 
          .COUT(n3863), .S0(n87_N_179[3]), .S1(n87_N_179[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_5.INIT0 = 16'h5aaa;
    defparam add_8_5.INIT1 = 16'h5aaa;
    defparam add_8_5.INJECT1_0 = "NO";
    defparam add_8_5.INJECT1_1 = "NO";
    CCU2D add_8_3 (.A0(n103), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n102), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3861), 
          .COUT(n3862), .S0(n87_N_179[1]), .S1(n87_N_179[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(30[35:41])
    defparam add_8_3.INIT0 = 16'h5aaa;
    defparam add_8_3.INIT1 = 16'h5aaa;
    defparam add_8_3.INJECT1_0 = "NO";
    defparam add_8_3.INJECT1_1 = "NO";
    CCU2D add_97_9 (.A0(COUNT1[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3891), .COUT(n3892), .S0(COUNT1_17__N_290[7]), .S1(COUNT1_17__N_290[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_9.INIT0 = 16'h5aaa;
    defparam add_97_9.INIT1 = 16'h5aaa;
    defparam add_97_9.INJECT1_0 = "NO";
    defparam add_97_9.INJECT1_1 = "NO";
    LUT4 i1544_4_lut (.A(COUNT1_17__N_290[7]), .B(COUNT1_17__N_290[14]), 
         .C(COUNT1_17__N_290[9]), .D(COUNT1_17__N_290[10]), .Z(n4274)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(77[8:21])
    defparam i1544_4_lut.init = 16'h0001;
    LUT4 i1528_4_lut (.A(n4230), .B(COUNT1_17__N_290[15]), .C(COUNT1_17__N_290[16]), 
         .D(COUNT1_17__N_290[2]), .Z(n4258)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1528_4_lut.init = 16'h8000;
    CCU2D cnt_clk_420_add_4_27 (.A0(cnt_clk[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4017), .COUT(n4018), .S0(n140), .S1(n139));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_27.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_25 (.A0(cnt_clk[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4016), .COUT(n4017), .S0(n142), .S1(n141));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_25.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_23 (.A0(cnt_clk[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4015), .COUT(n4016), .S0(n144), .S1(n143));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_23.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_21 (.A0(cnt_clk[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4014), .COUT(n4015), .S0(n146), .S1(n145));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_21.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_19 (.A0(cnt_clk[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4013), .COUT(n4014), .S0(n148), .S1(n147));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_19.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_17 (.A0(cnt_clk[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4012), .COUT(n4013), .S0(n150), .S1(n149));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_17.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_15 (.A0(cnt_clk[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4011), .COUT(n4012), .S0(n152), .S1(n151));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_15.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_15.INJECT1_1 = "NO";
    CCU2D add_97_7 (.A0(COUNT1[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3890), .COUT(n3891), .S0(COUNT1_17__N_290[5]), .S1(COUNT1_17__N_290[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_7.INIT0 = 16'h5aaa;
    defparam add_97_7.INIT1 = 16'h5aaa;
    defparam add_97_7.INJECT1_0 = "NO";
    defparam add_97_7.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i27 (.D(n138), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i27.GSR = "DISABLED";
    LUT4 i1112_4_lut (.A(n3617), .B(n90), .C(n91), .D(n92), .Z(n3635)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1112_4_lut.init = 16'hfcec;
    LUT4 i2_3_lut_adj_1 (.A(n190), .B(n191), .C(n192), .Z(n4053)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(45[8:21])
    defparam i2_3_lut_adj_1.init = 16'h8080;
    LUT4 i808_2_lut_3_lut (.A(clr), .B(n4358), .C(n6), .Z(n3326)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i808_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i2_2_lut_3_lut (.A(clr), .B(n4358), .C(n6), .Z(clk_c_enable_33)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1526_4_lut (.A(n4222), .B(COUNT1_17__N_290[1]), .C(n4234), .D(COUNT1_17__N_290[0]), 
         .Z(n4256)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1526_4_lut.init = 16'h8000;
    LUT4 i1484_2_lut (.A(n190_N_216[11]), .B(n190_N_216[8]), .Z(n4214)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1484_2_lut.init = 16'h8888;
    ND2 ND2_t53 (.A(T[31]), .B(LIGHT_CTL[2]), .Z(mult_31s_19s_0_mult_2_14_n3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t56 (.A(T[31]), .B(LIGHT_CTL[0]), .Z(mult_31s_19s_0_mult_0_15_n2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    LUT4 i1496_4_lut (.A(n190_N_216[4]), .B(n190_N_216[3]), .C(n190_N_216[13]), 
         .D(n190_N_216[5]), .Z(n4226)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1496_4_lut.init = 16'h8000;
    ND2 ND2_t55 (.A(T[31]), .B(GND_net), .Z(mult_31s_19s_0_mult_0_15_n2_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    AND2 AND2_t54 (.A(GND_net), .B(LIGHT_CTL[2]), .Z(mult_31s_19s_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1019[10:66])
    IB clrin_pad (.I(clrin), .O(clrin_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[10:15])
    AND2 AND2_t51 (.A(GND_net), .B(LIGHT_CTL[2]), .Z(mult_31s_19s_0_pp_2_4)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1025[10:66])
    FD1S3IX cur2_419__i14 (.D(n151_adj_18), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i14.GSR = "DISABLED";
    AND2 AND2_t48 (.A(GND_net), .B(LIGHT_CTL[7]), .Z(mult_31s_19s_0_pp_3_6)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1031[10:66])
    CCU2D add_97_5 (.A0(COUNT1[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3889), .COUT(n3890), .S0(COUNT1_17__N_290[3]), .S1(COUNT1_17__N_290[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_5.INIT0 = 16'h5aaa;
    defparam add_97_5.INIT1 = 16'h5aaa;
    defparam add_97_5.INJECT1_0 = "NO";
    defparam add_97_5.INJECT1_1 = "NO";
    AND2 AND2_t45 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_4_8)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1037[10:66])
    CCU2D add_97_3 (.A0(COUNT1[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(COUNT1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3888), .COUT(n3889), .S0(COUNT1_17__N_290[1]), .S1(COUNT1_17__N_290[2]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_3.INIT0 = 16'h5aaa;
    defparam add_97_3.INIT1 = 16'h5aaa;
    defparam add_97_3.INJECT1_0 = "NO";
    defparam add_97_3.INJECT1_1 = "NO";
    AND2 AND2_t42 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_5_10)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1043[10:68])
    FD1S3IX cur2_419__i31 (.D(n134_adj_1), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i31.GSR = "DISABLED";
    AND2 AND2_t39 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_6_12)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1049[10:68])
    FD1S3IX cur2_419__i13 (.D(n152_adj_19), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i13.GSR = "DISABLED";
    AND2 AND2_t36 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_7_14)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1055[10:68])
    FD1P3IX T_i22 (.D(n2143), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i22.GSR = "DISABLED";
    AND2 AND2_t33 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_8_16)) /* synthesis syn_instantiated=1 */ ;   // mult_31s_19s.v(1061[10:68])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[6:9])
    ND2 ND2_t30 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_9_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t29 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_9_19)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t28 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_9_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t27 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_9_21)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t26 (.A(GND_net), .B(GND_net), .Z(mult_31s_19s_0_pp_9_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t25 (.A(T[6]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_23)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t24 (.A(T[7]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t23 (.A(T[8]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_25)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t22 (.A(T[9]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t21 (.A(T[10]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_27)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t20 (.A(T[11]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t19 (.A(T[12]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_29)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t18 (.A(T[13]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t17 (.A(T[14]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_31)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    ND2 ND2_t16 (.A(T[15]), .B(GND_net), .Z(mult_31s_19s_0_pp_9_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    CCU2D add_97_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3685), .B1(n4055), .C1(COUNT1[0]), .D1(GND_net), .COUT(n3888), 
          .S1(COUNT1_17__N_290[0]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[35:41])
    defparam add_97_1.INIT0 = 16'hF000;
    defparam add_97_1.INIT1 = 16'h8787;
    defparam add_97_1.INJECT1_0 = "NO";
    defparam add_97_1.INJECT1_1 = "NO";
    CCU2D add_67_19 (.A0(n293), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3887), 
          .S0(n293_N_253[17]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_19.INIT0 = 16'h5aaa;
    defparam add_67_19.INIT1 = 16'h0000;
    defparam add_67_19.INJECT1_0 = "NO";
    defparam add_67_19.INJECT1_1 = "NO";
    CCU2D add_67_17 (.A0(n295), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n294), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3886), 
          .COUT(n3887), .S0(n293_N_253[15]), .S1(n293_N_253[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_17.INIT0 = 16'h5aaa;
    defparam add_67_17.INIT1 = 16'h5aaa;
    defparam add_67_17.INJECT1_0 = "NO";
    defparam add_67_17.INJECT1_1 = "NO";
    CCU2D add_67_15 (.A0(n297), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n296), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3885), 
          .COUT(n3886), .S0(n293_N_253[13]), .S1(n293_N_253[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(61[35:41])
    defparam add_67_15.INIT0 = 16'h5aaa;
    defparam add_67_15.INIT1 = 16'h5aaa;
    defparam add_67_15.INJECT1_0 = "NO";
    defparam add_67_15.INJECT1_1 = "NO";
    FD1S3IX cur2_419__i12 (.D(n153_adj_20), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i12.GSR = "DISABLED";
    FD1S3IX cur2_419__i30 (.D(n135_adj_2), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i30.GSR = "DISABLED";
    FD1S3IX cur2_419__i29 (.D(n136_adj_3), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i29.GSR = "DISABLED";
    FD1S3IX cur2_419__i11 (.D(n154_adj_21), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i11.GSR = "DISABLED";
    LUT4 i810_1_lut (.A(sdnin_c), .Z(clk_c_enable_24)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[22:27])
    defparam i810_1_lut.init = 16'h5555;
    CCU2D sub_336_add_2_13 (.A0(cur2[14]), .B0(cur1[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[15]), .B1(cur1[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3917), .COUT(n3918));
    defparam sub_336_add_2_13.INIT0 = 16'h5999;
    defparam sub_336_add_2_13.INIT1 = 16'h5999;
    defparam sub_336_add_2_13.INJECT1_0 = "NO";
    defparam sub_336_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_11 (.A0(cur2[12]), .B0(cur1[12]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[13]), .B1(cur1[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3916), .COUT(n3917));
    defparam sub_336_add_2_11.INIT0 = 16'h5999;
    defparam sub_336_add_2_11.INIT1 = 16'h5999;
    defparam sub_336_add_2_11.INJECT1_0 = "NO";
    defparam sub_336_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_336_add_2_9 (.A0(cur2[10]), .B0(cur1[10]), .C0(GND_net), 
          .D0(GND_net), .A1(cur2[11]), .B1(cur1[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3915), .COUT(n3916));
    defparam sub_336_add_2_9.INIT0 = 16'h5999;
    defparam sub_336_add_2_9.INIT1 = 16'h5999;
    defparam sub_336_add_2_9.INJECT1_0 = "NO";
    defparam sub_336_add_2_9.INJECT1_1 = "NO";
    OB Y_pad (.I(Y_c), .O(Y));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(7[6:7])
    FADD2B mult_31s_19s_0_cin_lr_add_2 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_cin_lr_add_4 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_cin_lr_add_6 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_cin_lr_add_8 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_cin_lr_add_10 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_cin_lr_add_12 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_cin_lr_add_14 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_cin_lr_add_16 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B Cadd_mult_31s_19s_0_0_1 (.A0(GND_net), .A1(mult_31s_19s_0_pp_0_2), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_1_2), .CI(GND_net), .COUT(co_mult_31s_19s_0_0_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_2 (.A0(mult_31s_19s_0_pp_0_3), .A1(mult_31s_19s_0_pp_0_4), 
           .B0(mult_31s_19s_0_pp_1_3), .B1(mult_31s_19s_0_pp_1_4), .CI(co_mult_31s_19s_0_0_1), 
           .COUT(co_mult_31s_19s_0_0_2), .S0(n1052), .S1(s_mult_31s_19s_0_0_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_3 (.A0(mult_31s_19s_0_pp_0_5), .A1(mult_31s_19s_0_pp_0_6), 
           .B0(mult_31s_19s_0_pp_1_5), .B1(mult_31s_19s_0_pp_1_6), .CI(co_mult_31s_19s_0_0_2), 
           .COUT(co_mult_31s_19s_0_0_3), .S0(s_mult_31s_19s_0_0_5), .S1(s_mult_31s_19s_0_0_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_4 (.A0(mult_31s_19s_0_pp_0_7), .A1(mult_31s_19s_0_pp_0_8), 
           .B0(mult_31s_19s_0_pp_1_7), .B1(mult_31s_19s_0_pp_1_8), .CI(co_mult_31s_19s_0_0_3), 
           .COUT(co_mult_31s_19s_0_0_4), .S0(s_mult_31s_19s_0_0_7), .S1(s_mult_31s_19s_0_0_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_5 (.A0(mult_31s_19s_0_pp_0_9), .A1(mult_31s_19s_0_pp_0_10), 
           .B0(mult_31s_19s_0_pp_1_9), .B1(mult_31s_19s_0_pp_1_10), .CI(co_mult_31s_19s_0_0_4), 
           .COUT(co_mult_31s_19s_0_0_5), .S0(s_mult_31s_19s_0_0_9), .S1(s_mult_31s_19s_0_0_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_6 (.A0(mult_31s_19s_0_pp_0_11), .A1(mult_31s_19s_0_pp_0_12), 
           .B0(mult_31s_19s_0_pp_1_11), .B1(mult_31s_19s_0_pp_1_12), .CI(co_mult_31s_19s_0_0_5), 
           .COUT(co_mult_31s_19s_0_0_6), .S0(s_mult_31s_19s_0_0_11), .S1(s_mult_31s_19s_0_0_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_7 (.A0(mult_31s_19s_0_pp_0_13), .A1(mult_31s_19s_0_pp_0_14), 
           .B0(mult_31s_19s_0_pp_1_13), .B1(mult_31s_19s_0_pp_1_14), .CI(co_mult_31s_19s_0_0_6), 
           .COUT(co_mult_31s_19s_0_0_7), .S0(s_mult_31s_19s_0_0_13), .S1(s_mult_31s_19s_0_0_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_8 (.A0(mult_31s_19s_0_pp_0_15), .A1(mult_31s_19s_0_pp_0_16), 
           .B0(mult_31s_19s_0_pp_1_15), .B1(mult_31s_19s_0_pp_1_16), .CI(co_mult_31s_19s_0_0_7), 
           .COUT(co_mult_31s_19s_0_0_8), .S0(s_mult_31s_19s_0_0_15), .S1(s_mult_31s_19s_0_0_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_9 (.A0(mult_31s_19s_0_pp_0_17), .A1(mult_31s_19s_0_pp_0_18), 
           .B0(mult_31s_19s_0_pp_1_17), .B1(mult_31s_19s_0_pp_1_18), .CI(co_mult_31s_19s_0_0_8), 
           .COUT(co_mult_31s_19s_0_0_9), .S0(s_mult_31s_19s_0_0_17), .S1(s_mult_31s_19s_0_0_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_10 (.A0(mult_31s_19s_0_pp_0_19), .A1(mult_31s_19s_0_pp_0_20), 
           .B0(mult_31s_19s_0_pp_1_19), .B1(mult_31s_19s_0_pp_1_20), .CI(co_mult_31s_19s_0_0_9), 
           .COUT(co_mult_31s_19s_0_0_10), .S0(s_mult_31s_19s_0_0_19), .S1(s_mult_31s_19s_0_0_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_11 (.A0(mult_31s_19s_0_pp_0_21), .A1(mult_31s_19s_0_pp_0_22), 
           .B0(mult_31s_19s_0_pp_1_21), .B1(mult_31s_19s_0_pp_1_22), .CI(co_mult_31s_19s_0_0_10), 
           .COUT(co_mult_31s_19s_0_0_11), .S0(s_mult_31s_19s_0_0_21), .S1(s_mult_31s_19s_0_0_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_12 (.A0(mult_31s_19s_0_pp_0_23), .A1(mult_31s_19s_0_pp_0_24), 
           .B0(mult_31s_19s_0_pp_1_23), .B1(mult_31s_19s_0_pp_1_24), .CI(co_mult_31s_19s_0_0_11), 
           .COUT(co_mult_31s_19s_0_0_12), .S0(s_mult_31s_19s_0_0_23), .S1(s_mult_31s_19s_0_0_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_13 (.A0(mult_31s_19s_0_pp_0_25), .A1(mult_31s_19s_0_pp_0_26), 
           .B0(mult_31s_19s_0_pp_1_25), .B1(mult_31s_19s_0_pp_1_26), .CI(co_mult_31s_19s_0_0_12), 
           .COUT(co_mult_31s_19s_0_0_13), .S0(s_mult_31s_19s_0_0_25), .S1(s_mult_31s_19s_0_0_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_14 (.A0(mult_31s_19s_0_pp_0_27), .A1(mult_31s_19s_0_pp_0_28), 
           .B0(mult_31s_19s_0_pp_1_27), .B1(mult_31s_19s_0_pp_1_28), .CI(co_mult_31s_19s_0_0_13), 
           .COUT(co_mult_31s_19s_0_0_14), .S0(s_mult_31s_19s_0_0_27), .S1(s_mult_31s_19s_0_0_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_15 (.A0(mult_31s_19s_0_pp_0_29), .A1(mult_31s_19s_0_pp_0_30), 
           .B0(mult_31s_19s_0_pp_1_29), .B1(mult_31s_19s_0_pp_1_30), .CI(co_mult_31s_19s_0_0_14), 
           .COUT(co_mult_31s_19s_0_0_15), .S0(s_mult_31s_19s_0_0_29), .S1(s_mult_31s_19s_0_0_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_0_16 (.A0(mult_31s_19s_0_pp_0_31), .A1(mult_31s_19s_0_pp_0_32), 
           .B0(mult_31s_19s_0_pp_1_31), .B1(mult_31s_19s_0_pp_1_32), .CI(co_mult_31s_19s_0_0_15), 
           .S0(s_mult_31s_19s_0_0_31), .S1(s_mult_31s_19s_0_0_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    LUT4 i1536_4_lut (.A(n4264), .B(n4206), .C(n4174), .D(n28), .Z(sdn_N_505)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(63[8:21])
    defparam i1536_4_lut.init = 16'h0080;
    LUT4 i1534_4_lut (.A(n21), .B(n4210), .C(n293_N_253[2]), .D(n293_N_253[17]), 
         .Z(n4264)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(63[8:21])
    defparam i1534_4_lut.init = 16'h4000;
    FADD2B Cadd_mult_31s_19s_0_1_1 (.A0(GND_net), .A1(mult_31s_19s_0_pp_2_6), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_3_6), .CI(GND_net), .COUT(co_mult_31s_19s_0_1_1), 
           .S1(s_mult_31s_19s_0_1_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_2 (.A0(mult_31s_19s_0_pp_2_7), .A1(mult_31s_19s_0_pp_2_8), 
           .B0(mult_31s_19s_0_pp_3_7), .B1(mult_31s_19s_0_pp_3_8), .CI(co_mult_31s_19s_0_1_1), 
           .COUT(co_mult_31s_19s_0_1_2), .S0(s_mult_31s_19s_0_1_7), .S1(s_mult_31s_19s_0_1_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_3 (.A0(mult_31s_19s_0_pp_2_9), .A1(mult_31s_19s_0_pp_2_10), 
           .B0(mult_31s_19s_0_pp_3_9), .B1(mult_31s_19s_0_pp_3_10), .CI(co_mult_31s_19s_0_1_2), 
           .COUT(co_mult_31s_19s_0_1_3), .S0(s_mult_31s_19s_0_1_9), .S1(s_mult_31s_19s_0_1_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_4 (.A0(mult_31s_19s_0_pp_2_11), .A1(mult_31s_19s_0_pp_2_12), 
           .B0(mult_31s_19s_0_pp_3_11), .B1(mult_31s_19s_0_pp_3_12), .CI(co_mult_31s_19s_0_1_3), 
           .COUT(co_mult_31s_19s_0_1_4), .S0(s_mult_31s_19s_0_1_11), .S1(s_mult_31s_19s_0_1_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_5 (.A0(mult_31s_19s_0_pp_2_13), .A1(mult_31s_19s_0_pp_2_14), 
           .B0(mult_31s_19s_0_pp_3_13), .B1(mult_31s_19s_0_pp_3_14), .CI(co_mult_31s_19s_0_1_4), 
           .COUT(co_mult_31s_19s_0_1_5), .S0(s_mult_31s_19s_0_1_13), .S1(s_mult_31s_19s_0_1_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_6 (.A0(mult_31s_19s_0_pp_2_15), .A1(mult_31s_19s_0_pp_2_16), 
           .B0(mult_31s_19s_0_pp_3_15), .B1(mult_31s_19s_0_pp_3_16), .CI(co_mult_31s_19s_0_1_5), 
           .COUT(co_mult_31s_19s_0_1_6), .S0(s_mult_31s_19s_0_1_15), .S1(s_mult_31s_19s_0_1_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_7 (.A0(mult_31s_19s_0_pp_2_17), .A1(mult_31s_19s_0_pp_2_18), 
           .B0(mult_31s_19s_0_pp_3_17), .B1(mult_31s_19s_0_pp_3_18), .CI(co_mult_31s_19s_0_1_6), 
           .COUT(co_mult_31s_19s_0_1_7), .S0(s_mult_31s_19s_0_1_17), .S1(s_mult_31s_19s_0_1_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_8 (.A0(mult_31s_19s_0_pp_2_19), .A1(mult_31s_19s_0_pp_2_20), 
           .B0(mult_31s_19s_0_pp_3_19), .B1(mult_31s_19s_0_pp_3_20), .CI(co_mult_31s_19s_0_1_7), 
           .COUT(co_mult_31s_19s_0_1_8), .S0(s_mult_31s_19s_0_1_19), .S1(s_mult_31s_19s_0_1_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_9 (.A0(mult_31s_19s_0_pp_2_21), .A1(mult_31s_19s_0_pp_2_22), 
           .B0(mult_31s_19s_0_pp_3_21), .B1(mult_31s_19s_0_pp_3_22), .CI(co_mult_31s_19s_0_1_8), 
           .COUT(co_mult_31s_19s_0_1_9), .S0(s_mult_31s_19s_0_1_21), .S1(s_mult_31s_19s_0_1_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_10 (.A0(mult_31s_19s_0_pp_2_23), .A1(mult_31s_19s_0_pp_2_24), 
           .B0(mult_31s_19s_0_pp_3_23), .B1(mult_31s_19s_0_pp_3_24), .CI(co_mult_31s_19s_0_1_9), 
           .COUT(co_mult_31s_19s_0_1_10), .S0(s_mult_31s_19s_0_1_23), .S1(s_mult_31s_19s_0_1_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_11 (.A0(mult_31s_19s_0_pp_2_25), .A1(mult_31s_19s_0_pp_2_26), 
           .B0(mult_31s_19s_0_pp_3_25), .B1(mult_31s_19s_0_pp_3_26), .CI(co_mult_31s_19s_0_1_10), 
           .COUT(co_mult_31s_19s_0_1_11), .S0(s_mult_31s_19s_0_1_25), .S1(s_mult_31s_19s_0_1_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_12 (.A0(mult_31s_19s_0_pp_2_27), .A1(mult_31s_19s_0_pp_2_28), 
           .B0(mult_31s_19s_0_pp_3_27), .B1(mult_31s_19s_0_pp_3_28), .CI(co_mult_31s_19s_0_1_11), 
           .COUT(co_mult_31s_19s_0_1_12), .S0(s_mult_31s_19s_0_1_27), .S1(s_mult_31s_19s_0_1_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_13 (.A0(mult_31s_19s_0_pp_2_29), .A1(mult_31s_19s_0_pp_2_30), 
           .B0(mult_31s_19s_0_pp_3_29), .B1(mult_31s_19s_0_pp_3_30), .CI(co_mult_31s_19s_0_1_12), 
           .COUT(co_mult_31s_19s_0_1_13), .S0(s_mult_31s_19s_0_1_29), .S1(s_mult_31s_19s_0_1_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_1_14 (.A0(mult_31s_19s_0_pp_2_31), .A1(mult_31s_19s_0_pp_2_32), 
           .B0(mult_31s_19s_0_pp_3_31), .B1(mult_31s_19s_0_pp_3_32), .CI(co_mult_31s_19s_0_1_13), 
           .S0(s_mult_31s_19s_0_1_31), .S1(s_mult_31s_19s_0_1_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i28 (.D(n137_adj_4), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i28.GSR = "DISABLED";
    FD1S3IX cur2_419__i10 (.D(n155_adj_22), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i10.GSR = "DISABLED";
    FADD2B Cadd_mult_31s_19s_0_2_1 (.A0(GND_net), .A1(mult_31s_19s_0_pp_4_10), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_5_10), .CI(GND_net), .COUT(co_mult_31s_19s_0_2_1), 
           .S1(s_mult_31s_19s_0_2_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_2 (.A0(mult_31s_19s_0_pp_4_11), .A1(mult_31s_19s_0_pp_4_12), 
           .B0(mult_31s_19s_0_pp_5_11), .B1(mult_31s_19s_0_pp_5_12), .CI(co_mult_31s_19s_0_2_1), 
           .COUT(co_mult_31s_19s_0_2_2), .S0(s_mult_31s_19s_0_2_11), .S1(s_mult_31s_19s_0_2_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_3 (.A0(mult_31s_19s_0_pp_4_13), .A1(mult_31s_19s_0_pp_4_14), 
           .B0(mult_31s_19s_0_pp_5_13), .B1(mult_31s_19s_0_pp_5_14), .CI(co_mult_31s_19s_0_2_2), 
           .COUT(co_mult_31s_19s_0_2_3), .S0(s_mult_31s_19s_0_2_13), .S1(s_mult_31s_19s_0_2_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_4 (.A0(mult_31s_19s_0_pp_4_15), .A1(mult_31s_19s_0_pp_4_16), 
           .B0(mult_31s_19s_0_pp_5_15), .B1(mult_31s_19s_0_pp_5_16), .CI(co_mult_31s_19s_0_2_3), 
           .COUT(co_mult_31s_19s_0_2_4), .S0(s_mult_31s_19s_0_2_15), .S1(s_mult_31s_19s_0_2_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_5 (.A0(mult_31s_19s_0_pp_4_17), .A1(mult_31s_19s_0_pp_4_18), 
           .B0(mult_31s_19s_0_pp_5_17), .B1(mult_31s_19s_0_pp_5_18), .CI(co_mult_31s_19s_0_2_4), 
           .COUT(co_mult_31s_19s_0_2_5), .S0(s_mult_31s_19s_0_2_17), .S1(s_mult_31s_19s_0_2_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_6 (.A0(mult_31s_19s_0_pp_4_19), .A1(mult_31s_19s_0_pp_4_20), 
           .B0(mult_31s_19s_0_pp_5_19), .B1(mult_31s_19s_0_pp_5_20), .CI(co_mult_31s_19s_0_2_5), 
           .COUT(co_mult_31s_19s_0_2_6), .S0(s_mult_31s_19s_0_2_19), .S1(s_mult_31s_19s_0_2_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_7 (.A0(mult_31s_19s_0_pp_4_21), .A1(mult_31s_19s_0_pp_4_22), 
           .B0(mult_31s_19s_0_pp_5_21), .B1(mult_31s_19s_0_pp_5_22), .CI(co_mult_31s_19s_0_2_6), 
           .COUT(co_mult_31s_19s_0_2_7), .S0(s_mult_31s_19s_0_2_21), .S1(s_mult_31s_19s_0_2_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_8 (.A0(mult_31s_19s_0_pp_4_23), .A1(mult_31s_19s_0_pp_4_24), 
           .B0(mult_31s_19s_0_pp_5_23), .B1(mult_31s_19s_0_pp_5_24), .CI(co_mult_31s_19s_0_2_7), 
           .COUT(co_mult_31s_19s_0_2_8), .S0(s_mult_31s_19s_0_2_23), .S1(s_mult_31s_19s_0_2_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_9 (.A0(mult_31s_19s_0_pp_4_25), .A1(mult_31s_19s_0_pp_4_26), 
           .B0(mult_31s_19s_0_pp_5_25), .B1(mult_31s_19s_0_pp_5_26), .CI(co_mult_31s_19s_0_2_8), 
           .COUT(co_mult_31s_19s_0_2_9), .S0(s_mult_31s_19s_0_2_25), .S1(s_mult_31s_19s_0_2_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_10 (.A0(mult_31s_19s_0_pp_4_27), .A1(mult_31s_19s_0_pp_4_28), 
           .B0(mult_31s_19s_0_pp_5_27), .B1(mult_31s_19s_0_pp_5_28), .CI(co_mult_31s_19s_0_2_9), 
           .COUT(co_mult_31s_19s_0_2_10), .S0(s_mult_31s_19s_0_2_27), .S1(s_mult_31s_19s_0_2_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_11 (.A0(mult_31s_19s_0_pp_4_29), .A1(mult_31s_19s_0_pp_4_30), 
           .B0(mult_31s_19s_0_pp_5_29), .B1(mult_31s_19s_0_pp_5_30), .CI(co_mult_31s_19s_0_2_10), 
           .COUT(co_mult_31s_19s_0_2_11), .S0(s_mult_31s_19s_0_2_29), .S1(s_mult_31s_19s_0_2_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_2_12 (.A0(mult_31s_19s_0_pp_4_31), .A1(mult_31s_19s_0_pp_4_32), 
           .B0(mult_31s_19s_0_pp_5_31), .B1(mult_31s_19s_0_pp_5_32), .CI(co_mult_31s_19s_0_2_11), 
           .S0(s_mult_31s_19s_0_2_31), .S1(s_mult_31s_19s_0_2_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i27 (.D(n138_adj_5), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[27])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i27.GSR = "DISABLED";
    FD1S3IX cur2_419__i9 (.D(n156_adj_23), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i9.GSR = "DISABLED";
    FADD2B Cadd_mult_31s_19s_0_3_1 (.A0(GND_net), .A1(mult_31s_19s_0_pp_6_14), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_7_14), .CI(GND_net), .COUT(co_mult_31s_19s_0_3_1), 
           .S1(s_mult_31s_19s_0_3_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_2 (.A0(mult_31s_19s_0_pp_6_15), .A1(mult_31s_19s_0_pp_6_16), 
           .B0(mult_31s_19s_0_pp_7_15), .B1(mult_31s_19s_0_pp_7_16), .CI(co_mult_31s_19s_0_3_1), 
           .COUT(co_mult_31s_19s_0_3_2), .S0(s_mult_31s_19s_0_3_15), .S1(s_mult_31s_19s_0_3_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_3 (.A0(mult_31s_19s_0_pp_6_17), .A1(mult_31s_19s_0_pp_6_18), 
           .B0(mult_31s_19s_0_pp_7_17), .B1(mult_31s_19s_0_pp_7_18), .CI(co_mult_31s_19s_0_3_2), 
           .COUT(co_mult_31s_19s_0_3_3), .S0(s_mult_31s_19s_0_3_17), .S1(s_mult_31s_19s_0_3_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_4 (.A0(mult_31s_19s_0_pp_6_19), .A1(mult_31s_19s_0_pp_6_20), 
           .B0(mult_31s_19s_0_pp_7_19), .B1(mult_31s_19s_0_pp_7_20), .CI(co_mult_31s_19s_0_3_3), 
           .COUT(co_mult_31s_19s_0_3_4), .S0(s_mult_31s_19s_0_3_19), .S1(s_mult_31s_19s_0_3_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_5 (.A0(mult_31s_19s_0_pp_6_21), .A1(mult_31s_19s_0_pp_6_22), 
           .B0(mult_31s_19s_0_pp_7_21), .B1(mult_31s_19s_0_pp_7_22), .CI(co_mult_31s_19s_0_3_4), 
           .COUT(co_mult_31s_19s_0_3_5), .S0(s_mult_31s_19s_0_3_21), .S1(s_mult_31s_19s_0_3_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_6 (.A0(mult_31s_19s_0_pp_6_23), .A1(mult_31s_19s_0_pp_6_24), 
           .B0(mult_31s_19s_0_pp_7_23), .B1(mult_31s_19s_0_pp_7_24), .CI(co_mult_31s_19s_0_3_5), 
           .COUT(co_mult_31s_19s_0_3_6), .S0(s_mult_31s_19s_0_3_23), .S1(s_mult_31s_19s_0_3_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_7 (.A0(mult_31s_19s_0_pp_6_25), .A1(mult_31s_19s_0_pp_6_26), 
           .B0(mult_31s_19s_0_pp_7_25), .B1(mult_31s_19s_0_pp_7_26), .CI(co_mult_31s_19s_0_3_6), 
           .COUT(co_mult_31s_19s_0_3_7), .S0(s_mult_31s_19s_0_3_25), .S1(s_mult_31s_19s_0_3_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_8 (.A0(mult_31s_19s_0_pp_6_27), .A1(mult_31s_19s_0_pp_6_28), 
           .B0(mult_31s_19s_0_pp_7_27), .B1(mult_31s_19s_0_pp_7_28), .CI(co_mult_31s_19s_0_3_7), 
           .COUT(co_mult_31s_19s_0_3_8), .S0(s_mult_31s_19s_0_3_27), .S1(s_mult_31s_19s_0_3_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_9 (.A0(mult_31s_19s_0_pp_6_29), .A1(mult_31s_19s_0_pp_6_30), 
           .B0(mult_31s_19s_0_pp_7_29), .B1(mult_31s_19s_0_pp_7_30), .CI(co_mult_31s_19s_0_3_8), 
           .COUT(co_mult_31s_19s_0_3_9), .S0(s_mult_31s_19s_0_3_29), .S1(s_mult_31s_19s_0_3_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_3_10 (.A0(mult_31s_19s_0_pp_6_31), .A1(mult_31s_19s_0_pp_6_32), 
           .B0(mult_31s_19s_0_pp_7_31), .B1(mult_31s_19s_0_pp_7_32), .CI(co_mult_31s_19s_0_3_9), 
           .S0(s_mult_31s_19s_0_3_31), .S1(s_mult_31s_19s_0_3_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    TSALL TSALL_INST (.TSALL(GND_net));
    FD1S3IX cur2_419__i26 (.D(n139_adj_6), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i26.GSR = "DISABLED";
    FD1S3IX cur2_419__i8 (.D(n157_adj_24), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i8.GSR = "DISABLED";
    CCU2D sub_336_add_2_7 (.A0(cur2[8]), .B0(cur1[8]), .C0(GND_net), .D0(GND_net), 
          .A1(cur2[9]), .B1(cur1[9]), .C1(GND_net), .D1(GND_net), .CIN(n3914), 
          .COUT(n3915));
    defparam sub_336_add_2_7.INIT0 = 16'h5999;
    defparam sub_336_add_2_7.INIT1 = 16'h5999;
    defparam sub_336_add_2_7.INJECT1_0 = "NO";
    defparam sub_336_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_9 (.A0(n1045), .B0(cur1[10]), .C0(GND_net), .D0(GND_net), 
          .A1(n1044), .B1(cur1[11]), .C1(GND_net), .D1(GND_net), .CIN(n3930), 
          .COUT(n3931));
    defparam sub_330_add_2_9.INIT0 = 16'h5999;
    defparam sub_330_add_2_9.INIT1 = 16'h5999;
    defparam sub_330_add_2_9.INJECT1_0 = "NO";
    defparam sub_330_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_7 (.A0(n1047), .B0(cur1[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n1046), .B1(cur1[9]), .C1(GND_net), .D1(GND_net), .CIN(n3929), 
          .COUT(n3930));
    defparam sub_330_add_2_7.INIT0 = 16'h5999;
    defparam sub_330_add_2_7.INIT1 = 16'h5999;
    defparam sub_330_add_2_7.INJECT1_0 = "NO";
    defparam sub_330_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_330_add_2_23 (.A0(n1031), .B0(cur1[24]), .C0(GND_net), .D0(GND_net), 
          .A1(n1030), .B1(cur1[25]), .C1(GND_net), .D1(GND_net), .CIN(n3937), 
          .COUT(n3938));
    defparam sub_330_add_2_23.INIT0 = 16'h5999;
    defparam sub_330_add_2_23.INIT1 = 16'h5999;
    defparam sub_330_add_2_23.INJECT1_0 = "NO";
    defparam sub_330_add_2_23.INJECT1_1 = "NO";
    FADD2B Cadd_mult_31s_19s_0_4_1 (.A0(GND_net), .A1(mult_31s_19s_0_pp_8_18), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_9_18), .CI(GND_net), .COUT(co_mult_31s_19s_0_4_1), 
           .S1(s_mult_31s_19s_0_4_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_4_2 (.A0(mult_31s_19s_0_pp_8_19), .A1(mult_31s_19s_0_pp_8_20), 
           .B0(mult_31s_19s_0_pp_9_19), .B1(mult_31s_19s_0_pp_9_20), .CI(co_mult_31s_19s_0_4_1), 
           .COUT(co_mult_31s_19s_0_4_2), .S0(s_mult_31s_19s_0_4_19), .S1(s_mult_31s_19s_0_4_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_4_3 (.A0(mult_31s_19s_0_pp_8_21), .A1(mult_31s_19s_0_pp_8_22), 
           .B0(mult_31s_19s_0_pp_9_21), .B1(mult_31s_19s_0_pp_9_22), .CI(co_mult_31s_19s_0_4_2), 
           .COUT(co_mult_31s_19s_0_4_3), .S0(s_mult_31s_19s_0_4_21), .S1(s_mult_31s_19s_0_4_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_4_4 (.A0(mult_31s_19s_0_pp_8_23), .A1(mult_31s_19s_0_pp_8_24), 
           .B0(mult_31s_19s_0_pp_9_23), .B1(mult_31s_19s_0_pp_9_24), .CI(co_mult_31s_19s_0_4_3), 
           .COUT(co_mult_31s_19s_0_4_4), .S0(s_mult_31s_19s_0_4_23), .S1(s_mult_31s_19s_0_4_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_4_5 (.A0(mult_31s_19s_0_pp_8_25), .A1(mult_31s_19s_0_pp_8_26), 
           .B0(mult_31s_19s_0_pp_9_25), .B1(mult_31s_19s_0_pp_9_26), .CI(co_mult_31s_19s_0_4_4), 
           .COUT(co_mult_31s_19s_0_4_5), .S0(s_mult_31s_19s_0_4_25), .S1(s_mult_31s_19s_0_4_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_4_6 (.A0(mult_31s_19s_0_pp_8_27), .A1(mult_31s_19s_0_pp_8_28), 
           .B0(mult_31s_19s_0_pp_9_27), .B1(mult_31s_19s_0_pp_9_28), .CI(co_mult_31s_19s_0_4_5), 
           .COUT(co_mult_31s_19s_0_4_6), .S0(s_mult_31s_19s_0_4_27), .S1(s_mult_31s_19s_0_4_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_4_7 (.A0(mult_31s_19s_0_pp_8_29), .A1(mult_31s_19s_0_pp_8_30), 
           .B0(mult_31s_19s_0_pp_9_29), .B1(mult_31s_19s_0_pp_9_30), .CI(co_mult_31s_19s_0_4_6), 
           .COUT(co_mult_31s_19s_0_4_7), .S0(s_mult_31s_19s_0_4_29), .S1(s_mult_31s_19s_0_4_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_4_8 (.A0(mult_31s_19s_0_pp_8_31), .A1(mult_31s_19s_0_pp_8_32), 
           .B0(mult_31s_19s_0_pp_9_31), .B1(mult_31s_19s_0_pp_9_32), .CI(co_mult_31s_19s_0_4_7), 
           .S0(s_mult_31s_19s_0_4_31), .S1(s_mult_31s_19s_0_4_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i25 (.D(n140_adj_7), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i25.GSR = "DISABLED";
    FD1S3IX cur2_419__i7 (.D(n158_adj_25), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i7.GSR = "DISABLED";
    CCU2D sub_332_add_2_13 (.A0(cnt_clk[17]), .B0(T[17]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[18]), .B1(T[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3974), .COUT(n3975));
    defparam sub_332_add_2_13.INIT0 = 16'h5999;
    defparam sub_332_add_2_13.INIT1 = 16'h5999;
    defparam sub_332_add_2_13.INJECT1_0 = "NO";
    defparam sub_332_add_2_13.INJECT1_1 = "NO";
    FADD2B Cadd_mult_31s_19s_0_5_1 (.A0(GND_net), .A1(s_mult_31s_19s_0_0_4), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_2_4), .CI(GND_net), .COUT(co_mult_31s_19s_0_5_1), 
           .S1(n1051)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_2 (.A0(s_mult_31s_19s_0_0_5), .A1(s_mult_31s_19s_0_0_6), 
           .B0(mult_31s_19s_0_pp_2_5), .B1(s_mult_31s_19s_0_1_6), .CI(co_mult_31s_19s_0_5_1), 
           .COUT(co_mult_31s_19s_0_5_2), .S0(n1050), .S1(n1049)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_3 (.A0(s_mult_31s_19s_0_0_7), .A1(s_mult_31s_19s_0_0_8), 
           .B0(s_mult_31s_19s_0_1_7), .B1(s_mult_31s_19s_0_1_8), .CI(co_mult_31s_19s_0_5_2), 
           .COUT(co_mult_31s_19s_0_5_3), .S0(n1048), .S1(s_mult_31s_19s_0_5_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_4 (.A0(s_mult_31s_19s_0_0_9), .A1(s_mult_31s_19s_0_0_10), 
           .B0(s_mult_31s_19s_0_1_9), .B1(s_mult_31s_19s_0_1_10), .CI(co_mult_31s_19s_0_5_3), 
           .COUT(co_mult_31s_19s_0_5_4), .S0(s_mult_31s_19s_0_5_9), .S1(s_mult_31s_19s_0_5_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_5 (.A0(s_mult_31s_19s_0_0_11), .A1(s_mult_31s_19s_0_0_12), 
           .B0(s_mult_31s_19s_0_1_11), .B1(s_mult_31s_19s_0_1_12), .CI(co_mult_31s_19s_0_5_4), 
           .COUT(co_mult_31s_19s_0_5_5), .S0(s_mult_31s_19s_0_5_11), .S1(s_mult_31s_19s_0_5_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_6 (.A0(s_mult_31s_19s_0_0_13), .A1(s_mult_31s_19s_0_0_14), 
           .B0(s_mult_31s_19s_0_1_13), .B1(s_mult_31s_19s_0_1_14), .CI(co_mult_31s_19s_0_5_5), 
           .COUT(co_mult_31s_19s_0_5_6), .S0(s_mult_31s_19s_0_5_13), .S1(s_mult_31s_19s_0_5_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_7 (.A0(s_mult_31s_19s_0_0_15), .A1(s_mult_31s_19s_0_0_16), 
           .B0(s_mult_31s_19s_0_1_15), .B1(s_mult_31s_19s_0_1_16), .CI(co_mult_31s_19s_0_5_6), 
           .COUT(co_mult_31s_19s_0_5_7), .S0(s_mult_31s_19s_0_5_15), .S1(s_mult_31s_19s_0_5_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_8 (.A0(s_mult_31s_19s_0_0_17), .A1(s_mult_31s_19s_0_0_18), 
           .B0(s_mult_31s_19s_0_1_17), .B1(s_mult_31s_19s_0_1_18), .CI(co_mult_31s_19s_0_5_7), 
           .COUT(co_mult_31s_19s_0_5_8), .S0(s_mult_31s_19s_0_5_17), .S1(s_mult_31s_19s_0_5_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_9 (.A0(s_mult_31s_19s_0_0_19), .A1(s_mult_31s_19s_0_0_20), 
           .B0(s_mult_31s_19s_0_1_19), .B1(s_mult_31s_19s_0_1_20), .CI(co_mult_31s_19s_0_5_8), 
           .COUT(co_mult_31s_19s_0_5_9), .S0(s_mult_31s_19s_0_5_19), .S1(s_mult_31s_19s_0_5_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_10 (.A0(s_mult_31s_19s_0_0_21), .A1(s_mult_31s_19s_0_0_22), 
           .B0(s_mult_31s_19s_0_1_21), .B1(s_mult_31s_19s_0_1_22), .CI(co_mult_31s_19s_0_5_9), 
           .COUT(co_mult_31s_19s_0_5_10), .S0(s_mult_31s_19s_0_5_21), .S1(s_mult_31s_19s_0_5_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_11 (.A0(s_mult_31s_19s_0_0_23), .A1(s_mult_31s_19s_0_0_24), 
           .B0(s_mult_31s_19s_0_1_23), .B1(s_mult_31s_19s_0_1_24), .CI(co_mult_31s_19s_0_5_10), 
           .COUT(co_mult_31s_19s_0_5_11), .S0(s_mult_31s_19s_0_5_23), .S1(s_mult_31s_19s_0_5_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_12 (.A0(s_mult_31s_19s_0_0_25), .A1(s_mult_31s_19s_0_0_26), 
           .B0(s_mult_31s_19s_0_1_25), .B1(s_mult_31s_19s_0_1_26), .CI(co_mult_31s_19s_0_5_11), 
           .COUT(co_mult_31s_19s_0_5_12), .S0(s_mult_31s_19s_0_5_25), .S1(s_mult_31s_19s_0_5_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_13 (.A0(s_mult_31s_19s_0_0_27), .A1(s_mult_31s_19s_0_0_28), 
           .B0(s_mult_31s_19s_0_1_27), .B1(s_mult_31s_19s_0_1_28), .CI(co_mult_31s_19s_0_5_12), 
           .COUT(co_mult_31s_19s_0_5_13), .S0(s_mult_31s_19s_0_5_27), .S1(s_mult_31s_19s_0_5_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_14 (.A0(s_mult_31s_19s_0_0_29), .A1(s_mult_31s_19s_0_0_30), 
           .B0(s_mult_31s_19s_0_1_29), .B1(s_mult_31s_19s_0_1_30), .CI(co_mult_31s_19s_0_5_13), 
           .COUT(co_mult_31s_19s_0_5_14), .S0(s_mult_31s_19s_0_5_29), .S1(s_mult_31s_19s_0_5_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_5_15 (.A0(s_mult_31s_19s_0_0_31), .A1(s_mult_31s_19s_0_0_32), 
           .B0(s_mult_31s_19s_0_1_31), .B1(s_mult_31s_19s_0_1_32), .CI(co_mult_31s_19s_0_5_14), 
           .S0(s_mult_31s_19s_0_5_31), .S1(s_mult_31s_19s_0_5_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i24 (.D(n141_adj_8), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i24.GSR = "DISABLED";
    FD1S3IX cur2_419__i6 (.D(n159_adj_26), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i6.GSR = "DISABLED";
    CCU2D sub_332_add_2_11 (.A0(cnt_clk[15]), .B0(T[15]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[16]), .B1(T[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3973), .COUT(n3974));
    defparam sub_332_add_2_11.INIT0 = 16'h5999;
    defparam sub_332_add_2_11.INIT1 = 16'h5999;
    defparam sub_332_add_2_11.INJECT1_0 = "NO";
    defparam sub_332_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_332_add_2_9 (.A0(cnt_clk[13]), .B0(T[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[14]), .B1(T[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3972), .COUT(n3973));
    defparam sub_332_add_2_9.INIT0 = 16'h5999;
    defparam sub_332_add_2_9.INIT1 = 16'h5999;
    defparam sub_332_add_2_9.INJECT1_0 = "NO";
    defparam sub_332_add_2_9.INJECT1_1 = "NO";
    FADD2B Cadd_mult_31s_19s_0_6_1 (.A0(GND_net), .A1(s_mult_31s_19s_0_2_12), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_6_12), .CI(GND_net), .COUT(co_mult_31s_19s_0_6_1), 
           .S1(s_mult_31s_19s_0_6_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_2 (.A0(s_mult_31s_19s_0_2_13), .A1(s_mult_31s_19s_0_2_14), 
           .B0(mult_31s_19s_0_pp_6_13), .B1(s_mult_31s_19s_0_3_14), .CI(co_mult_31s_19s_0_6_1), 
           .COUT(co_mult_31s_19s_0_6_2), .S0(s_mult_31s_19s_0_6_13), .S1(s_mult_31s_19s_0_6_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_3 (.A0(s_mult_31s_19s_0_2_15), .A1(s_mult_31s_19s_0_2_16), 
           .B0(s_mult_31s_19s_0_3_15), .B1(s_mult_31s_19s_0_3_16), .CI(co_mult_31s_19s_0_6_2), 
           .COUT(co_mult_31s_19s_0_6_3), .S0(s_mult_31s_19s_0_6_15), .S1(s_mult_31s_19s_0_6_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_4 (.A0(s_mult_31s_19s_0_2_17), .A1(s_mult_31s_19s_0_2_18), 
           .B0(s_mult_31s_19s_0_3_17), .B1(s_mult_31s_19s_0_3_18), .CI(co_mult_31s_19s_0_6_3), 
           .COUT(co_mult_31s_19s_0_6_4), .S0(s_mult_31s_19s_0_6_17), .S1(s_mult_31s_19s_0_6_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_5 (.A0(s_mult_31s_19s_0_2_19), .A1(s_mult_31s_19s_0_2_20), 
           .B0(s_mult_31s_19s_0_3_19), .B1(s_mult_31s_19s_0_3_20), .CI(co_mult_31s_19s_0_6_4), 
           .COUT(co_mult_31s_19s_0_6_5), .S0(s_mult_31s_19s_0_6_19), .S1(s_mult_31s_19s_0_6_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_6 (.A0(s_mult_31s_19s_0_2_21), .A1(s_mult_31s_19s_0_2_22), 
           .B0(s_mult_31s_19s_0_3_21), .B1(s_mult_31s_19s_0_3_22), .CI(co_mult_31s_19s_0_6_5), 
           .COUT(co_mult_31s_19s_0_6_6), .S0(s_mult_31s_19s_0_6_21), .S1(s_mult_31s_19s_0_6_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_7 (.A0(s_mult_31s_19s_0_2_23), .A1(s_mult_31s_19s_0_2_24), 
           .B0(s_mult_31s_19s_0_3_23), .B1(s_mult_31s_19s_0_3_24), .CI(co_mult_31s_19s_0_6_6), 
           .COUT(co_mult_31s_19s_0_6_7), .S0(s_mult_31s_19s_0_6_23), .S1(s_mult_31s_19s_0_6_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_8 (.A0(s_mult_31s_19s_0_2_25), .A1(s_mult_31s_19s_0_2_26), 
           .B0(s_mult_31s_19s_0_3_25), .B1(s_mult_31s_19s_0_3_26), .CI(co_mult_31s_19s_0_6_7), 
           .COUT(co_mult_31s_19s_0_6_8), .S0(s_mult_31s_19s_0_6_25), .S1(s_mult_31s_19s_0_6_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_9 (.A0(s_mult_31s_19s_0_2_27), .A1(s_mult_31s_19s_0_2_28), 
           .B0(s_mult_31s_19s_0_3_27), .B1(s_mult_31s_19s_0_3_28), .CI(co_mult_31s_19s_0_6_8), 
           .COUT(co_mult_31s_19s_0_6_9), .S0(s_mult_31s_19s_0_6_27), .S1(s_mult_31s_19s_0_6_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_10 (.A0(s_mult_31s_19s_0_2_29), .A1(s_mult_31s_19s_0_2_30), 
           .B0(s_mult_31s_19s_0_3_29), .B1(s_mult_31s_19s_0_3_30), .CI(co_mult_31s_19s_0_6_9), 
           .COUT(co_mult_31s_19s_0_6_10), .S0(s_mult_31s_19s_0_6_29), .S1(s_mult_31s_19s_0_6_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_6_11 (.A0(s_mult_31s_19s_0_2_31), .A1(s_mult_31s_19s_0_2_32), 
           .B0(s_mult_31s_19s_0_3_31), .B1(s_mult_31s_19s_0_3_32), .CI(co_mult_31s_19s_0_6_10), 
           .S0(s_mult_31s_19s_0_6_31), .S1(s_mult_31s_19s_0_6_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i23 (.D(n142_adj_9), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i23.GSR = "DISABLED";
    FD1S3IX cur2_419__i5 (.D(n160_adj_27), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i5.GSR = "DISABLED";
    CCU2D sub_332_add_2_7 (.A0(cnt_clk[11]), .B0(T[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[12]), .B1(T[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3971), .COUT(n3972));
    defparam sub_332_add_2_7.INIT0 = 16'h5999;
    defparam sub_332_add_2_7.INIT1 = 16'h5999;
    defparam sub_332_add_2_7.INJECT1_0 = "NO";
    defparam sub_332_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_332_add_2_5 (.A0(cnt_clk[9]), .B0(T[9]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_clk[10]), .B1(T[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n3970), .COUT(n3971));
    defparam sub_332_add_2_5.INIT0 = 16'h5999;
    defparam sub_332_add_2_5.INIT1 = 16'h5999;
    defparam sub_332_add_2_5.INJECT1_0 = "NO";
    defparam sub_332_add_2_5.INJECT1_1 = "NO";
    FADD2B Cadd_mult_31s_19s_0_7_1 (.A0(GND_net), .A1(s_mult_31s_19s_0_4_18), 
           .B0(GND_net), .B1(VCC_net), .CI(GND_net), .COUT(co_mult_31s_19s_0_7_1), 
           .S1(s_mult_31s_19s_0_7_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_7_2 (.A0(s_mult_31s_19s_0_4_19), .A1(s_mult_31s_19s_0_4_20), 
           .B0(GND_net), .B1(GND_net), .CI(co_mult_31s_19s_0_7_1), .COUT(co_mult_31s_19s_0_7_2), 
           .S0(s_mult_31s_19s_0_7_19), .S1(s_mult_31s_19s_0_7_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_7_3 (.A0(s_mult_31s_19s_0_4_21), .A1(s_mult_31s_19s_0_4_22), 
           .B0(GND_net), .B1(GND_net), .CI(co_mult_31s_19s_0_7_2), .COUT(co_mult_31s_19s_0_7_3), 
           .S0(s_mult_31s_19s_0_7_21), .S1(s_mult_31s_19s_0_7_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_7_4 (.A0(s_mult_31s_19s_0_4_23), .A1(s_mult_31s_19s_0_4_24), 
           .B0(GND_net), .B1(GND_net), .CI(co_mult_31s_19s_0_7_3), .COUT(co_mult_31s_19s_0_7_4), 
           .S0(s_mult_31s_19s_0_7_23), .S1(s_mult_31s_19s_0_7_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_7_5 (.A0(s_mult_31s_19s_0_4_25), .A1(s_mult_31s_19s_0_4_26), 
           .B0(GND_net), .B1(GND_net), .CI(co_mult_31s_19s_0_7_4), .COUT(co_mult_31s_19s_0_7_5), 
           .S0(s_mult_31s_19s_0_7_25), .S1(s_mult_31s_19s_0_7_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_7_6 (.A0(s_mult_31s_19s_0_4_27), .A1(s_mult_31s_19s_0_4_28), 
           .B0(GND_net), .B1(GND_net), .CI(co_mult_31s_19s_0_7_5), .COUT(co_mult_31s_19s_0_7_6), 
           .S0(s_mult_31s_19s_0_7_27), .S1(s_mult_31s_19s_0_7_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_7_7 (.A0(s_mult_31s_19s_0_4_29), .A1(s_mult_31s_19s_0_4_30), 
           .B0(GND_net), .B1(GND_net), .CI(co_mult_31s_19s_0_7_6), .COUT(co_mult_31s_19s_0_7_7), 
           .S0(s_mult_31s_19s_0_7_29), .S1(s_mult_31s_19s_0_7_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_7_8 (.A0(s_mult_31s_19s_0_4_31), .A1(s_mult_31s_19s_0_4_32), 
           .B0(GND_net), .B1(GND_net), .CI(co_mult_31s_19s_0_7_7), .S0(s_mult_31s_19s_0_7_31), 
           .S1(s_mult_31s_19s_0_7_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i22 (.D(n143_adj_10), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i22.GSR = "DISABLED";
    FD1S3IX cur2_419__i4 (.D(n161_adj_28), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i4.GSR = "DISABLED";
    CCU2D sub_332_add_2_3 (.A0(cnt_clk[7]), .B0(T[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_clk[8]), .B1(T[8]), .C1(GND_net), .D1(GND_net), .CIN(n3969), 
          .COUT(n3970));
    defparam sub_332_add_2_3.INIT0 = 16'h5999;
    defparam sub_332_add_2_3.INIT1 = 16'h5999;
    defparam sub_332_add_2_3.INJECT1_0 = "NO";
    defparam sub_332_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_332_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_clk[6]), .B1(T[6]), .C1(GND_net), .D1(GND_net), .COUT(n3969));
    defparam sub_332_add_2_1.INIT0 = 16'h0000;
    defparam sub_332_add_2_1.INIT1 = 16'h5999;
    defparam sub_332_add_2_1.INJECT1_0 = "NO";
    defparam sub_332_add_2_1.INJECT1_1 = "NO";
    CCU2D add_323_27 (.A0(T[31]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3968), 
          .S0(n2134));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_27.INIT0 = 16'h5666;
    defparam add_323_27.INIT1 = 16'h0000;
    defparam add_323_27.INJECT1_0 = "NO";
    defparam add_323_27.INJECT1_1 = "NO";
    FADD2B Cadd_mult_31s_19s_0_8_1 (.A0(GND_net), .A1(s_mult_31s_19s_0_5_8), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_4_8), .CI(GND_net), .COUT(co_mult_31s_19s_0_8_1), 
           .S1(n1047)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_2 (.A0(s_mult_31s_19s_0_5_9), .A1(s_mult_31s_19s_0_5_10), 
           .B0(mult_31s_19s_0_pp_4_9), .B1(s_mult_31s_19s_0_2_10), .CI(co_mult_31s_19s_0_8_1), 
           .COUT(co_mult_31s_19s_0_8_2), .S0(n1046), .S1(n1045)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_3 (.A0(s_mult_31s_19s_0_5_11), .A1(s_mult_31s_19s_0_5_12), 
           .B0(s_mult_31s_19s_0_2_11), .B1(s_mult_31s_19s_0_6_12), .CI(co_mult_31s_19s_0_8_2), 
           .COUT(co_mult_31s_19s_0_8_3), .S0(n1044), .S1(n1043)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_4 (.A0(s_mult_31s_19s_0_5_13), .A1(s_mult_31s_19s_0_5_14), 
           .B0(s_mult_31s_19s_0_6_13), .B1(s_mult_31s_19s_0_6_14), .CI(co_mult_31s_19s_0_8_3), 
           .COUT(co_mult_31s_19s_0_8_4), .S0(n1042), .S1(n1041)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_5 (.A0(s_mult_31s_19s_0_5_15), .A1(s_mult_31s_19s_0_5_16), 
           .B0(s_mult_31s_19s_0_6_15), .B1(s_mult_31s_19s_0_6_16), .CI(co_mult_31s_19s_0_8_4), 
           .COUT(co_mult_31s_19s_0_8_5), .S0(n1040), .S1(s_mult_31s_19s_0_8_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_6 (.A0(s_mult_31s_19s_0_5_17), .A1(s_mult_31s_19s_0_5_18), 
           .B0(s_mult_31s_19s_0_6_17), .B1(s_mult_31s_19s_0_6_18), .CI(co_mult_31s_19s_0_8_5), 
           .COUT(co_mult_31s_19s_0_8_6), .S0(s_mult_31s_19s_0_8_17), .S1(s_mult_31s_19s_0_8_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_7 (.A0(s_mult_31s_19s_0_5_19), .A1(s_mult_31s_19s_0_5_20), 
           .B0(s_mult_31s_19s_0_6_19), .B1(s_mult_31s_19s_0_6_20), .CI(co_mult_31s_19s_0_8_6), 
           .COUT(co_mult_31s_19s_0_8_7), .S0(s_mult_31s_19s_0_8_19), .S1(s_mult_31s_19s_0_8_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_8 (.A0(s_mult_31s_19s_0_5_21), .A1(s_mult_31s_19s_0_5_22), 
           .B0(s_mult_31s_19s_0_6_21), .B1(s_mult_31s_19s_0_6_22), .CI(co_mult_31s_19s_0_8_7), 
           .COUT(co_mult_31s_19s_0_8_8), .S0(s_mult_31s_19s_0_8_21), .S1(s_mult_31s_19s_0_8_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_9 (.A0(s_mult_31s_19s_0_5_23), .A1(s_mult_31s_19s_0_5_24), 
           .B0(s_mult_31s_19s_0_6_23), .B1(s_mult_31s_19s_0_6_24), .CI(co_mult_31s_19s_0_8_8), 
           .COUT(co_mult_31s_19s_0_8_9), .S0(s_mult_31s_19s_0_8_23), .S1(s_mult_31s_19s_0_8_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_10 (.A0(s_mult_31s_19s_0_5_25), .A1(s_mult_31s_19s_0_5_26), 
           .B0(s_mult_31s_19s_0_6_25), .B1(s_mult_31s_19s_0_6_26), .CI(co_mult_31s_19s_0_8_9), 
           .COUT(co_mult_31s_19s_0_8_10), .S0(s_mult_31s_19s_0_8_25), .S1(s_mult_31s_19s_0_8_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_11 (.A0(s_mult_31s_19s_0_5_27), .A1(s_mult_31s_19s_0_5_28), 
           .B0(s_mult_31s_19s_0_6_27), .B1(s_mult_31s_19s_0_6_28), .CI(co_mult_31s_19s_0_8_10), 
           .COUT(co_mult_31s_19s_0_8_11), .S0(s_mult_31s_19s_0_8_27), .S1(s_mult_31s_19s_0_8_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_12 (.A0(s_mult_31s_19s_0_5_29), .A1(s_mult_31s_19s_0_5_30), 
           .B0(s_mult_31s_19s_0_6_29), .B1(s_mult_31s_19s_0_6_30), .CI(co_mult_31s_19s_0_8_11), 
           .COUT(co_mult_31s_19s_0_8_12), .S0(s_mult_31s_19s_0_8_29), .S1(s_mult_31s_19s_0_8_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B mult_31s_19s_0_add_8_13 (.A0(s_mult_31s_19s_0_5_31), .A1(s_mult_31s_19s_0_5_32), 
           .B0(s_mult_31s_19s_0_6_31), .B1(s_mult_31s_19s_0_6_32), .CI(co_mult_31s_19s_0_8_12), 
           .S0(s_mult_31s_19s_0_8_31), .S1(s_mult_31s_19s_0_8_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i21 (.D(n144_adj_11), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i21.GSR = "DISABLED";
    FD1S3IX cur2_419__i20 (.D(n145_adj_12), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i20.GSR = "DISABLED";
    CCU2D add_323_25 (.A0(T[29]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[30]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3967), 
          .COUT(n3968), .S0(n2136), .S1(n2135));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_25.INIT0 = 16'h5666;
    defparam add_323_25.INIT1 = 16'h5666;
    defparam add_323_25.INJECT1_0 = "NO";
    defparam add_323_25.INJECT1_1 = "NO";
    CCU2D add_323_23 (.A0(T[27]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[28]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3966), 
          .COUT(n3967), .S0(n2138), .S1(n2137));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_23.INIT0 = 16'h5666;
    defparam add_323_23.INIT1 = 16'h5666;
    defparam add_323_23.INJECT1_0 = "NO";
    defparam add_323_23.INJECT1_1 = "NO";
    CCU2D add_323_21 (.A0(T[25]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[26]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3965), 
          .COUT(n3966), .S0(n2140), .S1(n2139));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_21.INIT0 = 16'h5666;
    defparam add_323_21.INIT1 = 16'h5666;
    defparam add_323_21.INJECT1_0 = "NO";
    defparam add_323_21.INJECT1_1 = "NO";
    LUT4 i1500_2_lut (.A(COUNT1_17__N_290[11]), .B(COUNT1_17__N_290[4]), 
         .Z(n4230)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1500_2_lut.init = 16'h8888;
    FADD2B Cadd_t_mult_31s_19s_0_9_1 (.A0(GND_net), .A1(s_mult_31s_19s_0_8_16), 
           .B0(GND_net), .B1(mult_31s_19s_0_pp_8_16), .CI(GND_net), .COUT(co_t_mult_31s_19s_0_9_1), 
           .S1(n1039)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_2 (.A0(s_mult_31s_19s_0_8_17), .A1(s_mult_31s_19s_0_8_18), 
           .B0(mult_31s_19s_0_pp_8_17), .B1(s_mult_31s_19s_0_7_18), .CI(co_t_mult_31s_19s_0_9_1), 
           .COUT(co_t_mult_31s_19s_0_9_2), .S0(n1038), .S1(n1037)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_3 (.A0(s_mult_31s_19s_0_8_19), .A1(s_mult_31s_19s_0_8_20), 
           .B0(s_mult_31s_19s_0_7_19), .B1(s_mult_31s_19s_0_7_20), .CI(co_t_mult_31s_19s_0_9_2), 
           .COUT(co_t_mult_31s_19s_0_9_3), .S0(n1036), .S1(n1035)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_4 (.A0(s_mult_31s_19s_0_8_21), .A1(s_mult_31s_19s_0_8_22), 
           .B0(s_mult_31s_19s_0_7_21), .B1(s_mult_31s_19s_0_7_22), .CI(co_t_mult_31s_19s_0_9_3), 
           .COUT(co_t_mult_31s_19s_0_9_4), .S0(n1034), .S1(n1033)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_5 (.A0(s_mult_31s_19s_0_8_23), .A1(s_mult_31s_19s_0_8_24), 
           .B0(s_mult_31s_19s_0_7_23), .B1(s_mult_31s_19s_0_7_24), .CI(co_t_mult_31s_19s_0_9_4), 
           .COUT(co_t_mult_31s_19s_0_9_5), .S0(n1032), .S1(n1031)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_6 (.A0(s_mult_31s_19s_0_8_25), .A1(s_mult_31s_19s_0_8_26), 
           .B0(s_mult_31s_19s_0_7_25), .B1(s_mult_31s_19s_0_7_26), .CI(co_t_mult_31s_19s_0_9_5), 
           .COUT(co_t_mult_31s_19s_0_9_6), .S0(n1030), .S1(n1029)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_7 (.A0(s_mult_31s_19s_0_8_27), .A1(s_mult_31s_19s_0_8_28), 
           .B0(s_mult_31s_19s_0_7_27), .B1(s_mult_31s_19s_0_7_28), .CI(co_t_mult_31s_19s_0_9_6), 
           .COUT(co_t_mult_31s_19s_0_9_7), .S0(n1028), .S1(n1027)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_8 (.A0(s_mult_31s_19s_0_8_29), .A1(s_mult_31s_19s_0_8_30), 
           .B0(s_mult_31s_19s_0_7_29), .B1(s_mult_31s_19s_0_7_30), .CI(co_t_mult_31s_19s_0_9_7), 
           .COUT(co_t_mult_31s_19s_0_9_8), .S0(n1026), .S1(n1025)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FADD2B t_mult_31s_19s_0_add_9_9 (.A0(s_mult_31s_19s_0_8_31), .A1(s_mult_31s_19s_0_8_32), 
           .B0(s_mult_31s_19s_0_7_31), .B1(s_mult_31s_19s_0_7_32), .CI(co_t_mult_31s_19s_0_9_8), 
           .S0(n1024)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cnt_clk_420__i26 (.D(n139), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[26])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i26.GSR = "DISABLED";
    CCU2D add_323_19 (.A0(T[23]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[24]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3964), 
          .COUT(n3965), .S0(n2142), .S1(n2141));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_19.INIT0 = 16'h5666;
    defparam add_323_19.INIT1 = 16'h5666;
    defparam add_323_19.INJECT1_0 = "NO";
    defparam add_323_19.INJECT1_1 = "NO";
    CCU2D add_323_17 (.A0(T[21]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[22]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3963), 
          .COUT(n3964), .S0(n2144), .S1(n2143));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_17.INIT0 = 16'h5999;
    defparam add_323_17.INIT1 = 16'h5666;
    defparam add_323_17.INJECT1_0 = "NO";
    defparam add_323_17.INJECT1_1 = "NO";
    FD1S3DX COUNT1_102_i0 (.D(n293_N_253[0]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n310));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i0.GSR = "DISABLED";
    GSR GSR_INST (.GSR(clk_c_enable_2));
    LUT4 i318_2_lut_rep_23 (.A(sdn), .B(n2409), .Z(n4359)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam i318_2_lut_rep_23.init = 16'h2222;
    LUT4 i272_2_lut (.A(n2479), .B(cnt_clk_31__N_437), .Z(n1844)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam i272_2_lut.init = 16'hdddd;
    LUT4 i1317_2_lut (.A(cur1[3]), .B(LIGHT_CTL[0]), .Z(n966)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1317_2_lut.init = 16'h6666;
    MULT2 mult_31s_19s_0_mult_0_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mult_31s_19s_0_cin_lr_0), .CO(mco), .P1(mult_31s_19s_0_pp_0_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco), .CO(mco_1), .P0(mult_31s_19s_0_pp_0_3), 
          .P1(mult_31s_19s_0_pp_0_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_1), .CO(mco_2), .P0(mult_31s_19s_0_pp_0_5), 
          .P1(mult_31s_19s_0_pp_0_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), .B3(LIGHT_CTL[0]), 
          .CI(mco_2), .CO(mco_3), .P0(mult_31s_19s_0_pp_0_7), .P1(mult_31s_19s_0_pp_0_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_3), .CO(mco_4), .P0(mult_31s_19s_0_pp_0_9), 
          .P1(mult_31s_19s_0_pp_0_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_4), .CO(mco_5), .P0(mult_31s_19s_0_pp_0_11), 
          .P1(mult_31s_19s_0_pp_0_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_5), .CO(mco_6), .P0(mult_31s_19s_0_pp_0_13), 
          .P1(mult_31s_19s_0_pp_0_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_6), .CO(mco_7), .P0(mult_31s_19s_0_pp_0_15), 
          .P1(mult_31s_19s_0_pp_0_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_7), .CO(mco_8), .P0(mult_31s_19s_0_pp_0_17), 
          .P1(mult_31s_19s_0_pp_0_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_9 (.A0(T[19]), .A1(T[20]), .A2(T[20]), 
          .A3(T[21]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_8), .CO(mco_9), .P0(mult_31s_19s_0_pp_0_19), 
          .P1(mult_31s_19s_0_pp_0_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_10 (.A0(T[21]), .A1(T[22]), .A2(T[22]), 
          .A3(T[23]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_9), .CO(mco_10), .P0(mult_31s_19s_0_pp_0_21), 
          .P1(mult_31s_19s_0_pp_0_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_11 (.A0(T[23]), .A1(T[24]), .A2(T[24]), 
          .A3(T[25]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_10), .CO(mco_11), .P0(mult_31s_19s_0_pp_0_23), 
          .P1(mult_31s_19s_0_pp_0_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_12 (.A0(T[25]), .A1(T[26]), .A2(T[26]), 
          .A3(T[27]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_11), .CO(mco_12), .P0(mult_31s_19s_0_pp_0_25), 
          .P1(mult_31s_19s_0_pp_0_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_13 (.A0(T[27]), .A1(T[28]), .A2(T[28]), 
          .A3(T[29]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_12), .CO(mco_13), .P0(mult_31s_19s_0_pp_0_27), 
          .P1(mult_31s_19s_0_pp_0_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_14 (.A0(T[29]), .A1(T[30]), .A2(T[30]), 
          .A3(T[31]), .B0(GND_net), .B1(LIGHT_CTL[0]), .B2(GND_net), 
          .B3(LIGHT_CTL[0]), .CI(mco_13), .CO(mco_14), .P0(mult_31s_19s_0_pp_0_29), 
          .P1(mult_31s_19s_0_pp_0_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_0_15 (.A0(mult_31s_19s_0_mult_0_15_n2_1), .A1(mult_31s_19s_0_mult_0_15_n2), 
          .A2(GND_net), .A3(GND_net), .B0(VCC_net), .B1(VCC_net), .B2(GND_net), 
          .B3(GND_net), .CI(mco_14), .P0(mult_31s_19s_0_pp_0_31), .P1(mult_31s_19s_0_pp_0_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mult_31s_19s_0_cin_lr_2), .CO(mco_15), 
          .P0(mult_31s_19s_0_pp_1_3), .P1(mult_31s_19s_0_pp_1_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_15), .CO(mco_16), .P0(mult_31s_19s_0_pp_1_5), 
          .P1(mult_31s_19s_0_pp_1_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_16), .CO(mco_17), .P0(mult_31s_19s_0_pp_1_7), 
          .P1(mult_31s_19s_0_pp_1_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), .B3(LIGHT_CTL[2]), 
          .CI(mco_17), .CO(mco_18), .P0(mult_31s_19s_0_pp_1_9), .P1(mult_31s_19s_0_pp_1_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_18), .CO(mco_19), .P0(mult_31s_19s_0_pp_1_11), 
          .P1(mult_31s_19s_0_pp_1_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_19), .CO(mco_20), .P0(mult_31s_19s_0_pp_1_13), 
          .P1(mult_31s_19s_0_pp_1_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_20), .CO(mco_21), .P0(mult_31s_19s_0_pp_1_15), 
          .P1(mult_31s_19s_0_pp_1_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_21), .CO(mco_22), .P0(mult_31s_19s_0_pp_1_17), 
          .P1(mult_31s_19s_0_pp_1_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_22), .CO(mco_23), .P0(mult_31s_19s_0_pp_1_19), 
          .P1(mult_31s_19s_0_pp_1_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_9 (.A0(T[19]), .A1(T[20]), .A2(T[20]), 
          .A3(T[21]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_23), .CO(mco_24), .P0(mult_31s_19s_0_pp_1_21), 
          .P1(mult_31s_19s_0_pp_1_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_10 (.A0(T[21]), .A1(T[22]), .A2(T[22]), 
          .A3(T[23]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_24), .CO(mco_25), .P0(mult_31s_19s_0_pp_1_23), 
          .P1(mult_31s_19s_0_pp_1_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_11 (.A0(T[23]), .A1(T[24]), .A2(T[24]), 
          .A3(T[25]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_25), .CO(mco_26), .P0(mult_31s_19s_0_pp_1_25), 
          .P1(mult_31s_19s_0_pp_1_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_12 (.A0(T[25]), .A1(T[26]), .A2(T[26]), 
          .A3(T[27]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_26), .CO(mco_27), .P0(mult_31s_19s_0_pp_1_27), 
          .P1(mult_31s_19s_0_pp_1_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_13 (.A0(T[27]), .A1(T[28]), .A2(T[28]), 
          .A3(T[29]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[2]), .CI(mco_27), .CO(mco_28), .P0(mult_31s_19s_0_pp_1_29), 
          .P1(mult_31s_19s_0_pp_1_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_2_14 (.A0(T[29]), .A1(T[30]), .A2(T[30]), 
          .A3(mult_31s_19s_0_mult_2_14_n3), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[2]), 
          .B2(LIGHT_CTL[7]), .B3(VCC_net), .CI(mco_28), .P0(mult_31s_19s_0_pp_1_31), 
          .P1(mult_31s_19s_0_pp_1_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cnt_clk_420__i25 (.D(n140), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[25])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i25.GSR = "DISABLED";
    MULT2 mult_31s_19s_0_mult_4_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mult_31s_19s_0_cin_lr_4), .CO(mco_30), 
          .P0(mult_31s_19s_0_pp_2_5), .P1(mult_31s_19s_0_pp_2_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_30), .CO(mco_31), .P0(mult_31s_19s_0_pp_2_7), 
          .P1(mult_31s_19s_0_pp_2_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_31), .CO(mco_32), .P0(mult_31s_19s_0_pp_2_9), 
          .P1(mult_31s_19s_0_pp_2_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), .B3(LIGHT_CTL[2]), 
          .CI(mco_32), .CO(mco_33), .P0(mult_31s_19s_0_pp_2_11), .P1(mult_31s_19s_0_pp_2_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_33), .CO(mco_34), .P0(mult_31s_19s_0_pp_2_13), 
          .P1(mult_31s_19s_0_pp_2_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_34), .CO(mco_35), .P0(mult_31s_19s_0_pp_2_15), 
          .P1(mult_31s_19s_0_pp_2_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_35), .CO(mco_36), .P0(mult_31s_19s_0_pp_2_17), 
          .P1(mult_31s_19s_0_pp_2_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_36), .CO(mco_37), .P0(mult_31s_19s_0_pp_2_19), 
          .P1(mult_31s_19s_0_pp_2_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_37), .CO(mco_38), .P0(mult_31s_19s_0_pp_2_21), 
          .P1(mult_31s_19s_0_pp_2_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_9 (.A0(T[19]), .A1(T[20]), .A2(T[20]), 
          .A3(T[21]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_38), .CO(mco_39), .P0(mult_31s_19s_0_pp_2_23), 
          .P1(mult_31s_19s_0_pp_2_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_10 (.A0(T[21]), .A1(T[22]), .A2(T[22]), 
          .A3(T[23]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_39), .CO(mco_40), .P0(mult_31s_19s_0_pp_2_25), 
          .P1(mult_31s_19s_0_pp_2_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_11 (.A0(T[23]), .A1(T[24]), .A2(T[24]), 
          .A3(T[25]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_40), .CO(mco_41), .P0(mult_31s_19s_0_pp_2_27), 
          .P1(mult_31s_19s_0_pp_2_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_12 (.A0(T[25]), .A1(T[26]), .A2(T[26]), 
          .A3(T[27]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_41), .CO(mco_42), .P0(mult_31s_19s_0_pp_2_29), 
          .P1(mult_31s_19s_0_pp_2_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_4_13 (.A0(T[27]), .A1(T[28]), .A2(T[28]), 
          .A3(T[29]), .B0(GND_net), .B1(LIGHT_CTL[2]), .B2(GND_net), 
          .B3(LIGHT_CTL[2]), .CI(mco_42), .P0(mult_31s_19s_0_pp_2_31), 
          .P1(mult_31s_19s_0_pp_2_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cnt_clk_420__i24 (.D(n141), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[24])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i24.GSR = "DISABLED";
    LUT4 i319_3_lut_rep_22_4_lut (.A(sdn), .B(n2409), .C(sup), .D(n2444), 
         .Z(n4358)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam i319_3_lut_rep_22_4_lut.init = 16'h02f2;
    MULT2 mult_31s_19s_0_mult_6_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mult_31s_19s_0_cin_lr_6), .CO(mco_45), 
          .P0(mult_31s_19s_0_pp_3_7), .P1(mult_31s_19s_0_pp_3_8)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_45), .CO(mco_46), .P0(mult_31s_19s_0_pp_3_9), 
          .P1(mult_31s_19s_0_pp_3_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_46), .CO(mco_47), .P0(mult_31s_19s_0_pp_3_11), 
          .P1(mult_31s_19s_0_pp_3_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), .B3(LIGHT_CTL[7]), 
          .CI(mco_47), .CO(mco_48), .P0(mult_31s_19s_0_pp_3_13), .P1(mult_31s_19s_0_pp_3_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_48), .CO(mco_49), .P0(mult_31s_19s_0_pp_3_15), 
          .P1(mult_31s_19s_0_pp_3_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_49), .CO(mco_50), .P0(mult_31s_19s_0_pp_3_17), 
          .P1(mult_31s_19s_0_pp_3_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_50), .CO(mco_51), .P0(mult_31s_19s_0_pp_3_19), 
          .P1(mult_31s_19s_0_pp_3_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_51), .CO(mco_52), .P0(mult_31s_19s_0_pp_3_21), 
          .P1(mult_31s_19s_0_pp_3_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_52), .CO(mco_53), .P0(mult_31s_19s_0_pp_3_23), 
          .P1(mult_31s_19s_0_pp_3_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_9 (.A0(T[19]), .A1(T[20]), .A2(T[20]), 
          .A3(T[21]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_53), .CO(mco_54), .P0(mult_31s_19s_0_pp_3_25), 
          .P1(mult_31s_19s_0_pp_3_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_10 (.A0(T[21]), .A1(T[22]), .A2(T[22]), 
          .A3(T[23]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_54), .CO(mco_55), .P0(mult_31s_19s_0_pp_3_27), 
          .P1(mult_31s_19s_0_pp_3_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_11 (.A0(T[23]), .A1(T[24]), .A2(T[24]), 
          .A3(T[25]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_55), .CO(mco_56), .P0(mult_31s_19s_0_pp_3_29), 
          .P1(mult_31s_19s_0_pp_3_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_6_12 (.A0(T[25]), .A1(T[26]), .A2(T[26]), 
          .A3(T[27]), .B0(LIGHT_CTL[7]), .B1(LIGHT_CTL[7]), .B2(LIGHT_CTL[7]), 
          .B3(LIGHT_CTL[7]), .CI(mco_56), .P0(mult_31s_19s_0_pp_3_31), 
          .P1(mult_31s_19s_0_pp_3_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cnt_clk_420__i23 (.D(n142), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[23])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i23.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(lit), .B(LIGHT_CTL[7]), .C(LIGHT_CTL[0]), 
         .D(LIGHT_CTL[2]), .Z(clk_c_enable_4)) /* synthesis lut_function=(!((B (C+(D))+!B (C (D)+!C !(D)))+!A)) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0228;
    LUT4 i1162_4_lut (.A(n3648), .B(COUNT1[14]), .C(COUNT1[13]), .D(COUNT1[12]), 
         .Z(n3685)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1162_4_lut.init = 16'hfcec;
    MULT2 mult_31s_19s_0_mult_8_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mult_31s_19s_0_cin_lr_8), .CO(mco_60), .P0(mult_31s_19s_0_pp_4_9), 
          .P1(mult_31s_19s_0_pp_4_10)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_60), .CO(mco_61), .P0(mult_31s_19s_0_pp_4_11), .P1(mult_31s_19s_0_pp_4_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_61), .CO(mco_62), .P0(mult_31s_19s_0_pp_4_13), .P1(mult_31s_19s_0_pp_4_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), .CI(mco_62), 
          .CO(mco_63), .P0(mult_31s_19s_0_pp_4_15), .P1(mult_31s_19s_0_pp_4_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_63), .CO(mco_64), .P0(mult_31s_19s_0_pp_4_17), .P1(mult_31s_19s_0_pp_4_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_64), .CO(mco_65), .P0(mult_31s_19s_0_pp_4_19), .P1(mult_31s_19s_0_pp_4_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_65), .CO(mco_66), .P0(mult_31s_19s_0_pp_4_21), .P1(mult_31s_19s_0_pp_4_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_66), .CO(mco_67), .P0(mult_31s_19s_0_pp_4_23), .P1(mult_31s_19s_0_pp_4_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_67), .CO(mco_68), .P0(mult_31s_19s_0_pp_4_25), .P1(mult_31s_19s_0_pp_4_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_9 (.A0(T[19]), .A1(T[20]), .A2(T[20]), 
          .A3(T[21]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_68), .CO(mco_69), .P0(mult_31s_19s_0_pp_4_27), .P1(mult_31s_19s_0_pp_4_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_10 (.A0(T[21]), .A1(T[22]), .A2(T[22]), 
          .A3(T[23]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_69), .CO(mco_70), .P0(mult_31s_19s_0_pp_4_29), .P1(mult_31s_19s_0_pp_4_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_8_11 (.A0(T[23]), .A1(T[24]), .A2(T[24]), 
          .A3(T[25]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_70), .P0(mult_31s_19s_0_pp_4_31), .P1(mult_31s_19s_0_pp_4_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i3 (.D(n162_adj_29), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i3.GSR = "DISABLED";
    CCU2D cnt_clk_420_add_4_13 (.A0(cnt_clk[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4010), .COUT(n4011), .S0(n154), .S1(n153));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_13.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_11 (.A0(cnt_clk[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4009), .COUT(n4010), .S0(n156), .S1(n155));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_11.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_11.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i22 (.D(n143), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i22.GSR = "DISABLED";
    MULT2 mult_31s_19s_0_mult_10_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mult_31s_19s_0_cin_lr_10), .CO(mco_75), .P0(mult_31s_19s_0_pp_5_11), 
          .P1(mult_31s_19s_0_pp_5_12)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_75), .CO(mco_76), .P0(mult_31s_19s_0_pp_5_13), .P1(mult_31s_19s_0_pp_5_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_76), .CO(mco_77), .P0(mult_31s_19s_0_pp_5_15), .P1(mult_31s_19s_0_pp_5_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), .CI(mco_77), 
          .CO(mco_78), .P0(mult_31s_19s_0_pp_5_17), .P1(mult_31s_19s_0_pp_5_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_78), .CO(mco_79), .P0(mult_31s_19s_0_pp_5_19), .P1(mult_31s_19s_0_pp_5_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_79), .CO(mco_80), .P0(mult_31s_19s_0_pp_5_21), .P1(mult_31s_19s_0_pp_5_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_80), .CO(mco_81), .P0(mult_31s_19s_0_pp_5_23), .P1(mult_31s_19s_0_pp_5_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_81), .CO(mco_82), .P0(mult_31s_19s_0_pp_5_25), .P1(mult_31s_19s_0_pp_5_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_82), .CO(mco_83), .P0(mult_31s_19s_0_pp_5_27), .P1(mult_31s_19s_0_pp_5_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_9 (.A0(T[19]), .A1(T[20]), .A2(T[20]), 
          .A3(T[21]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_83), .CO(mco_84), .P0(mult_31s_19s_0_pp_5_29), .P1(mult_31s_19s_0_pp_5_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_10_10 (.A0(T[21]), .A1(T[22]), .A2(T[22]), 
          .A3(T[23]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_84), .P0(mult_31s_19s_0_pp_5_31), .P1(mult_31s_19s_0_pp_5_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i2 (.D(n163_adj_30), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i2.GSR = "DISABLED";
    CCU2D cnt_clk_420_add_4_9 (.A0(cnt_clk[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4008), .COUT(n4009), .S0(n158), .S1(n157));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_9.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_7 (.A0(cnt_clk[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4007), .COUT(n4008), .S0(n160), .S1(n159));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_7.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cur2_419__i19 (.D(n146_adj_13), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i19.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i31 (.D(n134), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[31])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i31.GSR = "DISABLED";
    MULT2 mult_31s_19s_0_mult_12_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mult_31s_19s_0_cin_lr_12), .CO(mco_90), .P0(mult_31s_19s_0_pp_6_13), 
          .P1(mult_31s_19s_0_pp_6_14)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_90), .CO(mco_91), .P0(mult_31s_19s_0_pp_6_15), .P1(mult_31s_19s_0_pp_6_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_91), .CO(mco_92), .P0(mult_31s_19s_0_pp_6_17), .P1(mult_31s_19s_0_pp_6_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), .CI(mco_92), 
          .CO(mco_93), .P0(mult_31s_19s_0_pp_6_19), .P1(mult_31s_19s_0_pp_6_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_93), .CO(mco_94), .P0(mult_31s_19s_0_pp_6_21), .P1(mult_31s_19s_0_pp_6_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_94), .CO(mco_95), .P0(mult_31s_19s_0_pp_6_23), .P1(mult_31s_19s_0_pp_6_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_95), .CO(mco_96), .P0(mult_31s_19s_0_pp_6_25), .P1(mult_31s_19s_0_pp_6_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_96), .CO(mco_97), .P0(mult_31s_19s_0_pp_6_27), .P1(mult_31s_19s_0_pp_6_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_97), .CO(mco_98), .P0(mult_31s_19s_0_pp_6_29), .P1(mult_31s_19s_0_pp_6_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_12_9 (.A0(T[19]), .A1(T[20]), .A2(T[20]), 
          .A3(T[21]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_98), .P0(mult_31s_19s_0_pp_6_31), .P1(mult_31s_19s_0_pp_6_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    LUT4 i1009_2_lut (.A(n97), .B(n96), .Z(n3532)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1009_2_lut.init = 16'h8888;
    FD1S3IX cur2_419__i1 (.D(n164_adj_31), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i1.GSR = "DISABLED";
    CCU2D cnt_clk_420_add_4_5 (.A0(cnt_clk[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4006), .COUT(n4007), .S0(n162), .S1(n161));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_5.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_5.INJECT1_1 = "NO";
    FD1S3IX cur2_419__i18 (.D(n147_adj_14), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i18.GSR = "DISABLED";
    FD1S3IX cnt_clk_420__i30 (.D(n135), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[30])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i30.GSR = "DISABLED";
    MULT2 mult_31s_19s_0_mult_14_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mult_31s_19s_0_cin_lr_14), .CO(mco_105), .P0(mult_31s_19s_0_pp_7_15), 
          .P1(mult_31s_19s_0_pp_7_16)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_105), .CO(mco_106), .P0(mult_31s_19s_0_pp_7_17), .P1(mult_31s_19s_0_pp_7_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_106), .CO(mco_107), .P0(mult_31s_19s_0_pp_7_19), .P1(mult_31s_19s_0_pp_7_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), .CI(mco_107), 
          .CO(mco_108), .P0(mult_31s_19s_0_pp_7_21), .P1(mult_31s_19s_0_pp_7_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_108), .CO(mco_109), .P0(mult_31s_19s_0_pp_7_23), .P1(mult_31s_19s_0_pp_7_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_109), .CO(mco_110), .P0(mult_31s_19s_0_pp_7_25), .P1(mult_31s_19s_0_pp_7_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_110), .CO(mco_111), .P0(mult_31s_19s_0_pp_7_27), .P1(mult_31s_19s_0_pp_7_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_111), .CO(mco_112), .P0(mult_31s_19s_0_pp_7_29), .P1(mult_31s_19s_0_pp_7_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_14_8 (.A0(T[17]), .A1(T[18]), .A2(T[18]), 
          .A3(T[19]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_112), .P0(mult_31s_19s_0_pp_7_31), .P1(mult_31s_19s_0_pp_7_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    IB litin_pad (.I(litin), .O(litin_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[28:33])
    FD1S3IX cur2_419__i17 (.D(n148_adj_15), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i17.GSR = "DISABLED";
    CCU2D cnt_clk_420_add_4_3 (.A0(cnt_clk[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4005), .COUT(n4006), .S0(n164), .S1(n163));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_clk_420_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_clk_420_add_4_3.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_clk_420_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n4005), .S1(n165));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420_add_4_1.INIT0 = 16'hF000;
    defparam cnt_clk_420_add_4_1.INIT1 = 16'h0555;
    defparam cnt_clk_420_add_4_1.INJECT1_0 = "NO";
    defparam cnt_clk_420_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i29 (.D(n136), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[29])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i29.GSR = "DISABLED";
    LUT4 i1125_4_lut (.A(COUNT1[10]), .B(COUNT1[11]), .C(n3528), .D(COUNT1[9]), 
         .Z(n3648)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1125_4_lut.init = 16'hccc8;
    MULT2 mult_31s_19s_0_mult_16_0 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mult_31s_19s_0_cin_lr_16), .CO(mco_120), .P0(mult_31s_19s_0_pp_8_17), 
          .P1(mult_31s_19s_0_pp_8_18)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_16_1 (.A0(GND_net), .A1(GND_net), .A2(GND_net), 
          .A3(GND_net), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_120), .CO(mco_121), .P0(mult_31s_19s_0_pp_8_19), .P1(mult_31s_19s_0_pp_8_20)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_16_2 (.A0(GND_net), .A1(T[6]), .A2(T[6]), 
          .A3(T[7]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_121), .CO(mco_122), .P0(mult_31s_19s_0_pp_8_21), .P1(mult_31s_19s_0_pp_8_22)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_16_3 (.A0(T[7]), .A1(T[8]), .A2(T[8]), .A3(T[9]), 
          .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), .CI(mco_122), 
          .CO(mco_123), .P0(mult_31s_19s_0_pp_8_23), .P1(mult_31s_19s_0_pp_8_24)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_16_4 (.A0(T[9]), .A1(T[10]), .A2(T[10]), 
          .A3(T[11]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_123), .CO(mco_124), .P0(mult_31s_19s_0_pp_8_25), .P1(mult_31s_19s_0_pp_8_26)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_16_5 (.A0(T[11]), .A1(T[12]), .A2(T[12]), 
          .A3(T[13]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_124), .CO(mco_125), .P0(mult_31s_19s_0_pp_8_27), .P1(mult_31s_19s_0_pp_8_28)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_16_6 (.A0(T[13]), .A1(T[14]), .A2(T[14]), 
          .A3(T[15]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_125), .CO(mco_126), .P0(mult_31s_19s_0_pp_8_29), .P1(mult_31s_19s_0_pp_8_30)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    MULT2 mult_31s_19s_0_mult_16_7 (.A0(T[15]), .A1(T[16]), .A2(T[16]), 
          .A3(T[17]), .B0(GND_net), .B1(GND_net), .B2(GND_net), .B3(GND_net), 
          .CI(mco_126), .P0(mult_31s_19s_0_pp_8_31), .P1(mult_31s_19s_0_pp_8_32)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    FD1S3IX cur2_419__i16 (.D(n149_adj_16), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i16.GSR = "DISABLED";
    CCU2D add_323_15 (.A0(T[19]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[20]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3962), 
          .COUT(n3963), .S0(n2146), .S1(n2145));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_15.INIT0 = 16'h5999;
    defparam add_323_15.INIT1 = 16'h5666;
    defparam add_323_15.INJECT1_0 = "NO";
    defparam add_323_15.INJECT1_1 = "NO";
    CCU2D add_323_13 (.A0(T[17]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[18]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3961), 
          .COUT(n3962), .S0(n2148), .S1(n2147));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_13.INIT0 = 16'h5666;
    defparam add_323_13.INIT1 = 16'h5999;
    defparam add_323_13.INJECT1_0 = "NO";
    defparam add_323_13.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i28 (.D(n137), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[28])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i28.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_2 (.A(n87), .B(n89), .C(n88), .Z(n4059)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_2.init = 16'h8080;
    LUT4 i795_1_lut (.A(clrin_c), .Z(clk_c_enable_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[10:15])
    defparam i795_1_lut.init = 16'h5555;
    IB sdnin_pad (.I(sdnin), .O(sdnin_c));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[22:27])
    FD1S3IX cur2_419__i15 (.D(n150_adj_17), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i15.GSR = "DISABLED";
    CCU2D add_323_11 (.A0(T[15]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[16]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3960), 
          .COUT(n3961), .S0(n2150), .S1(n2149));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_11.INIT0 = 16'h5999;
    defparam add_323_11.INIT1 = 16'h5999;
    defparam add_323_11.INJECT1_0 = "NO";
    defparam add_323_11.INJECT1_1 = "NO";
    CCU2D add_323_9 (.A0(T[13]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[14]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3959), 
          .COUT(n3960), .S0(n2152), .S1(n2151));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_9.INIT0 = 16'h5666;
    defparam add_323_9.INIT1 = 16'h5999;
    defparam add_323_9.INJECT1_0 = "NO";
    defparam add_323_9.INJECT1_1 = "NO";
    FD1S3IX cnt_clk_420__i0 (.D(n165), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cnt_clk[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(132[14:21])
    defparam cnt_clk_420__i0.GSR = "DISABLED";
    CCU2D add_323_7 (.A0(T[11]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[12]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3958), 
          .COUT(n3959), .S0(n2154), .S1(n2153));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_7.INIT0 = 16'h5666;
    defparam add_323_7.INIT1 = 16'h5666;
    defparam add_323_7.INJECT1_0 = "NO";
    defparam add_323_7.INJECT1_1 = "NO";
    FADD2B mult_31s_19s_0_cin_lr_add_0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_31s_19s_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(134[17:22])
    LUT4 i1005_2_lut (.A(COUNT1[7]), .B(COUNT1[8]), .Z(n3528)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1005_2_lut.init = 16'h8888;
    LUT4 i1539_4_lut (.A(n87_N_179[12]), .B(n4268), .C(n4246), .D(n4244), 
         .Z(clr_N_507)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(32[8:21])
    defparam i1539_4_lut.init = 16'h4000;
    LUT4 i1538_4_lut (.A(n87_N_179[7]), .B(n87_N_179[14]), .C(n87_N_179[9]), 
         .D(n87_N_179[10]), .Z(n4268)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(32[8:21])
    defparam i1538_4_lut.init = 16'h0001;
    LUT4 i1516_4_lut (.A(n4176), .B(n87_N_179[15]), .C(n87_N_179[16]), 
         .D(n87_N_179[2]), .Z(n4246)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1516_4_lut.init = 16'h8000;
    LUT4 i1514_4_lut (.A(n4218), .B(n87_N_179[1]), .C(n4178), .D(n87_N_179[0]), 
         .Z(n4244)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1514_4_lut.init = 16'h8000;
    CCU2D add_323_5 (.A0(T[9]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[10]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3957), 
          .COUT(n3958), .S0(n2156), .S1(n2155));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_5.INIT0 = 16'h5999;
    defparam add_323_5.INIT1 = 16'h5999;
    defparam add_323_5.INJECT1_0 = "NO";
    defparam add_323_5.INJECT1_1 = "NO";
    LUT4 i1446_2_lut (.A(n87_N_179[11]), .B(n87_N_179[4]), .Z(n4176)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1446_2_lut.init = 16'h8888;
    LUT4 i1488_4_lut (.A(n87_N_179[17]), .B(n87_N_179[6]), .C(n87_N_179[8]), 
         .D(n87_N_179[13]), .Z(n4218)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1488_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_adj_3 (.A(COUNT1[17]), .B(COUNT1[16]), .C(COUNT1[15]), 
         .Z(n4055)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(75[8:21])
    defparam i2_3_lut_adj_3.init = 16'h8080;
    LUT4 i338_1_lut (.A(n2584), .Z(Y_c)) /* synthesis lut_function=(!(A)) */ ;
    defparam i338_1_lut.init = 16'h5555;
    LUT4 i1448_2_lut (.A(n87_N_179[3]), .B(n87_N_179[5]), .Z(n4178)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1448_2_lut.init = 16'h8888;
    LUT4 i811_1_lut (.A(supin_c), .Z(clk_c_enable_23)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(6[16:21])
    defparam i811_1_lut.init = 16'h5555;
    LUT4 mux_308_i7_3_lut_4_lut (.A(sup), .B(n2444), .C(n6), .D(n2159), 
         .Z(T_31__N_33[6])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam mux_308_i7_3_lut_4_lut.init = 16'hf202;
    LUT4 mux_308_i9_3_lut_4_lut (.A(sup), .B(n2444), .C(n6), .D(n2157), 
         .Z(T_31__N_33[8])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam mux_308_i9_3_lut_4_lut.init = 16'hfd0d;
    FD1S3DX COUNT1_102_i14 (.D(n293_N_253[14]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n296));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i14.GSR = "DISABLED";
    FD1S3IX cur2_419__i0 (.D(n165_adj_32), .CK(clk_c), .CD(cnt_clk_31__N_437), 
            .Q(cur2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(148[8] 152[15])
    defparam cur2_419__i0.GSR = "DISABLED";
    LUT4 i1522_4_lut (.A(n190_N_216[15]), .B(n190_N_216[17]), .C(n190_N_216[2]), 
         .D(n4208), .Z(n4252)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1522_4_lut.init = 16'h8000;
    FD1S3AX COUNT1_42_i17 (.D(n87_N_179[17]), .CK(clk_c), .Q(n87));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i17.GSR = "ENABLED";
    LUT4 i1508_4_lut (.A(n4214), .B(n4226), .C(n190_N_216[0]), .D(n190_N_216[16]), 
         .Z(n4238)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1508_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_adj_4 (.A(LIGHT_CTL[2]), .B(LIGHT_CTL[0]), .C(LIGHT_CTL[7]), 
         .Z(n4156)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_4.init = 16'h0404;
    VLO i1 (.Z(GND_net));
    LUT4 i1094_4_lut (.A(n94), .B(n93), .C(n3532), .D(n95), .Z(n3617)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1094_4_lut.init = 16'hccc8;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1318_2_lut (.A(LIGHT_CTL[7]), .B(LIGHT_CTL[0]), .Z(n3230)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1318_2_lut.init = 16'h6666;
    CCU2D add_323_3 (.A0(T[7]), .B0(sup), .C0(GND_net), .D0(GND_net), 
          .A1(T[8]), .B1(sup), .C1(GND_net), .D1(GND_net), .CIN(n3956), 
          .COUT(n3957), .S0(n2158), .S1(n2157));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_3.INIT0 = 16'h5999;
    defparam add_323_3.INIT1 = 16'h5666;
    defparam add_323_3.INJECT1_0 = "NO";
    defparam add_323_3.INJECT1_1 = "NO";
    CCU2D add_323_1 (.A0(sup), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[6]), .B1(sup), .C1(GND_net), .D1(GND_net), .COUT(n3956), 
          .S1(n2159));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam add_323_1.INIT0 = 16'h5000;
    defparam add_323_1.INIT1 = 16'h5999;
    defparam add_323_1.INJECT1_0 = "NO";
    defparam add_323_1.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3955), .S0(n2549));
    defparam sub_334_add_2_cout.INIT0 = 16'h0000;
    defparam sub_334_add_2_cout.INIT1 = 16'h0000;
    defparam sub_334_add_2_cout.INJECT1_0 = "NO";
    defparam sub_334_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_27 (.A0(cnt_clk[30]), .B0(T[31]), .C0(GND_net), 
          .D0(GND_net), .A1(T[31]), .B1(cnt_clk[31]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3954), .COUT(n3955));
    defparam sub_334_add_2_27.INIT0 = 16'h5999;
    defparam sub_334_add_2_27.INIT1 = 16'h5999;
    defparam sub_334_add_2_27.INJECT1_0 = "NO";
    defparam sub_334_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_25 (.A0(cnt_clk[28]), .B0(T[29]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[29]), .B1(T[30]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3953), .COUT(n3954));
    defparam sub_334_add_2_25.INIT0 = 16'h5999;
    defparam sub_334_add_2_25.INIT1 = 16'h5999;
    defparam sub_334_add_2_25.INJECT1_0 = "NO";
    defparam sub_334_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_23 (.A0(cnt_clk[26]), .B0(T[27]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[27]), .B1(T[28]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3952), .COUT(n3953));
    defparam sub_334_add_2_23.INIT0 = 16'h5999;
    defparam sub_334_add_2_23.INIT1 = 16'h5999;
    defparam sub_334_add_2_23.INJECT1_0 = "NO";
    defparam sub_334_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_21 (.A0(cnt_clk[24]), .B0(T[25]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[25]), .B1(T[26]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3951), .COUT(n3952));
    defparam sub_334_add_2_21.INIT0 = 16'h5999;
    defparam sub_334_add_2_21.INIT1 = 16'h5999;
    defparam sub_334_add_2_21.INJECT1_0 = "NO";
    defparam sub_334_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_19 (.A0(cnt_clk[22]), .B0(T[23]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[23]), .B1(T[24]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3950), .COUT(n3951));
    defparam sub_334_add_2_19.INIT0 = 16'h5999;
    defparam sub_334_add_2_19.INIT1 = 16'h5999;
    defparam sub_334_add_2_19.INJECT1_0 = "NO";
    defparam sub_334_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_17 (.A0(cnt_clk[20]), .B0(T[21]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[21]), .B1(T[22]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3949), .COUT(n3950));
    defparam sub_334_add_2_17.INIT0 = 16'h5999;
    defparam sub_334_add_2_17.INIT1 = 16'h5999;
    defparam sub_334_add_2_17.INJECT1_0 = "NO";
    defparam sub_334_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_15 (.A0(cnt_clk[18]), .B0(T[19]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[19]), .B1(T[20]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3948), .COUT(n3949));
    defparam sub_334_add_2_15.INIT0 = 16'h5999;
    defparam sub_334_add_2_15.INIT1 = 16'h5999;
    defparam sub_334_add_2_15.INJECT1_0 = "NO";
    defparam sub_334_add_2_15.INJECT1_1 = "NO";
    LUT4 i1492_4_lut (.A(COUNT1_17__N_290[17]), .B(COUNT1_17__N_290[6]), 
         .C(COUNT1_17__N_290[8]), .D(COUNT1_17__N_290[13]), .Z(n4222)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1492_4_lut.init = 16'h8000;
    LUT4 i1541_4_lut (.A(n190_N_216[14]), .B(n190_N_216[12]), .C(n190_N_216[7]), 
         .D(n190_N_216[10]), .Z(n4271)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(47[8:21])
    defparam i1541_4_lut.init = 16'h0001;
    CCU2D add_1315_26 (.A0(T[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4004), 
          .S1(n2444));
    defparam add_1315_26.INIT0 = 16'hf555;
    defparam add_1315_26.INIT1 = 16'h0000;
    defparam add_1315_26.INJECT1_0 = "NO";
    defparam add_1315_26.INJECT1_1 = "NO";
    LUT4 mux_308_i15_3_lut_4_lut (.A(sup), .B(n2444), .C(n6), .D(n2151), 
         .Z(T_31__N_33[14])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam mux_308_i15_3_lut_4_lut.init = 16'hf202;
    LUT4 i1504_2_lut (.A(COUNT1_17__N_290[3]), .B(COUNT1_17__N_290[5]), 
         .Z(n4234)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1504_2_lut.init = 16'h8888;
    FD1P3IX T_i7 (.D(n2158), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i7.GSR = "DISABLED";
    LUT4 mux_308_i20_3_lut_4_lut (.A(sup), .B(n2444), .C(n6), .D(n2146), 
         .Z(T_31__N_33[19])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam mux_308_i20_3_lut_4_lut.init = 16'hf202;
    LUT4 mux_308_i12_3_lut (.A(n2154), .B(n4358), .C(n6), .Z(T_31__N_33[11])) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam mux_308_i12_3_lut.init = 16'ha3a3;
    CCU2D sub_326_add_2_27 (.A0(T[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4049), 
          .S1(n2409));
    defparam sub_326_add_2_27.INIT0 = 16'h5555;
    defparam sub_326_add_2_27.INIT1 = 16'h0000;
    defparam sub_326_add_2_27.INJECT1_0 = "NO";
    defparam sub_326_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_25 (.A0(T[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4048), 
          .COUT(n4049));
    defparam sub_326_add_2_25.INIT0 = 16'hf555;
    defparam sub_326_add_2_25.INIT1 = 16'hf555;
    defparam sub_326_add_2_25.INJECT1_0 = "NO";
    defparam sub_326_add_2_25.INJECT1_1 = "NO";
    CCU2D add_1315_24 (.A0(T[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4003), 
          .COUT(n4004));
    defparam add_1315_24.INIT0 = 16'h5555;
    defparam add_1315_24.INIT1 = 16'h5555;
    defparam add_1315_24.INJECT1_0 = "NO";
    defparam add_1315_24.INJECT1_1 = "NO";
    CCU2D add_1315_22 (.A0(T[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4002), 
          .COUT(n4003));
    defparam add_1315_22.INIT0 = 16'h5555;
    defparam add_1315_22.INIT1 = 16'h5555;
    defparam add_1315_22.INJECT1_0 = "NO";
    defparam add_1315_22.INJECT1_1 = "NO";
    CCU2D add_1315_20 (.A0(T[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4001), 
          .COUT(n4002));
    defparam add_1315_20.INIT0 = 16'h5555;
    defparam add_1315_20.INIT1 = 16'h5555;
    defparam add_1315_20.INJECT1_0 = "NO";
    defparam add_1315_20.INJECT1_1 = "NO";
    CCU2D add_1315_18 (.A0(T[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4000), 
          .COUT(n4001));
    defparam add_1315_18.INIT0 = 16'h5555;
    defparam add_1315_18.INIT1 = 16'h5555;
    defparam add_1315_18.INJECT1_0 = "NO";
    defparam add_1315_18.INJECT1_1 = "NO";
    CCU2D add_1315_16 (.A0(T[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3999), 
          .COUT(n4000));
    defparam add_1315_16.INIT0 = 16'h5555;
    defparam add_1315_16.INIT1 = 16'h5555;
    defparam add_1315_16.INJECT1_0 = "NO";
    defparam add_1315_16.INJECT1_1 = "NO";
    CCU2D add_1315_14 (.A0(T[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3998), 
          .COUT(n3999));
    defparam add_1315_14.INIT0 = 16'h5aaa;
    defparam add_1315_14.INIT1 = 16'h5555;
    defparam add_1315_14.INJECT1_0 = "NO";
    defparam add_1315_14.INJECT1_1 = "NO";
    CCU2D add_1315_12 (.A0(T[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3997), 
          .COUT(n3998));
    defparam add_1315_12.INIT0 = 16'h5aaa;
    defparam add_1315_12.INIT1 = 16'h5aaa;
    defparam add_1315_12.INJECT1_0 = "NO";
    defparam add_1315_12.INJECT1_1 = "NO";
    CCU2D add_1315_10 (.A0(T[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3996), 
          .COUT(n3997));
    defparam add_1315_10.INIT0 = 16'h5555;
    defparam add_1315_10.INIT1 = 16'h5aaa;
    defparam add_1315_10.INJECT1_0 = "NO";
    defparam add_1315_10.INJECT1_1 = "NO";
    CCU2D add_1315_8 (.A0(T[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3995), 
          .COUT(n3996));
    defparam add_1315_8.INIT0 = 16'h5555;
    defparam add_1315_8.INIT1 = 16'h5aaa;
    defparam add_1315_8.INJECT1_0 = "NO";
    defparam add_1315_8.INJECT1_1 = "NO";
    CCU2D add_1315_4 (.A0(T[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3993), 
          .COUT(n3994));
    defparam add_1315_4.INIT0 = 16'h5aaa;
    defparam add_1315_4.INIT1 = 16'h5555;
    defparam add_1315_4.INJECT1_0 = "NO";
    defparam add_1315_4.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_13 (.A0(cnt_clk[16]), .B0(T[17]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[17]), .B1(T[18]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3947), .COUT(n3948));
    defparam sub_334_add_2_13.INIT0 = 16'h5999;
    defparam sub_334_add_2_13.INIT1 = 16'h5999;
    defparam sub_334_add_2_13.INJECT1_0 = "NO";
    defparam sub_334_add_2_13.INJECT1_1 = "NO";
    LUT4 mux_308_i13_3_lut (.A(n2153), .B(n4358), .C(n6), .Z(T_31__N_33[12])) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam mux_308_i13_3_lut.init = 16'ha3a3;
    CCU2D sub_326_add_2_23 (.A0(T[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4047), 
          .COUT(n4048));
    defparam sub_326_add_2_23.INIT0 = 16'hf555;
    defparam sub_326_add_2_23.INIT1 = 16'hf555;
    defparam sub_326_add_2_23.INJECT1_0 = "NO";
    defparam sub_326_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_21 (.A0(T[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4046), 
          .COUT(n4047));
    defparam sub_326_add_2_21.INIT0 = 16'h0aaa;
    defparam sub_326_add_2_21.INIT1 = 16'hf555;
    defparam sub_326_add_2_21.INJECT1_0 = "NO";
    defparam sub_326_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_19 (.A0(T[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4045), 
          .COUT(n4046));
    defparam sub_326_add_2_19.INIT0 = 16'h0aaa;
    defparam sub_326_add_2_19.INIT1 = 16'h0aaa;
    defparam sub_326_add_2_19.INJECT1_0 = "NO";
    defparam sub_326_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_17 (.A0(T[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4044), 
          .COUT(n4045));
    defparam sub_326_add_2_17.INIT0 = 16'hf555;
    defparam sub_326_add_2_17.INIT1 = 16'hf555;
    defparam sub_326_add_2_17.INJECT1_0 = "NO";
    defparam sub_326_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_15 (.A0(T[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4043), 
          .COUT(n4044));
    defparam sub_326_add_2_15.INIT0 = 16'hf555;
    defparam sub_326_add_2_15.INIT1 = 16'h0aaa;
    defparam sub_326_add_2_15.INJECT1_0 = "NO";
    defparam sub_326_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_13 (.A0(T[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4042), 
          .COUT(n4043));
    defparam sub_326_add_2_13.INIT0 = 16'h0aaa;
    defparam sub_326_add_2_13.INIT1 = 16'hf555;
    defparam sub_326_add_2_13.INJECT1_0 = "NO";
    defparam sub_326_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_11 (.A0(T[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4041), 
          .COUT(n4042));
    defparam sub_326_add_2_11.INIT0 = 16'h0aaa;
    defparam sub_326_add_2_11.INIT1 = 16'h0aaa;
    defparam sub_326_add_2_11.INJECT1_0 = "NO";
    defparam sub_326_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_9 (.A0(T[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4040), 
          .COUT(n4041));
    defparam sub_326_add_2_9.INIT0 = 16'hf555;
    defparam sub_326_add_2_9.INIT1 = 16'hf555;
    defparam sub_326_add_2_9.INJECT1_0 = "NO";
    defparam sub_326_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_7 (.A0(T[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4039), 
          .COUT(n4040));
    defparam sub_326_add_2_7.INIT0 = 16'hf555;
    defparam sub_326_add_2_7.INIT1 = 16'hf555;
    defparam sub_326_add_2_7.INJECT1_0 = "NO";
    defparam sub_326_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_5 (.A0(T[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4038), 
          .COUT(n4039));
    defparam sub_326_add_2_5.INIT0 = 16'h0aaa;
    defparam sub_326_add_2_5.INIT1 = 16'h0aaa;
    defparam sub_326_add_2_5.INJECT1_0 = "NO";
    defparam sub_326_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_326_add_2_3 (.A0(T[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4037), 
          .COUT(n4038));
    defparam sub_326_add_2_3.INIT0 = 16'hf555;
    defparam sub_326_add_2_3.INIT1 = 16'h0aaa;
    defparam sub_326_add_2_3.INJECT1_0 = "NO";
    defparam sub_326_add_2_3.INJECT1_1 = "NO";
    FD1P3AX sup_190 (.D(sup_N_503), .SP(clk_c_enable_23), .CK(clk_c), 
            .Q(sup)) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam sup_190.GSR = "DISABLED";
    FD1P3AX sdn_192 (.D(sdn_N_505), .SP(clk_c_enable_24), .CK(clk_c), 
            .Q(sdn)) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam sdn_192.GSR = "DISABLED";
    FD1P3AX lit_194 (.D(lit_N_509), .SP(clk_c_enable_25), .CK(clk_c), 
            .Q(lit)) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam lit_194.GSR = "DISABLED";
    FD1S3AX COUNT1_42_i16 (.D(n87_N_179[16]), .CK(clk_c), .Q(n88));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i16.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i15 (.D(n87_N_179[15]), .CK(clk_c), .Q(n89));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i15.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i14 (.D(n87_N_179[14]), .CK(clk_c), .Q(n90));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i14.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i13 (.D(n87_N_179[13]), .CK(clk_c), .Q(n91));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i13.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i12 (.D(n87_N_179[12]), .CK(clk_c), .Q(n92));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i12.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i11 (.D(n87_N_179[11]), .CK(clk_c), .Q(n93));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i11.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i10 (.D(n87_N_179[10]), .CK(clk_c), .Q(n94));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i10.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i9 (.D(n87_N_179[9]), .CK(clk_c), .Q(n95));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i9.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i8 (.D(n87_N_179[8]), .CK(clk_c), .Q(n96));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i8.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i7 (.D(n87_N_179[7]), .CK(clk_c), .Q(n97));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i7.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i6 (.D(n87_N_179[6]), .CK(clk_c), .Q(n98));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i6.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i5 (.D(n87_N_179[5]), .CK(clk_c), .Q(n99));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i5.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i4 (.D(n87_N_179[4]), .CK(clk_c), .Q(n100));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i4.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i3 (.D(n87_N_179[3]), .CK(clk_c), .Q(n101));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i3.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i2 (.D(n87_N_179[2]), .CK(clk_c), .Q(n102));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i2.GSR = "ENABLED";
    FD1S3AX COUNT1_42_i1 (.D(n87_N_179[1]), .CK(clk_c), .Q(n103));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(29[4] 34[10])
    defparam COUNT1_42_i1.GSR = "ENABLED";
    FD1S3DX COUNT1_102_i13 (.D(n293_N_253[13]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n297));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i13.GSR = "DISABLED";
    FD1P3IX T_i31 (.D(n2134), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i31.GSR = "DISABLED";
    FD1P3IX T_i30 (.D(n2135), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i30.GSR = "DISABLED";
    FD1P3IX T_i29 (.D(n2136), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i29.GSR = "DISABLED";
    LUT4 mux_308_i21_3_lut_4_lut (.A(sup), .B(n2444), .C(n6), .D(n2145), 
         .Z(T_31__N_33[20])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam mux_308_i21_3_lut_4_lut.init = 16'hfd0d;
    FD1P3IX T_i28 (.D(n2137), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i28.GSR = "DISABLED";
    LUT4 mux_308_i24_3_lut_4_lut (.A(sup), .B(n2444), .C(n6), .D(n2142), 
         .Z(T_31__N_33[23])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;
    defparam mux_308_i24_3_lut_4_lut.init = 16'hfd0d;
    FD1P3IX T_i27 (.D(n2138), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i27.GSR = "DISABLED";
    FD1P3JX T_i17 (.D(n2148), .SP(clk_c_enable_33), .PD(n3326), .CK(clk_c), 
            .Q(T[17])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i17.GSR = "DISABLED";
    CCU2D sub_334_add_2_11 (.A0(cnt_clk[14]), .B0(T[15]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[15]), .B1(T[16]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3946), .COUT(n3947));
    defparam sub_334_add_2_11.INIT0 = 16'h5999;
    defparam sub_334_add_2_11.INIT1 = 16'h5999;
    defparam sub_334_add_2_11.INJECT1_0 = "NO";
    defparam sub_334_add_2_11.INJECT1_1 = "NO";
    LUT4 i1542_4_lut (.A(n190_N_216[9]), .B(n4271), .C(n4252), .D(n4238), 
         .Z(sup_N_503)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(47[8:21])
    defparam i1542_4_lut.init = 16'h4000;
    CCU2D sub_334_add_2_9 (.A0(cnt_clk[12]), .B0(T[13]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[13]), .B1(T[14]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3945), .COUT(n3946));
    defparam sub_334_add_2_9.INIT0 = 16'h5999;
    defparam sub_334_add_2_9.INIT1 = 16'h5999;
    defparam sub_334_add_2_9.INJECT1_0 = "NO";
    defparam sub_334_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_7 (.A0(cnt_clk[10]), .B0(T[11]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_clk[11]), .B1(T[12]), .C1(GND_net), 
          .D1(GND_net), .CIN(n3944), .COUT(n3945));
    defparam sub_334_add_2_7.INIT0 = 16'h5999;
    defparam sub_334_add_2_7.INIT1 = 16'h5999;
    defparam sub_334_add_2_7.INJECT1_0 = "NO";
    defparam sub_334_add_2_7.INJECT1_1 = "NO";
    FD1S3DX COUNT1_102_i12 (.D(n293_N_253[12]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n298));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i12.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i11 (.D(n293_N_253[11]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n299));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i11.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i10 (.D(n293_N_253[10]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n300));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i10.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i9 (.D(n293_N_253[9]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n301));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i9.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i8 (.D(n293_N_253[8]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n302));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i8.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i7 (.D(n293_N_253[7]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n303));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i7.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i6 (.D(n293_N_253[6]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n304));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i6.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i5 (.D(n293_N_253[5]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n305));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i5.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i4 (.D(n293_N_253[4]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n306));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i4.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i3 (.D(n293_N_253[3]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n307));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i3.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i2 (.D(n293_N_253[2]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n308));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i2.GSR = "DISABLED";
    FD1S3DX COUNT1_102_i1 (.D(n293_N_253[1]), .CK(clk_c), .CD(sdnin_c), 
            .Q(n309));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(60[4] 65[10])
    defparam COUNT1_102_i1.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i17 (.D(n190_N_216[17]), .CK(clk_c), .CD(supin_c), 
            .Q(n190));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i17.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i16 (.D(n190_N_216[16]), .CK(clk_c), .CD(supin_c), 
            .Q(n191));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i16.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i15 (.D(n190_N_216[15]), .CK(clk_c), .CD(supin_c), 
            .Q(n192));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i15.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i14 (.D(n190_N_216[14]), .CK(clk_c), .CD(supin_c), 
            .Q(n193));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i14.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i13 (.D(n190_N_216[13]), .CK(clk_c), .CD(supin_c), 
            .Q(n194));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i13.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i12 (.D(n190_N_216[12]), .CK(clk_c), .CD(supin_c), 
            .Q(n195));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i12.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i11 (.D(n190_N_216[11]), .CK(clk_c), .CD(supin_c), 
            .Q(n196));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i11.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i10 (.D(n190_N_216[10]), .CK(clk_c), .CD(supin_c), 
            .Q(n197));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i10.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i9 (.D(n190_N_216[9]), .CK(clk_c), .CD(supin_c), 
            .Q(n198));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i9.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i8 (.D(n190_N_216[8]), .CK(clk_c), .CD(supin_c), 
            .Q(n199));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i8.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i7 (.D(n190_N_216[7]), .CK(clk_c), .CD(supin_c), 
            .Q(n200));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i7.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i6 (.D(n190_N_216[6]), .CK(clk_c), .CD(supin_c), 
            .Q(n201));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i6.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i5 (.D(n190_N_216[5]), .CK(clk_c), .CD(supin_c), 
            .Q(n202));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i5.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i4 (.D(n190_N_216[4]), .CK(clk_c), .CD(supin_c), 
            .Q(n203));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i4.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i3 (.D(n190_N_216[3]), .CK(clk_c), .CD(supin_c), 
            .Q(n204));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i3.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i2 (.D(n190_N_216[2]), .CK(clk_c), .CD(supin_c), 
            .Q(n205));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i2.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i1 (.D(n190_N_216[1]), .CK(clk_c), .CD(supin_c), 
            .Q(n206));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i1.GSR = "DISABLED";
    FD1S3DX COUNT1_72_i0 (.D(n190_N_216[0]), .CK(clk_c), .CD(supin_c), 
            .Q(n207));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(44[4] 49[10])
    defparam COUNT1_72_i0.GSR = "DISABLED";
    FD1S3DX COUNT1_i17 (.D(COUNT1_17__N_290[17]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[17]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i17.GSR = "DISABLED";
    CCU2D sub_334_add_2_5 (.A0(cnt_clk[8]), .B0(T[9]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_clk[9]), .B1(T[10]), .C1(GND_net), .D1(GND_net), .CIN(n3943), 
          .COUT(n3944));
    defparam sub_334_add_2_5.INIT0 = 16'h5999;
    defparam sub_334_add_2_5.INIT1 = 16'h5999;
    defparam sub_334_add_2_5.INJECT1_0 = "NO";
    defparam sub_334_add_2_5.INJECT1_1 = "NO";
    LUT4 mux_308_i26_3_lut_4_lut (.A(sup), .B(n4359), .C(n6), .D(n2140), 
         .Z(T_31__N_33[25])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam mux_308_i26_3_lut_4_lut.init = 16'hf404;
    LUT4 mux_308_i11_3_lut_4_lut (.A(sup), .B(n4359), .C(n6), .D(n2155), 
         .Z(T_31__N_33[10])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam mux_308_i11_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_3_lut (.A(LIGHT_CTL[0]), .B(LIGHT_CTL[7]), .C(LIGHT_CTL[2]), 
         .Z(n4173)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i14_3_lut_3_lut_4_lut (.A(sup), .B(n4359), .C(n2147), .D(n6), 
         .Z(T_31__N_33[18])) /* synthesis lut_function=(A (C+!(D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam i14_3_lut_3_lut_4_lut.init = 16'hf0bb;
    LUT4 mux_308_i16_3_lut_4_lut (.A(sup), .B(n4359), .C(n6), .D(n2150), 
         .Z(T_31__N_33[15])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam mux_308_i16_3_lut_4_lut.init = 16'hf404;
    LUT4 mux_308_i22_3_lut (.A(n2144), .B(n4358), .C(n6), .Z(T_31__N_33[21])) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam mux_308_i22_3_lut.init = 16'ha3a3;
    LUT4 mux_308_i25_3_lut_4_lut (.A(sup), .B(n4359), .C(n6), .D(n2141), 
         .Z(T_31__N_33[24])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(110[4] 116[9])
    defparam mux_308_i25_3_lut_4_lut.init = 16'hf404;
    FD1S3DX COUNT1_i16 (.D(COUNT1_17__N_290[16]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[16]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i16.GSR = "DISABLED";
    FD1S3DX COUNT1_i15 (.D(COUNT1_17__N_290[15]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[15]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i15.GSR = "DISABLED";
    FD1S3DX COUNT1_i14 (.D(COUNT1_17__N_290[14]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[14]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i14.GSR = "DISABLED";
    FD1S3DX COUNT1_i13 (.D(COUNT1_17__N_290[13]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[13]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i13.GSR = "DISABLED";
    FD1S3DX COUNT1_i12 (.D(COUNT1_17__N_290[12]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[12]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i12.GSR = "DISABLED";
    FD1S3DX COUNT1_i11 (.D(COUNT1_17__N_290[11]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[11]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i11.GSR = "DISABLED";
    FD1S3DX COUNT1_i10 (.D(COUNT1_17__N_290[10]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[10]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i10.GSR = "DISABLED";
    FD1S3DX COUNT1_i9 (.D(COUNT1_17__N_290[9]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[9]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i9.GSR = "DISABLED";
    FD1S3DX COUNT1_i8 (.D(COUNT1_17__N_290[8]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[8]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i8.GSR = "DISABLED";
    FD1S3DX COUNT1_i7 (.D(COUNT1_17__N_290[7]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[7]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i7.GSR = "DISABLED";
    FD1S3DX COUNT1_i6 (.D(COUNT1_17__N_290[6]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[6]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i6.GSR = "DISABLED";
    FD1S3DX COUNT1_i5 (.D(COUNT1_17__N_290[5]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[5]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i5.GSR = "DISABLED";
    FD1S3DX COUNT1_i4 (.D(COUNT1_17__N_290[4]), .CK(clk_c), .CD(litin_c), 
            .Q(COUNT1[4]));   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(74[4] 79[10])
    defparam COUNT1_i4.GSR = "DISABLED";
    CCU2D sub_326_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(T[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n4037));
    defparam sub_326_add_2_1.INIT0 = 16'hF000;
    defparam sub_326_add_2_1.INIT1 = 16'h0aaa;
    defparam sub_326_add_2_1.INJECT1_0 = "NO";
    defparam sub_326_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_334_add_2_3 (.A0(cnt_clk[6]), .B0(T[7]), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_clk[7]), .B1(T[8]), .C1(GND_net), .D1(GND_net), .CIN(n3942), 
          .COUT(n3943));
    defparam sub_334_add_2_3.INIT0 = 16'h5999;
    defparam sub_334_add_2_3.INIT1 = 16'h5999;
    defparam sub_334_add_2_3.INJECT1_0 = "NO";
    defparam sub_334_add_2_3.INJECT1_1 = "NO";
    FD1P3IX T_i26 (.D(n2139), .SP(clk_c_enable_33), .CD(n3326), .CK(clk_c), 
            .Q(T[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i26.GSR = "DISABLED";
    CCU2D sub_334_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_clk[5]), .B1(T[6]), .C1(GND_net), .D1(GND_net), .COUT(n3942));
    defparam sub_334_add_2_1.INIT0 = 16'h0000;
    defparam sub_334_add_2_1.INIT1 = 16'h5999;
    defparam sub_334_add_2_1.INJECT1_0 = "NO";
    defparam sub_334_add_2_1.INJECT1_1 = "NO";
    LUT4 i14_4_lut (.A(n2409), .B(n2444), .C(sup), .D(sdn), .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i14_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut (.A(clk_c_enable_4), .B(clr), .Z(clk_c_enable_19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1P3JX T_i16 (.D(n2149), .SP(clk_c_enable_33), .PD(n3326), .CK(clk_c), 
            .Q(T[16])) /* synthesis lse_init_val=1 */ ;   // c:/users/onion/desktop/fpga-labs/aac_re_code/lab2/impl1/source/lab2.vhd(88[3] 120[10])
    defparam T_i16.GSR = "DISABLED";
    LUT4 i2_3_lut_adj_5 (.A(LIGHT_CTL[0]), .B(LIGHT_CTL[7]), .C(LIGHT_CTL[2]), 
         .Z(LIGHT_CTL_31__N_309[0])) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_5.init = 16'h0404;
    CCU2D sub_330_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3941), .S0(n2479));
    defparam sub_330_add_2_cout.INIT0 = 16'h0000;
    defparam sub_330_add_2_cout.INIT1 = 16'h0000;
    defparam sub_330_add_2_cout.INJECT1_0 = "NO";
    defparam sub_330_add_2_cout.INJECT1_1 = "NO";
    LUT4 i1158_4_lut (.A(n3608), .B(n296), .C(n297), .D(n298), .Z(n3681)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1158_4_lut.init = 16'hfcec;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

