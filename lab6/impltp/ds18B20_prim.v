// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.0.396.4
// Netlist written on Thu Dec 10 10:45:56 2020
//
// Verilog Description of module ds18B20
//

module ds18B20 (clk, dq, rst, sck, rck, ser, led);   // d:/lab_6/temperature.vhd(9[8:15])
    input clk;   // d:/lab_6/temperature.vhd(10[6:9])
    inout dq;   // d:/lab_6/temperature.vhd(11[6:8])
    input rst;   // d:/lab_6/temperature.vhd(12[6:9])
    output sck;   // d:/lab_6/temperature.vhd(13[6:9])
    output rck;   // d:/lab_6/temperature.vhd(14[3:6])
    output ser;   // d:/lab_6/temperature.vhd(15[3:6])
    output [2:0]led;   // d:/lab_6/temperature.vhd(16[3:6])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lab_6/temperature.vhd(10[6:9])
    wire sck_c_1 /* synthesis is_clock=1 */ ;   // d:/lab_6/temperature.vhd(13[6:9])
    wire clk_temp /* synthesis is_clock=1, SET_AS_NETWORK=clk_temp */ ;   // d:/lab_6/temperature.vhd(26[8:16])
    wire clk_N_92 /* synthesis is_inv_clock=1 */ ;   // d:/lab_6/temperature.vhd(13[6:9])
    wire sck_N_88 /* synthesis is_inv_clock=1 */ ;   // d:/lab_6/temperature.vhd(52[9:17])
    
    wire GND_net, VCC_net, rst_c, rck_c, ser_c, n373, n372;
    wire [3:0]STATE;   // d:/lab_6/temperature.vhd(24[8:13])
    
    wire btnflag;
    wire [7:0]write_temp;   // d:/lab_6/temperature.vhd(31[8:18])
    wire [11:0]TMP;   // d:/lab_6/temperature.vhd(32[8:11])
    
    wire tmp_bit;
    wire [3:0]WRITE_BYTE_CNT;   // d:/lab_6/temperature.vhd(34[8:22])
    wire [1:0]WRITE_LOW_CNT;   // d:/lab_6/temperature.vhd(35[8:21])
    wire [1:0]WRITE_HIGH_CNT;   // d:/lab_6/temperature.vhd(36[8:22])
    wire [1:0]READ_BIT_CNT;   // d:/lab_6/temperature.vhd(37[8:20])
    wire [3:0]GET_TMP_CNT;   // d:/lab_6/temperature.vhd(38[8:19])
    wire [16:0]cnt;   // d:/lab_6/temperature.vhd(39[8:11])
    wire [5:0]count;   // d:/lab_6/temperature.vhd(43[8:13])
    
    wire n13552;
    wire [2:0]WRITE_BYTE_FLAG;   // d:/lab_6/temperature.vhd(46[8:23])
    
    wire n884;
    wire [95:0]cycledata;   // d:/lab_6/temperature.vhd(51[8:17])
    
    wire n24054, n28595, n28594, n20164, n371;
    wire [4:0]placecnt;   // d:/lab_6/temperature.vhd(52[9:17])
    
    wire n81, n82, n83;
    wire [2:0]segcnt;   // d:/lab_6/temperature.vhd(53[9:15])
    
    wire mode;
    wire [19:0]key_div;   // d:/lab_6/temperature.vhd(56[9:16])
    
    wire key_div_19__N_136, mode_N_397, n6, n73, n3576, clk_c_enable_50, 
        n24278, n13063, n28631, n28168, n111, clk_temp_N_391, n13528, 
        n831, n28593, n13124, n24154, n370, n368, n367, n13073, 
        n363, n362, n361, n360, n359, n358, n357, n28592, n829_adj_1, 
        n337, n336, n335, n334, n24056, n24277, n307, n317, 
        n318, n20679, n28591, n832_adj_2, n834_adj_3, n90, n89, 
        n88, n28315, n28195, n87, n3071, n28590, n3057, n24153, 
        n24055, n13557, n835, n28589, n4, n824_adj_4, n24052, 
        n886, n24051, n23672, n865, n866, n4_adj_5, n885, n28314, 
        n13760, n28167, n867, n11, n24276, n767, n768, n126, 
        n818, n819_adj_6, n2089, n819, n820, n821, n822, n823, 
        n824, n825, n826, n827, n828, n829, n832, n833, n834, 
        n24275, n28313, n28588, n27774, clk_c_enable_35, n13103, 
        n28312, n13020, n28587, n28311, n24274, n26918, n3053, 
        n120, n825_adj_7;
    wire [3:0]STATE_3__N_144;
    
    wire n24152, n24050, n24049, n24048, n6_adj_8, n58, n28586, 
        n3575, n28310, n28309, n67, n28585, n28194, n868, n28584, 
        n869, n870, n871, n872, n873, n874, n3092, n864, n878, 
        n879, dq_N_376, dq_N_403, n28308, n28307, dq_N_413, dq_N_377, 
        n28583, n28306;
    wire [8:0]temp2;   // d:/lab_6/temperature.vhd(291[10:15])
    
    wire n28305, n28304, n84, n80, n24273, n79, n304, n302, 
        n301, n861, n862, n863, n10, n9, n8, n14, n20653;
    wire [8:0]temp1_8__N_270;
    
    wire n24272, n9_adj_9;
    wire [8:0]temp1_8__N_213;
    
    wire n7, n6_adj_10, n5, n4_adj_11, n3, n2, n8_adj_12, n7_adj_13, 
        n6_adj_14, n5_adj_15;
    wire [5:0]temp2_8__N_286;
    
    wire n86, n3478, n3479, n3480, n3481, n3482, n3483, n3484, 
        n3485, n3486, n24271, n28582, n24150, n3522, n22, n14_adj_16, 
        n13056, n3570, n3571, n3047;
    wire [3:0]ones_3__N_237;
    wire [9:0]tens_3__N_294;
    wire [10:0]tens_3__N_229;
    wire [3:0]zpzone_3__N_253;
    wire [9:0]zpone_3__N_304;
    
    wire n28303, n28302, n28301, n78, n28300, n77, n20, n35, 
        n1510, n1511, n1516, n1517, n1518, n1519, n1520, n1521, 
        n1522, n1523, n1524, n1525, n1526, n1527, n1528, n1529, 
        n1530, n1531;
    wire [6:0]zpzone_3__N_333;
    
    wire n1563, n1564, n1565, n1566, n1567, n1568, n1569, n1570, 
        n1571, n1572, n1573, n1574, n1575, n1576, n1577;
    wire [18:0]ones_3__N_314;
    wire [3:0]ones_3__N_238;
    wire [9:0]tens_3__N_323;
    wire [10:0]tens_3__N_230;
    wire [3:0]zpzone_3__N_254;
    wire [7:0]zpone_3__N_340;
    
    wire n28299, n28298;
    wire [8:0]zpone_3__N_246;
    wire [3:0]cycledata_46__N_70;
    wire [3:0]cycledata_63__N_66;
    wire [3:0]cycledata_15__N_78;
    wire [3:0]cycledata_31__N_74;
    
    wire led_2__N_1, n3046, n28581, n34, n33;
    wire [5:0]placecnt_4__N_367;
    wire [6:0]ser_N_380;
    
    wire ser_N_379, rck_N_378, n32, n10_adj_17, n28580, n3573, n880, 
        n882, n18, n3580, n13513, n24270, n4_adj_18, n31, n24269, 
        n28579, n3045, n24149, n24047, n3044, n6_adj_19, n28175, 
        n85, n28297, n33_adj_20, n3043, n24268, n24148, n3042, 
        n28630, n76, n75, n3041, n28577, n74, n28296, n28295, 
        n28576, n3040, n24267, n3286, n3039, n28193, n28294, n28575, 
        n7_adj_21, n3038, n28293, n12110, n30, n278, n28574, n28039, 
        n11_adj_22, n24266, n28040, n20643, n6_adj_23, n4_adj_24, 
        n3521, n5_adj_25, n3_adj_26, n24046, n1, n26924, n269, 
        n268, n807, n28038, n808, n809, n810, n811, n812, n813, 
        n814, n815, n378, n816, n817, n242, n241, n238, n236, 
        n235, n24892, n24264, n24045, n826_adj_27, n828_adj_28, 
        n827_adj_29, n1_adj_30, n28174, n28292, n28173, n28037, 
        n28192, n390, n391, n392, n393, n394, n395, n396, n397, 
        n27401, n28573, n24146, n24263, n24145, n28191, n24262, 
        n24144, n2_adj_31, n3_adj_32, n4_adj_33, n5_adj_34, n6_adj_35, 
        n7_adj_36, n8_adj_37, n9_adj_38, n10_adj_39, n764, n763, 
        n762, n761, n760, n759, n758, n757, n756, n57, n59, 
        n60, n24261, n28, n780, n779, n778, n777, n776, n775, 
        n774, n773, n772, n770, n24043, n7_adj_40, n755, n754, 
        n753, n24042, n20635, n24260, n4_adj_41, n120_adj_42, n724, 
        n723, n722, n721, n720, n126_adj_43, n24259, n725, clk_c_enable_37, 
        n20627, n297, n24258, n289, n20695, n288, n287, n286, 
        n285, n284, n24143, n283, n24142, n14_adj_44, n235_adj_45, 
        n236_adj_46, n238_adj_47, n241_adj_48, n242_adj_49, n719, 
        n718, n717, n716, n707, n708, n709, n268_adj_50, n269_adj_51, 
        n24061, n28572, n278_adj_52, n706, n705, n704, n703, n702, 
        n701, n700, n272, n699, n301_adj_53, n302_adj_54, n304_adj_55, 
        n24041, n329, n334_adj_56, n335_adj_57, n336_adj_58, n337_adj_59, 
        n28035, n357_adj_60, n358_adj_61, n359_adj_62, n360_adj_63, 
        n361_adj_64, n362_adj_65, n363_adj_66, n13070, n367_adj_67, 
        n368_adj_68, n370_adj_69, n371_adj_70, n372_adj_71, n373_adj_72, 
        n24257, n378_adj_73, n24141, n390_adj_74, n391_adj_75, n392_adj_76, 
        n393_adj_77, n394_adj_78, n395_adj_79, n396_adj_80, n397_adj_81, 
        n24140, n28571, n24139, n28570, n27221, n24256, n24255, 
        n24138, n24254, n20745, n24040, n24252, n2_adj_82, n3_adj_83, 
        n4_adj_84, n5_adj_85, n6_adj_86, n7_adj_87, n8_adj_88, n9_adj_89, 
        n10_adj_90, n11_adj_91, n12, n13, n14_adj_92, n15, n16, 
        n17, n18_adj_93, n654, n653, n652, n651, n650, n649, 
        n648, n647, n646, n645, n28569, n20585, n675, n673, 
        n672, n670, n669, n668, n667, n666, n665, n664, n662, 
        n24137, n24251, n24059, n28291, n20703, n614, n613, n612, 
        n611, n615, n256, n26896, n24039, n13033, n24038, n617, 
        n4_adj_94, n176, n4_adj_95, n599, n598, n597, n596, n595, 
        n594, n593, n592, n591, n190, n283_adj_96, n24037, n24250, 
        n297_adj_97, n24249, n13772, n28628, n289_adj_98, n288_adj_99, 
        n287_adj_100, n286_adj_101, n13516, n285_adj_102, n284_adj_103, 
        n283_adj_104, n609, n24136, n608, n20515, n265, n264, 
        n24135, n24036, n272_adj_105, n24134, n363_adj_106, n367_adj_107, 
        n369, n370_adj_108, n371_adj_109, n372_adj_110, n373_adj_111, 
        n374, n375, n376, n377, n378_adj_112, n24248, n13044, 
        n24035, n28567, n32_adj_113, n4_adj_114, n27372, n562, n560, 
        n559, n558, n557, n13059, n554, n555, n556, n477, n478, 
        n481, n20571, n28566, n10_adj_115, n28626, n24133, n24034, 
        n521, n6_adj_116, n28027, n534, n535, n536, n537, n544, 
        n543, n542, n12098, n38, n573, n574, n575, n576, n577, 
        n578, n579, n28026, n591_adj_117, n592_adj_118, n593_adj_119, 
        n595_adj_120, n596_adj_121, n24247, n28024, n24033, n541, 
        n540, n539, n538, n630, n631, n632, n633, n634, n635, 
        n636, n637, n648_adj_122, n649_adj_123, n650_adj_124, n651_adj_125, 
        n652_adj_126, n653_adj_127, n654_adj_128, n24132, n27367, 
        n537_adj_129, n24032, n28023, n687, n688, n689, n690, 
        n691, n692, n693, n694, n695, n705_adj_130, n706_adj_131, 
        n707_adj_132, n708_adj_133, n709_adj_134, n710, n711, n712, 
        n24246, n28565, n24245, n13091, n744, n745, n746, n747, 
        n748, n749, n750, n751, n752, n753_adj_135, n763_adj_136, 
        n764_adj_137, n765, n766, n767_adj_138, n768_adj_139, n769, 
        n770_adj_140, n17_adj_141, n15_adj_142, n9_adj_143, n6_adj_144, 
        n28022, n24131, n801, n802, n803, n804, n805, n806, 
        n807_adj_145, n808_adj_146, n809_adj_147, n810_adj_148, n811_adj_149, 
        n819_adj_150, n820_adj_151, n821_adj_152, n822_adj_153, n823_adj_154, 
        n824_adj_155, n825_adj_156, n826_adj_157, n827_adj_158, n828_adj_159, 
        n27498, n858, n859, n860, n861_adj_160, n862_adj_161, n863_adj_162, 
        n864_adj_163, n865_adj_164, n866_adj_165, n867_adj_166, n868_adj_167, 
        n869_adj_168, n876, n878_adj_169, n879_adj_170, n880_adj_171, 
        n881, n882_adj_172, n883, n884_adj_173, n885_adj_174, n886_adj_175, 
        n27362, n24243, n27360, n27356, n24129, n915, n916, n917, 
        n918, n919, n920, n921, n922, n923, n924, n925, n926, 
        n927, n13768, clk_c_enable_49, n24242, n933, n934, n935, 
        n936, n937, n938, n939, n940, n941, n943, n944, n28020, 
        n972, n973, n974, n975, n976, n977, n978, n979, n980, 
        n981, n982, n983, n984, n985, n990, n991, n992, n993, 
        n994, n995, n997, n999, n1000, n1001, n1002, n24128, 
        n27354, n1029, n1030, n1031, n1032, n1033, n1034, n1035, 
        n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, 
        n1047, n1049, n1050, n1051, n1052, n1053, n1054, n1055, 
        n1056, n1057, n1058, n1059, n1060, n1061, n24241, n24127, 
        n507, n505, n1086, n1087, n1088, n1089, n1090, n1091, 
        n1092, n1093, n1094, n1095, n1096, n1097, n1098, n1099, 
        n1100, n1101, n924_adj_176, n925_adj_177, n926_adj_178, n927_adj_179, 
        n932, n933_adj_180, n934_adj_181, n936_adj_182, n937_adj_183, 
        n1118, n24240, n24126, n20809, n24125, n28019, n24031, 
        clk_c_enable_41, n27352, n1179, n4511, n4510, n4509, n4508, 
        n4507, n4506, n4505, n4504, n4503, n4502, n4501, n4500, 
        n4499, n4498, n4497, n4496, n4495, n24029, n24238, n2_adj_184, 
        n3_adj_185, n4_adj_186, n5_adj_187, n6_adj_188, n7_adj_189, 
        n8_adj_190, n9_adj_191, n10_adj_192, n11_adj_193, n12_adj_194, 
        n13_adj_195, n14_adj_196, n15_adj_197, n16_adj_198, n17_adj_199, 
        n24124, clk_c_enable_45, n917_adj_200, n918_adj_201, n919_adj_202, 
        n920_adj_203, n921_adj_204, n922_adj_205, n923_adj_206, n865_adj_207, 
        n504, n503, n501, n500, n27350, n28563, n489, n488, 
        n487, n486, n485, n484, n483, n24237, n24028, n24236, 
        clk_c_enable_53, n24235, sck_N_88_enable_3, n24123, n815_adj_208, 
        n13065, n452, n449, n448, n447, n446, n24122, n28562, 
        n26989, n13081, n20070, n24234, n24233, n13057, n24121, 
        n13106, n23978, n24232, n24231, n24120, n397_adj_209, n392_adj_210, 
        n24119, n24027, n8_adj_211, n12_adj_212, n24230, n24229, 
        n24228, n275, n276, n278_adj_213, n279, n280, n281, n282, 
        n283_adj_214, n284_adj_215, n285_adj_216, n286_adj_217, n287_adj_218, 
        n288_adj_219, n24118, n722_adj_220, n24117, n24116, n12104, 
        n13522, n13072, n24227, n13108, n24226, n24114, n24113, 
        n23977, n24112, n24026, n24225, n24111, n24025, n4_adj_221, 
        n24110, n27346, n28561, n24224, n24223, n5_adj_222, n24109, 
        n27340, n27338, n24024, n24022, n24108, n27336, n24222, 
        n24107, n28560, n28190, n20525, n24021, n24106, n27334, 
        n24020, n24019, n2_adj_223, n24017, n24221, n24105, n28559, 
        n13061, n28558, n6_adj_224, n24219, n4654, n27330, n604, 
        n606, n24104, n27326, n27324, n24360, n342, n339, n338, 
        n20501, n642, n643, n644, n645_adj_225, n646_adj_226, n647_adj_227, 
        n27320, n662_adj_228, n663, n664_adj_229, n24016, n24359, 
        n24103, n24015, n13082, n28189, n23976, n24358, n699_adj_230, 
        n700_adj_231, n701_adj_232, n702_adj_233, n703_adj_234, n704_adj_235, 
        n705_adj_236, n24357, n24218, n718_adj_237, n720_adj_238, 
        n721_adj_239, n722_adj_240, n24356, n28557, n24217, n756_adj_241, 
        n757_adj_242, n758_adj_243, n759_adj_244, n760_adj_245, n761_adj_246, 
        n762_adj_247, n763_adj_248, n24014, n28625, n13058, n774_adj_249, 
        n775_adj_250, n776_adj_251, n777_adj_252, n778_adj_253, n779_adj_254, 
        n780_adj_255, n12461, n29287, n28555, n24013, n24012, n24355, 
        n27374, n27300, n813_adj_256, n814_adj_257, n815_adj_258, 
        n816_adj_259, n817_adj_260, n818_adj_261, n819_adj_262, n820_adj_263, 
        n821_adj_264, n831_adj_265, n833_adj_266, n834_adj_267, n835_adj_268, 
        n836, n837, n838, n10_adj_269, n7_adj_270, n2_adj_271, n24354, 
        n870_adj_272, n871_adj_273, n872_adj_274, n873_adj_275, n874_adj_276, 
        n875, n876_adj_277, n877, n878_adj_278, n879_adj_279, n888, 
        n889, n890, n891, n892, n893, n894, n895, n896, n7_adj_280, 
        n27813, n28554, n927_adj_281, n928, n929, n930, n931, 
        n932_adj_282, n933_adj_283, n934_adj_284, n935_adj_285, n936_adj_286, 
        n937_adj_287, n24215, n945, n946, n947, n948, n949, n950, 
        n951, n952, n953, n954, n287_adj_288, n285_adj_289, n284_adj_290, 
        n984_adj_291, n985_adj_292, n986, n987, n988, n989, n990_adj_293, 
        n991_adj_294, n992_adj_295, n993_adj_296, n994_adj_297, n995_adj_298, 
        n1003, n1004, n1005, n1006, n1007, n1008, n1009, n1010, 
        n1011, n1012, n7_adj_299, n24214, n20475, n4_adj_300, n24353, 
        n1041_adj_301, n1042_adj_302, n1043_adj_303, n1044, n1045, 
        n1046, n1047_adj_304, n1048, n1049_adj_305, n1050_adj_306, 
        n1051_adj_307, n1052_adj_308, n1053_adj_309, n1059_adj_310, 
        n1060_adj_311, n1061_adj_312, n1062, n1063, n1064, n1065, 
        n1066, n1067, n1068, n1069, n1070, n28553, n1098_adj_313, 
        n1099_adj_314, n1100_adj_315, n1101_adj_316, n1102, n1103, 
        n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, 
        n28624, n1117, n1118_adj_317, n1119, n1120, n1121, n1122, 
        n1123, n1124, n1125, n1126, n1127, n7_adj_318, n28622, 
        n28285, n24011, n1155, n1156, n1157, n1158, n1159, n1160, 
        n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168, 
        n1169, n28621, n8_adj_319, n13525, n28284, n27294, n28551, 
        n27290, n4_adj_320, n27288, n13531, n24213, n24101, n28283, 
        n27284, n24351, n28550, n1248, n20621, n7_adj_321, n24212, 
        n4702, n4701, n4700, n4699, n4698, n4697, n4696, n4695, 
        n4694, n14_adj_322, n24100, n13534, n24350, n24010, n27280, 
        n24349, n24348, n2_adj_323, n3_adj_324, n4_adj_325, n5_adj_326, 
        n6_adj_327, n7_adj_328, n8_adj_329, n9_adj_330, n10_adj_331, 
        n24211, n24347, n28619, n28617, n27276, n10_adj_332, n24099, 
        n27994, n13092, n24210, n24346, n27274, n10_adj_333, n20449, 
        n24098, n27272, n28549, n24209, n24345, n120_adj_334, n24208, 
        n27266, n24097, n28282, n13087, n24096, n24095, n161, 
        n24344, n26884, n13540, n24207, n24094, n13519, n24009, 
        n27262, n20_adj_335, n27260, n37, n235_adj_336, n238_adj_337, 
        n241_adj_338, n242_adj_339, n28548, n24008, n28547, n24007, 
        n268_adj_340, n269_adj_341, n28546, n278_adj_342, n175, n174, 
        n173, n301_adj_343, n302_adj_344, n304_adj_345, n24343, n24206, 
        n329_adj_346, n24093, n334_adj_347, n335_adj_348, n336_adj_349, 
        n337_adj_350, n24006, n24342, n24205, n357_adj_351, n358_adj_352, 
        n359_adj_353, n360_adj_354, n361_adj_355, n362_adj_356, n363_adj_357, 
        n24341, n367_adj_358, n368_adj_359, n370_adj_360, n371_adj_361, 
        n372_adj_362, n27993, n378_adj_363, n24092, n390_adj_364, 
        n391_adj_365, n392_adj_366, n393_adj_367, n394_adj_368, n395_adj_369, 
        n396_adj_370, n397_adj_371, n28281, n28280, n24339, n28544, 
        n24204, n12_adj_372, n26933, n24090, n28543, n26901, n24338, 
        n24202, n24337, n24089, n24201, n26895, n28542, n24005, 
        n2_adj_373, n3_adj_374, n4_adj_375, n5_adj_376, n6_adj_377, 
        n7_adj_378, n8_adj_379, n24200, n26955, clk_c_enable_33, n24199, 
        n28541, clk_c_enable_43, n15_adj_380, n24088, n27238, n28279, 
        n26906, n8_adj_381, n24336, n106, n110, n28539, n28278, 
        n28538, n3_adj_382, n1_adj_383, n24198, n24335, n141, n24334, 
        n24197, n24333, n24332, n28536, n28535, n28534, n203, 
        n204, n206, n208, n28188, n13090, n24004, n20423, n7_adj_384, 
        n230, n231, n29281, n28533, n238_adj_385, n28187, n3_adj_386, 
        n257, n258, n259, n260, n24196, n29280, n265_adj_387, 
        n28532, n28531, n28639, n2_adj_388, n26850, n24331, n28277, 
        n14_adj_389, n24330, n1_adj_390, n27211, n27205, n28276, 
        n28638, n28528, n19767, n28527, n28526, n28525, n13_adj_391, 
        n945_adj_392, n950_adj_393, n24329, n24328, n24087, n28186, 
        n19764, n24195, n86_adj_394, n87_adj_395, n88_adj_396, n89_adj_397, 
        n90_adj_398, n91, n92, n93, n94, n95, n96, n97, n98, 
        n99, n100, n101, n102, n103, n104, n105, n921_adj_399, 
        n922_adj_400, n923_adj_401, n924_adj_402, n925_adj_403, n926_adj_404, 
        n927_adj_405, n928_adj_406, n929_adj_407, n28275, n3574, n3572, 
        n2_adj_408, n918_adj_409, n920_adj_410, n919_adj_411, n14_adj_412, 
        n15_adj_413, n917_adj_414, n916_adj_415, n13537, n4_adj_416, 
        n20409, n20407, n27053, n24003, n28523, n24086, n24194, 
        n830, n24327, n20399, n24085, n13489, n28522, n14_adj_417, 
        n24002, n28273, n24084, n24193, n24192, n4_adj_418, n10_adj_419, 
        n12950, n24325, n27183, n28272, n24191, n28521, n24324, 
        n24190, n28520, n9_adj_420, n24189, n15_adj_421, n24083, 
        n17_adj_422, n19, n13543, n45, n44, n42, n28271, n28270, 
        n20389, n29, n13079, n28171, n26, n27391, n28166, n21, 
        n24187, n28269, n14_adj_423, n27368, n27348, n27407, clk_temp_enable_1, 
        n28519, n24323, n20383, n28268, n192, n28518, n175_adj_424, 
        n169, n28517, n28184, n13107, n14_adj_425, n28163, n24718, 
        n27964, n27963, n16_adj_426, n27962, n28636, n28267, n28266, 
        n28627, n28635, n20381, n24322, n28_adj_427, n28514, n24321, 
        n24320, n28513, n9_adj_428, n15_adj_429, n17_adj_430, n19_adj_431, 
        n28512, n3534, n24186, n12457, n13101, n28510, n27169, 
        n20373, n19751, n24185, n24001, n24319, n28508, n13097, 
        n610, n302_adj_432, n28507, n297_adj_433, n296, n293, n292, 
        n289_adj_434, n288_adj_435, n287_adj_436, n286_adj_437, n285_adj_438, 
        n284_adj_439, n302_adj_440, n272_adj_441, n28506, n266, n265_adj_442, 
        n264_adj_443, n263, n262, n27159, n28265, n28505, n235_adj_444, 
        n232, n28504, n28264, n24317, n211, n28263, n28633, n203_adj_445, 
        n202, n13308, n24000, n28503, n24184, n24081, n172, n28502, 
        n24080, n28501, n32_adj_446, n28261, n13110, n28260, n24316, 
        n24183, n13467, n24182, n24181, n24315, n28500, n13490, 
        n23999, n28259, n28258, n28183, n24079, n24313, n24312, 
        n24311, n27149, n28616, clk_c_enable_48, n28499, n28257, 
        clk_c_enable_6, n28498, n1004_adj_447, n998, n997_adj_448, 
        n996, n15_adj_449, n28255, n28497, n982_adj_450, n981_adj_451, 
        n980_adj_452, n979_adj_453, n978_adj_454, n977_adj_455, n976_adj_456, 
        n975_adj_457, n974_adj_458, n973_adj_459, n972_adj_460, n971, 
        n970, n969, n28495, n28494, n13100, n950_adj_461, n28493, 
        n945_adj_462, n944_adj_463, n943_adj_464, n942, n24077, n941_adj_465, 
        n940_adj_466, n939_adj_467, n5_adj_468, n24310, n28254, n3532, 
        n896_adj_469, n916_adj_470, n915_adj_471, n28253, n4_adj_472, 
        n890_adj_473, n888_adj_474, n887, n886_adj_475, n885_adj_476, 
        n884_adj_477, n883_adj_478, n882_adj_479, n881_adj_480, n880_adj_481, 
        n879_adj_482, n872_adj_483, n871_adj_484, n870_adj_485, n869_adj_486, 
        n868_adj_487, n867_adj_488, n866_adj_489, n864_adj_490, n863_adj_491, 
        n862_adj_492, n861_adj_493, n835_adj_494, n833_adj_495, n832_adj_496, 
        n831_adj_497, n830_adj_498, n829_adj_499, n828_adj_500, n827_adj_501, 
        n826_adj_502, n825_adj_503, n824_adj_504, n817_adj_505, n816_adj_506, 
        n814_adj_507, n813_adj_508, n812_adj_509, n811_adj_510, n810_adj_511, 
        n809_adj_512, n808_adj_513, n807_adj_514, n24785, n780_adj_515, 
        n778_adj_516, n777_adj_517, n776_adj_518, n775_adj_519, n774_adj_520, 
        n773_adj_521, n772_adj_522, n771, n770_adj_523, n28492, n762_adj_524, 
        n761_adj_525, n760_adj_526, n759_adj_527, n758_adj_528, n757_adj_529, 
        n756_adj_530, n755_adj_531, n754_adj_532, n753_adj_533, n28491, 
        n24076, n28490, n725_adj_534, n723_adj_535, n721_adj_536, 
        n720_adj_537, n718_adj_538, n717_adj_539, n716_adj_540, n707_adj_541, 
        n706_adj_542, n705_adj_543, n704_adj_544, n703_adj_545, n702_adj_546, 
        n701_adj_547, n700_adj_548, n699_adj_549, n28489, n27131, 
        n24308, n28488, n28487, n668_adj_550, n667_adj_551, n666_adj_552, 
        n665_adj_553, n664_adj_554, n663_adj_555, n662_adj_556, n28486, 
        n28485, n28484, n652_adj_557, n651_adj_558, n650_adj_559, 
        n649_adj_560, n14_adj_561, n648_adj_562, n647_adj_563, n646_adj_564, 
        n645_adj_565, n27125, n28483, n28482, n13116, n613_adj_566, 
        n612_adj_567, n611_adj_568, n609_adj_569, n13127, n30_adj_570, 
        n28_adj_571, n28481, n597_adj_572, n596_adj_573, n595_adj_574, 
        n594_adj_575, n593_adj_576, n592_adj_577, n591_adj_578, n28480, 
        n13117, n24075, n558_adj_579, n557_adj_580, n556_adj_581, 
        n28479, n27117, n24307, n24074, n28478, n28477, n28476, 
        n542_adj_582, n27109, n24073, n24306, n24180, n28474, n13119, 
        n503_adj_583, n502, n501_adj_584, n28473, n500_adj_585, n20298, 
        n28472, n28471, n24179, n28470, n28469, n28468, n10_adj_586, 
        n28467, n28466, n20_adj_587, n452_adj_588, n24178, n28465, 
        n3_adj_589, n19_adj_590, n28464, n24719, n18_adj_591, n27090, 
        n24177, n28463, n23997, n28462, n13120, n397_adj_592, n396_adj_593, 
        n28460, n24764, n27246, n28252, n28251, n23996, n28459, 
        n24305, n24176, n10_adj_594, n23995, n23994, n13121, n28170, 
        n20275, n28458, n28457, n24550, n28456, n28250, n28249, 
        n24072, n28182, n28248, n23992, n28455, n27883, n20263, 
        n27882, n28165, n11380, n27881, n28454, n13122, n28247, 
        n28453, n28246, n28452, n27076, n28245, n24071, n27047, 
        n23975, n24304, n23991, n28451, n14_adj_595, n28450, n23990, 
        clk_c_enable_13, n23989, n28449, n23987, n28244, n11_adj_596, 
        n28243, n15_adj_597, n23681, n19_adj_598, n3529, n887_adj_599, 
        n888_adj_600, n889_adj_601, n890_adj_602, dq_out, n28448, 
        n19561, n24070, n28447, n28181, n24303, n24302, n12956, 
        n12954, n12952, n28242, n28241, n28240, n28446, n24069, 
        n24174, n10_adj_603, n28445, n24300, n23986, n28444, n10_adj_604, 
        n24068, n24173, n28443, n9_adj_605, n11_adj_606, n15_adj_607, 
        n915_adj_608, clk_c_enable_51, n28442, n206_adj_609, n23985, 
        n24067, n24172, n28239, n26795, n13142, n24299, n24298, 
        n13140, n28238, n28441, n24297, n24296, n24295, n28440, 
        n24171, n197, n28237, n24294, n24170, n24293, n24169, 
        n28439, n24292, n24168, n24065, n28438, n24167, n24064, 
        n20785, n24290, n28437, n28236, n24166, n28235, n27013, 
        n23984, n24289, n28436, n28435, n24165, n28164, n24288, 
        n24063, n24287, n28162, n27429, n24057, n24286, n24285, 
        n24163, n24162, n24060, n23982, n24284, n24161, n20743, 
        n23981, n20729, n24283, n24282, n24160, n27849, n27848, 
        n15_adj_610, n28434, n27847, n28433, n27846, n28432, n14_adj_611, 
        n28431, n24159, n24281, n24158, n24058, n24157, n23980, 
        n24280, n24156, n23979, n32_adj_612, n28234, n12_adj_613, 
        n28430, n24, n10_adj_614, n28429, n12_adj_615, n28428, n22_adj_616, 
        n20_adj_617, n28427, n16_adj_618, n28233, n28426, n28425, 
        n28424, n28423, n27714, n27358, n28232, n28231, n28422, 
        n28230, n28229, n6_adj_619, n28421, n15_adj_620, n14_adj_621, 
        n28420, n28419, n28418, n27819, n28618, n6_adj_622, n14_adj_623, 
        n13_adj_624, n12_adj_625, n10_adj_626, n4_adj_627, n12_adj_628, 
        n4_adj_629, n6_adj_630, n28228, n28227, n27812, n28417, 
        n28226, n28416, n28225, n28415, n28414, n28413, n28412, 
        n15_adj_631, n14_adj_632, n27800, n28411, n28410, n28409, 
        n27409, n27408, n28634, n27403, n27402, n27400, n8_adj_633, 
        n7_adj_634, n4_adj_635, n8_adj_636, n7_adj_637, n4_adj_638, 
        n4_adj_639, n27399, n4_adj_640, n27398, n27397, n8_adj_641, 
        n2_adj_642, n28614, n27396, n28224, n27395, n27394, n27392, 
        n28637, n28613, n7_adj_643, n14_adj_644, n13_adj_645, n28612, 
        n28611, n28610, n28609, n28608, n28607, n16_adj_646, n15_adj_647, 
        n28606, n28605, n28604, n28602, n28601, n28600, n6_adj_648, 
        n28599, n28598, n28597, n26983, n4_adj_649, n28596, n28407, 
        n28223, n28180, n28222, n28221, n28406, n28220, n28219, 
        n28218, n28405, n28404, n28403, n27384, n28402, n28401, 
        n28179, n28217, n28400, n27381, n28169, n28398, n28397, 
        n28396, n10_adj_650, n4_adj_651, n28394, n28393, n27567, 
        n14_adj_652, n28392, n13_adj_653, n17_adj_654, n28391, n28390, 
        n28389, n28388, n16_adj_655, n28387, n28386, n28385, n28384, 
        n28383, n12_adj_656, n28382, n28381, n4_adj_657, n8_adj_658, 
        n28380, n28379, n7_adj_659, n28378, n8_adj_660, n28377, 
        n28178, n28177, n28376, n28375, n28374, n28215, n14_adj_661, 
        n7_adj_662, n28373, n7_adj_663, n28372, n4_adj_664, n28214, 
        n29285, n28371, n28370, n28369, n28213, n29284, n28368, 
        n28211, n28367, n28176, n28366, n28365, n28210, n10_adj_665, 
        n28364, n9_adj_666, n28363, n28362, n28361, n28360, n10_adj_667, 
        n9_adj_668, n28359, n28358, n15_adj_669, n14_adj_670, n28209, 
        n28208, n28357, n4_adj_671, n28207, n28356, n28355, n28206, 
        n6_adj_672, n28205, n28354, n8_adj_673, n7_adj_674, n4_adj_675, 
        n28353, n26981, n28352, n4_adj_676, n28351, n28350, n28349, 
        n28348, n28347, n27780, clk_c_enable_14, n28615, n28346, 
        n28345, n28204, n28203, n28098, n28344, n28343, n28342, 
        n6_adj_677, n28341, n28340, n28339, n28338, n28337, n28336, 
        n28335, n26870, n27779, n28202, n13_adj_678, n28334, n28333, 
        n16_adj_679, n19_adj_680, n28332, n28331, n13_adj_681, n28330, 
        n28329, n28632, n28327, n23, n6_adj_682, n28325, n28324, 
        n28323, n28322, n26996, n28201, n10_adj_683, n28200, n28320, 
        n28319, n28318, n26655, n28317, n28199, n29283, n28198, 
        n28316, n27777, n28196, n27776;
    
    VHI i2 (.Z(VCC_net));
    INV i24588 (.A(sck_c_1), .Z(sck_N_88));
    CCU2D div_276_add_605_11 (.A0(n13124), .B0(n20373), .C0(n872_adj_274), 
          .D0(n833_adj_266), .A1(n13124), .B1(n20373), .C1(n871_adj_273), 
          .D1(n28240), .CIN(n24180), .COUT(n24181), .S0(n929), .S1(n928));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_605_11.INIT0 = 16'h0e1f;
    defparam div_276_add_605_11.INIT1 = 16'h0e1f;
    defparam div_276_add_605_11.INJECT1_0 = "NO";
    defparam div_276_add_605_11.INJECT1_1 = "NO";
    CCU2D tens_3__I_19_unary_minus_2_add_3_8 (.A0(tens_3__N_323[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_323[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24312), .COUT(n24313), .S0(n5_adj_326), 
          .S1(n4_adj_325));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_unary_minus_2_add_3_8.INIT0 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_8.INIT1 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_8.INJECT1_0 = "NO";
    defparam tens_3__I_19_unary_minus_2_add_3_8.INJECT1_1 = "NO";
    FD1S3AX clk_temp_417 (.D(clk_temp_N_391), .CK(clk_c), .Q(clk_temp)) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam clk_temp_417.GSR = "ENABLED";
    CCU2D tens_3__I_19_unary_minus_2_add_3_6 (.A0(tens_3__N_323[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_323[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24311), .COUT(n24312), .S0(n7_adj_328), 
          .S1(n6_adj_327));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_unary_minus_2_add_3_6.INIT0 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_6.INIT1 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_6.INJECT1_0 = "NO";
    defparam tens_3__I_19_unary_minus_2_add_3_6.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i3 (.D(n102), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i3.GSR = "ENABLED";
    FD1P3JX segcnt_i0 (.D(n2089), .SP(sck_N_88_enable_3), .PD(n13760), 
            .CK(sck_N_88), .Q(segcnt[0])) /* synthesis lse_init_val=1 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam segcnt_i0.GSR = "ENABLED";
    CCU2D tens_3__I_19_unary_minus_2_add_3_4 (.A0(tens_3__N_323[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_323[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24310), .COUT(n24311), .S0(n9_adj_330), 
          .S1(n8_adj_329));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_unary_minus_2_add_3_4.INIT0 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_4.INIT1 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_4.INJECT1_0 = "NO";
    defparam tens_3__I_19_unary_minus_2_add_3_4.INJECT1_1 = "NO";
    LUT4 i6_4_lut (.A(n941_adj_465), .B(n12_adj_656), .C(n933_adj_180), 
         .D(n4_adj_472), .Z(n16_adj_655)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i6_4_lut.init = 16'hfefc;
    FD1S3IX key_div_1136__i2 (.D(n103), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i2.GSR = "ENABLED";
    FD1S3IX key_div_1136__i1 (.D(n104), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i1.GSR = "ENABLED";
    FD1P3AX WRITE_BYTE_CNT_i0_i0 (.D(n3534), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(WRITE_BYTE_CNT[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_BYTE_CNT_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_1139__i7 (.D(n83), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i7.GSR = "ENABLED";
    CCU2D tens_3__I_19_unary_minus_2_add_3_2 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_323[1]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n24310), .S1(n10_adj_331));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_unary_minus_2_add_3_2.INIT0 = 16'h0000;
    defparam tens_3__I_19_unary_minus_2_add_3_2.INIT1 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_2.INJECT1_0 = "NO";
    defparam tens_3__I_19_unary_minus_2_add_3_2.INJECT1_1 = "NO";
    CCU2D div_276_add_605_9 (.A0(n13124), .B0(n20373), .C0(n874_adj_276), 
          .D0(n835_adj_268), .A1(n13124), .B1(n20373), .C1(n873_adj_275), 
          .D1(n834_adj_267), .CIN(n24179), .COUT(n24180), .S0(n931), 
          .S1(n930));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_605_9.INIT0 = 16'h0e1f;
    defparam div_276_add_605_9.INIT1 = 16'h0e1f;
    defparam div_276_add_605_9.INJECT1_0 = "NO";
    defparam div_276_add_605_9.INJECT1_1 = "NO";
    FD1P3AX WRITE_BYTE_FLAG_i0_i0 (.D(n3057), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(WRITE_BYTE_FLAG[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_BYTE_FLAG_i0_i0.GSR = "ENABLED";
    FD1S3IX dq_420 (.D(dq_out), .CK(clk_temp), .CD(dq_N_403), .Q(dq_N_376));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam dq_420.GSR = "ENABLED";
    FD1P3AX TMP_i0_i0 (.D(n13531), .SP(clk_c_enable_41), .CK(clk_c), .Q(TMP[0]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i0.GSR = "ENABLED";
    FD1S3AX segcnt_div_1140__i1 (.D(n14_adj_412), .CK(clk_N_92), .Q(sck_c_1));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam segcnt_div_1140__i1.GSR = "ENABLED";
    CCU2D zpone_3__I_17_add_232_7 (.A0(n4_adj_300), .B0(n28465), .C0(n28460), 
          .D0(n302_adj_54), .A1(n13063), .B1(n28465), .C1(n28456), .D1(n301_adj_53), 
          .CIN(n24065), .S0(n358_adj_61), .S1(n357_adj_60));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_232_7.INIT0 = 16'h0ff4;
    defparam zpone_3__I_17_add_232_7.INIT1 = 16'h0bf4;
    defparam zpone_3__I_17_add_232_7.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_232_7.INJECT1_1 = "NO";
    CCU2D mod_274_add_410_7 (.A0(n500_adj_585), .B0(n28329), .C0(n28325), 
          .D0(n501_adj_584), .A1(n12461), .B1(n6_adj_144), .C1(n28329), 
          .D1(n500_adj_585), .CIN(n24308), .S0(n592_adj_577), .S1(n591_adj_578));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_410_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_410_7.INIT1 = 16'h0ff7;
    defparam mod_274_add_410_7.INJECT1_0 = "NO";
    defparam mod_274_add_410_7.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_add_232_5 (.A0(n337_adj_59), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13063), .B1(n28465), .C1(n28464), .D1(n28477), 
          .CIN(n24064), .COUT(n24065), .S0(n360_adj_63), .S1(n359_adj_62));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_232_5.INIT0 = 16'h5555;
    defparam zpone_3__I_17_add_232_5.INIT1 = 16'h0bf4;
    defparam zpone_3__I_17_add_232_5.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_232_5.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i19 (.D(n86_adj_394), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i19.GSR = "ENABLED";
    CCU2D mod_274_add_410_5 (.A0(n13308), .B0(n28322), .C0(n28335), .D0(n503_adj_583), 
          .A1(n500_adj_585), .B1(n28329), .C1(n28327), .D1(n502), .CIN(n24307), 
          .COUT(n24308), .S0(n594_adj_575), .S1(n593_adj_576));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_410_5.INIT0 = 16'hf708;
    defparam mod_274_add_410_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_410_5.INJECT1_0 = "NO";
    defparam mod_274_add_410_5.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i18 (.D(n87_adj_395), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i18.GSR = "ENABLED";
    CCU2D mod_274_add_410_3 (.A0(n500_adj_585), .B0(n28329), .C0(n542_adj_582), 
          .D0(n28335), .A1(n500_adj_585), .B1(n28329), .C1(n28331), 
          .D1(n28335), .CIN(n24306), .COUT(n24307), .S0(n596_adj_573), 
          .S1(n595_adj_574));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_410_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_410_3.INIT1 = 16'h0fe1;
    defparam mod_274_add_410_3.INJECT1_0 = "NO";
    defparam mod_274_add_410_3.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i8 (.D(n82), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i8.GSR = "ENABLED";
    CCU2D mod_271_add_448_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n617), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24045), .S1(n654));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_448_1.INIT0 = 16'hF000;
    defparam mod_271_add_448_1.INIT1 = 16'h5555;
    defparam mod_271_add_448_1.INJECT1_0 = "NO";
    defparam mod_271_add_448_1.INJECT1_1 = "NO";
    FD1S3AX ser_452 (.D(ser_N_379), .CK(sck_N_88), .Q(ser_c));   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam ser_452.GSR = "ENABLED";
    CCU2D temp1_8__I_0_add_201_7 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24043), .S0(n284), .S1(n283));   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_add_201_7.INIT0 = 16'h5555;
    defparam temp1_8__I_0_add_201_7.INIT1 = 16'h5555;
    defparam temp1_8__I_0_add_201_7.INJECT1_0 = "NO";
    defparam temp1_8__I_0_add_201_7.INJECT1_1 = "NO";
    FD1S3AX rck_453 (.D(rck_N_378), .CK(sck_N_88), .Q(rck_c));   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam rck_453.GSR = "ENABLED";
    FD1S3JX placecnt_i0 (.D(n28596), .CK(sck_N_88), .PD(sck_N_88_enable_3), 
            .Q(ser_N_380[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam placecnt_i0.GSR = "ENABLED";
    FD1S3JX placecnt_i1 (.D(placecnt_4__N_367[1]), .CK(sck_N_88), .PD(sck_N_88_enable_3), 
            .Q(ser_N_380[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam placecnt_i1.GSR = "ENABLED";
    FD1S3JX placecnt_i2 (.D(placecnt_4__N_367[2]), .CK(sck_N_88), .PD(sck_N_88_enable_3), 
            .Q(ser_N_380[2])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam placecnt_i2.GSR = "ENABLED";
    FD1S3JX placecnt_i3 (.D(placecnt_4__N_367[3]), .CK(sck_N_88), .PD(sck_N_88_enable_3), 
            .Q(ser_N_380[3])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam placecnt_i3.GSR = "ENABLED";
    FD1S3IX placecnt_i4 (.D(placecnt_4__N_367[4]), .CK(sck_N_88), .CD(sck_N_88_enable_3), 
            .Q(placecnt[4])) /* synthesis lse_init_val=1 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam placecnt_i4.GSR = "ENABLED";
    CCU2D div_276_add_605_7 (.A0(n13124), .B0(n20373), .C0(n876_adj_277), 
          .D0(n837), .A1(n13124), .B1(n20373), .C1(n875), .D1(n836), 
          .CIN(n24178), .COUT(n24179), .S0(n933_adj_283), .S1(n932_adj_282));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_605_7.INIT0 = 16'hf1e0;
    defparam div_276_add_605_7.INIT1 = 16'h0e1f;
    defparam div_276_add_605_7.INJECT1_0 = "NO";
    defparam div_276_add_605_7.INJECT1_1 = "NO";
    LUT4 div_273_i644_3_lut_4_lut (.A(n28349), .B(n13057), .C(n973), .D(n934), 
         .Z(n991)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i644_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_605_5 (.A0(n13124), .B0(n20373), .C0(n878_adj_278), 
          .D0(n28239), .A1(n13124), .B1(n20373), .C1(n877), .D1(n838), 
          .CIN(n24177), .COUT(n24178), .S0(n935_adj_285), .S1(n934_adj_284));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_605_5.INIT0 = 16'h0e1f;
    defparam div_276_add_605_5.INIT1 = 16'hf1e0;
    defparam div_276_add_605_5.INJECT1_0 = "NO";
    defparam div_276_add_605_5.INJECT1_1 = "NO";
    CCU2D temp1_8__I_0_add_201_5 (.A0(n28586), .B0(n28576), .C0(n256), 
          .D0(n28597), .A1(VCC_net), .B1(n12_adj_212), .C1(n28566), 
          .D1(n28586), .CIN(n24042), .COUT(n24043), .S0(n286), .S1(n285));   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_add_201_5.INIT0 = 16'h0b5f;
    defparam temp1_8__I_0_add_201_5.INIT1 = 16'h0ff8;
    defparam temp1_8__I_0_add_201_5.INJECT1_0 = "NO";
    defparam temp1_8__I_0_add_201_5.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_add_232_3 (.A0(n13063), .B0(n28465), .C0(n329), 
          .D0(n28525), .A1(n13063), .B1(n28465), .C1(n28525), .D1(n28476), 
          .CIN(n24063), .COUT(n24064), .S0(n362_adj_65), .S1(n361_adj_64));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_232_3.INIT0 = 16'h0b4f;
    defparam zpone_3__I_17_add_232_3.INIT1 = 16'hf40b;
    defparam zpone_3__I_17_add_232_3.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_232_3.INJECT1_1 = "NO";
    CCU2D mod_274_add_410_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13070), .B1(n28381), .C1(n4501), .D1(n1179), 
          .COUT(n24306), .S1(n597_adj_572));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_410_1.INIT0 = 16'hF000;
    defparam mod_274_add_410_1.INIT1 = 16'h0f11;
    defparam mod_274_add_410_1.INJECT1_0 = "NO";
    defparam mod_274_add_410_1.INJECT1_1 = "NO";
    FD1P3AX mode_415 (.D(mode_N_397), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(mode));   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam mode_415.GSR = "ENABLED";
    CCU2D div_276_add_605_3 (.A0(n283_adj_214), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13124), .B1(n20373), .C1(n879_adj_279), 
          .D1(n282), .CIN(n24176), .COUT(n24177), .S0(n937_adj_287), 
          .S1(n936_adj_286));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_605_3.INIT0 = 16'h5aaa;
    defparam div_276_add_605_3.INIT1 = 16'h0e1f;
    defparam div_276_add_605_3.INJECT1_0 = "NO";
    defparam div_276_add_605_3.INJECT1_1 = "NO";
    CCU2D div_276_add_605_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n284_adj_215), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24176));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_605_1.INIT0 = 16'h0000;
    defparam div_276_add_605_1.INIT1 = 16'h5555;
    defparam div_276_add_605_1.INJECT1_0 = "NO";
    defparam div_276_add_605_1.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_add_232_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n241_adj_48), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24063), .S1(n363_adj_66));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_232_1.INIT0 = 16'hF000;
    defparam zpone_3__I_17_add_232_1.INIT1 = 16'h5555;
    defparam zpone_3__I_17_add_232_1.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_232_1.INJECT1_1 = "NO";
    CCU2D temp1_8__I_0_add_201_3 (.A0(n28586), .B0(n12_adj_212), .C0(n8_adj_211), 
          .D0(temp1_8__N_270[3]), .A1(n28586), .B1(n12_adj_212), .C1(temp1_8__N_270[3]), 
          .D1(n28587), .CIN(n24041), .COUT(n24042), .S0(n288), .S1(n287));   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_add_201_3.INIT0 = 16'h0b4f;
    defparam temp1_8__I_0_add_201_3.INIT1 = 16'hf40b;
    defparam temp1_8__I_0_add_201_3.INJECT1_0 = "NO";
    defparam temp1_8__I_0_add_201_3.INJECT1_1 = "NO";
    CCU2D temp1_8__I_0_add_201_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp1_8__N_270[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24041), .S1(n289));   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_add_201_1.INIT0 = 16'hF000;
    defparam temp1_8__I_0_add_201_1.INIT1 = 16'h5555;
    defparam temp1_8__I_0_add_201_1.INJECT1_0 = "NO";
    defparam temp1_8__I_0_add_201_1.INJECT1_1 = "NO";
    CCU2D mod_274_add_447_9 (.A0(n28324), .B0(n20409), .C0(n591_adj_578), 
          .D0(n28323), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24305), .S0(n645_adj_565));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_447_9.INIT0 = 16'h0f1f;
    defparam mod_274_add_447_9.INIT1 = 16'h0000;
    defparam mod_274_add_447_9.INJECT1_0 = "NO";
    defparam mod_274_add_447_9.INJECT1_1 = "NO";
    CCU2D mod_274_add_447_7 (.A0(n12457), .B0(n20409), .C0(n593_adj_576), 
          .D0(n556_adj_581), .A1(n28323), .B1(n20409), .C1(n592_adj_577), 
          .D1(n28324), .CIN(n24304), .COUT(n24305), .S0(n647_adj_563), 
          .S1(n646_adj_564));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_447_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_447_7.INIT1 = 16'h0f1f;
    defparam mod_274_add_447_7.INJECT1_0 = "NO";
    defparam mod_274_add_447_7.INJECT1_1 = "NO";
    FD1P3AX i231_432 (.D(dq_N_413), .SP(dq_N_403), .CK(clk_temp), .Q(dq_N_377));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i231_432.GSR = "ENABLED";
    CCU2D mod_274_add_447_5 (.A0(n12457), .B0(n20409), .C0(n595_adj_574), 
          .D0(n558_adj_579), .A1(n12457), .B1(n20409), .C1(n594_adj_575), 
          .D1(n557_adj_580), .CIN(n24303), .COUT(n24304), .S0(n649_adj_560), 
          .S1(n648_adj_562));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_447_5.INIT0 = 16'hf1e0;
    defparam mod_274_add_447_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_447_5.INJECT1_0 = "NO";
    defparam mod_274_add_447_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(STATE[0]), .B(WRITE_HIGH_CNT[0]), .C(WRITE_HIGH_CNT[1]), 
         .Z(n24892)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i2_3_lut.init = 16'hefef;
    CCU2D mod_274_add_447_3 (.A0(n12457), .B0(n20409), .C0(n597_adj_572), 
          .D0(n452_adj_588), .A1(n28322), .B1(n28335), .C1(n596_adj_573), 
          .D1(n28320), .CIN(n24302), .COUT(n24303), .S0(n651_adj_558), 
          .S1(n650_adj_559));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_447_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_447_3.INIT1 = 16'h0f99;
    defparam mod_274_add_447_3.INJECT1_0 = "NO";
    defparam mod_274_add_447_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n943_adj_464), .B(n942), .C(n945_adj_462), .D(n944_adj_463), 
         .Z(n4_adj_472)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hccc8;
    LUT4 i1726_2_lut_rep_505_4_lut_then_4_lut (.A(zpone_3__N_304[8]), .B(n3_adj_32), 
         .C(n238_adj_47), .D(n2_adj_31), .Z(n28622)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i1726_2_lut_rep_505_4_lut_then_4_lut.init = 16'h8088;
    FD1P3IX cnt_1139__i12 (.D(n78), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i12.GSR = "ENABLED";
    FD1P3IX cnt_1139__i9 (.D(n81), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i9.GSR = "ENABLED";
    CCU2D mod_274_add_447_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13061), .B1(n28376), .C1(n4502), .D1(n1179), 
          .COUT(n24302), .S1(n652_adj_557));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_447_1.INIT0 = 16'hF000;
    defparam mod_274_add_447_1.INIT1 = 16'h0f11;
    defparam mod_274_add_447_1.INJECT1_0 = "NO";
    defparam mod_274_add_447_1.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i17 (.D(n88_adj_396), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i17.GSR = "ENABLED";
    FD1S3IX key_div_1136__i16 (.D(n89_adj_397), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i16.GSR = "ENABLED";
    PFUMX i24361 (.BLUT(n28631), .ALUT(n28632), .C0(n28163), .Z(n28633));
    CCU2D count_1137_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24040), .S0(n30));   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137_add_4_7.INIT0 = 16'hfaaa;
    defparam count_1137_add_4_7.INIT1 = 16'h0000;
    defparam count_1137_add_4_7.INJECT1_0 = "NO";
    defparam count_1137_add_4_7.INJECT1_1 = "NO";
    CCU2D mod_274_add_484_9 (.A0(n4_adj_320), .B0(n20389), .C0(n646_adj_564), 
          .D0(n609_adj_569), .A1(n28316), .B1(n20389), .C1(n645_adj_565), 
          .D1(n28319), .CIN(n24300), .S0(n700_adj_548), .S1(n699_adj_549));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_484_9.INIT0 = 16'h0f1f;
    defparam mod_274_add_484_9.INIT1 = 16'h0e1f;
    defparam mod_274_add_484_9.INJECT1_0 = "NO";
    defparam mod_274_add_484_9.INJECT1_1 = "NO";
    CCU2D div_276_add_566_11 (.A0(n13127), .B0(n20298), .C0(n814_adj_257), 
          .D0(n775_adj_250), .A1(n13127), .B1(n20298), .C1(n813_adj_256), 
          .D1(n774_adj_249), .CIN(n24174), .S0(n871_adj_273), .S1(n870_adj_272));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_566_11.INIT0 = 16'h0e1f;
    defparam div_276_add_566_11.INIT1 = 16'h0e1f;
    defparam div_276_add_566_11.INJECT1_0 = "NO";
    defparam div_276_add_566_11.INJECT1_1 = "NO";
    LUT4 i1726_2_lut_rep_505_4_lut_else_4_lut (.A(zpone_3__N_304[8]), .B(n3_adj_32), 
         .C(n238_adj_47), .D(n2_adj_31), .Z(n28621)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1726_2_lut_rep_505_4_lut_else_4_lut.init = 16'h0080;
    CCU2D mod_271_add_411_9 (.A0(n13082), .B0(n28474), .C0(n538), .D0(n501), 
          .A1(n13082), .B1(n28474), .C1(n537_adj_129), .D1(n500), .CIN(n24061), 
          .S0(n592), .S1(n591));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_411_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_411_9.INIT1 = 16'h0e1f;
    defparam mod_271_add_411_9.INJECT1_0 = "NO";
    defparam mod_271_add_411_9.INJECT1_1 = "NO";
    CCU2D mod_274_add_484_7 (.A0(n28316), .B0(n20389), .C0(n648_adj_562), 
          .D0(n611_adj_568), .A1(n28316), .B1(n20389), .C1(n647_adj_563), 
          .D1(n28318), .CIN(n24299), .COUT(n24300), .S0(n702_adj_546), 
          .S1(n701_adj_547));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_484_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_484_7.INIT1 = 16'h0e1f;
    defparam mod_274_add_484_7.INJECT1_0 = "NO";
    defparam mod_274_add_484_7.INJECT1_1 = "NO";
    CCU2D mod_274_add_484_5 (.A0(n28316), .B0(n20389), .C0(n650_adj_559), 
          .D0(n613_adj_566), .A1(n28316), .B1(n20389), .C1(n649_adj_560), 
          .D1(n612_adj_567), .CIN(n24298), .COUT(n24299), .S0(n704_adj_544), 
          .S1(n703_adj_545));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_484_5.INIT0 = 16'hf1e0;
    defparam mod_274_add_484_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_484_5.INJECT1_0 = "NO";
    defparam mod_274_add_484_5.INJECT1_1 = "NO";
    CCU2D div_276_add_566_9 (.A0(n13127), .B0(n20298), .C0(n816_adj_259), 
          .D0(n777_adj_252), .A1(n13127), .B1(n20298), .C1(n815_adj_258), 
          .D1(n776_adj_251), .CIN(n24173), .COUT(n24174), .S0(n873_adj_275), 
          .S1(n872_adj_274));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_566_9.INIT0 = 16'h0e1f;
    defparam div_276_add_566_9.INIT1 = 16'h0e1f;
    defparam div_276_add_566_9.INJECT1_0 = "NO";
    defparam div_276_add_566_9.INJECT1_1 = "NO";
    CCU2D div_276_add_566_7 (.A0(n13127), .B0(n20298), .C0(n818_adj_261), 
          .D0(n779_adj_254), .A1(n13127), .B1(n20298), .C1(n817_adj_260), 
          .D1(n778_adj_253), .CIN(n24172), .COUT(n24173), .S0(n875), 
          .S1(n874_adj_276));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_566_7.INIT0 = 16'hf1e0;
    defparam div_276_add_566_7.INIT1 = 16'h0e1f;
    defparam div_276_add_566_7.INJECT1_0 = "NO";
    defparam div_276_add_566_7.INJECT1_1 = "NO";
    CCU2D mod_274_add_484_3 (.A0(n28316), .B0(n20389), .C0(n652_adj_557), 
          .D0(n396_adj_593), .A1(n28316), .B1(n20389), .C1(n651_adj_558), 
          .D1(n28317), .CIN(n24297), .COUT(n24298), .S0(n706_adj_542), 
          .S1(n705_adj_543));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_484_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_484_3.INIT1 = 16'h0e1f;
    defparam mod_274_add_484_3.INJECT1_0 = "NO";
    defparam mod_274_add_484_3.INJECT1_1 = "NO";
    CCU2D div_276_add_566_5 (.A0(n13127), .B0(n20298), .C0(n820_adj_263), 
          .D0(n28243), .A1(n13127), .B1(n20298), .C1(n819_adj_262), 
          .D1(n780_adj_255), .CIN(n24171), .COUT(n24172), .S0(n877), 
          .S1(n876_adj_277));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_566_5.INIT0 = 16'h0e1f;
    defparam div_276_add_566_5.INIT1 = 16'hf1e0;
    defparam div_276_add_566_5.INJECT1_0 = "NO";
    defparam div_276_add_566_5.INJECT1_1 = "NO";
    CCU2D mod_271_add_411_7 (.A0(n13082), .B0(n28474), .C0(n540), .D0(n503), 
          .A1(n13082), .B1(n28474), .C1(n539), .D1(n28482), .CIN(n24060), 
          .COUT(n24061), .S0(n594), .S1(n593));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_411_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_411_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_411_7.INJECT1_0 = "NO";
    defparam mod_271_add_411_7.INJECT1_1 = "NO";
    CCU2D mod_271_add_411_5 (.A0(n28478), .B0(n13082), .C0(n542), .D0(n505), 
          .A1(n13082), .B1(n28474), .C1(n541), .D1(n504), .CIN(n24059), 
          .COUT(n24060), .S0(n596), .S1(n595));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_411_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_411_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_411_5.INJECT1_0 = "NO";
    defparam mod_271_add_411_5.INJECT1_1 = "NO";
    LUT4 div_273_i655_3_lut_4_lut (.A(n28349), .B(n13057), .C(n984), .D(n28351), 
         .Z(n1002)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i655_3_lut_4_lut.init = 16'hf1e0;
    CCU2D mod_274_add_484_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13033), .B1(n28372), .C1(n4503), .D1(n1179), 
          .COUT(n24297), .S1(n707_adj_541));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_484_1.INIT0 = 16'hF000;
    defparam mod_274_add_484_1.INIT1 = 16'h0f11;
    defparam mod_274_add_484_1.INJECT1_0 = "NO";
    defparam mod_274_add_484_1.INJECT1_1 = "NO";
    CCU2D div_276_add_566_3 (.A0(n282), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n13127), .B1(n20298), .C1(n821_adj_264), .D1(n281), .CIN(n24170), 
          .COUT(n24171), .S0(n879_adj_279), .S1(n878_adj_278));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_566_3.INIT0 = 16'h5aaa;
    defparam div_276_add_566_3.INIT1 = 16'h0e1f;
    defparam div_276_add_566_3.INJECT1_0 = "NO";
    defparam div_276_add_566_3.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i13 (.D(n77), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i13.GSR = "ENABLED";
    LUT4 i14_3_lut_4_lut (.A(WRITE_BYTE_FLAG[0]), .B(n28592), .C(WRITE_BYTE_CNT[3]), 
         .D(n307), .Z(n20679)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i14_3_lut_4_lut.init = 16'hbfb0;
    FD1S3IX key_div_1136__i15 (.D(n90_adj_398), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i15.GSR = "ENABLED";
    CCU2D mod_274_add_521_11 (.A0(n13100), .B0(n20383), .C0(n699_adj_549), 
          .D0(n662_adj_556), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24296), .S0(n753_adj_533));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_521_11.INIT0 = 16'h0e1f;
    defparam mod_274_add_521_11.INIT1 = 16'h0000;
    defparam mod_274_add_521_11.INJECT1_0 = "NO";
    defparam mod_274_add_521_11.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i14 (.D(n91), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i14.GSR = "ENABLED";
    CCU2D mod_271_add_411_3 (.A0(n13082), .B0(n28474), .C0(n544), .D0(n507), 
          .A1(n13082), .B1(n28474), .C1(n543), .D1(n28483), .CIN(n24058), 
          .COUT(n24059), .S0(n598), .S1(n597));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_411_3.INIT0 = 16'h0e1f;
    defparam mod_271_add_411_3.INIT1 = 16'hf1e0;
    defparam mod_271_add_411_3.INJECT1_0 = "NO";
    defparam mod_271_add_411_3.INJECT1_1 = "NO";
    CCU2D div_276_add_566_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n283_adj_214), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24170));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_566_1.INIT0 = 16'h0000;
    defparam div_276_add_566_1.INIT1 = 16'h5555;
    defparam div_276_add_566_1.INJECT1_0 = "NO";
    defparam div_276_add_566_1.INJECT1_1 = "NO";
    CCU2D mod_271_add_411_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n562), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24058), .S1(n599));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_411_1.INIT0 = 16'hF000;
    defparam mod_271_add_411_1.INIT1 = 16'h5555;
    defparam mod_271_add_411_1.INJECT1_0 = "NO";
    defparam mod_271_add_411_1.INJECT1_1 = "NO";
    CCU2D count_1137_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24039), .COUT(n24040), .S0(n32), .S1(n31));   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137_add_4_5.INIT0 = 16'hfaaa;
    defparam count_1137_add_4_5.INIT1 = 16'hfaaa;
    defparam count_1137_add_4_5.INJECT1_0 = "NO";
    defparam count_1137_add_4_5.INJECT1_1 = "NO";
    CCU2D mod_274_add_521_9 (.A0(n13100), .B0(n20383), .C0(n701_adj_547), 
          .D0(n664_adj_554), .A1(n13100), .B1(n20383), .C1(n700_adj_548), 
          .D1(n663_adj_555), .CIN(n24295), .COUT(n24296), .S0(n755_adj_531), 
          .S1(n754_adj_532));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_521_9.INIT0 = 16'h0e1f;
    defparam mod_274_add_521_9.INIT1 = 16'h0e1f;
    defparam mod_274_add_521_9.INJECT1_0 = "NO";
    defparam mod_274_add_521_9.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i14 (.D(n76), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i14.GSR = "ENABLED";
    CCU2D div_276_add_527_11 (.A0(n28248), .B0(n20643), .C0(n756_adj_241), 
          .D0(n28252), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24169), .S0(n813_adj_256));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_527_11.INIT0 = 16'h0e1f;
    defparam div_276_add_527_11.INIT1 = 16'h0000;
    defparam div_276_add_527_11.INJECT1_0 = "NO";
    defparam div_276_add_527_11.INJECT1_1 = "NO";
    CCU2D count_1137_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24038), .COUT(n24039), .S0(n34), .S1(n33));   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137_add_4_3.INIT0 = 16'hfaaa;
    defparam count_1137_add_4_3.INIT1 = 16'hfaaa;
    defparam count_1137_add_4_3.INJECT1_0 = "NO";
    defparam count_1137_add_4_3.INJECT1_1 = "NO";
    CCU2D mod_274_add_521_7 (.A0(n13100), .B0(n20383), .C0(n703_adj_545), 
          .D0(n666_adj_552), .A1(n13100), .B1(n20383), .C1(n702_adj_546), 
          .D1(n665_adj_553), .CIN(n24294), .COUT(n24295), .S0(n757_adj_529), 
          .S1(n756_adj_530));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_521_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_521_7.INIT1 = 16'h0e1f;
    defparam mod_274_add_521_7.INJECT1_0 = "NO";
    defparam mod_274_add_521_7.INJECT1_1 = "NO";
    CCU2D div_276_add_527_9 (.A0(n28248), .B0(n20643), .C0(n758_adj_243), 
          .D0(n28253), .A1(n4_adj_416), .B1(n20643), .C1(n757_adj_242), 
          .D1(n718_adj_237), .CIN(n24168), .COUT(n24169), .S0(n815_adj_258), 
          .S1(n814_adj_257));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_527_9.INIT0 = 16'h0e1f;
    defparam div_276_add_527_9.INIT1 = 16'h0f1f;
    defparam div_276_add_527_9.INJECT1_0 = "NO";
    defparam div_276_add_527_9.INJECT1_1 = "NO";
    PFUMX i24353 (.BLUT(n28618), .ALUT(n28619), .C0(n120), .Z(n28514));
    CCU2D tens_3__I_16_add_255_9 (.A0(n13107), .B0(n28459), .C0(n357), 
          .D0(n334), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24057), .S0(n390));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_255_9.INIT0 = 16'h0e1f;
    defparam tens_3__I_16_add_255_9.INIT1 = 16'h0000;
    defparam tens_3__I_16_add_255_9.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_255_9.INJECT1_1 = "NO";
    CCU2D div_276_add_527_7 (.A0(n28248), .B0(n20643), .C0(n760_adj_245), 
          .D0(n721_adj_239), .A1(n28248), .B1(n20643), .C1(n759_adj_244), 
          .D1(n720_adj_238), .CIN(n24167), .COUT(n24168), .S0(n817_adj_260), 
          .S1(n816_adj_259));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_527_7.INIT0 = 16'hf1e0;
    defparam div_276_add_527_7.INIT1 = 16'h0e1f;
    defparam div_276_add_527_7.INJECT1_0 = "NO";
    defparam div_276_add_527_7.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i4 (.D(n101), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i4.GSR = "ENABLED";
    LUT4 i24067_3_lut_rep_596 (.A(WRITE_BYTE_CNT[0]), .B(WRITE_BYTE_CNT[1]), 
         .C(WRITE_BYTE_CNT[2]), .Z(n28592)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i24067_3_lut_rep_596.init = 16'h0101;
    CCU2D mod_274_add_521_5 (.A0(n13100), .B0(n20383), .C0(n705_adj_543), 
          .D0(n668_adj_550), .A1(n13100), .B1(n20383), .C1(n704_adj_544), 
          .D1(n667_adj_551), .CIN(n24293), .COUT(n24294), .S0(n759_adj_527), 
          .S1(n758_adj_528));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_521_5.INIT0 = 16'hf1e0;
    defparam mod_274_add_521_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_521_5.INJECT1_0 = "NO";
    defparam mod_274_add_521_5.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_add_255_7 (.A0(n13107), .B0(n28459), .C0(n359), 
          .D0(n336), .A1(n13107), .B1(n28459), .C1(n358), .D1(n335), 
          .CIN(n24056), .COUT(n24057), .S0(n392), .S1(n391));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_255_7.INIT0 = 16'h0e1f;
    defparam tens_3__I_16_add_255_7.INIT1 = 16'h0e1f;
    defparam tens_3__I_16_add_255_7.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_255_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_585_4_lut (.A(WRITE_BYTE_CNT[0]), .B(WRITE_BYTE_CNT[1]), 
         .C(WRITE_BYTE_CNT[2]), .D(WRITE_BYTE_CNT[3]), .Z(n28581)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_585_4_lut.init = 16'h0100;
    CCU2D tens_3__I_16_add_255_5 (.A0(n28463), .B0(n13107), .C0(n361), 
          .D0(n28484), .A1(n13107), .B1(n28459), .C1(n360), .D1(n337), 
          .CIN(n24055), .COUT(n24056), .S0(n394), .S1(n393));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_255_5.INIT0 = 16'h0e3f;
    defparam tens_3__I_16_add_255_5.INIT1 = 16'h0e1f;
    defparam tens_3__I_16_add_255_5.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_255_5.INJECT1_1 = "NO";
    CCU2D div_276_add_527_5 (.A0(n28248), .B0(n20643), .C0(n762_adj_247), 
          .D0(n28251), .A1(n28248), .B1(n20643), .C1(n761_adj_246), 
          .D1(n722_adj_240), .CIN(n24166), .COUT(n24167), .S0(n819_adj_262), 
          .S1(n818_adj_261));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_527_5.INIT0 = 16'h0e1f;
    defparam div_276_add_527_5.INIT1 = 16'hf1e0;
    defparam div_276_add_527_5.INJECT1_0 = "NO";
    defparam div_276_add_527_5.INJECT1_1 = "NO";
    LUT4 mux_267_i4_3_lut (.A(ones_3__N_237[3]), .B(ones_3__N_238[3]), .C(mode), 
         .Z(cycledata_46__N_70[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_267_i4_3_lut.init = 16'hcaca;
    CCU2D div_276_add_527_3 (.A0(n281), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n28248), .B1(n20643), .C1(n763_adj_248), .D1(n280), .CIN(n24165), 
          .COUT(n24166), .S0(n821_adj_264), .S1(n820_adj_263));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_527_3.INIT0 = 16'h5aaa;
    defparam div_276_add_527_3.INIT1 = 16'h0e1f;
    defparam div_276_add_527_3.INJECT1_0 = "NO";
    defparam div_276_add_527_3.INJECT1_1 = "NO";
    CCU2D count_1137_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24038), .S1(n35));   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137_add_4_1.INIT0 = 16'hF000;
    defparam count_1137_add_4_1.INIT1 = 16'h0555;
    defparam count_1137_add_4_1.INJECT1_0 = "NO";
    defparam count_1137_add_4_1.INJECT1_1 = "NO";
    CCU2D sub_281_add_2_9 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24037), 
          .S0(zpone_3__N_340[7]));   // d:/lab_6/temperature.vhd(334[11:16])
    defparam sub_281_add_2_9.INIT0 = 16'hffff;
    defparam sub_281_add_2_9.INIT1 = 16'h0000;
    defparam sub_281_add_2_9.INJECT1_0 = "NO";
    defparam sub_281_add_2_9.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i13 (.D(n92), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i13.GSR = "ENABLED";
    FD1S3IX key_div_1136__i12 (.D(n93), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i12.GSR = "ENABLED";
    CCU2D mod_274_add_521_3 (.A0(n13100), .B0(n20383), .C0(n707_adj_541), 
          .D0(n397_adj_592), .A1(n13100), .B1(n20383), .C1(n706_adj_542), 
          .D1(n28314), .CIN(n24292), .COUT(n24293), .S0(n761_adj_525), 
          .S1(n760_adj_526));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_521_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_521_3.INIT1 = 16'h0e1f;
    defparam mod_274_add_521_3.INJECT1_0 = "NO";
    defparam mod_274_add_521_3.INJECT1_1 = "NO";
    CCU2D sub_281_add_2_7 (.A0(n27362), .B0(n20525), .C0(n28294), .D0(n997_adj_448), 
          .A1(n27362), .B1(n20525), .C1(n28293), .D1(n996), .CIN(n24036), 
          .COUT(n24037), .S0(zpone_3__N_340[5]), .S1(zpone_3__N_340[6]));   // d:/lab_6/temperature.vhd(334[11:16])
    defparam sub_281_add_2_7.INIT0 = 16'h0e1f;
    defparam sub_281_add_2_7.INIT1 = 16'h0e1f;
    defparam sub_281_add_2_7.INJECT1_0 = "NO";
    defparam sub_281_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_281_add_2_5 (.A0(zpzone_3__N_333[3]), .B0(n6_adj_224), .C0(n28278), 
          .D0(n13552), .A1(n28337), .B1(n1004_adj_447), .C1(n28299), 
          .D1(n998), .CIN(n24035), .COUT(n24036), .S0(zpone_3__N_340[3]), 
          .S1(zpone_3__N_340[4]));   // d:/lab_6/temperature.vhd(334[11:16])
    defparam sub_281_add_2_5.INIT0 = 16'h59a6;
    defparam sub_281_add_2_5.INIT1 = 16'h04fb;
    defparam sub_281_add_2_5.INJECT1_0 = "NO";
    defparam sub_281_add_2_5.INJECT1_1 = "NO";
    CCU2D div_276_add_527_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n282), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24165));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_527_1.INIT0 = 16'h0000;
    defparam div_276_add_527_1.INIT1 = 16'h5555;
    defparam div_276_add_527_1.INJECT1_0 = "NO";
    defparam div_276_add_527_1.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i15 (.D(n75), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i15.GSR = "ENABLED";
    LUT4 mux_267_i2_4_lut (.A(temp1_8__N_213[1]), .B(ones_3__N_238[1]), 
         .C(mode), .D(n28542), .Z(cycledata_46__N_70[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_267_i2_4_lut.init = 16'hc5ca;
    CCU2D mod_274_add_521_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13090), .B1(n28368), .C1(n4504), .D1(n1179), 
          .COUT(n24292), .S1(n762_adj_524));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_521_1.INIT0 = 16'hF000;
    defparam mod_274_add_521_1.INIT1 = 16'h0f11;
    defparam mod_274_add_521_1.INJECT1_0 = "NO";
    defparam mod_274_add_521_1.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_add_255_3 (.A0(n13107), .B0(n28459), .C0(n363), 
          .D0(n241), .A1(n28486), .B1(n28533), .C1(n28458), .D1(n362), 
          .CIN(n24054), .COUT(n24055), .S0(n396), .S1(n395));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_255_3.INIT0 = 16'h0e1f;
    defparam tens_3__I_16_add_255_3.INIT1 = 16'hf909;
    defparam tens_3__I_16_add_255_3.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_255_3.INJECT1_1 = "NO";
    CCU2D sub_281_add_2_3 (.A0(n28275), .B0(n28339), .C0(n1179), .D0(n4510), 
          .A1(n28337), .B1(n1004_adj_447), .C1(zpzone_3__N_254[2]), .D1(GND_net), 
          .CIN(n24034), .COUT(n24035), .S0(zpone_3__N_340[1]), .S1(zpone_3__N_340[2]));   // d:/lab_6/temperature.vhd(334[11:16])
    defparam sub_281_add_2_3.INIT0 = 16'ha959;
    defparam sub_281_add_2_3.INIT1 = 16'h9969;
    defparam sub_281_add_2_3.INJECT1_0 = "NO";
    defparam sub_281_add_2_3.INJECT1_1 = "NO";
    FD1P3IX STATE__i1 (.D(STATE_3__N_144[1]), .SP(clk_c_enable_51), .CD(n3092), 
            .CK(clk_c), .Q(STATE[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam STATE__i1.GSR = "ENABLED";
    CCU2D mod_274_add_558_11 (.A0(n13101), .B0(n20275), .C0(n754_adj_532), 
          .D0(n717_adj_539), .A1(n13101), .B1(n20275), .C1(n753_adj_533), 
          .D1(n716_adj_540), .CIN(n24290), .S0(n808_adj_513), .S1(n807_adj_514));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_558_11.INIT0 = 16'h0e1f;
    defparam mod_274_add_558_11.INIT1 = 16'h0e1f;
    defparam mod_274_add_558_11.INJECT1_0 = "NO";
    defparam mod_274_add_558_11.INJECT1_1 = "NO";
    CCU2D div_276_add_488_9 (.A0(n28260), .B0(n20635), .C0(n700_adj_231), 
          .D0(n28261), .A1(n28261), .B1(n20635), .C1(n699_adj_230), 
          .D1(n28260), .CIN(n24163), .S0(n757_adj_242), .S1(n756_adj_241));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_488_9.INIT0 = 16'h0f1f;
    defparam div_276_add_488_9.INIT1 = 16'h0f1f;
    defparam div_276_add_488_9.INJECT1_0 = "NO";
    defparam div_276_add_488_9.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_add_255_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n242), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24054), .S1(n397));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_255_1.INIT0 = 16'hF000;
    defparam tens_3__I_16_add_255_1.INIT1 = 16'h5555;
    defparam tens_3__I_16_add_255_1.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_255_1.INJECT1_1 = "NO";
    CCU2D mod_274_add_558_9 (.A0(n13101), .B0(n20275), .C0(n756_adj_530), 
          .D0(n28311), .A1(n13101), .B1(n20275), .C1(n755_adj_531), 
          .D1(n718_adj_538), .CIN(n24289), .COUT(n24290), .S0(n810_adj_511), 
          .S1(n809_adj_512));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_558_9.INIT0 = 16'h0e1f;
    defparam mod_274_add_558_9.INIT1 = 16'h0e1f;
    defparam mod_274_add_558_9.INJECT1_0 = "NO";
    defparam mod_274_add_558_9.INJECT1_1 = "NO";
    CCU2D div_276_add_488_7 (.A0(n12110), .B0(n20635), .C0(n702_adj_233), 
          .D0(n663), .A1(n12110), .B1(n20635), .C1(n701_adj_232), .D1(n662_adj_228), 
          .CIN(n24162), .COUT(n24163), .S0(n759_adj_244), .S1(n758_adj_243));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_488_7.INIT0 = 16'hf1e0;
    defparam div_276_add_488_7.INIT1 = 16'h0e1f;
    defparam div_276_add_488_7.INJECT1_0 = "NO";
    defparam div_276_add_488_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_616 (.A(cnt[0]), .B(cnt[2]), .Z(n28612)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(197[12:18])
    defparam i1_2_lut_rep_616.init = 16'heeee;
    CCU2D div_276_add_488_5 (.A0(n12110), .B0(n20635), .C0(n704_adj_235), 
          .D0(n28259), .A1(n12110), .B1(n20635), .C1(n703_adj_234), 
          .D1(n664_adj_229), .CIN(n24161), .COUT(n24162), .S0(n761_adj_246), 
          .S1(n760_adj_245));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_488_5.INIT0 = 16'h0e1f;
    defparam div_276_add_488_5.INIT1 = 16'hf1e0;
    defparam div_276_add_488_5.INJECT1_0 = "NO";
    defparam div_276_add_488_5.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_add_232_7 (.A0(n4), .B0(n28480), .C0(n28473), .D0(n302), 
          .A1(n13110), .B1(n28480), .C1(n28469), .D1(n301), .CIN(n24052), 
          .S0(n358), .S1(n357));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_232_7.INIT0 = 16'h0ff4;
    defparam tens_3__I_16_add_232_7.INIT1 = 16'h0bf4;
    defparam tens_3__I_16_add_232_7.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_232_7.INJECT1_1 = "NO";
    CCU2D div_276_add_488_3 (.A0(n280), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n12110), .B1(n20635), .C1(n705_adj_236), .D1(n279), .CIN(n24160), 
          .COUT(n24161), .S0(n763_adj_248), .S1(n762_adj_247));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_488_3.INIT0 = 16'h5aaa;
    defparam div_276_add_488_3.INIT1 = 16'h0e1f;
    defparam div_276_add_488_3.INJECT1_0 = "NO";
    defparam div_276_add_488_3.INJECT1_1 = "NO";
    FD1P3IX STATE__i2 (.D(STATE_3__N_144[2]), .SP(clk_c_enable_13), .CD(n3092), 
            .CK(clk_c), .Q(STATE[2])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam STATE__i2.GSR = "ENABLED";
    FD1P3IX STATE__i3 (.D(STATE_3__N_144[3]), .SP(clk_c_enable_14), .CD(n3092), 
            .CK(clk_c), .Q(STATE[3])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam STATE__i3.GSR = "ENABLED";
    CCU2D mod_274_add_558_7 (.A0(n13101), .B0(n20275), .C0(n758_adj_528), 
          .D0(n721_adj_536), .A1(n13101), .B1(n20275), .C1(n757_adj_529), 
          .D1(n720_adj_537), .CIN(n24288), .COUT(n24289), .S0(n812_adj_509), 
          .S1(n811_adj_510));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_558_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_558_7.INIT1 = 16'h0e1f;
    defparam mod_274_add_558_7.INJECT1_0 = "NO";
    defparam mod_274_add_558_7.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i16 (.D(n74), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i16.GSR = "ENABLED";
    CCU2D div_276_add_488_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n281), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24160));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_488_1.INIT0 = 16'h0000;
    defparam div_276_add_488_1.INIT1 = 16'h5555;
    defparam div_276_add_488_1.INJECT1_0 = "NO";
    defparam div_276_add_488_1.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i1 (.D(n89), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i1.GSR = "ENABLED";
    CCU2D mod_274_add_558_5 (.A0(n13101), .B0(n20275), .C0(n760_adj_526), 
          .D0(n723_adj_535), .A1(n13101), .B1(n20275), .C1(n759_adj_527), 
          .D1(n722_adj_220), .CIN(n24287), .COUT(n24288), .S0(n814_adj_507), 
          .S1(n813_adj_508));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_558_5.INIT0 = 16'hf1e0;
    defparam mod_274_add_558_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_558_5.INJECT1_0 = "NO";
    defparam mod_274_add_558_5.INJECT1_1 = "NO";
    CCU2D mod_274_add_558_3 (.A0(n13101), .B0(n20275), .C0(n762_adj_524), 
          .D0(n725_adj_534), .A1(n13101), .B1(n20275), .C1(n761_adj_525), 
          .D1(n28312), .CIN(n24286), .COUT(n24287), .S0(n816_adj_506), 
          .S1(n815_adj_208));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_558_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_558_3.INIT1 = 16'h0e1f;
    defparam mod_274_add_558_3.INJECT1_0 = "NO";
    defparam mod_274_add_558_3.INJECT1_1 = "NO";
    CCU2D div_276_add_449_9 (.A0(n12104), .B0(n20627), .C0(n28269), .D0(n642), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24159), 
          .S0(n699_adj_230));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_449_9.INIT0 = 16'h07ff;
    defparam div_276_add_449_9.INIT1 = 16'h0000;
    defparam div_276_add_449_9.INJECT1_0 = "NO";
    defparam div_276_add_449_9.INJECT1_1 = "NO";
    CCU2D mod_274_add_558_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13072), .B1(n28363), .C1(n4505), .D1(n1179), 
          .COUT(n24286), .S1(n817_adj_505));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_558_1.INIT0 = 16'hF000;
    defparam mod_274_add_558_1.INIT1 = 16'h0f11;
    defparam mod_274_add_558_1.INJECT1_0 = "NO";
    defparam mod_274_add_558_1.INJECT1_1 = "NO";
    CCU2D div_276_add_449_7 (.A0(n28269), .B0(n28265), .C0(n644), .D0(n28267), 
          .A1(n28269), .B1(n28265), .C1(n643), .D1(n604), .CIN(n24158), 
          .COUT(n24159), .S0(n701_adj_232), .S1(n700_adj_231));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_449_7.INIT0 = 16'hf1e0;
    defparam div_276_add_449_7.INIT1 = 16'h0e1f;
    defparam div_276_add_449_7.INJECT1_0 = "NO";
    defparam div_276_add_449_7.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i2 (.D(n88), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i2.GSR = "ENABLED";
    CCU2D mod_274_add_595_13 (.A0(n28308), .B0(n20164), .C0(n807_adj_514), 
          .D0(n770_adj_523), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24285), .S0(n861_adj_493));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_595_13.INIT0 = 16'h0e1f;
    defparam mod_274_add_595_13.INIT1 = 16'h0000;
    defparam mod_274_add_595_13.INJECT1_0 = "NO";
    defparam mod_274_add_595_13.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_add_232_5 (.A0(n337), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13110), .B1(n28480), .C1(n28479), .D1(n28489), 
          .CIN(n24051), .COUT(n24052), .S0(n360), .S1(n359));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_232_5.INIT0 = 16'h5555;
    defparam tens_3__I_16_add_232_5.INIT1 = 16'h0bf4;
    defparam tens_3__I_16_add_232_5.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_232_5.INJECT1_1 = "NO";
    CCU2D div_276_add_449_5 (.A0(n28268), .B0(n28281), .C0(n646_adj_226), 
          .D0(n28263), .A1(n28269), .B1(n28265), .C1(n645_adj_225), 
          .D1(n606), .CIN(n24157), .COUT(n24158), .S0(n703_adj_234), 
          .S1(n702_adj_233));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_449_5.INIT0 = 16'h0f99;
    defparam div_276_add_449_5.INIT1 = 16'hf1e0;
    defparam div_276_add_449_5.INJECT1_0 = "NO";
    defparam div_276_add_449_5.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_add_232_3 (.A0(n13110), .B0(n28480), .C0(n10_adj_419), 
          .D0(n28533), .A1(n13110), .B1(n28480), .C1(n28533), .D1(n28488), 
          .CIN(n24050), .COUT(n24051), .S0(n362), .S1(n361));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_232_3.INIT0 = 16'h0b4f;
    defparam tens_3__I_16_add_232_3.INIT1 = 16'hf40b;
    defparam tens_3__I_16_add_232_3.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_232_3.INJECT1_1 = "NO";
    CCU2D div_276_add_449_3 (.A0(n279), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n28269), .B1(n28265), .C1(n647_adj_227), .D1(n278_adj_213), 
          .CIN(n24156), .COUT(n24157), .S0(n705_adj_236), .S1(n704_adj_235));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_449_3.INIT0 = 16'h5aaa;
    defparam div_276_add_449_3.INIT1 = 16'h0e1f;
    defparam div_276_add_449_3.INJECT1_0 = "NO";
    defparam div_276_add_449_3.INJECT1_1 = "NO";
    CCU2D mod_274_add_595_11 (.A0(n28308), .B0(n20164), .C0(n809_adj_512), 
          .D0(n772_adj_522), .A1(n28308), .B1(n20164), .C1(n808_adj_513), 
          .D1(n771), .CIN(n24284), .COUT(n24285), .S0(n863_adj_491), 
          .S1(n862_adj_492));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_595_11.INIT0 = 16'h0e1f;
    defparam mod_274_add_595_11.INIT1 = 16'h0e1f;
    defparam mod_274_add_595_11.INJECT1_0 = "NO";
    defparam mod_274_add_595_11.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i3 (.D(n87), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i3.GSR = "ENABLED";
    CCU2D div_276_add_449_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n280), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24156));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_449_1.INIT0 = 16'h0000;
    defparam div_276_add_449_1.INIT1 = 16'h5555;
    defparam div_276_add_449_1.INJECT1_0 = "NO";
    defparam div_276_add_449_1.INJECT1_1 = "NO";
    CCU2D mod_271_add_448_5 (.A0(n28462), .B0(n13087), .C0(n597), .D0(n560), 
          .A1(n13087), .B1(n28457), .C1(n596), .D1(n559), .CIN(n24046), 
          .COUT(n24047), .S0(n651), .S1(n650));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_448_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_448_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_448_5.INJECT1_0 = "NO";
    defparam mod_271_add_448_5.INJECT1_1 = "NO";
    CCU2D mod_271_add_448_7 (.A0(n13087), .B0(n28457), .C0(n595), .D0(n558), 
          .A1(n13087), .B1(n28457), .C1(n594), .D1(n557), .CIN(n24047), 
          .COUT(n24048), .S0(n649), .S1(n648));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_448_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_448_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_448_7.INJECT1_0 = "NO";
    defparam mod_271_add_448_7.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i4 (.D(n86), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i4.GSR = "ENABLED";
    CCU2D mod_274_add_595_9 (.A0(n28308), .B0(n20164), .C0(n811_adj_510), 
          .D0(n774_adj_520), .A1(n28308), .B1(n20164), .C1(n810_adj_511), 
          .D1(n773_adj_521), .CIN(n24283), .COUT(n24284), .S0(n865_adj_207), 
          .S1(n864_adj_490));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_595_9.INIT0 = 16'h0e1f;
    defparam mod_274_add_595_9.INIT1 = 16'h0e1f;
    defparam mod_274_add_595_9.INJECT1_0 = "NO";
    defparam mod_274_add_595_9.INJECT1_1 = "NO";
    CCU2D mod_274_add_595_7 (.A0(n28308), .B0(n20164), .C0(n813_adj_508), 
          .D0(n776_adj_518), .A1(n28308), .B1(n20164), .C1(n812_adj_509), 
          .D1(n775_adj_519), .CIN(n24282), .COUT(n24283), .S0(n867_adj_488), 
          .S1(n866_adj_489));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_595_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_595_7.INIT1 = 16'h0e1f;
    defparam mod_274_add_595_7.INJECT1_0 = "NO";
    defparam mod_274_add_595_7.INJECT1_1 = "NO";
    CCU2D div_276_add_410_7 (.A0(n28280), .B0(n28276), .C0(n28273), .D0(n28282), 
          .A1(n28282), .B1(n28276), .C1(n4654), .D1(n28280), .CIN(n24154), 
          .S0(n643), .S1(n642));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_410_7.INIT0 = 16'hf700;
    defparam div_276_add_410_7.INIT1 = 16'h08ff;
    defparam div_276_add_410_7.INJECT1_0 = "NO";
    defparam div_276_add_410_7.INJECT1_1 = "NO";
    CCU2D sub_281_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(zpzone_3__N_333[0]), .B1(n1179), .C1(n20729), .D1(n4511), 
          .COUT(n24034));   // d:/lab_6/temperature.vhd(334[11:16])
    defparam sub_281_add_2_1.INIT0 = 16'h0000;
    defparam sub_281_add_2_1.INIT1 = 16'h569a;
    defparam sub_281_add_2_1.INJECT1_0 = "NO";
    defparam sub_281_add_2_1.INJECT1_1 = "NO";
    CCU2D mod_274_add_595_5 (.A0(n28308), .B0(n20164), .C0(n815_adj_208), 
          .D0(n778_adj_516), .A1(n28308), .B1(n20164), .C1(n814_adj_507), 
          .D1(n777_adj_517), .CIN(n24281), .COUT(n24282), .S0(n869_adj_486), 
          .S1(n868_adj_487));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_595_5.INIT0 = 16'hf1e0;
    defparam mod_274_add_595_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_595_5.INJECT1_0 = "NO";
    defparam mod_274_add_595_5.INJECT1_1 = "NO";
    CCU2D div_276_add_410_5 (.A0(n275), .B0(n12098), .C0(n28281), .D0(n276), 
          .A1(n276), .B1(n12098), .C1(n28281), .D1(n275), .CIN(n24153), 
          .COUT(n24154), .S0(n645_adj_225), .S1(n644));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_410_5.INIT0 = 16'h0cf7;
    defparam div_276_add_410_5.INIT1 = 16'hfb00;
    defparam div_276_add_410_5.INJECT1_0 = "NO";
    defparam div_276_add_410_5.INJECT1_1 = "NO";
    CCU2D div_276_add_410_3 (.A0(n278_adj_213), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n28281), .B1(n28268), .C1(GND_net), .D1(GND_net), 
          .CIN(n24152), .COUT(n24153), .S0(n647_adj_227), .S1(n646_adj_226));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_410_3.INIT0 = 16'h5aaa;
    defparam div_276_add_410_3.INIT1 = 16'h9999;
    defparam div_276_add_410_3.INJECT1_0 = "NO";
    defparam div_276_add_410_3.INJECT1_1 = "NO";
    CCU2D add_1404_add_1_8 (.A0(temp1_8__N_270[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24033), .S0(n3_adj_26), .S1(n1));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_1_8.INIT0 = 16'h5aaa;
    defparam add_1404_add_1_8.INIT1 = 16'h0000;
    defparam add_1404_add_1_8.INJECT1_0 = "NO";
    defparam add_1404_add_1_8.INJECT1_1 = "NO";
    CCU2D add_1404_add_1_6 (.A0(temp1_8__N_270[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp1_8__N_270[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24032), .COUT(n24033), .S0(n5_adj_15), 
          .S1(n4_adj_24));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_1_6.INIT0 = 16'h5aaa;
    defparam add_1404_add_1_6.INIT1 = 16'h5aaa;
    defparam add_1404_add_1_6.INJECT1_0 = "NO";
    defparam add_1404_add_1_6.INJECT1_1 = "NO";
    CCU2D add_1404_add_1_4 (.A0(temp1_8__N_270[2]), .B0(temp1_8__N_270[6]), 
          .C0(GND_net), .D0(GND_net), .A1(temp1_8__N_270[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24031), .COUT(n24032), .S0(n7_adj_13), 
          .S1(n6_adj_14));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_1_4.INIT0 = 16'h5666;
    defparam add_1404_add_1_4.INIT1 = 16'h5aaa;
    defparam add_1404_add_1_4.INJECT1_0 = "NO";
    defparam add_1404_add_1_4.INJECT1_1 = "NO";
    CCU2D mod_274_add_595_3 (.A0(n28308), .B0(n20164), .C0(n817_adj_505), 
          .D0(n780_adj_515), .A1(n28308), .B1(n20164), .C1(n816_adj_506), 
          .D1(n28309), .CIN(n24280), .COUT(n24281), .S0(n871_adj_484), 
          .S1(n870_adj_485));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_595_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_595_3.INIT1 = 16'h0e1f;
    defparam mod_274_add_595_3.INJECT1_0 = "NO";
    defparam mod_274_add_595_3.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i11 (.D(n94), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i11.GSR = "ENABLED";
    CCU2D div_276_add_410_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n279), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24152));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_410_1.INIT0 = 16'h0000;
    defparam div_276_add_410_1.INIT1 = 16'h5555;
    defparam div_276_add_410_1.INJECT1_0 = "NO";
    defparam div_276_add_410_1.INJECT1_1 = "NO";
    CCU2D mod_274_add_595_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13056), .B1(n28359), .C1(n4506), .D1(n1179), 
          .COUT(n24280), .S1(n872_adj_483));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_595_1.INIT0 = 16'hF000;
    defparam mod_274_add_595_1.INIT1 = 16'h0f11;
    defparam mod_274_add_595_1.INJECT1_0 = "NO";
    defparam mod_274_add_595_1.INJECT1_1 = "NO";
    CCU2D mod_271_add_448_11 (.A0(n13087), .B0(n28457), .C0(n591), .D0(n554), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24049), 
          .S0(n645));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_448_11.INIT0 = 16'h0e1f;
    defparam mod_271_add_448_11.INIT1 = 16'h0000;
    defparam mod_271_add_448_11.INJECT1_0 = "NO";
    defparam mod_271_add_448_11.INJECT1_1 = "NO";
    CCU2D mod_274_add_632_13 (.A0(n13106), .B0(n20070), .C0(n862_adj_492), 
          .D0(n825_adj_503), .A1(n13106), .B1(n20070), .C1(n861_adj_493), 
          .D1(n824_adj_504), .CIN(n24278), .S0(n916_adj_470), .S1(n915_adj_471));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_632_13.INIT0 = 16'h0e1f;
    defparam mod_274_add_632_13.INIT1 = 16'h0e1f;
    defparam mod_274_add_632_13.INJECT1_0 = "NO";
    defparam mod_274_add_632_13.INJECT1_1 = "NO";
    FD1P3IX WRITE_LOW_CNT_i0_i1 (.D(WRITE_LOW_CNT[0]), .SP(clk_c_enable_50), 
            .CD(n24718), .CK(clk_c), .Q(WRITE_LOW_CNT[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_LOW_CNT_i0_i1.GSR = "ENABLED";
    CCU2D add_1404_add_1_2 (.A0(temp1_8__N_213[0]), .B0(temp1_8__N_270[4]), 
          .C0(GND_net), .D0(GND_net), .A1(temp1_8__N_213[1]), .B1(temp1_8__N_270[5]), 
          .C1(GND_net), .D1(GND_net), .COUT(n24031), .S1(n8_adj_12));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_1_2.INIT0 = 16'h7000;
    defparam add_1404_add_1_2.INIT1 = 16'h5666;
    defparam add_1404_add_1_2.INJECT1_0 = "NO";
    defparam add_1404_add_1_2.INJECT1_1 = "NO";
    CCU2D mod_274_add_632_11 (.A0(n13106), .B0(n20070), .C0(n864_adj_490), 
          .D0(n827_adj_501), .A1(n13106), .B1(n20070), .C1(n863_adj_491), 
          .D1(n826_adj_502), .CIN(n24277), .COUT(n24278), .S0(n918_adj_201), 
          .S1(n917_adj_200));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_632_11.INIT0 = 16'h0e1f;
    defparam mod_274_add_632_11.INIT1 = 16'h0e1f;
    defparam mod_274_add_632_11.INJECT1_0 = "NO";
    defparam mod_274_add_632_11.INJECT1_1 = "NO";
    CCU2D temp2_8__I_0_add_201_7 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24150), .S0(n284_adj_103), .S1(n283_adj_104));   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_add_201_7.INIT0 = 16'h5555;
    defparam temp2_8__I_0_add_201_7.INIT1 = 16'h5555;
    defparam temp2_8__I_0_add_201_7.INJECT1_0 = "NO";
    defparam temp2_8__I_0_add_201_7.INJECT1_1 = "NO";
    CCU2D mod_274_add_632_9 (.A0(n13106), .B0(n20070), .C0(n866_adj_489), 
          .D0(n829_adj_499), .A1(n13106), .B1(n20070), .C1(n865_adj_207), 
          .D1(n828_adj_500), .CIN(n24276), .COUT(n24277), .S0(n920_adj_203), 
          .S1(n919_adj_202));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_632_9.INIT0 = 16'h0e1f;
    defparam mod_274_add_632_9.INIT1 = 16'h0e1f;
    defparam mod_274_add_632_9.INJECT1_0 = "NO";
    defparam mod_274_add_632_9.INJECT1_1 = "NO";
    CCU2D temp2_8__I_0_add_201_5 (.A0(n265), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp2[6]), .B1(n20381), .C1(n28547), .D1(n28548), 
          .CIN(n24149), .COUT(n24150), .S0(n286_adj_101), .S1(n285_adj_102));   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_add_201_5.INIT0 = 16'h5555;
    defparam temp2_8__I_0_add_201_5.INIT1 = 16'h0f77;
    defparam temp2_8__I_0_add_201_5.INJECT1_0 = "NO";
    defparam temp2_8__I_0_add_201_5.INJECT1_1 = "NO";
    CCU2D add_1414_14 (.A0(n3038), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24029), 
          .S0(n3478));   // d:/lab_6/temperature.vhd(316[10:15])
    defparam add_1414_14.INIT0 = 16'h5aaa;
    defparam add_1414_14.INIT1 = 16'h0000;
    defparam add_1414_14.INJECT1_0 = "NO";
    defparam add_1414_14.INJECT1_1 = "NO";
    CCU2D add_1414_12 (.A0(n3040), .B0(n3521), .C0(GND_net), .D0(GND_net), 
          .A1(n3039), .B1(n3522), .C1(GND_net), .D1(GND_net), .CIN(n24028), 
          .COUT(n24029), .S0(n3480), .S1(n3479));   // d:/lab_6/temperature.vhd(316[10:15])
    defparam add_1414_12.INIT0 = 16'h5666;
    defparam add_1414_12.INIT1 = 16'h5666;
    defparam add_1414_12.INJECT1_0 = "NO";
    defparam add_1414_12.INJECT1_1 = "NO";
    CCU2D temp2_8__I_0_add_201_3 (.A0(n28609), .B0(n23672), .C0(n28590), 
          .D0(n28548), .A1(n28544), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24148), .COUT(n24149), .S0(n288_adj_99), .S1(n287_adj_100));   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_add_201_3.INIT0 = 16'h0f99;
    defparam temp2_8__I_0_add_201_3.INIT1 = 16'h5aaa;
    defparam temp2_8__I_0_add_201_3.INJECT1_0 = "NO";
    defparam temp2_8__I_0_add_201_3.INJECT1_1 = "NO";
    CCU2D add_1414_10 (.A0(n3042), .B0(n3039), .C0(GND_net), .D0(GND_net), 
          .A1(n3041), .B1(n3038), .C1(GND_net), .D1(GND_net), .CIN(n24027), 
          .COUT(n24028), .S0(n3482), .S1(n3481));   // d:/lab_6/temperature.vhd(316[10:15])
    defparam add_1414_10.INIT0 = 16'h5666;
    defparam add_1414_10.INIT1 = 16'h5666;
    defparam add_1414_10.INJECT1_0 = "NO";
    defparam add_1414_10.INJECT1_1 = "NO";
    LUT4 i5_3_lut (.A(n648_adj_122), .B(n10_adj_115), .C(n650_adj_124), 
         .Z(n13033)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i5_3_lut.init = 16'hfefe;
    CCU2D add_1414_8 (.A0(n3044), .B0(n3041), .C0(GND_net), .D0(GND_net), 
          .A1(n3043), .B1(n3040), .C1(GND_net), .D1(GND_net), .CIN(n24026), 
          .COUT(n24027), .S0(n3484), .S1(n3483));   // d:/lab_6/temperature.vhd(316[10:15])
    defparam add_1414_8.INIT0 = 16'h5666;
    defparam add_1414_8.INIT1 = 16'h5666;
    defparam add_1414_8.INJECT1_0 = "NO";
    defparam add_1414_8.INJECT1_1 = "NO";
    CCU2D mod_274_add_632_7 (.A0(n13106), .B0(n20070), .C0(n868_adj_487), 
          .D0(n831_adj_497), .A1(n13106), .B1(n20070), .C1(n867_adj_488), 
          .D1(n830_adj_498), .CIN(n24275), .COUT(n24276), .S0(n922_adj_205), 
          .S1(n921_adj_204));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_632_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_632_7.INIT1 = 16'h0e1f;
    defparam mod_274_add_632_7.INJECT1_0 = "NO";
    defparam mod_274_add_632_7.INJECT1_1 = "NO";
    CCU2D mod_274_add_632_5 (.A0(n13106), .B0(n20070), .C0(n870_adj_485), 
          .D0(n833_adj_495), .A1(n13106), .B1(n20070), .C1(n869_adj_486), 
          .D1(n832_adj_496), .CIN(n24274), .COUT(n24275), .S0(n924_adj_176), 
          .S1(n923_adj_206));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_632_5.INIT0 = 16'hf1e0;
    defparam mod_274_add_632_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_632_5.INJECT1_0 = "NO";
    defparam mod_274_add_632_5.INJECT1_1 = "NO";
    CCU2D mod_274_add_632_3 (.A0(n13106), .B0(n20070), .C0(n872_adj_483), 
          .D0(n835_adj_494), .A1(n13106), .B1(n20070), .C1(n871_adj_484), 
          .D1(n28306), .CIN(n24273), .COUT(n24274), .S0(n926_adj_178), 
          .S1(n925_adj_177));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_632_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_632_3.INIT1 = 16'h0e1f;
    defparam mod_274_add_632_3.INJECT1_0 = "NO";
    defparam mod_274_add_632_3.INJECT1_1 = "NO";
    FD1P3AX GET_TMP_CNT_i0_i0 (.D(n26655), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(GET_TMP_CNT[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam GET_TMP_CNT_i0_i0.GSR = "ENABLED";
    CCU2D temp2_8__I_0_add_201_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp2_8__N_286[1]), .B1(n28608), .C1(GND_net), 
          .D1(GND_net), .COUT(n24148), .S1(n289_adj_98));   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_add_201_1.INIT0 = 16'hF000;
    defparam temp2_8__I_0_add_201_1.INIT1 = 16'h9999;
    defparam temp2_8__I_0_add_201_1.INJECT1_0 = "NO";
    defparam temp2_8__I_0_add_201_1.INJECT1_1 = "NO";
    CCU2D add_1414_6 (.A0(n3046), .B0(n3043), .C0(GND_net), .D0(GND_net), 
          .A1(n3045), .B1(n3042), .C1(GND_net), .D1(GND_net), .CIN(n24025), 
          .COUT(n24026), .S0(n3486), .S1(n3485));   // d:/lab_6/temperature.vhd(316[10:15])
    defparam add_1414_6.INIT0 = 16'h5666;
    defparam add_1414_6.INIT1 = 16'h5666;
    defparam add_1414_6.INJECT1_0 = "NO";
    defparam add_1414_6.INJECT1_1 = "NO";
    CCU2D add_1414_4 (.A0(n675), .B0(n3045), .C0(GND_net), .D0(GND_net), 
          .A1(n3047), .B1(n3044), .C1(GND_net), .D1(GND_net), .CIN(n24024), 
          .COUT(n24025), .S0(n672), .S1(n617));   // d:/lab_6/temperature.vhd(316[10:15])
    defparam add_1414_4.INIT0 = 16'h5666;
    defparam add_1414_4.INIT1 = 16'h5666;
    defparam add_1414_4.INJECT1_0 = "NO";
    defparam add_1414_4.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i10 (.D(n95), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i10.GSR = "ENABLED";
    CCU2D tens_3__I_16_add_232_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n241), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24050), .S1(n363));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_add_232_1.INIT0 = 16'hF000;
    defparam tens_3__I_16_add_232_1.INIT1 = 16'h5555;
    defparam tens_3__I_16_add_232_1.INJECT1_0 = "NO";
    defparam tens_3__I_16_add_232_1.INJECT1_1 = "NO";
    CCU2D mod_274_add_632_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13079), .B1(n28354), .C1(n4507), .D1(n1179), 
          .COUT(n24273), .S1(n927_adj_179));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_632_1.INIT0 = 16'hF000;
    defparam mod_274_add_632_1.INIT1 = 16'h0f11;
    defparam mod_274_add_632_1.INJECT1_0 = "NO";
    defparam mod_274_add_632_1.INJECT1_1 = "NO";
    CCU2D add_2161_17 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24146), 
          .S0(n4496), .S1(n4495));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_17.INIT0 = 16'hffff;
    defparam add_2161_17.INIT1 = 16'hffff;
    defparam add_2161_17.INJECT1_0 = "NO";
    defparam add_2161_17.INJECT1_1 = "NO";
    CCU2D sub_272_add_2_8 (.A0(n672), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n617), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23977), 
          .COUT(n23978), .S0(n1526), .S1(n1525));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_8.INIT0 = 16'h5555;
    defparam sub_272_add_2_8.INIT1 = 16'h5555;
    defparam sub_272_add_2_8.INJECT1_0 = "NO";
    defparam sub_272_add_2_8.INJECT1_1 = "NO";
    CCU2D add_2161_15 (.A0(n176), .B0(n28411), .C0(n28412), .D0(n28405), 
          .A1(n28409), .B1(n28411), .C1(GND_net), .D1(GND_net), .CIN(n24145), 
          .COUT(n24146), .S0(n4498), .S1(n4497));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_15.INIT0 = 16'hfb4b;
    defparam add_2161_15.INIT1 = 16'h8777;
    defparam add_2161_15.INJECT1_0 = "NO";
    defparam add_2161_15.INJECT1_1 = "NO";
    CCU2D add_2161_13 (.A0(n28414), .B0(n28393), .C0(n28394), .D0(n19751), 
          .A1(n367_adj_107), .B1(n28400), .C1(n26981), .D1(n19764), 
          .CIN(n24144), .COUT(n24145), .S0(n4500), .S1(n4499));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_13.INIT0 = 16'hf400;
    defparam add_2161_13.INIT1 = 16'hf400;
    defparam add_2161_13.INJECT1_0 = "NO";
    defparam add_2161_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_584_4_lut (.A(WRITE_BYTE_CNT[0]), .B(WRITE_BYTE_CNT[1]), 
         .C(WRITE_BYTE_CNT[2]), .D(WRITE_BYTE_CNT[3]), .Z(n28580)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_584_4_lut.init = 16'hfeff;
    LUT4 i2_4_lut (.A(n886_adj_475), .B(n888_adj_474), .C(n887), .D(n4_adj_5), 
         .Z(n20571)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'ha080;
    CCU2D mod_274_add_669_15 (.A0(n13108), .B0(n20571), .C0(n915_adj_471), 
          .D0(n28303), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24272), .S0(n969));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_15.INIT0 = 16'h0e1f;
    defparam mod_274_add_669_15.INIT1 = 16'h0000;
    defparam mod_274_add_669_15.INJECT1_0 = "NO";
    defparam mod_274_add_669_15.INJECT1_1 = "NO";
    CCU2D add_2161_11 (.A0(n28376), .B0(n13061), .C0(GND_net), .D0(GND_net), 
          .A1(n28381), .B1(n13070), .C1(GND_net), .D1(GND_net), .CIN(n24143), 
          .COUT(n24144), .S0(n4502), .S1(n4501));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_11.INIT0 = 16'he111;
    defparam add_2161_11.INIT1 = 16'he111;
    defparam add_2161_11.INJECT1_0 = "NO";
    defparam add_2161_11.INJECT1_1 = "NO";
    CCU2D mod_274_add_669_13 (.A0(n13108), .B0(n20571), .C0(n917_adj_200), 
          .D0(n880_adj_481), .A1(n13108), .B1(n20571), .C1(n916_adj_470), 
          .D1(n879_adj_482), .CIN(n24271), .COUT(n24272), .S0(n971), 
          .S1(n970));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_13.INIT0 = 16'h0e1f;
    defparam mod_274_add_669_13.INIT1 = 16'h0e1f;
    defparam mod_274_add_669_13.INJECT1_0 = "NO";
    defparam mod_274_add_669_13.INJECT1_1 = "NO";
    CCU2D add_2161_9 (.A0(n28368), .B0(n13090), .C0(GND_net), .D0(GND_net), 
          .A1(n28372), .B1(n13033), .C1(GND_net), .D1(GND_net), .CIN(n24142), 
          .COUT(n24143), .S0(n4504), .S1(n4503));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_9.INIT0 = 16'he111;
    defparam add_2161_9.INIT1 = 16'he111;
    defparam add_2161_9.INJECT1_0 = "NO";
    defparam add_2161_9.INJECT1_1 = "NO";
    CCU2D add_2161_7 (.A0(n28359), .B0(n13056), .C0(GND_net), .D0(GND_net), 
          .A1(n28363), .B1(n13072), .C1(GND_net), .D1(GND_net), .CIN(n24141), 
          .COUT(n24142), .S0(n4506), .S1(n4505));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_7.INIT0 = 16'he111;
    defparam add_2161_7.INIT1 = 16'he111;
    defparam add_2161_7.INJECT1_0 = "NO";
    defparam add_2161_7.INJECT1_1 = "NO";
    CCU2D add_2161_5 (.A0(n28349), .B0(n13057), .C0(GND_net), .D0(GND_net), 
          .A1(n28354), .B1(n13079), .C1(GND_net), .D1(GND_net), .CIN(n24140), 
          .COUT(n24141), .S0(n4508), .S1(n4507));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_5.INIT0 = 16'he111;
    defparam add_2161_5.INIT1 = 16'he111;
    defparam add_2161_5.INJECT1_0 = "NO";
    defparam add_2161_5.INJECT1_1 = "NO";
    CCU2D mod_274_add_669_11 (.A0(n13108), .B0(n20571), .C0(n919_adj_202), 
          .D0(n882_adj_479), .A1(n13108), .B1(n20571), .C1(n918_adj_201), 
          .D1(n881_adj_480), .CIN(n24270), .COUT(n24271), .S0(n973_adj_459), 
          .S1(n972_adj_460));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_11.INIT0 = 16'h0e1f;
    defparam mod_274_add_669_11.INIT1 = 16'h0e1f;
    defparam mod_274_add_669_11.INJECT1_0 = "NO";
    defparam mod_274_add_669_11.INJECT1_1 = "NO";
    CCU2D mod_274_add_669_9 (.A0(n13108), .B0(n20571), .C0(n921_adj_204), 
          .D0(n884_adj_477), .A1(n13108), .B1(n20571), .C1(n920_adj_203), 
          .D1(n883_adj_478), .CIN(n24269), .COUT(n24270), .S0(n975_adj_457), 
          .S1(n974_adj_458));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_9.INIT0 = 16'h0e1f;
    defparam mod_274_add_669_9.INIT1 = 16'h0e1f;
    defparam mod_274_add_669_9.INJECT1_0 = "NO";
    defparam mod_274_add_669_9.INJECT1_1 = "NO";
    CCU2D add_2161_3 (.A0(n28340), .B0(n13073), .C0(GND_net), .D0(GND_net), 
          .A1(n28343), .B1(n13097), .C1(GND_net), .D1(GND_net), .CIN(n24139), 
          .COUT(n24140), .S0(n4510), .S1(n4509));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_3.INIT0 = 16'he111;
    defparam add_2161_3.INIT1 = 16'he111;
    defparam add_2161_3.INJECT1_0 = "NO";
    defparam add_2161_3.INJECT1_1 = "NO";
    CCU2D mod_274_add_669_7 (.A0(n13108), .B0(n20571), .C0(n923_adj_206), 
          .D0(n886_adj_475), .A1(n13108), .B1(n20571), .C1(n922_adj_205), 
          .D1(n885_adj_476), .CIN(n24268), .COUT(n24269), .S0(n977_adj_455), 
          .S1(n976_adj_456));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_7.INIT0 = 16'h0e1f;
    defparam mod_274_add_669_7.INIT1 = 16'h0e1f;
    defparam mod_274_add_669_7.INJECT1_0 = "NO";
    defparam mod_274_add_669_7.INJECT1_1 = "NO";
    CCU2D mod_274_add_669_5 (.A0(n13108), .B0(n20571), .C0(n925_adj_177), 
          .D0(n888_adj_474), .A1(n13108), .B1(n20571), .C1(n924_adj_176), 
          .D1(n887), .CIN(n24267), .COUT(n24268), .S0(n979_adj_453), 
          .S1(n978_adj_454));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_5.INIT0 = 16'hf1e0;
    defparam mod_274_add_669_5.INIT1 = 16'hf1e0;
    defparam mod_274_add_669_5.INJECT1_0 = "NO";
    defparam mod_274_add_669_5.INJECT1_1 = "NO";
    CCU2D add_2161_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n28338), .B1(n32_adj_612), .C1(GND_net), .D1(GND_net), 
          .COUT(n24139), .S1(n4511));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam add_2161_1.INIT0 = 16'hF000;
    defparam add_2161_1.INIT1 = 16'heeee;
    defparam add_2161_1.INJECT1_0 = "NO";
    defparam add_2161_1.INJECT1_1 = "NO";
    CCU2D mod_274_add_669_3 (.A0(n13108), .B0(n20571), .C0(n927_adj_179), 
          .D0(n890_adj_473), .A1(n13108), .B1(n20571), .C1(n926_adj_178), 
          .D1(n28304), .CIN(n24266), .COUT(n24267), .S0(n981_adj_451), 
          .S1(n980_adj_452));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_3.INIT0 = 16'h0e1f;
    defparam mod_274_add_669_3.INIT1 = 16'h0e1f;
    defparam mod_274_add_669_3.INJECT1_0 = "NO";
    defparam mod_274_add_669_3.INJECT1_1 = "NO";
    CCU2D mod_274_add_669_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13057), .B1(n28349), .C1(n4508), .D1(n1179), 
          .COUT(n24266), .S1(n982_adj_450));   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_add_669_1.INIT0 = 16'hF000;
    defparam mod_274_add_669_1.INIT1 = 16'h0f11;
    defparam mod_274_add_669_1.INJECT1_0 = "NO";
    defparam mod_274_add_669_1.INJECT1_1 = "NO";
    CCU2D ones_3__I_18_add_201_7 (.A0(n28203), .B0(n28200), .C0(n28198), 
          .D0(n28207), .A1(n4_adj_418), .B1(n28200), .C1(n28196), .D1(n232), 
          .CIN(n24264), .S0(n284_adj_439), .S1(n283_adj_96));   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_add_201_7.INIT0 = 16'h0bf4;
    defparam ones_3__I_18_add_201_7.INIT1 = 16'h0ff4;
    defparam ones_3__I_18_add_201_7.INJECT1_0 = "NO";
    defparam ones_3__I_18_add_201_7.INJECT1_1 = "NO";
    CCU2D ones_3__I_18_add_201_5 (.A0(n265_adj_442), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n28203), .B1(n28200), .C1(n28199), .D1(n28205), 
          .CIN(n24263), .COUT(n24264), .S0(n286_adj_437), .S1(n285_adj_438));   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_add_201_5.INIT0 = 16'h5555;
    defparam ones_3__I_18_add_201_5.INIT1 = 16'h0bf4;
    defparam ones_3__I_18_add_201_5.INJECT1_0 = "NO";
    defparam ones_3__I_18_add_201_5.INJECT1_1 = "NO";
    CCU2D div_273_add_719_17 (.A0(n13097), .B0(n28343), .C0(n1029), .D0(n990), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24138), 
          .S0(n1086));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_17.INIT0 = 16'h0e1f;
    defparam div_273_add_719_17.INIT1 = 16'h0000;
    defparam div_273_add_719_17.INJECT1_0 = "NO";
    defparam div_273_add_719_17.INJECT1_1 = "NO";
    CCU2D div_273_add_719_15 (.A0(n13097), .B0(n28343), .C0(n1031), .D0(n992), 
          .A1(n13097), .B1(n28343), .C1(n1030), .D1(n991), .CIN(n24137), 
          .COUT(n24138), .S0(n1088), .S1(n1087));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_15.INIT0 = 16'h0e1f;
    defparam div_273_add_719_15.INIT1 = 16'h0e1f;
    defparam div_273_add_719_15.INJECT1_0 = "NO";
    defparam div_273_add_719_15.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(n885_adj_476), .B(n14_adj_322), .C(n10_adj_332), 
         .D(n881_adj_480), .Z(n13108)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D ones_3__I_18_add_201_3 (.A0(n28203), .B0(n28200), .C0(n8_adj_381), 
          .D0(n28219), .A1(n19767), .B1(n28200), .C1(n28219), .D1(n28204), 
          .CIN(n24262), .COUT(n24263), .S0(n288_adj_435), .S1(n287_adj_436));   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_add_201_3.INIT0 = 16'h0b4f;
    defparam ones_3__I_18_add_201_3.INIT1 = 16'hf807;
    defparam ones_3__I_18_add_201_3.INJECT1_0 = "NO";
    defparam ones_3__I_18_add_201_3.INJECT1_1 = "NO";
    CCU2D add_1414_2 (.A0(temp2[0]), .B0(n3047), .C0(GND_net), .D0(GND_net), 
          .A1(temp2_8__N_286[3]), .B1(TMP[0]), .C1(n3046), .D1(GND_net), 
          .COUT(n24024), .S1(n673));   // d:/lab_6/temperature.vhd(316[10:15])
    defparam add_1414_2.INIT0 = 16'h7000;
    defparam add_1414_2.INIT1 = 16'h6969;
    defparam add_1414_2.INJECT1_0 = "NO";
    defparam add_1414_2.INJECT1_1 = "NO";
    CCU2D div_273_add_719_13 (.A0(n13097), .B0(n28343), .C0(n1033), .D0(n994), 
          .A1(n13097), .B1(n28343), .C1(n1032), .D1(n993), .CIN(n24136), 
          .COUT(n24137), .S0(n1090), .S1(n1089));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_13.INIT0 = 16'h0e1f;
    defparam div_273_add_719_13.INIT1 = 16'h0e1f;
    defparam div_273_add_719_13.INJECT1_0 = "NO";
    defparam div_273_add_719_13.INJECT1_1 = "NO";
    CCU2D div_273_add_719_11 (.A0(n13097), .B0(n28343), .C0(n1035), .D0(n28346), 
          .A1(n13097), .B1(n28343), .C1(n1034), .D1(n995), .CIN(n24135), 
          .COUT(n24136), .S0(n1092), .S1(n1091));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_11.INIT0 = 16'h0e1f;
    defparam div_273_add_719_11.INIT1 = 16'h0e1f;
    defparam div_273_add_719_11.INJECT1_0 = "NO";
    defparam div_273_add_719_11.INJECT1_1 = "NO";
    CCU2D ones_3__I_18_add_201_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13120), .B1(n20449), .C1(n4700), .D1(n1248), 
          .COUT(n24262), .S1(n289_adj_434));   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_add_201_1.INIT0 = 16'hF000;
    defparam ones_3__I_18_add_201_1.INIT1 = 16'h0f11;
    defparam ones_3__I_18_add_201_1.INJECT1_0 = "NO";
    defparam ones_3__I_18_add_201_1.INJECT1_1 = "NO";
    CCU2D div_273_add_719_9 (.A0(n13097), .B0(n28343), .C0(n1037), .D0(n28347), 
          .A1(n13097), .B1(n28343), .C1(n1036), .D1(n997), .CIN(n24134), 
          .COUT(n24135), .S0(n1094), .S1(n1093));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_9.INIT0 = 16'h0e1f;
    defparam div_273_add_719_9.INIT1 = 16'h0e1f;
    defparam div_273_add_719_9.INJECT1_0 = "NO";
    defparam div_273_add_719_9.INJECT1_1 = "NO";
    CCU2D div_276_unary_minus_2_add_3_17 (.A0(n1248), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24261), .S0(n2_adj_184));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_17.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_17.INIT1 = 16'h0000;
    defparam div_276_unary_minus_2_add_3_17.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_17.INJECT1_1 = "NO";
    CCU2D div_273_add_719_7 (.A0(n13097), .B0(n28343), .C0(n1039), .D0(n1000), 
          .A1(n13097), .B1(n28343), .C1(n1038), .D1(n999), .CIN(n24133), 
          .COUT(n24134), .S0(n1096), .S1(n1095));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_7.INIT0 = 16'h0e1f;
    defparam div_273_add_719_7.INIT1 = 16'h0e1f;
    defparam div_273_add_719_7.INJECT1_0 = "NO";
    defparam div_273_add_719_7.INJECT1_1 = "NO";
    CCU2D div_273_add_719_5 (.A0(n28344), .B0(n13097), .C0(n1041), .D0(n1002), 
          .A1(n13097), .B1(n28343), .C1(n1040), .D1(n1001), .CIN(n24132), 
          .COUT(n24133), .S0(n1098), .S1(n1097));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_5.INIT0 = 16'h0e3f;
    defparam div_273_add_719_5.INIT1 = 16'h0e1f;
    defparam div_273_add_719_5.INJECT1_0 = "NO";
    defparam div_273_add_719_5.INJECT1_1 = "NO";
    CCU2D div_273_add_719_3 (.A0(n13097), .B0(n28343), .C0(n1043), .D0(n377), 
          .A1(n13097), .B1(n28343), .C1(n1042), .D1(n28345), .CIN(n24131), 
          .COUT(n24132), .S0(n1100), .S1(n1099));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_3.INIT0 = 16'h0e1f;
    defparam div_273_add_719_3.INIT1 = 16'hf1e0;
    defparam div_273_add_719_3.INJECT1_0 = "NO";
    defparam div_273_add_719_3.INJECT1_1 = "NO";
    FD1P3IX WRITE_HIGH_CNT_i0_i1 (.D(WRITE_HIGH_CNT[0]), .SP(clk_c_enable_45), 
            .CD(n24719), .CK(clk_c), .Q(WRITE_HIGH_CNT[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_HIGH_CNT_i0_i1.GSR = "ENABLED";
    FD1S3IX key_div_1136__i9 (.D(n96), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i9.GSR = "ENABLED";
    CCU2D div_276_unary_minus_2_add_3_15 (.A0(n1564), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1563), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24260), .COUT(n24261), .S0(n4_adj_186), .S1(n3_adj_185));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_15.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_15.INIT1 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_15.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_15.INJECT1_1 = "NO";
    FD1P3AX TMP_i0_i10 (.D(n13543), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(temp1_8__N_270[6]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i10.GSR = "ENABLED";
    CCU2D div_273_add_719_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n378_adj_112), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24131), .S1(n1101));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_719_1.INIT0 = 16'hF000;
    defparam div_273_add_719_1.INIT1 = 16'h5555;
    defparam div_273_add_719_1.INJECT1_0 = "NO";
    defparam div_273_add_719_1.INJECT1_1 = "NO";
    CCU2D add_1461_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24022), 
          .S0(n3580));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1461_cout.INIT0 = 16'h0000;
    defparam add_1461_cout.INIT1 = 16'h0000;
    defparam add_1461_cout.INJECT1_0 = "NO";
    defparam add_1461_cout.INJECT1_1 = "NO";
    FD1P3AX TMP_i0_i9 (.D(n13525), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp1_8__N_270[5]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i9.GSR = "ENABLED";
    FD1P3AX TMP_i0_i8 (.D(n13519), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp1_8__N_270[4]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i8.GSR = "ENABLED";
    FD1P3AX TMP_i0_i7 (.D(n13534), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp1_8__N_270[3]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i7.GSR = "ENABLED";
    FD1P3AX TMP_i0_i6 (.D(n13537), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp1_8__N_270[2]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i6.GSR = "ENABLED";
    FD1P3AX TMP_i0_i5 (.D(n13513), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp1_8__N_213[1]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i5.GSR = "ENABLED";
    FD1P3AX TMP_i0_i4 (.D(n13516), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp1_8__N_213[0]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i4.GSR = "ENABLED";
    FD1P3AX TMP_i0_i3 (.D(n13540), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp2_8__N_286[3]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i3.GSR = "ENABLED";
    FD1P3AX TMP_i0_i2 (.D(n13522), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp2[0]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i2.GSR = "ENABLED";
    FD1P3AX TMP_i0_i1 (.D(n13528), .SP(clk_c_enable_41), .CK(clk_c), .Q(temp2_8__N_286[1]));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam TMP_i0_i1.GSR = "ENABLED";
    FD1P3AX READ_BIT_CNT_i0_i1 (.D(n767), .SP(clk_c_enable_33), .CK(clk_c), 
            .Q(READ_BIT_CNT[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam READ_BIT_CNT_i0_i1.GSR = "ENABLED";
    FD1P3AX WRITE_BYTE_FLAG_i0_i1 (.D(n3071), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(WRITE_BYTE_FLAG[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_BYTE_FLAG_i0_i1.GSR = "ENABLED";
    FD1P3AX WRITE_BYTE_CNT_i0_i3 (.D(n28630), .SP(clk_c_enable_35), .CK(clk_c), 
            .Q(WRITE_BYTE_CNT[3])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_BYTE_CNT_i0_i3.GSR = "ENABLED";
    FD1P3AX WRITE_BYTE_CNT_i0_i2 (.D(n317), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(WRITE_BYTE_CNT[2])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_BYTE_CNT_i0_i2.GSR = "ENABLED";
    FD1P3AX WRITE_BYTE_CNT_i0_i1 (.D(n318), .SP(clk_c_enable_37), .CK(clk_c), 
            .Q(WRITE_BYTE_CNT[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_BYTE_CNT_i0_i1.GSR = "ENABLED";
    FD1S3IX key_div_1136__i8 (.D(n97), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i8.GSR = "ENABLED";
    CCU2D add_1461_7 (.A0(temp1_8__N_270[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp1_8__N_270[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24021), .COUT(n24022), .S0(n3571), .S1(n3570));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1461_7.INIT0 = 16'h5aaa;
    defparam add_1461_7.INIT1 = 16'h5aaa;
    defparam add_1461_7.INJECT1_0 = "NO";
    defparam add_1461_7.INJECT1_1 = "NO";
    CCU2D div_276_unary_minus_2_add_3_13 (.A0(n1566), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1565), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24259), .COUT(n24260), .S0(n6_adj_188), .S1(n5_adj_187));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_13.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_13.INIT1 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_13.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_13.INJECT1_1 = "NO";
    CCU2D div_273_add_680_15 (.A0(n13057), .B0(n28349), .C0(n973), .D0(n934), 
          .A1(n13057), .B1(n28349), .C1(n972), .D1(n933), .CIN(n24129), 
          .S0(n1030), .S1(n1029));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_15.INIT0 = 16'h0e1f;
    defparam div_273_add_680_15.INIT1 = 16'h0e1f;
    defparam div_273_add_680_15.INJECT1_0 = "NO";
    defparam div_273_add_680_15.INJECT1_1 = "NO";
    CCU2D div_273_add_680_13 (.A0(n13057), .B0(n28349), .C0(n975), .D0(n936), 
          .A1(n13057), .B1(n28349), .C1(n974), .D1(n935), .CIN(n24128), 
          .COUT(n24129), .S0(n1032), .S1(n1031));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_13.INIT0 = 16'h0e1f;
    defparam div_273_add_680_13.INIT1 = 16'h0e1f;
    defparam div_273_add_680_13.INJECT1_0 = "NO";
    defparam div_273_add_680_13.INJECT1_1 = "NO";
    CCU2D add_1461_5 (.A0(temp1_8__N_270[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp1_8__N_270[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24020), .COUT(n24021), .S0(n3573), .S1(n3572));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1461_5.INIT0 = 16'h5aaa;
    defparam add_1461_5.INIT1 = 16'h5aaa;
    defparam add_1461_5.INJECT1_0 = "NO";
    defparam add_1461_5.INJECT1_1 = "NO";
    CCU2D div_276_unary_minus_2_add_3_11 (.A0(n1568), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1567), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24258), .COUT(n24259), .S0(n8_adj_190), .S1(n7_adj_189));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_11.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_11.INIT1 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_11.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_11.INJECT1_1 = "NO";
    CCU2D div_273_add_680_11 (.A0(n13057), .B0(n28349), .C0(n977), .D0(n938), 
          .A1(n13057), .B1(n28349), .C1(n976), .D1(n937), .CIN(n24127), 
          .COUT(n24128), .S0(n1034), .S1(n1033));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_11.INIT0 = 16'h0e1f;
    defparam div_273_add_680_11.INIT1 = 16'h0e1f;
    defparam div_273_add_680_11.INJECT1_0 = "NO";
    defparam div_273_add_680_11.INJECT1_1 = "NO";
    CCU2D div_273_add_680_9 (.A0(n13057), .B0(n28349), .C0(n979), .D0(n940), 
          .A1(n13057), .B1(n28349), .C1(n978), .D1(n939), .CIN(n24126), 
          .COUT(n24127), .S0(n1036), .S1(n1035));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_9.INIT0 = 16'h0e1f;
    defparam div_273_add_680_9.INIT1 = 16'h0e1f;
    defparam div_273_add_680_9.INJECT1_0 = "NO";
    defparam div_273_add_680_9.INJECT1_1 = "NO";
    CCU2D add_1461_3 (.A0(temp1_8__N_213[1]), .B0(n28589), .C0(temp2[0]), 
          .D0(temp2_8__N_286[3]), .A1(temp1_8__N_270[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24019), .COUT(n24020), .S0(n3575), 
          .S1(n3574));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1461_3.INIT0 = 16'h56aa;
    defparam add_1461_3.INIT1 = 16'h5aaa;
    defparam add_1461_3.INJECT1_0 = "NO";
    defparam add_1461_3.INJECT1_1 = "NO";
    CCU2D div_276_unary_minus_2_add_3_9 (.A0(n1570), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1569), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24257), .COUT(n24258), .S0(n10_adj_192), .S1(n9_adj_191));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_9.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_9.INIT1 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_9.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_9.INJECT1_1 = "NO";
    CCU2D div_273_add_680_7 (.A0(n13057), .B0(n28349), .C0(n981), .D0(n28352), 
          .A1(n13057), .B1(n28349), .C1(n980), .D1(n941), .CIN(n24125), 
          .COUT(n24126), .S0(n1038), .S1(n1037));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_7.INIT0 = 16'h0e1f;
    defparam div_273_add_680_7.INIT1 = 16'h0e1f;
    defparam div_273_add_680_7.INJECT1_0 = "NO";
    defparam div_273_add_680_7.INJECT1_1 = "NO";
    CCU2D add_1461_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(temp2_8__N_286[3]), .B1(n28573), .C1(temp1_8__N_213[0]), 
          .D1(GND_net), .COUT(n24019), .S1(n3576));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1461_1.INIT0 = 16'hF000;
    defparam add_1461_1.INIT1 = 16'h9696;
    defparam add_1461_1.INJECT1_0 = "NO";
    defparam add_1461_1.INJECT1_1 = "NO";
    FD1S3IX key_div_1136__i7 (.D(n98), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i7.GSR = "ENABLED";
    FD1S3IX key_div_1136__i6 (.D(n99), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i6.GSR = "ENABLED";
    CCU2D div_276_unary_minus_2_add_3_7 (.A0(n1572), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1571), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24256), .COUT(n24257), .S0(n12_adj_194), .S1(n11_adj_193));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_7.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_7.INIT1 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_7.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_7.INJECT1_1 = "NO";
    CCU2D div_273_add_680_5 (.A0(n28350), .B0(n13057), .C0(n983), .D0(n944), 
          .A1(n13057), .B1(n28349), .C1(n982), .D1(n943), .CIN(n24124), 
          .COUT(n24125), .S0(n1040), .S1(n1039));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_5.INIT0 = 16'h0e3f;
    defparam div_273_add_680_5.INIT1 = 16'h0e1f;
    defparam div_273_add_680_5.INJECT1_0 = "NO";
    defparam div_273_add_680_5.INJECT1_1 = "NO";
    CCU2D cnt_1139_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24017), .S0(n75), .S1(n74));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_17.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_17.INJECT1_1 = "NO";
    CCU2D div_276_unary_minus_2_add_3_5 (.A0(n1574), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1573), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24255), .COUT(n24256), .S0(n14_adj_196), .S1(n13_adj_195));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_5.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_5.INIT1 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_5.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_5.INJECT1_1 = "NO";
    CCU2D div_276_unary_minus_2_add_3_3 (.A0(n1576), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1575), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24254), .COUT(n24255), .S0(n16_adj_198), .S1(n15_adj_197));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_3.INIT0 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_3.INIT1 = 16'hf555;
    defparam div_276_unary_minus_2_add_3_3.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_3.INJECT1_1 = "NO";
    CCU2D div_273_add_680_3 (.A0(n13057), .B0(n28349), .C0(n985), .D0(n376), 
          .A1(n13057), .B1(n28349), .C1(n984), .D1(n28351), .CIN(n24123), 
          .COUT(n24124), .S0(n1042), .S1(n1041));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_3.INIT0 = 16'h0e1f;
    defparam div_273_add_680_3.INIT1 = 16'hf1e0;
    defparam div_273_add_680_3.INJECT1_0 = "NO";
    defparam div_273_add_680_3.INJECT1_1 = "NO";
    CCU2D div_273_add_680_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n377), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24123), .S1(n1043));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_680_1.INIT0 = 16'hF000;
    defparam div_273_add_680_1.INIT1 = 16'h5555;
    defparam div_273_add_680_1.INJECT1_0 = "NO";
    defparam div_273_add_680_1.INJECT1_1 = "NO";
    CCU2D div_276_unary_minus_2_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1577), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24254), .S1(n17_adj_199));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_unary_minus_2_add_3_1.INIT0 = 16'hF000;
    defparam div_276_unary_minus_2_add_3_1.INIT1 = 16'h0aaa;
    defparam div_276_unary_minus_2_add_3_1.INJECT1_0 = "NO";
    defparam div_276_unary_minus_2_add_3_1.INJECT1_1 = "NO";
    CCU2D div_273_add_641_15 (.A0(n13079), .B0(n28354), .C0(n915), .D0(n876), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24122), 
          .S0(n972));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_15.INIT0 = 16'h0e1f;
    defparam div_273_add_641_15.INIT1 = 16'h0000;
    defparam div_273_add_641_15.INJECT1_0 = "NO";
    defparam div_273_add_641_15.INJECT1_1 = "NO";
    FD1S3IX count_1137__i5 (.D(n30), .CK(clk_c), .CD(n28584), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137__i5.GSR = "ENABLED";
    FD1S3IX count_1137__i4 (.D(n31), .CK(clk_c), .CD(n28584), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137__i4.GSR = "ENABLED";
    FD1S3IX count_1137__i3 (.D(n32), .CK(clk_c), .CD(n28584), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137__i3.GSR = "ENABLED";
    FD1S3IX count_1137__i2 (.D(n33), .CK(clk_c), .CD(n28584), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137__i2.GSR = "ENABLED";
    FD1S3IX count_1137__i1 (.D(n34), .CK(clk_c), .CD(n28584), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137__i1.GSR = "ENABLED";
    FD1S3IX key_div_1136__i0 (.D(n105), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i0.GSR = "ENABLED";
    FD1S3AX segcnt_div_1140__i0 (.D(n15_adj_413), .CK(clk_N_92), .Q(n2_adj_408));   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam segcnt_div_1140__i0.GSR = "ENABLED";
    FD1S3IX key_div_1136__i5 (.D(n100), .CK(clk_c), .CD(key_div_19__N_136), 
            .Q(key_div[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136__i5.GSR = "ENABLED";
    FD1P3IX GET_TMP_CNT_i0_i3 (.D(n832), .SP(clk_c_enable_41), .CD(n13768), 
            .CK(clk_c), .Q(GET_TMP_CNT[3])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam GET_TMP_CNT_i0_i3.GSR = "ENABLED";
    CCU2D cnt_1139_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24016), .COUT(n24017), .S0(n77), .S1(n76));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_15.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_1139_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24015), .COUT(n24016), .S0(n79), .S1(n78));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_13.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_13.INJECT1_1 = "NO";
    FD1P3IX cnt_1139__i10 (.D(n80), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i10.GSR = "ENABLED";
    FD1P3IX GET_TMP_CNT_i0_i1 (.D(n834), .SP(clk_c_enable_41), .CD(n13768), 
            .CK(clk_c), .Q(GET_TMP_CNT[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam GET_TMP_CNT_i0_i1.GSR = "ENABLED";
    CCU2D div_273_unary_minus_2_add_3_18 (.A0(n1516), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1179), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24252), .S0(n3_adj_83), .S1(n2_adj_82));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_18.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_18.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_18.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_18.INJECT1_1 = "NO";
    FD1P3IX GET_TMP_CNT_i0_i2 (.D(n833), .SP(clk_c_enable_41), .CD(n13768), 
            .CK(clk_c), .Q(GET_TMP_CNT[2])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam GET_TMP_CNT_i0_i2.GSR = "ENABLED";
    FD1P3AX write_temp_i0_i7 (.D(n7_adj_299), .SP(clk_c_enable_49), .CK(clk_c), 
            .Q(write_temp[7])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam write_temp_i0_i7.GSR = "ENABLED";
    FD1S3IX count_1137__i0 (.D(n35), .CK(clk_c), .CD(n28584), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(84[16:21])
    defparam count_1137__i0.GSR = "ENABLED";
    FD1P3AX READ_BIT_CNT_i0_i0 (.D(n768), .SP(clk_c_enable_43), .CK(clk_c), 
            .Q(READ_BIT_CNT[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam READ_BIT_CNT_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_1139__i0 (.D(n90), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i0.GSR = "ENABLED";
    FD1P3IX WRITE_HIGH_CNT_i0_i0 (.D(n1_adj_30), .SP(clk_c_enable_45), .CD(n24719), 
            .CK(clk_c), .Q(WRITE_HIGH_CNT[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_HIGH_CNT_i0_i0.GSR = "ENABLED";
    FD1P3IX cnt_1139__i11 (.D(n79), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i11.GSR = "ENABLED";
    CCU2D cnt_1139_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24014), .COUT(n24015), .S0(n81), .S1(n80));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_11.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_11.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_16 (.A0(n1518), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1517), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24251), .COUT(n24252), .S0(n5_adj_85), .S1(n4_adj_84));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_16.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_16.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_16.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_16.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_14 (.A0(n1520), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1519), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24250), .COUT(n24251), .S0(n7_adj_87), .S1(n6_adj_86));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_14.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_14.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_14.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_14.INJECT1_1 = "NO";
    CCU2D div_273_add_641_13 (.A0(n13079), .B0(n28354), .C0(n917), .D0(n878_adj_169), 
          .A1(n13079), .B1(n28354), .C1(n916), .D1(n28357), .CIN(n24121), 
          .COUT(n24122), .S0(n974), .S1(n973));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_13.INIT0 = 16'h0e1f;
    defparam div_273_add_641_13.INIT1 = 16'h0e1f;
    defparam div_273_add_641_13.INJECT1_0 = "NO";
    defparam div_273_add_641_13.INJECT1_1 = "NO";
    CCU2D div_273_add_641_11 (.A0(n13079), .B0(n28354), .C0(n919), .D0(n880_adj_171), 
          .A1(n13079), .B1(n28354), .C1(n918), .D1(n879_adj_170), .CIN(n24120), 
          .COUT(n24121), .S0(n976), .S1(n975));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_11.INIT0 = 16'h0e1f;
    defparam div_273_add_641_11.INIT1 = 16'h0e1f;
    defparam div_273_add_641_11.INJECT1_0 = "NO";
    defparam div_273_add_641_11.INJECT1_1 = "NO";
    CCU2D div_273_add_641_9 (.A0(n13079), .B0(n28354), .C0(n921), .D0(n882_adj_172), 
          .A1(n13079), .B1(n28354), .C1(n920), .D1(n881), .CIN(n24119), 
          .COUT(n24120), .S0(n978), .S1(n977));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_9.INIT0 = 16'h0e1f;
    defparam div_273_add_641_9.INIT1 = 16'h0e1f;
    defparam div_273_add_641_9.INJECT1_0 = "NO";
    defparam div_273_add_641_9.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_12 (.A0(n1522), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1521), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24249), .COUT(n24250), .S0(n9_adj_89), .S1(n8_adj_88));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_12.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_12.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_12.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_12.INJECT1_1 = "NO";
    CCU2D cnt_1139_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24013), 
          .COUT(n24014), .S0(n83), .S1(n82));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_9.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_9.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_10 (.A0(n1524), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1523), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24248), .COUT(n24249), .S0(n11_adj_91), .S1(n10_adj_90));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_10.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_10.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_10.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_10.INJECT1_1 = "NO";
    CCU2D div_273_add_641_7 (.A0(n13079), .B0(n28354), .C0(n923), .D0(n884_adj_173), 
          .A1(n13079), .B1(n28354), .C1(n922), .D1(n883), .CIN(n24118), 
          .COUT(n24119), .S0(n980), .S1(n979));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_7.INIT0 = 16'h0e1f;
    defparam div_273_add_641_7.INIT1 = 16'h0e1f;
    defparam div_273_add_641_7.INJECT1_0 = "NO";
    defparam div_273_add_641_7.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_8 (.A0(n1526), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1525), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24247), .COUT(n24248), .S0(n13), .S1(n12));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_8.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_8.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_8.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_8.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_6 (.A0(n1528), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1527), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24246), .COUT(n24247), .S0(n15), .S1(n14_adj_92));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_6.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_6.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_6.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_6.INJECT1_1 = "NO";
    FD1P3AX write_temp_i0_i6 (.D(n7_adj_318), .SP(clk_c_enable_49), .CK(clk_c), 
            .Q(write_temp[6])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam write_temp_i0_i6.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_1 (.A(n883_adj_478), .B(n880_adj_481), .C(n882_adj_479), 
         .D(n884_adj_477), .Z(n14_adj_322)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i6_4_lut_adj_1.init = 16'hfffe;
    FD1P3AX write_temp_i0_i2 (.D(n29287), .SP(clk_c_enable_48), .CK(clk_c), 
            .Q(write_temp[2])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam write_temp_i0_i2.GSR = "ENABLED";
    FD1P3AX write_temp_i0_i1 (.D(n28602), .SP(clk_c_enable_49), .CK(clk_c), 
            .Q(write_temp[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam write_temp_i0_i1.GSR = "ENABLED";
    CCU2D cnt_1139_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24012), 
          .COUT(n24013), .S0(n85), .S1(n84));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_7.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_7.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_4 (.A0(n1530), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1529), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24245), .COUT(n24246), .S0(n17), .S1(n16));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_4.INIT0 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_4.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_4.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_4.INJECT1_1 = "NO";
    CCU2D div_273_add_641_5 (.A0(n28355), .B0(n13079), .C0(n925), .D0(n886_adj_175), 
          .A1(n13079), .B1(n28354), .C1(n924), .D1(n885_adj_174), .CIN(n24117), 
          .COUT(n24118), .S0(n982), .S1(n981));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_5.INIT0 = 16'h0e3f;
    defparam div_273_add_641_5.INIT1 = 16'h0e1f;
    defparam div_273_add_641_5.INJECT1_0 = "NO";
    defparam div_273_add_641_5.INJECT1_1 = "NO";
    CCU2D cnt_1139_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24011), 
          .COUT(n24012), .S0(n87), .S1(n86));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_5.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_1139_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24010), 
          .COUT(n24011), .S0(n89), .S1(n88));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_1139_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_1139_add_4_3.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_3.INJECT1_1 = "NO";
    PFUMX i30 (.BLUT(n13_adj_678), .ALUT(n16_adj_679), .C0(STATE[1]), 
          .Z(n19_adj_680));
    CCU2D div_273_add_641_3 (.A0(n13079), .B0(n28354), .C0(n927), .D0(n375), 
          .A1(n13079), .B1(n28354), .C1(n926), .D1(n28356), .CIN(n24116), 
          .COUT(n24117), .S0(n984), .S1(n983));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_3.INIT0 = 16'h0e1f;
    defparam div_273_add_641_3.INIT1 = 16'hf1e0;
    defparam div_273_add_641_3.INJECT1_0 = "NO";
    defparam div_273_add_641_3.INJECT1_1 = "NO";
    CCU2D div_273_unary_minus_2_add_3_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n1531), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24245), .S1(n18_adj_93));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_unary_minus_2_add_3_2.INIT0 = 16'h0000;
    defparam div_273_unary_minus_2_add_3_2.INIT1 = 16'hf555;
    defparam div_273_unary_minus_2_add_3_2.INJECT1_0 = "NO";
    defparam div_273_unary_minus_2_add_3_2.INJECT1_1 = "NO";
    CCU2D div_273_add_641_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n376), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24116), .S1(n985));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_641_1.INIT0 = 16'hF000;
    defparam div_273_add_641_1.INIT1 = 16'h5555;
    defparam div_273_add_641_1.INJECT1_0 = "NO";
    defparam div_273_add_641_1.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_unary_minus_2_add_3_10 (.A0(zpone_3__N_304[8]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_304[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24243), .S0(n3_adj_32), 
          .S1(n2_adj_31));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_unary_minus_2_add_3_10.INIT0 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_10.INIT1 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_10.INJECT1_0 = "NO";
    defparam zpone_3__I_17_unary_minus_2_add_3_10.INJECT1_1 = "NO";
    CCU2D div_273_add_602_13 (.A0(n13056), .B0(n28359), .C0(n859), .D0(n820_adj_151), 
          .A1(n13056), .B1(n28359), .C1(n858), .D1(n819_adj_150), .CIN(n24114), 
          .S0(n916), .S1(n915));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_602_13.INIT0 = 16'h0e1f;
    defparam div_273_add_602_13.INIT1 = 16'h0e1f;
    defparam div_273_add_602_13.INJECT1_0 = "NO";
    defparam div_273_add_602_13.INJECT1_1 = "NO";
    CCU2D mod_271_add_448_9 (.A0(n13087), .B0(n28457), .C0(n593), .D0(n556), 
          .A1(n13087), .B1(n28457), .C1(n592), .D1(n555), .CIN(n24048), 
          .COUT(n24049), .S0(n647), .S1(n646));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_448_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_448_9.INIT1 = 16'h0e1f;
    defparam mod_271_add_448_9.INJECT1_0 = "NO";
    defparam mod_271_add_448_9.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_unary_minus_2_add_3_8 (.A0(zpone_3__N_304[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_304[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24242), .COUT(n24243), .S0(n5_adj_34), 
          .S1(n4_adj_33));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_unary_minus_2_add_3_8.INIT0 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_8.INIT1 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_8.INJECT1_0 = "NO";
    defparam zpone_3__I_17_unary_minus_2_add_3_8.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_unary_minus_2_add_3_6 (.A0(zpone_3__N_304[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_304[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24241), .COUT(n24242), .S0(n7_adj_36), 
          .S1(n6_adj_35));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_unary_minus_2_add_3_6.INIT0 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_6.INIT1 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_6.INJECT1_0 = "NO";
    defparam zpone_3__I_17_unary_minus_2_add_3_6.INJECT1_1 = "NO";
    CCU2D div_273_add_602_11 (.A0(n13056), .B0(n28359), .C0(n861_adj_160), 
          .D0(n822_adj_153), .A1(n13056), .B1(n28359), .C1(n860), .D1(n821_adj_152), 
          .CIN(n24113), .COUT(n24114), .S0(n918), .S1(n917));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_602_11.INIT0 = 16'h0e1f;
    defparam div_273_add_602_11.INIT1 = 16'h0e1f;
    defparam div_273_add_602_11.INJECT1_0 = "NO";
    defparam div_273_add_602_11.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_unary_minus_2_add_3_4 (.A0(zpone_3__N_304[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_304[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24240), .COUT(n24241), .S0(n9_adj_38), 
          .S1(n8_adj_37));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_unary_minus_2_add_3_4.INIT0 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_4.INIT1 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_4.INJECT1_0 = "NO";
    defparam zpone_3__I_17_unary_minus_2_add_3_4.INJECT1_1 = "NO";
    CCU2D sub_272_add_2_6 (.A0(n28567), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n673), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23976), 
          .COUT(n23977), .S0(n1528), .S1(n1527));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_6.INIT0 = 16'h5555;
    defparam sub_272_add_2_6.INIT1 = 16'h5555;
    defparam sub_272_add_2_6.INJECT1_0 = "NO";
    defparam sub_272_add_2_6.INJECT1_1 = "NO";
    CCU2D cnt_1139_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24010), .S1(n90));   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139_add_4_1.INIT0 = 16'hF000;
    defparam cnt_1139_add_4_1.INIT1 = 16'h0555;
    defparam cnt_1139_add_4_1.INJECT1_0 = "NO";
    defparam cnt_1139_add_4_1.INJECT1_1 = "NO";
    CCU2D div_273_add_602_9 (.A0(n13056), .B0(n28359), .C0(n863_adj_162), 
          .D0(n824_adj_155), .A1(n13056), .B1(n28359), .C1(n862_adj_161), 
          .D1(n823_adj_154), .CIN(n24112), .COUT(n24113), .S0(n920), 
          .S1(n919));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_602_9.INIT0 = 16'h0e1f;
    defparam div_273_add_602_9.INIT1 = 16'h0e1f;
    defparam div_273_add_602_9.INJECT1_0 = "NO";
    defparam div_273_add_602_9.INJECT1_1 = "NO";
    CCU2D sub_278_add_2_11 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24009), .S0(tens_3__N_323[9]));   // d:/lab_6/temperature.vhd(332[10:15])
    defparam sub_278_add_2_11.INIT0 = 16'hffff;
    defparam sub_278_add_2_11.INIT1 = 16'h0000;
    defparam sub_278_add_2_11.INJECT1_0 = "NO";
    defparam sub_278_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_278_add_2_9 (.A0(n13127), .B0(n20298), .C0(n4695), .D0(n1248), 
          .A1(n28248), .B1(n20643), .C1(n4694), .D1(n1248), .CIN(n24008), 
          .COUT(n24009), .S0(tens_3__N_323[7]), .S1(tens_3__N_323[8]));   // d:/lab_6/temperature.vhd(332[10:15])
    defparam sub_278_add_2_9.INIT0 = 16'h0f11;
    defparam sub_278_add_2_9.INIT1 = 16'h0f11;
    defparam sub_278_add_2_9.INJECT1_0 = "NO";
    defparam sub_278_add_2_9.INJECT1_1 = "NO";
    CCU2D div_273_add_602_7 (.A0(n13056), .B0(n28359), .C0(n865_adj_164), 
          .D0(n826_adj_157), .A1(n13056), .B1(n28359), .C1(n864_adj_163), 
          .D1(n825_adj_156), .CIN(n24111), .COUT(n24112), .S0(n922), 
          .S1(n921));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_602_7.INIT0 = 16'h0e1f;
    defparam div_273_add_602_7.INIT1 = 16'h0e1f;
    defparam div_273_add_602_7.INJECT1_0 = "NO";
    defparam div_273_add_602_7.INJECT1_1 = "NO";
    CCU2D zpone_3__I_17_unary_minus_2_add_3_2 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_304[1]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n24240), .S1(n10_adj_39));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_unary_minus_2_add_3_2.INIT0 = 16'h0000;
    defparam zpone_3__I_17_unary_minus_2_add_3_2.INIT1 = 16'hf555;
    defparam zpone_3__I_17_unary_minus_2_add_3_2.INJECT1_0 = "NO";
    defparam zpone_3__I_17_unary_minus_2_add_3_2.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_unary_minus_2_add_3_10 (.A0(tens_3__N_294[8]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_294[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24238), .S0(n3), .S1(n2));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_unary_minus_2_add_3_10.INIT0 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_10.INIT1 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_10.INJECT1_0 = "NO";
    defparam tens_3__I_16_unary_minus_2_add_3_10.INJECT1_1 = "NO";
    CCU2D div_273_add_602_5 (.A0(n28360), .B0(n13056), .C0(n867_adj_166), 
          .D0(n828_adj_159), .A1(n13056), .B1(n28359), .C1(n866_adj_165), 
          .D1(n827_adj_158), .CIN(n24110), .COUT(n24111), .S0(n924), 
          .S1(n923));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_602_5.INIT0 = 16'h0e3f;
    defparam div_273_add_602_5.INIT1 = 16'h0e1f;
    defparam div_273_add_602_5.INJECT1_0 = "NO";
    defparam div_273_add_602_5.INJECT1_1 = "NO";
    FD1P3IX WRITE_LOW_CNT_i0_i0 (.D(n28601), .SP(clk_c_enable_50), .CD(n24718), 
            .CK(clk_c), .Q(WRITE_LOW_CNT[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam WRITE_LOW_CNT_i0_i0.GSR = "ENABLED";
    CCU2D div_273_add_602_3 (.A0(n13056), .B0(n28359), .C0(n869_adj_168), 
          .D0(n374), .A1(n13056), .B1(n28359), .C1(n868_adj_167), .D1(n28361), 
          .CIN(n24109), .COUT(n24110), .S0(n926), .S1(n925));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_602_3.INIT0 = 16'h0e1f;
    defparam div_273_add_602_3.INIT1 = 16'hf1e0;
    defparam div_273_add_602_3.INJECT1_0 = "NO";
    defparam div_273_add_602_3.INJECT1_1 = "NO";
    CCU2D sub_272_add_2_4 (.A0(temp2_8__N_286[3]), .B0(TMP[0]), .C0(n1511), 
          .D0(GND_net), .A1(n675), .B1(n1510), .C1(GND_net), .D1(GND_net), 
          .CIN(n23975), .COUT(n23976), .S0(n1530), .S1(n1529));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_4.INIT0 = 16'h6696;
    defparam sub_272_add_2_4.INIT1 = 16'h5999;
    defparam sub_272_add_2_4.INJECT1_0 = "NO";
    defparam sub_272_add_2_4.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_unary_minus_2_add_3_8 (.A0(tens_3__N_294[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_294[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24237), .COUT(n24238), .S0(n5), 
          .S1(n4_adj_11));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_unary_minus_2_add_3_8.INIT0 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_8.INIT1 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_8.INJECT1_0 = "NO";
    defparam tens_3__I_16_unary_minus_2_add_3_8.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_unary_minus_2_add_3_6 (.A0(tens_3__N_294[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_294[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24236), .COUT(n24237), .S0(n7), 
          .S1(n6_adj_10));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_unary_minus_2_add_3_6.INIT0 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_6.INIT1 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_6.INJECT1_0 = "NO";
    defparam tens_3__I_16_unary_minus_2_add_3_6.INJECT1_1 = "NO";
    CCU2D sub_278_add_2_7 (.A0(n28234), .B0(n20399), .C0(n4697), .D0(n1248), 
          .A1(n13124), .B1(n20373), .C1(n4696), .D1(n1248), .CIN(n24007), 
          .COUT(n24008), .S0(tens_3__N_323[5]), .S1(tens_3__N_323[6]));   // d:/lab_6/temperature.vhd(332[10:15])
    defparam sub_278_add_2_7.INIT0 = 16'h0f11;
    defparam sub_278_add_2_7.INIT1 = 16'h0f11;
    defparam sub_278_add_2_7.INJECT1_0 = "NO";
    defparam sub_278_add_2_7.INJECT1_1 = "NO";
    CCU2D div_273_add_602_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n375), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24109), .S1(n927));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_602_1.INIT0 = 16'hF000;
    defparam div_273_add_602_1.INIT1 = 16'h5555;
    defparam div_273_add_602_1.INJECT1_0 = "NO";
    defparam div_273_add_602_1.INJECT1_1 = "NO";
    CCU2D sub_278_add_2_5 (.A0(ones_3__N_238[3]), .B0(n28228), .C0(n1248), 
          .D0(n4699), .A1(n13122), .B1(n20407), .C1(n4698), .D1(n1248), 
          .CIN(n24006), .COUT(n24007), .S0(tens_3__N_323[3]), .S1(tens_3__N_323[4]));   // d:/lab_6/temperature.vhd(332[10:15])
    defparam sub_278_add_2_5.INIT0 = 16'ha959;
    defparam sub_278_add_2_5.INIT1 = 16'h0f11;
    defparam sub_278_add_2_5.INJECT1_0 = "NO";
    defparam sub_278_add_2_5.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_unary_minus_2_add_3_4 (.A0(tens_3__N_294[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_294[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24235), .COUT(n24236), .S0(n9), 
          .S1(n8));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_unary_minus_2_add_3_4.INIT0 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_4.INIT1 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_4.INJECT1_0 = "NO";
    defparam tens_3__I_16_unary_minus_2_add_3_4.INJECT1_1 = "NO";
    CCU2D div_273_add_563_13 (.A0(n13072), .B0(n28363), .C0(n801), .D0(n28366), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24108), 
          .S0(n858));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_563_13.INIT0 = 16'h0e1f;
    defparam div_273_add_563_13.INIT1 = 16'h0000;
    defparam div_273_add_563_13.INJECT1_0 = "NO";
    defparam div_273_add_563_13.INJECT1_1 = "NO";
    CCU2D mod_271_add_448_3 (.A0(n13087), .B0(n28457), .C0(n599), .D0(n562), 
          .A1(n13087), .B1(n28457), .C1(n598), .D1(n28466), .CIN(n24045), 
          .COUT(n24046), .S0(n653), .S1(n652));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_448_3.INIT0 = 16'h0e1f;
    defparam mod_271_add_448_3.INIT1 = 16'hf1e0;
    defparam mod_271_add_448_3.INJECT1_0 = "NO";
    defparam mod_271_add_448_3.INJECT1_1 = "NO";
    CCU2D tens_3__I_16_unary_minus_2_add_3_2 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_294[1]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n24235), .S1(n10));   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_unary_minus_2_add_3_2.INIT0 = 16'h0000;
    defparam tens_3__I_16_unary_minus_2_add_3_2.INIT1 = 16'hf555;
    defparam tens_3__I_16_unary_minus_2_add_3_2.INJECT1_0 = "NO";
    defparam tens_3__I_16_unary_minus_2_add_3_2.INJECT1_1 = "NO";
    CCU2D key_div_1136_add_4_21 (.A0(key_div[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24234), .S0(n86_adj_394));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_21.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_21.INIT1 = 16'h0000;
    defparam key_div_1136_add_4_21.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_21.INJECT1_1 = "NO";
    CCU2D key_div_1136_add_4_19 (.A0(key_div[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24233), .COUT(n24234), .S0(n88_adj_396), 
          .S1(n87_adj_395));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_19.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_19.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_19.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_19.INJECT1_1 = "NO";
    CCU2D key_div_1136_add_4_17 (.A0(key_div[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24232), .COUT(n24233), .S0(n90_adj_398), 
          .S1(n89_adj_397));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_17.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_17.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_17.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_17.INJECT1_1 = "NO";
    CCU2D key_div_1136_add_4_15 (.A0(key_div[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24231), .COUT(n24232), .S0(n92), .S1(n91));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_15.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_15.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_15.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_15.INJECT1_1 = "NO";
    CCU2D div_273_add_563_11 (.A0(n13072), .B0(n28363), .C0(n803), .D0(n764_adj_137), 
          .A1(n13072), .B1(n28363), .C1(n802), .D1(n763_adj_136), .CIN(n24107), 
          .COUT(n24108), .S0(n860), .S1(n859));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_563_11.INIT0 = 16'h0e1f;
    defparam div_273_add_563_11.INIT1 = 16'h0e1f;
    defparam div_273_add_563_11.INJECT1_0 = "NO";
    defparam div_273_add_563_11.INJECT1_1 = "NO";
    CCU2D sub_278_add_2_3 (.A0(ones_3__N_238[1]), .B0(n28222), .C0(n1248), 
          .D0(n4701), .A1(ones_3__N_238[2]), .B1(n28226), .C1(n1248), 
          .D1(n4700), .CIN(n24005), .COUT(n24006), .S0(tens_3__N_323[1]), 
          .S1(tens_3__N_323[2]));   // d:/lab_6/temperature.vhd(332[10:15])
    defparam sub_278_add_2_3.INIT0 = 16'ha959;
    defparam sub_278_add_2_3.INIT1 = 16'ha959;
    defparam sub_278_add_2_3.INJECT1_0 = "NO";
    defparam sub_278_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_278_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ones_3__N_314[0]), .B1(n1248), .C1(n27372), .D1(n4702), 
          .COUT(n24005));   // d:/lab_6/temperature.vhd(332[10:15])
    defparam sub_278_add_2_1.INIT0 = 16'h0000;
    defparam sub_278_add_2_1.INIT1 = 16'h569a;
    defparam sub_278_add_2_1.INJECT1_0 = "NO";
    defparam sub_278_add_2_1.INJECT1_1 = "NO";
    CCU2D div_273_add_563_9 (.A0(n13072), .B0(n28363), .C0(n805), .D0(n766), 
          .A1(n13072), .B1(n28363), .C1(n804), .D1(n765), .CIN(n24106), 
          .COUT(n24107), .S0(n862_adj_161), .S1(n861_adj_160));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_563_9.INIT0 = 16'h0e1f;
    defparam div_273_add_563_9.INIT1 = 16'h0e1f;
    defparam div_273_add_563_9.INJECT1_0 = "NO";
    defparam div_273_add_563_9.INJECT1_1 = "NO";
    CCU2D sub_272_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(temp2[0]), .B1(n950_adj_393), .C1(GND_net), .D1(GND_net), 
          .COUT(n23975), .S1(n1531));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_2.INIT0 = 16'h0000;
    defparam sub_272_add_2_2.INIT1 = 16'h6333;
    defparam sub_272_add_2_2.INJECT1_0 = "NO";
    defparam sub_272_add_2_2.INJECT1_1 = "NO";
    CCU2D key_div_1136_add_4_13 (.A0(key_div[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24230), .COUT(n24231), .S0(n94), .S1(n93));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_13.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_13.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_13.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_13.INJECT1_1 = "NO";
    CCU2D add_1404_add_3_13 (.A0(n1), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24004), 
          .S0(n3521), .S1(n3522));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_3_13.INIT0 = 16'h5aaa;
    defparam add_1404_add_3_13.INIT1 = 16'h0000;
    defparam add_1404_add_3_13.INJECT1_0 = "NO";
    defparam add_1404_add_3_13.INJECT1_1 = "NO";
    LUT4 i17459_3_lut_4_lut (.A(n28163), .B(cycledata_63__N_66[1]), .C(cycledata_63__N_66[2]), 
         .D(cycledata_63__N_66[3]), .Z(cycledata[61])) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam i17459_3_lut_4_lut.init = 16'h0371;
    LUT4 i17691_2_lut_rep_363_3_lut (.A(n374), .B(n28361), .C(n828_adj_159), 
         .Z(n28359)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17691_2_lut_rep_363_3_lut.init = 16'he0e0;
    LUT4 i17449_3_lut_4_lut (.A(n28237), .B(cycledata_31__N_74[1]), .C(cycledata_31__N_74[2]), 
         .D(cycledata_31__N_74[3]), .Z(cycledata[29])) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam i17449_3_lut_4_lut.init = 16'h0371;
    LUT4 i16584_4_lut_4_lut_4_lut_4_lut (.A(n28237), .B(cycledata_31__N_74[1]), 
         .C(cycledata_31__N_74[2]), .D(cycledata_31__N_74[3]), .Z(cycledata[28])) /* synthesis lut_function=(!(A+(B (D)+!B (C)))) */ ;   // d:/lab_6/temperature.vhd(343[36:41])
    defparam i16584_4_lut_4_lut_4_lut_4_lut.init = 16'h0145;
    LUT4 tens_3__I_19_i189_3_lut_4_lut (.A(n28183), .B(n28181), .C(n278_adj_342), 
         .D(n269_adj_341), .Z(n302_adj_344)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i189_3_lut_4_lut.init = 16'hf40b;
    LUT4 i1_2_lut_rep_208_2_lut_4_lut (.A(n28231), .B(n4698), .C(n1248), 
         .D(n211), .Z(n28204)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_208_2_lut_4_lut.init = 16'hca35;
    LUT4 i9943_3_lut_3_lut_4_lut (.A(cycledata_31__N_74[1]), .B(cycledata_31__N_74[2]), 
         .C(cycledata_31__N_74[3]), .D(n27409), .Z(n12954)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i9943_3_lut_3_lut_4_lut.init = 16'h1f10;
    CCU2D div_273_add_563_7 (.A0(n13072), .B0(n28363), .C0(n807_adj_145), 
          .D0(n768_adj_139), .A1(n13072), .B1(n28363), .C1(n806), .D1(n767_adj_138), 
          .CIN(n24105), .COUT(n24106), .S0(n864_adj_163), .S1(n863_adj_162));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_563_7.INIT0 = 16'h0e1f;
    defparam div_273_add_563_7.INIT1 = 16'h0e1f;
    defparam div_273_add_563_7.INJECT1_0 = "NO";
    defparam div_273_add_563_7.INJECT1_1 = "NO";
    CCU2D div_273_add_563_5 (.A0(n28364), .B0(n13072), .C0(n809_adj_147), 
          .D0(n770_adj_140), .A1(n13072), .B1(n28363), .C1(n808_adj_146), 
          .D1(n769), .CIN(n24104), .COUT(n24105), .S0(n866_adj_165), 
          .S1(n865_adj_164));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_563_5.INIT0 = 16'h0e3f;
    defparam div_273_add_563_5.INIT1 = 16'h0e1f;
    defparam div_273_add_563_5.INJECT1_0 = "NO";
    defparam div_273_add_563_5.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(n7_adj_663), .B(n11_adj_606), .C(n20653), .D(n9_adj_605), 
         .Z(zpone_3__N_246[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_2 (.A(n258), .B(n15_adj_607), .C(n27714), .D(n265_adj_387), 
         .Z(n7_adj_663)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C+(D)))) */ ;
    defparam i2_4_lut_adj_2.init = 16'heeed;
    LUT4 zpone_3__I_21_i183_4_lut (.A(n259), .B(n260), .C(n265_adj_387), 
         .D(n28242), .Z(n11_adj_606)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i183_4_lut.init = 16'ha9a5;
    LUT4 div_276_i860_3_lut_3_lut_4_lut (.A(n4702), .B(n1248), .C(n27246), 
         .D(n27368), .Z(ones_3__N_314[0])) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+!(C+(D))))) */ ;   // d:/lab_6/temperature.vhd(332[10:15])
    defparam div_276_i860_3_lut_3_lut_4_lut.init = 16'h4447;
    LUT4 i17632_4_lut (.A(n110), .B(n28244), .C(n265_adj_387), .D(n208), 
         .Z(n20653)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i17632_4_lut.init = 16'h322c;
    LUT4 i23978_then_4_lut (.A(ser_N_380[1]), .B(ser_N_380[0]), .C(n28270), 
         .D(cycledata_15__N_78[0]), .Z(n28635)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !(B (C (D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i23978_then_4_lut.init = 16'hb66f;
    CCU2D key_div_1136_add_4_11 (.A0(key_div[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24229), .COUT(n24230), .S0(n96), .S1(n95));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_11.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_11.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_11.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_11.INJECT1_1 = "NO";
    LUT4 zpone_3__I_21_i181_4_lut (.A(n257), .B(n258), .C(n265_adj_387), 
         .D(n27714), .Z(n15_adj_607)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i181_4_lut.init = 16'haaa9;
    LUT4 i23978_else_4_lut (.A(ser_N_380[1]), .B(ser_N_380[0]), .C(n28270), 
         .D(cycledata_15__N_78[0]), .Z(n28634)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(((D)+!C)+!B))) */ ;
    defparam i23978_else_4_lut.init = 16'h7fbd;
    LUT4 zpone_3__I_21_mux_3_i2_3_lut (.A(zpone_3__N_340[1]), .B(n8_adj_379), 
         .C(zpone_3__N_340[7]), .Z(n110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_mux_3_i2_3_lut.init = 16'hcaca;
    LUT4 i20998_2_lut_4_lut (.A(n28222), .B(n4701), .C(n1248), .D(n302_adj_432), 
         .Z(ones_3__N_238[1])) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i20998_2_lut_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_then_4_lut (.A(STATE[1]), .B(n28557), .C(STATE[2]), 
         .D(STATE[0]), .Z(n28638)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hefff;
    CCU2D div_273_add_563_3 (.A0(n13072), .B0(n28363), .C0(n811_adj_149), 
          .D0(n373_adj_111), .A1(n13072), .B1(n28363), .C1(n810_adj_148), 
          .D1(n28365), .CIN(n24103), .COUT(n24104), .S0(n868_adj_167), 
          .S1(n867_adj_166));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_563_3.INIT0 = 16'h0e1f;
    defparam div_273_add_563_3.INIT1 = 16'hf1e0;
    defparam div_273_add_563_3.INJECT1_0 = "NO";
    defparam div_273_add_563_3.INJECT1_1 = "NO";
    LUT4 i17462_2_lut_rep_226 (.A(n20475), .B(n13119), .Z(n28222)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i17462_2_lut_rep_226.init = 16'heeee;
    LUT4 i1_4_lut_else_4_lut (.A(STATE[1]), .B(n28557), .C(STATE[2]), 
         .D(STATE[0]), .Z(n28637)) /* synthesis lut_function=(A (C+!(D))+!A (B+!(C (D)))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'he5ff;
    LUT4 i2_4_lut_adj_3 (.A(n230), .B(n10_adj_603), .C(n231), .D(n28250), 
         .Z(n238_adj_385)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;
    defparam i2_4_lut_adj_3.init = 16'h0405;
    LUT4 zpone_3__I_21_mux_3_i5_3_lut (.A(zpone_3__N_340[4]), .B(n5_adj_376), 
         .C(zpone_3__N_340[7]), .Z(n206)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_mux_3_i5_3_lut.init = 16'hcaca;
    CCU2D key_div_1136_add_4_9 (.A0(key_div[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24228), .COUT(n24229), .S0(n98), .S1(n97));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_9.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_9.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_9.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_9.INJECT1_1 = "NO";
    LUT4 zpone_3__I_21_mux_3_i6_3_lut (.A(zpone_3__N_340[5]), .B(n4_adj_375), 
         .C(zpone_3__N_340[7]), .Z(n106)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_mux_3_i6_3_lut.init = 16'hcaca;
    LUT4 zpone_3__I_21_mux_3_i7_3_lut (.A(zpone_3__N_340[6]), .B(n3_adj_374), 
         .C(zpone_3__N_340[7]), .Z(n141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_mux_3_i7_3_lut.init = 16'hcaca;
    LUT4 div_276_i859_3_lut_rep_225_4_lut (.A(n20475), .B(n13119), .C(n1248), 
         .D(n4701), .Z(n28221)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam div_276_i859_3_lut_rep_225_4_lut.init = 16'hfe0e;
    CCU2D add_1404_add_3_11 (.A0(n4_adj_24), .B0(n3570), .C0(GND_net), 
          .D0(GND_net), .A1(n3_adj_26), .B1(n3580), .C1(GND_net), .D1(GND_net), 
          .CIN(n24003), .COUT(n24004), .S0(n3039), .S1(n3038));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_3_11.INIT0 = 16'h5666;
    defparam add_1404_add_3_11.INIT1 = 16'h5666;
    defparam add_1404_add_3_11.INJECT1_0 = "NO";
    defparam add_1404_add_3_11.INJECT1_1 = "NO";
    LUT4 zpone_3__I_21_mux_3_i3_3_lut (.A(zpone_3__N_340[2]), .B(n7_adj_378), 
         .C(zpone_3__N_340[7]), .Z(n208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_mux_3_i3_3_lut.init = 16'hcaca;
    CCU2D key_div_1136_add_4_7 (.A0(key_div[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24227), .COUT(n24228), .S0(n100), .S1(n99));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_7.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_7.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_7.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_7.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(n10_adj_604), .B(n259), .C(n258), .D(n257), .Z(n265_adj_387)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0002;
    LUT4 i7_4_lut_adj_4 (.A(n769), .B(n14_adj_661), .C(n10_adj_665), .D(n765), 
         .Z(n13072)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i7_4_lut_adj_4.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(n286_adj_217), .B(n1111), .C(n28226), .D(n287_adj_218), 
         .Z(n4_adj_651)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut.init = 16'hffca;
    LUT4 zpone_3__I_21_i162_4_lut (.A(n230), .B(n231), .C(n238_adj_385), 
         .D(n28246), .Z(n257)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i162_4_lut.init = 16'haaa9;
    LUT4 i1_2_lut_rep_362_3_lut_4_lut (.A(n374), .B(n28361), .C(n13056), 
         .D(n828_adj_159), .Z(n28358)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_362_3_lut_4_lut.init = 16'hfef0;
    LUT4 i24231_then_4_lut (.A(temp1_8__N_270[5]), .B(n28554), .C(temp1_8__N_270[3]), 
         .D(temp1_8__N_270[6]), .Z(n28616)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (D))) */ ;
    defparam i24231_then_4_lut.init = 16'h9bfd;
    CCU2D div_273_add_563_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n374), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24103), .S1(n869_adj_168));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_563_1.INIT0 = 16'hF000;
    defparam div_273_add_563_1.INIT1 = 16'h5555;
    defparam div_273_add_563_1.INJECT1_0 = "NO";
    defparam div_273_add_563_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_5 (.A(n767_adj_138), .B(n764_adj_137), .C(n766), 
         .D(n768_adj_139), .Z(n14_adj_661)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i6_4_lut_adj_5.init = 16'hfffe;
    LUT4 tens_3__I_19_i236_3_lut_rep_169_4_lut (.A(n28167), .B(n13116), 
         .C(n359_adj_353), .D(n336_adj_349), .Z(n28165)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i236_3_lut_rep_169_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_i237_3_lut_4_lut (.A(n28167), .B(n13116), .C(n360_adj_354), 
         .D(n337_adj_350), .Z(n370_adj_360)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i237_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_i234_3_lut_4_lut (.A(n28167), .B(n13116), .C(n357_adj_351), 
         .D(n334_adj_347), .Z(n367_adj_358)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i234_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_i240_3_lut_rep_168_4_lut (.A(n28167), .B(n13116), 
         .C(n363_adj_357), .D(n241_adj_338), .Z(n28164)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i240_3_lut_rep_168_4_lut.init = 16'hf1e0;
    LUT4 n27841_bdd_2_lut_3_lut_4_lut_then_4_lut (.A(temp1_8__N_270[4]), .B(temp1_8__N_270[3]), 
         .C(temp1_8__N_270[2]), .D(temp1_8__N_270[6]), .Z(n29281)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(B (D)+!B (C+!(D))))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam n27841_bdd_2_lut_3_lut_4_lut_then_4_lut.init = 16'h7691;
    CCU2D div_273_add_524_11 (.A0(n13090), .B0(n28368), .C0(n745), .D0(n706_adj_131), 
          .A1(n13090), .B1(n28368), .C1(n744), .D1(n705_adj_130), .CIN(n24101), 
          .S0(n802), .S1(n801));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_524_11.INIT0 = 16'h0e1f;
    defparam div_273_add_524_11.INIT1 = 16'h0e1f;
    defparam div_273_add_524_11.INJECT1_0 = "NO";
    defparam div_273_add_524_11.INJECT1_1 = "NO";
    LUT4 i17518_2_lut_rep_364_4_lut (.A(n373_adj_111), .B(n811_adj_149), 
         .C(n28362), .D(n374), .Z(n28360)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17518_2_lut_rep_364_4_lut.init = 16'hffca;
    LUT4 n1120_bdd_2_lut_24255_4_lut (.A(n28227), .B(n1110), .C(n28226), 
         .D(n27848), .Z(n27849)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam n1120_bdd_2_lut_24255_4_lut.init = 16'hca00;
    CCU2D key_div_1136_add_4_5 (.A0(key_div[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24226), .COUT(n24227), .S0(n102), .S1(n101));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_5.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_5.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_5.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_5.INJECT1_1 = "NO";
    LUT4 zpzone_3__N_333_3__bdd_4_lut (.A(zpzone_3__N_333[3]), .B(zpzone_3__N_333[4]), 
         .C(n28291), .D(zpzone_3__N_333[6]), .Z(n28285)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam zpzone_3__N_333_3__bdd_4_lut.init = 16'h83e0;
    LUT4 zpzone_3__N_333_3__bdd_4_lut_24477 (.A(zpzone_3__N_333[3]), .B(zpzone_3__N_333[4]), 
         .C(n28291), .D(zpzone_3__N_333[6]), .Z(n169)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam zpzone_3__N_333_3__bdd_4_lut_24477.init = 16'h4210;
    LUT4 zpzone_3__N_333_3__bdd_4_lut_24476 (.A(zpzone_3__N_333[3]), .B(zpzone_3__N_333[4]), 
         .C(n28291), .D(zpzone_3__N_333[6]), .Z(n28284)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C+(D))+!B !(D)))) */ ;
    defparam zpzone_3__N_333_3__bdd_4_lut_24476.init = 16'h318c;
    CCU2D key_div_1136_add_4_3 (.A0(key_div[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24225), .COUT(n24226), .S0(n104), .S1(n103));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_3.INIT0 = 16'hfaaa;
    defparam key_div_1136_add_4_3.INIT1 = 16'hfaaa;
    defparam key_div_1136_add_4_3.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_3.INJECT1_1 = "NO";
    CCU2D key_div_1136_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(key_div[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24225), .S1(n105));   // d:/lab_6/temperature.vhd(77[21:28])
    defparam key_div_1136_add_4_1.INIT0 = 16'hF000;
    defparam key_div_1136_add_4_1.INIT1 = 16'h0555;
    defparam key_div_1136_add_4_1.INJECT1_0 = "NO";
    defparam key_div_1136_add_4_1.INJECT1_1 = "NO";
    LUT4 div_273_i531_3_lut_4_lut (.A(n28363), .B(n13072), .C(n806), .D(n767_adj_138), 
         .Z(n824_adj_155)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i531_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_269_i1_3_lut (.A(temp2[0]), .B(zpzone_3__N_333[0]), .C(mode), 
         .Z(cycledata_15__N_78[0])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_269_i1_3_lut.init = 16'h3a3a;
    LUT4 i23759_2_lut_4_lut (.A(n1059_adj_310), .B(n1098_adj_313), .C(n28226), 
         .D(n1118_adj_317), .Z(n27159)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i23759_2_lut_4_lut.init = 16'hffca;
    IB rst_pad (.I(rst), .O(rst_c));   // d:/lab_6/temperature.vhd(12[6:9])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/lab_6/temperature.vhd(10[6:9])
    LUT4 i1_2_lut_rep_230 (.A(n20449), .B(n13120), .Z(n28226)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_230.init = 16'heeee;
    LUT4 div_273_i529_3_lut_4_lut (.A(n28363), .B(n13072), .C(n804), .D(n765), 
         .Z(n822_adj_153)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i529_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i530_3_lut_4_lut (.A(n28363), .B(n13072), .C(n805), .D(n766), 
         .Z(n823_adj_154)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i530_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i724_3_lut_rep_229_4_lut (.A(n20449), .B(n13120), .C(n1098_adj_313), 
         .D(n1059_adj_310), .Z(n28225)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i724_3_lut_rep_229_4_lut.init = 16'hf1e0;
    LUT4 div_276_i736_3_lut_rep_228_4_lut (.A(n20449), .B(n13120), .C(n1110), 
         .D(n28227), .Z(n28224)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i736_3_lut_rep_228_4_lut.init = 16'hf1e0;
    LUT4 i23927_4_lut (.A(n1120), .B(n27284), .C(n1121), .D(n1125), 
         .Z(n27334)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23927_4_lut.init = 16'hfffe;
    CCU2D tens_3__I_19_add_255_9 (.A0(n13116), .B0(n28167), .C0(n357_adj_351), 
          .D0(n334_adj_347), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24224), .S0(n390_adj_364));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_255_9.INIT0 = 16'h0e1f;
    defparam tens_3__I_19_add_255_9.INIT1 = 16'h0000;
    defparam tens_3__I_19_add_255_9.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_255_9.INJECT1_1 = "NO";
    CCU2D div_273_add_524_9 (.A0(n13090), .B0(n28368), .C0(n747), .D0(n708_adj_133), 
          .A1(n13090), .B1(n28368), .C1(n746), .D1(n707_adj_132), .CIN(n24100), 
          .COUT(n24101), .S0(n804), .S1(n803));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_524_9.INIT0 = 16'h0e1f;
    defparam div_273_add_524_9.INIT1 = 16'h0e1f;
    defparam div_273_add_524_9.INJECT1_0 = "NO";
    defparam div_273_add_524_9.INJECT1_1 = "NO";
    LUT4 div_273_i533_3_lut_4_lut (.A(n28363), .B(n13072), .C(n808_adj_146), 
         .D(n769), .Z(n826_adj_157)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i533_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i528_3_lut_4_lut (.A(n28363), .B(n13072), .C(n803), .D(n764_adj_137), 
         .Z(n821_adj_152)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i528_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i532_3_lut_4_lut (.A(n28363), .B(n13072), .C(n807_adj_145), 
         .D(n768_adj_139), .Z(n825_adj_156)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i532_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i526_3_lut_4_lut (.A(n28363), .B(n13072), .C(n801), .D(n28366), 
         .Z(n819_adj_150)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i526_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7_4_lut_adj_6 (.A(key_div[3]), .B(n13_adj_645), .C(key_div[13]), 
         .D(n14_adj_644), .Z(n20_adj_335)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i7_4_lut_adj_6.init = 16'hffdf;
    VLO i1 (.Z(GND_net));
    LUT4 i23887_3_lut (.A(n932), .B(n27211), .C(n934_adj_181), .Z(n27294)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23887_3_lut.init = 16'hfefe;
    LUT4 i6_4_lut_adj_7 (.A(n709_adj_134), .B(n12_adj_613), .C(n710), 
         .D(n706_adj_131), .Z(n13090)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i6_4_lut_adj_7.init = 16'hfffe;
    LUT4 i23810_4_lut (.A(n28301), .B(n937_adj_183), .C(n939_adj_467), 
         .D(n936_adj_182), .Z(n27211)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23810_4_lut.init = 16'hfffe;
    LUT4 div_276_i732_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1106), 
         .D(n1067), .Z(n1124)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i732_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_mux_3_i10_3_lut (.A(n1523), .B(n10_adj_90), .C(n1179), 
         .Z(n371_adj_109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i10_3_lut.init = 16'hcaca;
    LUT4 div_273_i536_3_lut_rep_365_4_lut (.A(n28363), .B(n13072), .C(n811_adj_149), 
         .D(n373_adj_111), .Z(n28361)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i536_3_lut_rep_365_4_lut.init = 16'hf1e0;
    CCU2D tens_3__I_19_add_255_7 (.A0(n13116), .B0(n28167), .C0(n359_adj_353), 
          .D0(n336_adj_349), .A1(n13116), .B1(n28167), .C1(n358_adj_352), 
          .D1(n335_adj_348), .CIN(n24223), .COUT(n24224), .S0(n392_adj_366), 
          .S1(n391_adj_365));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_255_7.INIT0 = 16'h0e1f;
    defparam tens_3__I_19_add_255_7.INIT1 = 16'h0e1f;
    defparam tens_3__I_19_add_255_7.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_255_7.INJECT1_1 = "NO";
    LUT4 div_276_i858_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1248), 
         .D(n4700), .Z(ones_3__N_314[2])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i858_3_lut_4_lut.init = 16'hfe0e;
    LUT4 div_273_i812_3_lut_4_lut (.A(n28363), .B(n13072), .C(n1179), 
         .D(n4505), .Z(n780_adj_515)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i812_3_lut_4_lut.init = 16'hfe0e;
    LUT4 div_276_i726_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1100_adj_315), 
         .D(n1061_adj_312), .Z(n1118_adj_317)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i726_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i535_3_lut_4_lut (.A(n28363), .B(n13072), .C(n810_adj_148), 
         .D(n28365), .Z(n828_adj_159)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i535_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i737_3_lut_rep_227_4_lut (.A(n20449), .B(n13120), .C(n1111), 
         .D(n286_adj_217), .Z(n28223)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i737_3_lut_rep_227_4_lut.init = 16'hf1e0;
    CCU2D add_1404_add_3_9 (.A0(n6_adj_14), .B0(n3572), .C0(GND_net), 
          .D0(GND_net), .A1(n5_adj_15), .B1(n3571), .C1(GND_net), .D1(GND_net), 
          .CIN(n24002), .COUT(n24003), .S0(n3041), .S1(n3040));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_3_9.INIT0 = 16'h5666;
    defparam add_1404_add_3_9.INIT1 = 16'h5666;
    defparam add_1404_add_3_9.INJECT1_0 = "NO";
    defparam add_1404_add_3_9.INJECT1_1 = "NO";
    LUT4 i23893_4_lut (.A(n26983), .B(n972_adj_460), .C(n26996), .D(n976_adj_456), 
         .Z(n27300)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23893_4_lut.init = 16'hfffe;
    LUT4 i23591_2_lut (.A(n969), .B(n971), .Z(n26983)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23591_2_lut.init = 16'heeee;
    LUT4 i5_4_lut (.A(n711), .B(n707_adj_132), .C(n708_adj_133), .D(n705_adj_130), 
         .Z(n12_adj_613)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i23604_2_lut (.A(n974_adj_458), .B(n973_adj_459), .Z(n26996)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23604_2_lut.init = 16'heeee;
    LUT4 i23597_2_lut (.A(n975_adj_457), .B(n970), .Z(n26989)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23597_2_lut.init = 16'heeee;
    LUT4 Mux_61_i5_3_lut (.A(write_temp[6]), .B(write_temp[7]), .C(WRITE_BYTE_CNT[0]), 
         .Z(n5_adj_222)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(139[16:30])
    defparam Mux_61_i5_3_lut.init = 16'hcaca;
    LUT4 i23923_4_lut (.A(n1054), .B(n27276), .C(n27149), .D(n1052), 
         .Z(n27330)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23923_4_lut.init = 16'hfffe;
    LUT4 i23869_4_lut (.A(n1047), .B(n1055), .C(n1056), .D(n1053), .Z(n27276)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23869_4_lut.init = 16'hfffe;
    LUT4 i23873_4_lut (.A(n1058), .B(n1060), .C(n1050), .D(n1059), .Z(n27280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23873_4_lut.init = 16'hfffe;
    LUT4 i23919_4_lut (.A(n27272), .B(n1086), .C(n27131), .D(n1095), 
         .Z(n27326)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23919_4_lut.init = 16'hfffe;
    LUT4 i23865_4_lut (.A(n1093), .B(n1090), .C(n1091), .D(n1087), .Z(n27272)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23865_4_lut.init = 16'hfffe;
    LUT4 i23731_2_lut (.A(n1094), .B(n1092), .Z(n27131)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23731_2_lut.init = 16'heeee;
    LUT4 i23867_4_lut (.A(n1097), .B(n1099), .C(n1089), .D(n1098), .Z(n27274)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23867_4_lut.init = 16'hfffe;
    LUT4 i23917_4_lut (.A(n889_adj_601), .B(n27266), .C(n27125), .D(n888_adj_600), 
         .Z(n27324)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23917_4_lut.init = 16'hfffe;
    LUT4 i23859_4_lut (.A(n880), .B(n885), .C(n890_adj_602), .D(n884), 
         .Z(n27266)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23859_4_lut.init = 16'hfffe;
    LUT4 i23717_3_lut (.A(n886), .B(n887_adj_599), .C(n879), .Z(n27117)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23717_3_lut.init = 16'hfefe;
    CCU2D div_273_add_524_7 (.A0(n13090), .B0(n28368), .C0(n749), .D0(n710), 
          .A1(n13090), .B1(n28368), .C1(n748), .D1(n709_adj_134), .CIN(n24099), 
          .COUT(n24100), .S0(n806), .S1(n805));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_524_7.INIT0 = 16'h0e1f;
    defparam div_273_add_524_7.INIT1 = 16'h0e1f;
    defparam div_273_add_524_7.INJECT1_0 = "NO";
    defparam div_273_add_524_7.INJECT1_1 = "NO";
    CCU2D tens_3__I_19_add_255_5 (.A0(n28168), .B0(n13116), .C0(n361_adj_355), 
          .D0(n28175), .A1(n13116), .B1(n28167), .C1(n360_adj_354), 
          .D1(n337_adj_350), .CIN(n24222), .COUT(n24223), .S0(n394_adj_368), 
          .S1(n393_adj_367));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_255_5.INIT0 = 16'h0e3f;
    defparam tens_3__I_19_add_255_5.INIT1 = 16'h0e1f;
    defparam tens_3__I_19_add_255_5.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_255_5.INJECT1_1 = "NO";
    LUT4 i23913_4_lut (.A(n27260), .B(n917_adj_414), .C(n27109), .D(n927_adj_405), 
         .Z(n27320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23913_4_lut.init = 16'hfffe;
    LUT4 i23853_4_lut (.A(n926_adj_404), .B(n920_adj_410), .C(n925_adj_403), 
         .D(n918_adj_409), .Z(n27260)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23853_4_lut.init = 16'hfffe;
    LUT4 i23709_2_lut (.A(n922_adj_400), .B(n921_adj_399), .Z(n27109)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23709_2_lut.init = 16'heeee;
    LUT4 i23855_3_lut (.A(n923_adj_401), .B(n924_adj_402), .C(n916_adj_415), 
         .Z(n27262)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23855_3_lut.init = 16'hfefe;
    LUT4 i24205_2_lut (.A(STATE[2]), .B(STATE[3]), .Z(n27374)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i24205_2_lut.init = 16'heeee;
    LUT4 i24207_3_lut (.A(rst_c), .B(btnflag), .C(key_div_19__N_136), 
         .Z(n27567)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i24207_3_lut.init = 16'h1c1c;
    LUT4 i16608_2_lut_rep_617 (.A(READ_BIT_CNT[1]), .B(READ_BIT_CNT[0]), 
         .Z(n28613)) /* synthesis lut_function=(A (B)) */ ;
    defparam i16608_2_lut_rep_617.init = 16'h8888;
    LUT4 i1_2_lut_rep_561_3_lut (.A(READ_BIT_CNT[1]), .B(READ_BIT_CNT[0]), 
         .C(n33_adj_20), .Z(n28557)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_561_3_lut.init = 16'h0808;
    LUT4 i16644_2_lut_rep_618 (.A(STATE[3]), .B(STATE[1]), .Z(n28614)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i16644_2_lut_rep_618.init = 16'heeee;
    LUT4 i23650_2_lut_3_lut (.A(STATE[3]), .B(STATE[1]), .C(STATE[0]), 
         .Z(n27047)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23650_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(STATE[3]), .B(STATE[1]), .C(n27883), .Z(n26884)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    CCU2D tens_3__I_19_add_255_3 (.A0(n13116), .B0(n28167), .C0(n363_adj_357), 
          .D0(n241_adj_338), .A1(n28177), .B1(n28190), .C1(n362_adj_356), 
          .D1(n28166), .CIN(n24221), .COUT(n24222), .S0(n396_adj_370), 
          .S1(n395_adj_369));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_255_3.INIT0 = 16'h0e1f;
    defparam tens_3__I_19_add_255_3.INIT1 = 16'hf099;
    defparam tens_3__I_19_add_255_3.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_255_3.INJECT1_1 = "NO";
    LUT4 i24080_3_lut_4_lut (.A(segcnt[0]), .B(segcnt[1]), .C(segcnt[2]), 
         .D(sck_N_88_enable_3), .Z(n13760)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lab_6/temperature.vhd(367[8:16])
    defparam i24080_3_lut_4_lut.init = 16'h0100;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1_2_lut_3_lut_adj_8 (.A(segcnt[0]), .B(segcnt[1]), .C(segcnt[2]), 
         .Z(n13142)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // d:/lab_6/temperature.vhd(367[8:16])
    defparam i1_2_lut_3_lut_adj_8.init = 16'he1e1;
    LUT4 tens_3__I_19_i211_3_lut_4_lut (.A(n302_adj_344), .B(n28171), .C(n28177), 
         .D(n301_adj_343), .Z(n334_adj_347)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i211_3_lut_4_lut.init = 16'hfe01;
    LUT4 div_273_i527_3_lut_4_lut (.A(n28363), .B(n13072), .C(n802), .D(n763_adj_136), 
         .Z(n820_adj_151)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i527_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23783_4_lut (.A(key_div[2]), .B(key_div[19]), .C(key_div[10]), 
         .D(key_div[6]), .Z(n27183)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i23783_4_lut.init = 16'h8000;
    LUT4 i23677_2_lut (.A(key_div[8]), .B(key_div[12]), .Z(n27076)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23677_2_lut.init = 16'h8888;
    LUT4 i24000_3_lut_4_lut (.A(write_temp[1]), .B(WRITE_BYTE_CNT[0]), .C(WRITE_BYTE_CNT[1]), 
         .D(n2_adj_223), .Z(n27391)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // d:/lab_6/temperature.vhd(139[16:30])
    defparam i24000_3_lut_4_lut.init = 16'hf808;
    LUT4 div_273_mux_3_i9_3_lut (.A(n1524), .B(n11_adj_91), .C(n1179), 
         .Z(n372_adj_110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i9_3_lut.init = 16'hcaca;
    LUT4 div_273_mux_3_i8_3_lut (.A(n1525), .B(n12), .C(n1179), .Z(n373_adj_111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i8_3_lut.init = 16'hcaca;
    LUT4 div_273_mux_3_i7_3_lut (.A(n1526), .B(n13), .C(n1179), .Z(n374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i7_3_lut.init = 16'hcaca;
    LUT4 n27841_bdd_2_lut_3_lut_4_lut_else_4_lut (.A(temp1_8__N_270[4]), .B(temp1_8__N_270[3]), 
         .C(temp1_8__N_270[2]), .D(temp1_8__N_270[6]), .Z(n29280)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(D))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam n27841_bdd_2_lut_3_lut_4_lut_else_4_lut.init = 16'h55a8;
    CCU2D div_273_add_524_5 (.A0(n28369), .B0(n13090), .C0(n751), .D0(n712), 
          .A1(n13090), .B1(n28368), .C1(n750), .D1(n711), .CIN(n24098), 
          .COUT(n24099), .S0(n808_adj_146), .S1(n807_adj_145));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_524_5.INIT0 = 16'h0e3f;
    defparam div_273_add_524_5.INIT1 = 16'h0e1f;
    defparam div_273_add_524_5.INJECT1_0 = "NO";
    defparam div_273_add_524_5.INJECT1_1 = "NO";
    LUT4 div_276_i733_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1107), 
         .D(n1068), .Z(n1125)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i733_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_9 (.A(n831_adj_497), .B(n833_adj_495), .C(n832_adj_496), 
         .D(n4_adj_649), .Z(n20070)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_9.init = 16'ha080;
    LUT4 i6_4_lut_adj_10 (.A(n828_adj_500), .B(n12_adj_628), .C(n829_adj_499), 
         .D(n825_adj_503), .Z(n13106)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i6_4_lut_adj_10.init = 16'hfffe;
    LUT4 i5_4_lut_adj_11 (.A(n830_adj_498), .B(n826_adj_502), .C(n827_adj_501), 
         .D(n824_adj_504), .Z(n12_adj_628)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i5_4_lut_adj_11.init = 16'hfffe;
    LUT4 div_273_i534_3_lut_4_lut_4_lut (.A(n28364), .B(n770_adj_140), .C(n809_adj_147), 
         .D(n13072), .Z(n827_adj_158)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i534_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i2_4_lut_adj_12 (.A(n776_adj_518), .B(n778_adj_516), .C(n777_adj_517), 
         .D(n4_adj_664), .Z(n20164)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_12.init = 16'ha080;
    LUT4 i4_4_lut_adj_13 (.A(n773_adj_521), .B(n774_adj_520), .C(n775_adj_519), 
         .D(n771), .Z(n10_adj_333)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i4_4_lut_adj_13.init = 16'hfffe;
    LUT4 i2_4_lut_adj_14 (.A(n721_adj_536), .B(n723_adj_535), .C(n722_adj_220), 
         .D(n4_adj_18), .Z(n20275)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_14.init = 16'ha080;
    LUT4 i4_4_lut_adj_15 (.A(n718_adj_538), .B(n716_adj_540), .C(n720_adj_537), 
         .D(n6_adj_116), .Z(n13101)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i4_4_lut_adj_15.init = 16'hfffe;
    LUT4 tens_3__I_19_i190_3_lut_rep_183_4_lut (.A(n28182), .B(n28191), 
         .C(n278_adj_342), .D(n28183), .Z(n28179)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i190_3_lut_rep_183_4_lut.init = 16'h0df2;
    LUT4 i17695_2_lut_rep_367_3_lut (.A(n373_adj_111), .B(n28365), .C(n770_adj_140), 
         .Z(n28363)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17695_2_lut_rep_367_3_lut.init = 16'he0e0;
    LUT4 div_276_i727_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1101_adj_316), 
         .D(n1062), .Z(n1119)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i727_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i730_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1104), 
         .D(n1065), .Z(n1122)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i730_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_366_3_lut_4_lut (.A(n373_adj_111), .B(n28365), .C(n13072), 
         .D(n770_adj_140), .Z(n28362)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_366_3_lut_4_lut.init = 16'hfef0;
    CCU2D tens_3__I_19_add_255_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n242_adj_339), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24221), .S1(n397_adj_371));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_255_1.INIT0 = 16'hF000;
    defparam tens_3__I_19_add_255_1.INIT1 = 16'h5555;
    defparam tens_3__I_19_add_255_1.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_255_1.INJECT1_1 = "NO";
    LUT4 i17528_2_lut_rep_368_4_lut (.A(n372_adj_110), .B(n753_adj_135), 
         .C(n28367), .D(n373_adj_111), .Z(n28364)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17528_2_lut_rep_368_4_lut.init = 16'hffca;
    LUT4 div_276_i729_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1103), 
         .D(n1064), .Z(n1121)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i729_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i731_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1105), 
         .D(n1066), .Z(n1123)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i731_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i735_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1109), 
         .D(n1070), .Z(n1127)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i735_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut_4_lut (.A(n705_adj_130), .B(n744), .C(n28367), .D(n763_adj_136), 
         .Z(n10_adj_665)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i2_2_lut_4_lut.init = 16'hffca;
    LUT4 div_273_i487_3_lut_rep_370_4_lut (.A(n28368), .B(n13090), .C(n744), 
         .D(n705_adj_130), .Z(n28366)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i487_3_lut_rep_370_4_lut.init = 16'hf1e0;
    LUT4 div_276_i725_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1099_adj_314), 
         .D(n1060_adj_311), .Z(n1117)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i725_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5_4_lut_adj_16 (.A(key_div[7]), .B(key_div[16]), .C(key_div[14]), 
         .D(key_div[17]), .Z(n13_adj_645)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(62[6:20])
    defparam i5_4_lut_adj_16.init = 16'hfffe;
    LUT4 div_273_i811_3_lut_4_lut (.A(n28368), .B(n13090), .C(n1179), 
         .D(n4504), .Z(n725_adj_534)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i811_3_lut_4_lut.init = 16'hfe0e;
    LUT4 Mux_61_i2_3_lut (.A(write_temp[2]), .B(write_temp[7]), .C(WRITE_BYTE_CNT[0]), 
         .Z(n2_adj_223)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(139[16:30])
    defparam Mux_61_i2_3_lut.init = 16'hcaca;
    LUT4 div_273_i491_3_lut_4_lut (.A(n28368), .B(n13090), .C(n748), .D(n709_adj_134), 
         .Z(n766)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i491_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i728_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1102), 
         .D(n1063), .Z(n1120)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i728_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i734_3_lut_4_lut (.A(n20449), .B(n13120), .C(n1108), 
         .D(n1069), .Z(n1126)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i734_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i490_3_lut_4_lut (.A(n28368), .B(n13090), .C(n747), .D(n708_adj_133), 
         .Z(n765)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i490_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i488_3_lut_4_lut (.A(n28368), .B(n13090), .C(n745), .D(n706_adj_131), 
         .Z(n763_adj_136)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i488_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_17 (.A(n15_adj_449), .B(n934), .C(n16_adj_426), 
         .D(n933), .Z(n13057)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_4_lut_adj_17.init = 16'hfffe;
    LUT4 div_273_i493_3_lut_4_lut (.A(n28368), .B(n13090), .C(n750), .D(n711), 
         .Z(n768_adj_139)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i493_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i492_3_lut_4_lut (.A(n28368), .B(n13090), .C(n749), .D(n710), 
         .Z(n767_adj_138)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i492_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i489_3_lut_4_lut (.A(n28368), .B(n13090), .C(n746), .D(n707_adj_132), 
         .Z(n764_adj_137)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i489_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i496_3_lut_rep_369_4_lut (.A(n28368), .B(n13090), .C(n753_adj_135), 
         .D(n372_adj_110), .Z(n28365)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i496_3_lut_rep_369_4_lut.init = 16'hf1e0;
    LUT4 i6_4_lut_adj_18 (.A(n940), .B(n943), .C(n939), .D(n941), .Z(n15_adj_449)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i6_4_lut_adj_18.init = 16'hfffe;
    LUT4 i7_4_lut_adj_19 (.A(n936), .B(n937), .C(n935), .D(n10_adj_586), 
         .Z(n16_adj_426)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i7_4_lut_adj_19.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_20 (.A(n285_adj_216), .B(n1053_adj_309), .C(n28228), 
         .D(n286_adj_217), .Z(n4_adj_657)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_20.init = 16'hffca;
    LUT4 i1_2_lut_rep_232 (.A(n20423), .B(n13121), .Z(n28228)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_232.init = 16'heeee;
    LUT4 div_276_i697_3_lut_rep_231_4_lut (.A(n20423), .B(n13121), .C(n1053_adj_309), 
         .D(n285_adj_216), .Z(n28227)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i697_3_lut_rep_231_4_lut.init = 16'hf1e0;
    LUT4 n2_bdd_4_lut (.A(n2_adj_31), .B(n120_adj_42), .C(n3_adj_32), 
         .D(zpone_3__N_304[8]), .Z(n236_adj_46)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam n2_bdd_4_lut.init = 16'hd000;
    LUT4 div_273_i495_3_lut_4_lut (.A(n28368), .B(n13090), .C(n752), .D(n28370), 
         .Z(n770_adj_140)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i495_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i8220_1_lut_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1248), .D(n4699), 
         .Z(n8_adj_381)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i8220_1_lut_3_lut_4_lut.init = 16'h01f1;
    LUT4 div_273_i494_3_lut_4_lut_4_lut (.A(n28369), .B(n712), .C(n751), 
         .D(n13090), .Z(n769)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i494_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 div_276_i692_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1048), 
         .D(n1009), .Z(n1066)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i692_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17697_2_lut_rep_372_3_lut (.A(n372_adj_110), .B(n28370), .C(n712), 
         .Z(n28368)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17697_2_lut_rep_372_3_lut.init = 16'he0e0;
    LUT4 n1120_bdd_2_lut_24242 (.A(n27846), .B(n1167), .Z(n27847)) /* synthesis lut_function=(A (B)) */ ;
    defparam n1120_bdd_2_lut_24242.init = 16'h8888;
    LUT4 i1_4_lut_adj_21 (.A(n15_adj_620), .B(n876), .C(n13_adj_624), 
         .D(n14_adj_621), .Z(n13079)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_4_lut_adj_21.init = 16'hfffe;
    LUT4 i6_4_lut_adj_22 (.A(n881), .B(n885_adj_174), .C(n880_adj_171), 
         .D(n884_adj_173), .Z(n15_adj_620)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i6_4_lut_adj_22.init = 16'hfffe;
    LUT4 i5_3_lut_adj_23 (.A(n878_adj_169), .B(n879_adj_170), .C(n883), 
         .Z(n14_adj_621)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i5_3_lut_adj_23.init = 16'hfefe;
    LUT4 i1_2_lut_rep_371_3_lut_4_lut (.A(n372_adj_110), .B(n28370), .C(n13090), 
         .D(n712), .Z(n28367)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_371_3_lut_4_lut.init = 16'hfef0;
    LUT4 div_276_i688_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1044), 
         .D(n1005), .Z(n1062)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i688_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i695_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1051_adj_307), 
         .D(n1012), .Z(n1069)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i695_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17530_2_lut_rep_373_4_lut (.A(n371_adj_109), .B(n695), .C(n28371), 
         .D(n372_adj_110), .Z(n28369)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17530_2_lut_rep_373_4_lut.init = 16'hffca;
    LUT4 div_273_i453_3_lut_4_lut (.A(n28372), .B(n13033), .C(n692), .D(n653_adj_127), 
         .Z(n710)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i453_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_273_add_524_3 (.A0(n13090), .B0(n28368), .C0(n753_adj_135), 
          .D0(n372_adj_110), .A1(n13090), .B1(n28368), .C1(n752), .D1(n28370), 
          .CIN(n24097), .COUT(n24098), .S0(n810_adj_148), .S1(n809_adj_147));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_524_3.INIT0 = 16'h0e1f;
    defparam div_273_add_524_3.INIT1 = 16'hf1e0;
    defparam div_273_add_524_3.INJECT1_0 = "NO";
    defparam div_273_add_524_3.INJECT1_1 = "NO";
    CCU2D div_273_add_524_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n373_adj_111), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24097), .S1(n811_adj_149));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_524_1.INIT0 = 16'hF000;
    defparam div_273_add_524_1.INIT1 = 16'h5555;
    defparam div_273_add_524_1.INJECT1_0 = "NO";
    defparam div_273_add_524_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_24 (.A(key_div[9]), .B(key_div[5]), .C(key_div[18]), 
         .D(key_div[15]), .Z(n14_adj_644)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(62[6:20])
    defparam i6_4_lut_adj_24.init = 16'hfffe;
    FD1P3AX tmp_bit_429 (.D(dq_out), .SP(clk_temp_enable_1), .CK(clk_temp), 
            .Q(tmp_bit));   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam tmp_bit_429.GSR = "ENABLED";
    LUT4 div_273_i450_3_lut_4_lut (.A(n28372), .B(n13033), .C(n689), .D(n650_adj_124), 
         .Z(n707_adj_132)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i450_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n288_bdd_4_lut (.A(n288_adj_219), .B(n1166), .C(n1168), .D(n1169), 
         .Z(n27846)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam n288_bdd_4_lut.init = 16'hccc8;
    LUT4 div_273_i448_3_lut_4_lut (.A(n28372), .B(n13033), .C(n687), .D(n648_adj_122), 
         .Z(n705_adj_130)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i448_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i24191_4_lut (.A(ser_N_380[3]), .B(ser_N_380[2]), .C(ser_N_380[0]), 
         .D(n6_adj_619), .Z(sck_N_88_enable_3)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lab_6/temperature.vhd(366[8:18])
    defparam i24191_4_lut.init = 16'h0001;
    LUT4 n1128_bdd_4_lut (.A(n28223), .B(n288_adj_219), .C(n1127), .D(n287_adj_218), 
         .Z(n27848)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;
    defparam n1128_bdd_4_lut.init = 16'hf0e0;
    LUT4 i23980_3_lut (.A(write_temp[1]), .B(n5_adj_222), .C(WRITE_BYTE_CNT[1]), 
         .Z(n27392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23980_3_lut.init = 16'hcaca;
    LUT4 div_273_i452_3_lut_4_lut (.A(n28372), .B(n13033), .C(n691), .D(n652_adj_126), 
         .Z(n709_adj_134)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i452_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i449_3_lut_4_lut (.A(n28372), .B(n13033), .C(n688), .D(n649_adj_123), 
         .Z(n706_adj_131)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i449_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_mux_3_i6_3_lut (.A(n1527), .B(n14_adj_92), .C(n1179), 
         .Z(n375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i6_3_lut.init = 16'hcaca;
    CCU2D tens_3__I_19_add_232_7 (.A0(n4_adj_41), .B0(n28174), .C0(n28171), 
          .D0(n302_adj_344), .A1(n13117), .B1(n28174), .C1(n28170), 
          .D1(n301_adj_343), .CIN(n24219), .S0(n358_adj_352), .S1(n357_adj_351));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_232_7.INIT0 = 16'h0ff4;
    defparam tens_3__I_19_add_232_7.INIT1 = 16'h0bf4;
    defparam tens_3__I_19_add_232_7.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_232_7.INJECT1_1 = "NO";
    LUT4 div_273_i810_3_lut_4_lut (.A(n28372), .B(n13033), .C(n1179), 
         .D(n4503), .Z(n397_adj_592)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i810_3_lut_4_lut.init = 16'hfe0e;
    LUT4 div_276_i857_3_lut_rep_223_4_lut (.A(n20423), .B(n13121), .C(n1248), 
         .D(n4699), .Z(n28219)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i857_3_lut_rep_223_4_lut.init = 16'hfe0e;
    LUT4 div_276_i687_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1043_adj_303), 
         .D(n1004), .Z(n1061_adj_312)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i687_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i456_3_lut_rep_374_4_lut (.A(n28372), .B(n13033), .C(n695), 
         .D(n371_adj_109), .Z(n28370)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i456_3_lut_rep_374_4_lut.init = 16'hf1e0;
    PFUMX i105 (.BLUT(n24764), .ALUT(n26933), .C0(WRITE_LOW_CNT[0]), .Z(n111));
    LUT4 div_276_i685_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1041_adj_301), 
         .D(n28230), .Z(n1059_adj_310)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i685_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i451_3_lut_4_lut (.A(n28372), .B(n13033), .C(n690), .D(n651_adj_125), 
         .Z(n708_adj_133)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i451_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i694_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1050_adj_306), 
         .D(n1011), .Z(n1068)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i694_3_lut_4_lut.init = 16'hf1e0;
    LUT4 cycledata_46__N_70_3__bdd_4_lut (.A(cycledata_46__N_70[3]), .B(cycledata_46__N_70[1]), 
         .C(n28193), .D(n28218), .Z(cycledata[46])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C (D))+!B !(C)))) */ ;
    defparam cycledata_46__N_70_3__bdd_4_lut.init = 16'h1656;
    LUT4 div_273_i455_3_lut_4_lut (.A(n28372), .B(n13033), .C(n694), .D(n28374), 
         .Z(n712)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i455_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i686_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1042_adj_302), 
         .D(n1003), .Z(n1060_adj_311)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i686_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i696_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1052_adj_308), 
         .D(n28229), .Z(n1070)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i696_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17557_2_lut_rep_595_4_lut (.A(WRITE_BYTE_CNT[0]), .B(WRITE_BYTE_CNT[1]), 
         .C(WRITE_BYTE_CNT[2]), .D(WRITE_BYTE_FLAG[0]), .Z(n28591)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i17557_2_lut_rep_595_4_lut.init = 16'hfffe;
    CCU2D tens_3__I_19_add_232_5 (.A0(n337_adj_350), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13117), .B1(n28174), .C1(n28173), .D1(n28179), 
          .CIN(n24218), .COUT(n24219), .S0(n360_adj_354), .S1(n359_adj_353));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_232_5.INIT0 = 16'h5555;
    defparam tens_3__I_19_add_232_5.INIT1 = 16'h0bf4;
    defparam tens_3__I_19_add_232_5.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_232_5.INJECT1_1 = "NO";
    CCU2D tens_3__I_19_add_232_3 (.A0(n13117), .B0(n28174), .C0(n329_adj_346), 
          .D0(n28190), .A1(n13117), .B1(n28174), .C1(n28190), .D1(n28178), 
          .CIN(n24217), .COUT(n24218), .S0(n362_adj_356), .S1(n361_adj_355));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_232_3.INIT0 = 16'h0b4f;
    defparam tens_3__I_19_add_232_3.INIT1 = 16'hf40b;
    defparam tens_3__I_19_add_232_3.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_232_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(ser_N_380[1]), .B(placecnt[4]), .Z(n6_adj_619)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(366[8:18])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 div_276_i690_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1046), 
         .D(n1007), .Z(n1064)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i690_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23877_4_lut (.A(n1123), .B(n1117), .C(n1122), .D(n1126), .Z(n27284)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23877_4_lut.init = 16'hfffe;
    LUT4 div_273_i454_3_lut_4_lut_4_lut (.A(n28373), .B(n654_adj_128), .C(n693), 
         .D(n13033), .Z(n711)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i454_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i17709_2_lut_rep_376_3_lut (.A(n371_adj_109), .B(n28374), .C(n654_adj_128), 
         .Z(n28372)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17709_2_lut_rep_376_3_lut.init = 16'he0e0;
    LUT4 div_276_i691_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1047_adj_304), 
         .D(n1008), .Z(n1065)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i691_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_mux_3_i10_3_lut (.A(n1570), .B(n10_adj_192), .C(n1248), 
         .Z(n281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i10_3_lut.init = 16'hcaca;
    CCU2D div_273_add_485_11 (.A0(n13033), .B0(n28372), .C0(n687), .D0(n648_adj_122), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24096), 
          .S0(n744));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_485_11.INIT0 = 16'h0e1f;
    defparam div_273_add_485_11.INIT1 = 16'h0000;
    defparam div_273_add_485_11.INJECT1_0 = "NO";
    defparam div_273_add_485_11.INJECT1_1 = "NO";
    LUT4 div_276_i689_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1045), 
         .D(n1006), .Z(n1063)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i689_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_mux_3_i5_3_lut (.A(n1528), .B(n15), .C(n1179), .Z(n376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i5_3_lut.init = 16'hcaca;
    CCU2D div_273_add_485_9 (.A0(n13033), .B0(n28372), .C0(n689), .D0(n650_adj_124), 
          .A1(n13033), .B1(n28372), .C1(n688), .D1(n649_adj_123), .CIN(n24095), 
          .COUT(n24096), .S0(n746), .S1(n745));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_485_9.INIT0 = 16'h0e1f;
    defparam div_273_add_485_9.INIT1 = 16'h0e1f;
    defparam div_273_add_485_9.INJECT1_0 = "NO";
    defparam div_273_add_485_9.INJECT1_1 = "NO";
    LUT4 div_276_i693_3_lut_4_lut (.A(n20423), .B(n13121), .C(n1049_adj_305), 
         .D(n1010), .Z(n1067)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i693_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_adj_25 (.A(n284_adj_215), .B(n995_adj_298), .C(n28231), 
         .D(n285_adj_216), .Z(n4_adj_640)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_25.init = 16'hffca;
    CCU2D div_273_add_485_7 (.A0(n13033), .B0(n28372), .C0(n691), .D0(n652_adj_126), 
          .A1(n13033), .B1(n28372), .C1(n690), .D1(n651_adj_125), .CIN(n24094), 
          .COUT(n24095), .S0(n748), .S1(n747));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_485_7.INIT0 = 16'h0e1f;
    defparam div_273_add_485_7.INIT1 = 16'h0e1f;
    defparam div_273_add_485_7.INJECT1_0 = "NO";
    defparam div_273_add_485_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_375_3_lut_4_lut (.A(n371_adj_109), .B(n28374), .C(n13033), 
         .D(n654_adj_128), .Z(n28371)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_375_3_lut_4_lut.init = 16'hfef0;
    LUT4 i2_2_lut_4_lut_adj_26 (.A(n945), .B(n984_adj_291), .C(n28231), 
         .D(n1003), .Z(n10_adj_626)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i2_2_lut_4_lut_adj_26.init = 16'hffca;
    LUT4 i1_2_lut_rep_235 (.A(n20407), .B(n13122), .Z(n28231)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_235.init = 16'heeee;
    CCU2D div_273_add_485_5 (.A0(n28373), .B0(n13033), .C0(n693), .D0(n654_adj_128), 
          .A1(n13033), .B1(n28372), .C1(n692), .D1(n653_adj_127), .CIN(n24093), 
          .COUT(n24094), .S0(n750), .S1(n749));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_485_5.INIT0 = 16'h0e3f;
    defparam div_273_add_485_5.INIT1 = 16'h0e1f;
    defparam div_273_add_485_5.INJECT1_0 = "NO";
    defparam div_273_add_485_5.INJECT1_1 = "NO";
    CCU2D tens_3__I_19_add_232_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n241_adj_338), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24217), .S1(n363_adj_357));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_add_232_1.INIT0 = 16'hF000;
    defparam tens_3__I_19_add_232_1.INIT1 = 16'h5555;
    defparam tens_3__I_19_add_232_1.INJECT1_0 = "NO";
    defparam tens_3__I_19_add_232_1.INJECT1_1 = "NO";
    LUT4 div_276_i646_3_lut_rep_234_4_lut (.A(n20407), .B(n13122), .C(n984_adj_291), 
         .D(n945), .Z(n28230)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i646_3_lut_rep_234_4_lut.init = 16'hf1e0;
    LUT4 div_276_i657_3_lut_rep_233_4_lut (.A(n20407), .B(n13122), .C(n995_adj_298), 
         .D(n284_adj_215), .Z(n28229)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i657_3_lut_rep_233_4_lut.init = 16'hf1e0;
    LUT4 i17538_2_lut_rep_377_4_lut (.A(n370_adj_108), .B(n637), .C(n28375), 
         .D(n371_adj_109), .Z(n28373)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17538_2_lut_rep_377_4_lut.init = 16'hffca;
    LUT4 div_273_i574_3_lut_4_lut_4_lut (.A(n28360), .B(n828_adj_159), .C(n867_adj_166), 
         .D(n13056), .Z(n885_adj_174)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i574_3_lut_4_lut_4_lut.init = 16'hf0c4;
    CCU2D add_2190_9 (.A0(n20298), .B0(n13127), .C0(GND_net), .D0(GND_net), 
          .A1(n20643), .B1(n28248), .C1(GND_net), .D1(GND_net), .CIN(n24215), 
          .S0(n4695), .S1(n4694));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam add_2190_9.INIT0 = 16'he111;
    defparam add_2190_9.INIT1 = 16'he111;
    defparam add_2190_9.INJECT1_0 = "NO";
    defparam add_2190_9.INJECT1_1 = "NO";
    LUT4 div_273_i654_3_lut_4_lut_4_lut (.A(n28350), .B(n944), .C(n983), 
         .D(n13057), .Z(n1001)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i654_3_lut_4_lut_4_lut.init = 16'hf0c4;
    PFUMX i20 (.BLUT(n28560), .ALUT(n3053), .C0(STATE[1]), .Z(n9_adj_666));
    LUT4 div_273_i415_3_lut_4_lut (.A(n28376), .B(n13061), .C(n636), .D(n28378), 
         .Z(n654_adj_128)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i415_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i413_3_lut_4_lut (.A(n28376), .B(n13061), .C(n634), .D(n595_adj_120), 
         .Z(n652_adj_126)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i413_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i651_3_lut_4_lut (.A(n20407), .B(n13122), .C(n989), .D(n950), 
         .Z(n1007)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i651_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i409_3_lut_4_lut (.A(n28376), .B(n13061), .C(n630), .D(n591_adj_117), 
         .Z(n648_adj_122)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i409_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i649_3_lut_4_lut (.A(n20407), .B(n13122), .C(n987), .D(n948), 
         .Z(n1005)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i649_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_275_add_2_17 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24360), .S0(n1248));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_17.INIT0 = 16'hffff;
    defparam sub_275_add_2_17.INIT1 = 16'h0000;
    defparam sub_275_add_2_17.INJECT1_0 = "NO";
    defparam sub_275_add_2_17.INJECT1_1 = "NO";
    LUT4 i1294_1_lut (.A(segcnt[0]), .Z(n2089)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(367[46:52])
    defparam i1294_1_lut.init = 16'h5555;
    LUT4 div_273_i412_3_lut_4_lut (.A(n28376), .B(n13061), .C(n633), .D(n28379), 
         .Z(n651_adj_125)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i412_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i652_3_lut_4_lut (.A(n20407), .B(n13122), .C(n990_adj_293), 
         .D(n951), .Z(n1008)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i652_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_275_add_2_15 (.A0(n4496), .B0(n1179), .C0(GND_net), .D0(GND_net), 
          .A1(n4495), .B1(n1179), .C1(GND_net), .D1(GND_net), .CIN(n24359), 
          .COUT(n24360), .S0(n1564), .S1(n1563));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_15.INIT0 = 16'h7777;
    defparam sub_275_add_2_15.INIT1 = 16'h7777;
    defparam sub_275_add_2_15.INJECT1_0 = "NO";
    defparam sub_275_add_2_15.INJECT1_1 = "NO";
    LUT4 div_276_i647_3_lut_4_lut (.A(n20407), .B(n13122), .C(n985_adj_292), 
         .D(n946), .Z(n1003)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i647_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i411_3_lut_4_lut (.A(n28376), .B(n13061), .C(n632), .D(n593_adj_119), 
         .Z(n650_adj_124)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i411_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i416_3_lut_rep_378_4_lut (.A(n28376), .B(n13061), .C(n637), 
         .D(n370_adj_108), .Z(n28374)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i416_3_lut_rep_378_4_lut.init = 16'hf1e0;
    LUT4 div_276_i648_3_lut_4_lut (.A(n20407), .B(n13122), .C(n986), .D(n947), 
         .Z(n1004)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i648_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i650_3_lut_4_lut (.A(n20407), .B(n13122), .C(n988), .D(n949), 
         .Z(n1006)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i650_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i856_3_lut_rep_224_4_lut (.A(n20407), .B(n13122), .C(n1248), 
         .D(n4698), .Z(n28220)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i856_3_lut_rep_224_4_lut.init = 16'hfe0e;
    LUT4 div_276_i654_3_lut_4_lut (.A(n20407), .B(n13122), .C(n992_adj_295), 
         .D(n953), .Z(n1010)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i654_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_275_add_2_13 (.A0(n363_adj_106), .B0(n28404), .C0(n4498), 
          .D0(n1179), .A1(n2_adj_82), .B1(n28409), .C1(n4497), .D1(n1179), 
          .CIN(n24358), .COUT(n24359), .S0(n1566), .S1(n1565));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_13.INIT0 = 16'h0f44;
    defparam sub_275_add_2_13.INIT1 = 16'h0fff;
    defparam sub_275_add_2_13.INJECT1_0 = "NO";
    defparam sub_275_add_2_13.INJECT1_1 = "NO";
    LUT4 div_273_i809_3_lut_4_lut (.A(n28376), .B(n13061), .C(n1179), 
         .D(n4502), .Z(n396_adj_593)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i809_3_lut_4_lut.init = 16'hfe0e;
    LUT4 div_273_i410_3_lut_4_lut (.A(n28376), .B(n13061), .C(n631), .D(n592_adj_118), 
         .Z(n649_adj_123)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i410_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n242_bdd_4_lut (.A(n242_adj_339), .B(tens_3__N_323[9]), .C(n10_adj_331), 
         .D(tens_3__N_323[1]), .Z(n27777)) /* synthesis lut_function=(A+(B (C)+!B (D))) */ ;
    defparam n242_bdd_4_lut.init = 16'hfbea;
    CCU2D sub_275_add_2_11 (.A0(n28390), .B0(n28391), .C0(n4500), .D0(n1179), 
          .A1(n28396), .B1(n32_adj_446), .C1(n4499), .D1(n1179), .CIN(n24357), 
          .COUT(n24358), .S0(n1568), .S1(n1567));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_11.INIT0 = 16'h0f44;
    defparam sub_275_add_2_11.INIT1 = 16'h0f44;
    defparam sub_275_add_2_11.INJECT1_0 = "NO";
    defparam sub_275_add_2_11.INJECT1_1 = "NO";
    LUT4 i24099_4_lut (.A(STATE[3]), .B(n28571), .C(STATE[2]), .D(STATE[1]), 
         .Z(clk_c_enable_35)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i24099_4_lut.init = 16'h0100;
    LUT4 div_276_i653_3_lut_4_lut (.A(n20407), .B(n13122), .C(n991_adj_294), 
         .D(n952), .Z(n1009)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i653_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n27852_bdd_4_lut_then_3_lut (.A(READ_BIT_CNT[0]), .B(READ_BIT_CNT[1]), 
         .C(STATE[1]), .Z(n28625)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam n27852_bdd_4_lut_then_3_lut.init = 16'hf1f1;
    CCU2D sub_275_add_2_9 (.A0(n13061), .B0(n28376), .C0(n4502), .D0(n1179), 
          .A1(n13070), .B1(n28381), .C1(n4501), .D1(n1179), .CIN(n24356), 
          .COUT(n24357), .S0(n1570), .S1(n1569));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_9.INIT0 = 16'h0f11;
    defparam sub_275_add_2_9.INIT1 = 16'h0f11;
    defparam sub_275_add_2_9.INJECT1_0 = "NO";
    defparam sub_275_add_2_9.INJECT1_1 = "NO";
    LUT4 div_273_i414_3_lut_4_lut_4_lut (.A(n28377), .B(n596_adj_121), .C(n635), 
         .D(n13061), .Z(n653_adj_127)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i414_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 n33_bdd_2_lut (.A(n24785), .B(WRITE_HIGH_CNT[1]), .Z(n27882)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n33_bdd_2_lut.init = 16'h2222;
    LUT4 div_276_i656_3_lut_4_lut (.A(n20407), .B(n13122), .C(n994_adj_297), 
         .D(n28232), .Z(n1012)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i656_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i655_3_lut_4_lut (.A(n20407), .B(n13122), .C(n993_adj_296), 
         .D(n954), .Z(n1011)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i655_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_273_add_485_3 (.A0(n13033), .B0(n28372), .C0(n695), .D0(n371_adj_109), 
          .A1(n13033), .B1(n28372), .C1(n694), .D1(n28374), .CIN(n24092), 
          .COUT(n24093), .S0(n752), .S1(n751));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_485_3.INIT0 = 16'h0e1f;
    defparam div_273_add_485_3.INIT1 = 16'hf1e0;
    defparam div_273_add_485_3.INJECT1_0 = "NO";
    defparam div_273_add_485_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_27 (.A(n283_adj_214), .B(n937_adj_287), .C(n28233), 
         .D(n284_adj_215), .Z(n4_adj_639)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_27.init = 16'hffca;
    LUT4 mod_274_i683_3_lut (.A(n944_adj_463), .B(n981_adj_451), .C(n950_adj_461), 
         .Z(n998)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i683_3_lut.init = 16'hcaca;
    LUT4 i11_4_lut (.A(n995), .B(n22), .C(n18), .D(n994), .Z(n13097)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n997), .B(n20), .C(n14_adj_44), .D(n1001), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i17713_2_lut_rep_380_3_lut (.A(n370_adj_108), .B(n28378), .C(n596_adj_121), 
         .Z(n28376)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17713_2_lut_rep_380_3_lut.init = 16'he0e0;
    CCU2D add_2190_7 (.A0(n20399), .B0(n28234), .C0(GND_net), .D0(GND_net), 
          .A1(n20373), .B1(n13124), .C1(GND_net), .D1(GND_net), .CIN(n24214), 
          .COUT(n24215), .S0(n4697), .S1(n4696));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam add_2190_7.INIT0 = 16'he111;
    defparam add_2190_7.INIT1 = 16'he111;
    defparam add_2190_7.INJECT1_0 = "NO";
    defparam add_2190_7.INJECT1_1 = "NO";
    LUT4 i8_4_lut (.A(n993), .B(n990), .C(n991), .D(n1000), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i8_4_lut.init = 16'hfffe;
    CCU2D sub_275_add_2_7 (.A0(n13090), .B0(n28368), .C0(n4504), .D0(n1179), 
          .A1(n13033), .B1(n28372), .C1(n4503), .D1(n1179), .CIN(n24355), 
          .COUT(n24356), .S0(n1572), .S1(n1571));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_7.INIT0 = 16'h0f11;
    defparam sub_275_add_2_7.INIT1 = 16'h0f11;
    defparam sub_275_add_2_7.INJECT1_0 = "NO";
    defparam sub_275_add_2_7.INJECT1_1 = "NO";
    OB led_pad_0 (.I(VCC_net), .O(led[0]));   // d:/lab_6/temperature.vhd(16[3:6])
    OB led_pad_1 (.I(VCC_net), .O(led[1]));   // d:/lab_6/temperature.vhd(16[3:6])
    OB led_pad_2 (.I(led_2__N_1), .O(led[2]));   // d:/lab_6/temperature.vhd(16[3:6])
    OB ser_pad (.I(ser_c), .O(ser));   // d:/lab_6/temperature.vhd(15[3:6])
    LUT4 div_276_i612_3_lut_4_lut (.A(n20399), .B(n28234), .C(n932_adj_282), 
         .D(n893), .Z(n950)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i612_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i609_3_lut_4_lut (.A(n20399), .B(n28234), .C(n929), .D(n890), 
         .Z(n947)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i609_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i611_3_lut_4_lut (.A(n20399), .B(n28234), .C(n931), .D(n892), 
         .Z(n949)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i611_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23929_4_lut (.A(n1159), .B(n27288), .C(n1160), .D(n1164), 
         .Z(n27336)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23929_4_lut.init = 16'hfffe;
    LUT4 div_276_i615_3_lut_4_lut (.A(n20399), .B(n28234), .C(n935_adj_285), 
         .D(n896), .Z(n953)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i615_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i614_3_lut_4_lut (.A(n20399), .B(n28234), .C(n934_adj_284), 
         .D(n895), .Z(n952)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i614_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i613_3_lut_4_lut (.A(n20399), .B(n28234), .C(n933_adj_283), 
         .D(n894), .Z(n951)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i613_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i610_3_lut_4_lut (.A(n20399), .B(n28234), .C(n930), .D(n891), 
         .Z(n948)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i610_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_379_3_lut_4_lut (.A(n370_adj_108), .B(n28378), .C(n13061), 
         .D(n596_adj_121), .Z(n28375)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_379_3_lut_4_lut.init = 16'hfef0;
    LUT4 cycledata_31__N_74_3__bdd_4_lut (.A(cycledata_31__N_74[3]), .B(cycledata_31__N_74[1]), 
         .C(cycledata_31__N_74[2]), .D(n28237), .Z(cycledata[30])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C (D))+!B !(C)))) */ ;
    defparam cycledata_31__N_74_3__bdd_4_lut.init = 16'h1656;
    CCU2D sub_275_add_2_5 (.A0(n28291), .B0(n28358), .C0(n1179), .D0(n4506), 
          .A1(zpzone_3__N_333[6]), .B1(n28362), .C1(n1179), .D1(n4505), 
          .CIN(n24354), .COUT(n24355), .S0(n1574), .S1(n1573));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_5.INIT0 = 16'ha959;
    defparam sub_275_add_2_5.INIT1 = 16'ha959;
    defparam sub_275_add_2_5.INJECT1_0 = "NO";
    defparam sub_275_add_2_5.INJECT1_1 = "NO";
    LUT4 i17540_2_lut_rep_381_4_lut (.A(n369), .B(n579), .C(n28380), .D(n370_adj_108), 
         .Z(n28377)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17540_2_lut_rep_381_4_lut.init = 16'hffca;
    LUT4 tens_3__I_19_i191_3_lut_4_lut (.A(n238_adj_337), .B(n28184), .C(n278_adj_342), 
         .D(n28191), .Z(n304_adj_345)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam tens_3__I_19_i191_3_lut_4_lut.init = 16'h6669;
    LUT4 i24199_2_lut_3_lut (.A(STATE[1]), .B(STATE[2]), .C(STATE[3]), 
         .Z(n27381)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam i24199_2_lut_3_lut.init = 16'hfdfd;
    LUT4 div_273_mux_3_i4_3_lut (.A(n1529), .B(n16), .C(n1179), .Z(n377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_28 (.A(n537), .B(n576), .C(n28380), .D(n592_adj_118), 
         .Z(n6_adj_8)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_4_lut_adj_28.init = 16'hffca;
    LUT4 div_273_i373_3_lut_rep_383_4_lut (.A(n28381), .B(n13070), .C(n576), 
         .D(n537), .Z(n28379)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i373_3_lut_rep_383_4_lut.init = 16'hf1e0;
    LUT4 div_276_i617_3_lut_rep_236_4_lut (.A(n20399), .B(n28234), .C(n937_adj_287), 
         .D(n283_adj_214), .Z(n28232)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i617_3_lut_rep_236_4_lut.init = 16'hf1e0;
    LUT4 div_276_i608_3_lut_4_lut (.A(n20399), .B(n28234), .C(n928), .D(n889), 
         .Z(n946)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i608_3_lut_4_lut.init = 16'hf1e0;
    CCU2D add_1404_add_3_7 (.A0(n8_adj_12), .B0(n3574), .C0(GND_net), 
          .D0(GND_net), .A1(n7_adj_13), .B1(n3573), .C1(GND_net), .D1(GND_net), 
          .CIN(n24001), .COUT(n24002), .S0(n3043), .S1(n3042));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_3_7.INIT0 = 16'h5666;
    defparam add_1404_add_3_7.INIT1 = 16'h5666;
    defparam add_1404_add_3_7.INJECT1_0 = "NO";
    defparam add_1404_add_3_7.INJECT1_1 = "NO";
    LUT4 div_276_i616_3_lut_4_lut (.A(n20399), .B(n28234), .C(n936_adj_286), 
         .D(n28235), .Z(n954)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i616_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i372_3_lut_4_lut (.A(n28381), .B(n13070), .C(n575), .D(n536), 
         .Z(n593_adj_119)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i372_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i370_3_lut_4_lut (.A(n28381), .B(n13070), .C(n573), .D(n534), 
         .Z(n591_adj_117)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i370_3_lut_4_lut.init = 16'hf1e0;
    CCU2D add_1404_add_3_5 (.A0(temp1_8__N_270[3]), .B0(n3576), .C0(GND_net), 
          .D0(GND_net), .A1(n9_adj_9), .B1(n3575), .C1(GND_net), .D1(GND_net), 
          .CIN(n24000), .COUT(n24001), .S0(n3045), .S1(n3044));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_3_5.INIT0 = 16'h5666;
    defparam add_1404_add_3_5.INIT1 = 16'h5666;
    defparam add_1404_add_3_5.INJECT1_0 = "NO";
    defparam add_1404_add_3_5.INJECT1_1 = "NO";
    LUT4 div_276_i855_3_lut_4_lut (.A(n20399), .B(n28234), .C(n1248), 
         .D(n4697), .Z(ones_3__N_314[5])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i855_3_lut_4_lut.init = 16'hfe0e;
    CCU2D sub_275_add_2_3 (.A0(n945_adj_462), .B0(n28299), .C0(n1004_adj_447), 
          .D0(n28297), .A1(n890_adj_473), .B1(n998), .C1(n1004_adj_447), 
          .D1(n28295), .CIN(n24353), .COUT(n24354), .S0(n1576), .S1(n1575));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_3.INIT0 = 16'h59a9;
    defparam sub_275_add_2_3.INIT1 = 16'h59a9;
    defparam sub_275_add_2_3.INJECT1_0 = "NO";
    defparam sub_275_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_275_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n28292), .B1(n1179), .C1(n28342), .D1(n4509), .COUT(n24353), 
          .S1(n1577));   // d:/lab_6/temperature.vhd(329[11:16])
    defparam sub_275_add_2_1.INIT0 = 16'h0000;
    defparam sub_275_add_2_1.INIT1 = 16'h569a;
    defparam sub_275_add_2_1.INJECT1_0 = "NO";
    defparam sub_275_add_2_1.INJECT1_1 = "NO";
    LUT4 div_276_i607_3_lut_4_lut (.A(n20399), .B(n28234), .C(n927_adj_281), 
         .D(n888), .Z(n945)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i607_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i375_3_lut_4_lut (.A(n28381), .B(n13070), .C(n578), .D(n28384), 
         .Z(n596_adj_121)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i375_3_lut_4_lut.init = 16'he0f1;
    CCU2D add_2190_5 (.A0(n20423), .B0(n13121), .C0(GND_net), .D0(GND_net), 
          .A1(n20407), .B1(n13122), .C1(GND_net), .D1(GND_net), .CIN(n24213), 
          .COUT(n24214), .S0(n4699), .S1(n4698));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam add_2190_5.INIT0 = 16'he111;
    defparam add_2190_5.INIT1 = 16'he111;
    defparam add_2190_5.INJECT1_0 = "NO";
    defparam add_2190_5.INJECT1_1 = "NO";
    CCU2D add_2190_3 (.A0(n20475), .B0(n13119), .C0(GND_net), .D0(GND_net), 
          .A1(n20449), .B1(n13120), .C1(GND_net), .D1(GND_net), .CIN(n24212), 
          .COUT(n24213), .S0(n4701), .S1(n4700));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam add_2190_3.INIT0 = 16'he111;
    defparam add_2190_3.INIT1 = 16'he111;
    defparam add_2190_3.INJECT1_0 = "NO";
    defparam add_2190_3.INJECT1_1 = "NO";
    LUT4 i2343_2_lut_rep_184_3_lut_4_lut_4_lut (.A(n28187), .B(n238_adj_337), 
         .C(n28184), .D(n28191), .Z(n28180)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B+!(C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i2343_2_lut_rep_184_3_lut_4_lut_4_lut.init = 16'h9a18;
    CCU2D mod_271_add_485_11 (.A0(n13091), .B0(n28445), .C0(n646), .D0(n609), 
          .A1(n13091), .B1(n28445), .C1(n645), .D1(n608), .CIN(n24351), 
          .S0(n700), .S1(n699));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_485_11.INIT0 = 16'h0e1f;
    defparam mod_271_add_485_11.INIT1 = 16'h0e1f;
    defparam mod_271_add_485_11.INJECT1_0 = "NO";
    defparam mod_271_add_485_11.INJECT1_1 = "NO";
    LUT4 n27852_bdd_4_lut_else_3_lut (.A(WRITE_HIGH_CNT[0]), .B(STATE[1]), 
         .C(WRITE_HIGH_CNT[1]), .Z(n28624)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n27852_bdd_4_lut_else_3_lut.init = 16'hfdfd;
    LUT4 zpzone_3__I_20_i135_4_lut (.A(n169), .B(n175_adj_424), .C(n29285), 
         .Z(n192)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/lab_6/temperature.vhd(333[11:16])
    defparam zpzone_3__I_20_i135_4_lut.init = 16'h0101;
    LUT4 div_273_i371_3_lut_4_lut (.A(n28381), .B(n13070), .C(n574), .D(n535), 
         .Z(n592_adj_118)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i371_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i808_3_lut_4_lut (.A(n28381), .B(n13070), .C(n1179), 
         .D(n4501), .Z(n452_adj_588)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i808_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i23954_4_lut (.A(n27362), .B(n28296), .C(n997_adj_448), .D(n996), 
         .Z(n1004_adj_447)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i23954_4_lut.init = 16'heaaa;
    LUT4 i1429_2_lut (.A(WRITE_BYTE_CNT[0]), .B(WRITE_BYTE_CNT[3]), .Z(n3534)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/lab_6/temperature.vhd(137[1] 161[10])
    defparam i1429_2_lut.init = 16'h9999;
    LUT4 i5_3_lut_rep_238 (.A(n888), .B(n10_adj_614), .C(n890), .Z(n28234)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i5_3_lut_rep_238.init = 16'hfefe;
    LUT4 i1_2_lut_rep_237_4_lut (.A(n888), .B(n10_adj_614), .C(n890), 
         .D(n20399), .Z(n28233)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_237_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_29 (.A(n28283), .B(n169), .C(n28284), .Z(n175_adj_424)) /* synthesis lut_function=(!(A (B)+!A (B+(C)))) */ ;
    defparam i2_4_lut_adj_29.init = 16'h2323;
    CCU2D add_2190_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n27246), .B1(n27368), .C1(GND_net), .D1(GND_net), .COUT(n24212), 
          .S1(n4702));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam add_2190_1.INIT0 = 16'hF000;
    defparam add_2190_1.INIT1 = 16'heeee;
    defparam add_2190_1.INJECT1_0 = "NO";
    defparam add_2190_1.INJECT1_1 = "NO";
    CCU2D add_1404_add_3_3 (.A0(n23672), .B0(n28609), .C0(temp1_8__N_213[1]), 
          .D0(GND_net), .A1(n23681), .B1(n28589), .C1(temp1_8__N_270[2]), 
          .D1(GND_net), .CIN(n23999), .COUT(n24000), .S0(n3047), .S1(n3046));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_3_3.INIT0 = 16'h9696;
    defparam add_1404_add_3_3.INIT1 = 16'h9696;
    defparam add_1404_add_3_3.INJECT1_0 = "NO";
    defparam add_1404_add_3_3.INJECT1_1 = "NO";
    LUT4 div_273_i376_3_lut_rep_382_4_lut (.A(n28381), .B(n13070), .C(n579), 
         .D(n369), .Z(n28378)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i376_3_lut_rep_382_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_30 (.A(n19_adj_590), .B(n28341), .C(n20_adj_587), 
         .D(n1047), .Z(n13073)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_4_lut_adj_30.init = 16'hfffe;
    LUT4 i8_4_lut_adj_31 (.A(n1059), .B(n1053), .C(n1054), .D(n1051), 
         .Z(n19_adj_590)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i8_4_lut_adj_31.init = 16'hfffe;
    LUT4 i9_4_lut (.A(n1055), .B(n18_adj_591), .C(n1056), .D(n1058), 
         .Z(n20_adj_587)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut_adj_32 (.A(n1057), .B(n1050), .C(n1052), .D(n1049), 
         .Z(n18_adj_591)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i7_4_lut_adj_32.init = 16'hfffe;
    LUT4 div_273_i374_3_lut_4_lut_4_lut (.A(n28382), .B(n28385), .C(n577), 
         .D(n13070), .Z(n595_adj_120)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i374_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i24231_else_4_lut (.A(temp1_8__N_270[5]), .B(n28554), .C(temp1_8__N_270[3]), 
         .D(temp1_8__N_270[6]), .Z(n28615)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!B)) */ ;
    defparam i24231_else_4_lut.init = 16'hff9b;
    LUT4 i17192_2_lut_3_lut_4_lut (.A(n28186), .B(n235_adj_336), .C(n28191), 
         .D(n238_adj_337), .Z(n14_adj_595)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i17192_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 i1_2_lut_rep_384_3_lut_4_lut (.A(n369), .B(n28384), .C(n13070), 
         .D(n28385), .Z(n28380)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_rep_384_3_lut_4_lut.init = 16'hfbf0;
    LUT4 div_273_mux_3_i3_3_lut (.A(n1530), .B(n17), .C(n1179), .Z(n378_adj_112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_33 (.A(n282), .B(n879_adj_279), .C(n28236), 
         .D(n283_adj_214), .Z(n4_adj_675)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_33.init = 16'hffca;
    LUT4 div_273_i331_3_lut_4_lut (.A(n478), .B(n28386), .C(n28388), .D(n477), 
         .Z(n534)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i331_3_lut_4_lut.init = 16'hfe01;
    LUT4 i1_2_lut_rep_240 (.A(n20373), .B(n13124), .Z(n28236)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_240.init = 16'heeee;
    LUT4 div_276_i571_3_lut_4_lut (.A(n20373), .B(n13124), .C(n873_adj_275), 
         .D(n834_adj_267), .Z(n891)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i571_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i569_3_lut_4_lut (.A(n20373), .B(n13124), .C(n871_adj_273), 
         .D(n28240), .Z(n889)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i569_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i572_3_lut_4_lut (.A(n20373), .B(n13124), .C(n874_adj_276), 
         .D(n835_adj_268), .Z(n892)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i572_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i570_3_lut_4_lut (.A(n20373), .B(n13124), .C(n872_adj_274), 
         .D(n833_adj_266), .Z(n890)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i570_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i568_3_lut_4_lut (.A(n20373), .B(n13124), .C(n870_adj_272), 
         .D(n831_adj_265), .Z(n888)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i568_3_lut_4_lut.init = 16'hf1e0;
    CCU2D add_1404_add_3_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp1_8__N_213[0]), .B1(temp2_8__N_286[3]), 
          .C1(TMP[0]), .D1(temp2_8__N_286[1]), .COUT(n23999), .S1(n675));   // d:/lab_6/temperature.vhd(315[10:15])
    defparam add_1404_add_3_1.INIT0 = 16'hF000;
    defparam add_1404_add_3_1.INIT1 = 16'h56a9;
    defparam add_1404_add_3_1.INJECT1_0 = "NO";
    defparam add_1404_add_3_1.INJECT1_1 = "NO";
    LUT4 n396_bdd_4_lut_24279 (.A(n397_adj_371), .B(tens_3__N_323[9]), .C(n10_adj_331), 
         .D(tens_3__N_323[1]), .Z(n27774)) /* synthesis lut_function=(A+(B (C)+!B (D))) */ ;
    defparam n396_bdd_4_lut_24279.init = 16'hfbea;
    LUT4 i2339_2_lut_rep_185_3_lut_4_lut (.A(n28186), .B(n235_adj_336), 
         .C(n28191), .D(n238_adj_337), .Z(n28181)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i2339_2_lut_rep_185_3_lut_4_lut.init = 16'hf1fe;
    LUT4 div_276_i574_3_lut_4_lut (.A(n20373), .B(n13124), .C(n876_adj_277), 
         .D(n837), .Z(n894)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i574_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_34 (.A(n28584), .B(n206_adj_609), .C(STATE[3]), 
         .D(n13_adj_681), .Z(clk_c_enable_51)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_34.init = 16'h2220;
    LUT4 i1_2_lut_adj_35 (.A(STATE[0]), .B(n23), .Z(n13_adj_681)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_35.init = 16'hdddd;
    CCU2D div_276_add_761_17 (.A0(n13120), .B0(n20449), .C0(n1098_adj_313), 
          .D0(n1059_adj_310), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24211), .S0(n1155));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_17.INIT0 = 16'h0e1f;
    defparam div_276_add_761_17.INIT1 = 16'h0000;
    defparam div_276_add_761_17.INJECT1_0 = "NO";
    defparam div_276_add_761_17.INJECT1_1 = "NO";
    LUT4 i28_4_lut (.A(STATE[1]), .B(n28557), .C(STATE[2]), .D(WRITE_LOW_CNT[1]), 
         .Z(n23)) /* synthesis lut_function=(A (C+(D))+!A (B+!(C))) */ ;
    defparam i28_4_lut.init = 16'hefe5;
    LUT4 i166_4_lut (.A(clk_temp), .B(WRITE_HIGH_CNT[1]), .C(n27047), 
         .D(STATE[2]), .Z(n206_adj_609)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;
    defparam i166_4_lut.init = 16'habaa;
    CCU2D div_273_add_485_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n372_adj_110), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24092), .S1(n753_adj_135));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_485_1.INIT0 = 16'hF000;
    defparam div_273_add_485_1.INIT1 = 16'h5555;
    defparam div_273_add_485_1.INJECT1_0 = "NO";
    defparam div_273_add_485_1.INJECT1_1 = "NO";
    LUT4 i23940_4_lut (.A(n919_adj_411), .B(n27320), .C(n27262), .D(n915_adj_608), 
         .Z(n27348)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23940_4_lut.init = 16'hfffe;
    LUT4 i23942_4_lut (.A(n882), .B(n27324), .C(n27117), .D(n878), .Z(n27350)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23942_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut_adj_36 (.A(cnt[3]), .B(n27205), .C(n26795), .D(n6_adj_677), 
         .Z(n33_adj_20)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut_adj_36.init = 16'hfffb;
    LUT4 i23804_3_lut (.A(cnt[1]), .B(cnt[4]), .C(cnt[5]), .Z(n27205)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23804_3_lut.init = 16'h8080;
    LUT4 i23944_4_lut (.A(n1088), .B(n27326), .C(n27274), .D(n1096), 
         .Z(n27352)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23944_4_lut.init = 16'hfffe;
    LUT4 i23946_4_lut (.A(n1049), .B(n27330), .C(n27280), .D(n1057), 
         .Z(n27354)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23946_4_lut.init = 16'hfffe;
    CCU2D mod_271_add_485_9 (.A0(n13091), .B0(n28445), .C0(n648), .D0(n611), 
          .A1(n13091), .B1(n28445), .C1(n647), .D1(n610), .CIN(n24350), 
          .COUT(n24351), .S0(n702), .S1(n701));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_485_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_485_9.INIT1 = 16'h0e1f;
    defparam mod_271_add_485_9.INJECT1_0 = "NO";
    defparam mod_271_add_485_9.INJECT1_1 = "NO";
    LUT4 i23933_4_lut (.A(n978_adj_454), .B(n27300), .C(n26989), .D(n977_adj_455), 
         .Z(n27340)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23933_4_lut.init = 16'hfffe;
    LUT4 i23931_4_lut (.A(n941_adj_465), .B(n27294), .C(n26955), .D(n940_adj_466), 
         .Z(n27338)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23931_4_lut.init = 16'hfffe;
    LUT4 i17715_2_lut_rep_385_3_lut_4_lut_4_lut (.A(n28393), .B(n28414), 
         .C(n28388), .D(n369), .Z(n28381)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C+(D))+!B (C (D))))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17715_2_lut_rep_385_3_lut_4_lut_4_lut.init = 16'h5642;
    LUT4 div_273_i332_3_lut_4_lut (.A(n28392), .B(n28387), .C(n28388), 
         .D(n478), .Z(n535)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i332_3_lut_4_lut.init = 16'hfe01;
    LUT4 div_276_i577_3_lut_rep_239_4_lut (.A(n20373), .B(n13124), .C(n879_adj_279), 
         .D(n282), .Z(n28235)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i577_3_lut_rep_239_4_lut.init = 16'hf1e0;
    LUT4 div_276_i854_3_lut_4_lut (.A(n20373), .B(n13124), .C(n1248), 
         .D(n4696), .Z(ones_3__N_314[6])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i854_3_lut_4_lut.init = 16'hfe0e;
    LUT4 div_276_i575_3_lut_4_lut (.A(n20373), .B(n13124), .C(n877), .D(n838), 
         .Z(n895)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i575_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i573_3_lut_4_lut (.A(n20373), .B(n13124), .C(n875), .D(n836), 
         .Z(n893)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i573_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i576_3_lut_4_lut (.A(n20373), .B(n13124), .C(n878_adj_278), 
         .D(n28239), .Z(n896)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i576_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4_4_lut_adj_37 (.A(cnt[16]), .B(cnt[13]), .C(cnt[15]), .D(n6_adj_672), 
         .Z(n13489)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_37.init = 16'hfffe;
    OB rck_pad (.I(rck_c), .O(rck));   // d:/lab_6/temperature.vhd(14[3:6])
    OB sck_pad (.I(sck_c_1), .O(sck));   // d:/lab_6/temperature.vhd(13[6:9])
    LUT4 i1_2_lut_adj_38 (.A(cnt[12]), .B(cnt[14]), .Z(n6_adj_672)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'heeee;
    BB dq_pad (.I(dq_N_376), .T(n3529), .B(dq), .O(dq_out));   // d:/lab_6/temperature.vhd(101[1] 285[13])
    LUT4 i15338_3_lut (.A(tens_3__N_294[2]), .B(n9), .C(tens_3__N_294[8]), 
         .Z(n242)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(296[10:14])
    defparam i15338_3_lut.init = 16'hcaca;
    LUT4 mux_160_Mux_2_i15_4_lut (.A(STATE[0]), .B(n14_adj_561), .C(STATE[3]), 
         .D(n26850), .Z(STATE_3__N_144[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam mux_160_Mux_2_i15_4_lut.init = 16'hc5c0;
    LUT4 i1_4_lut_adj_39 (.A(n307), .B(n28611), .C(n28591), .D(WRITE_BYTE_CNT[3]), 
         .Z(n26850)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_39.init = 16'h0c88;
    LUT4 i2_4_lut_adj_40 (.A(n28593), .B(n3532), .C(STATE[2]), .D(n7_adj_21), 
         .Z(n14_adj_561)) /* synthesis lut_function=(!((B (C+(D))+!B (C))+!A)) */ ;
    defparam i2_4_lut_adj_40.init = 16'h020a;
    CCU2D mod_271_add_485_7 (.A0(n13091), .B0(n28445), .C0(n650), .D0(n613), 
          .A1(n13091), .B1(n28445), .C1(n649), .D1(n612), .CIN(n24349), 
          .COUT(n24350), .S0(n704), .S1(n703));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_485_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_485_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_485_7.INJECT1_0 = "NO";
    defparam mod_271_add_485_7.INJECT1_1 = "NO";
    CCU2D mod_271_add_485_5 (.A0(n28447), .B0(n13091), .C0(n652), .D0(n615), 
          .A1(n13091), .B1(n28445), .C1(n651), .D1(n614), .CIN(n24348), 
          .COUT(n24349), .S0(n706), .S1(n705));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_485_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_485_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_485_5.INJECT1_0 = "NO";
    defparam mod_271_add_485_5.INJECT1_1 = "NO";
    CCU2D div_273_add_446_9 (.A0(n13061), .B0(n28376), .C0(n631), .D0(n592_adj_118), 
          .A1(n13061), .B1(n28376), .C1(n630), .D1(n591_adj_117), .CIN(n24090), 
          .S0(n688), .S1(n687));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_446_9.INIT0 = 16'h0e1f;
    defparam div_273_add_446_9.INIT1 = 16'h0e1f;
    defparam div_273_add_446_9.INJECT1_0 = "NO";
    defparam div_273_add_446_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_41 (.A(n206_adj_609), .B(n28584), .C(n28639), .D(STATE[3]), 
         .Z(clk_c_enable_14)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i1_4_lut_adj_41.init = 16'h4440;
    LUT4 i3_4_lut_adj_42 (.A(WRITE_BYTE_FLAG[0]), .B(WRITE_BYTE_FLAG[1]), 
         .C(n28581), .D(n28610), .Z(n26896)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_42.init = 16'h8000;
    LUT4 mux_270_i1_4_lut_rep_241 (.A(n13020), .B(zpone_3__N_246[0]), .C(mode), 
         .D(n27221), .Z(n28237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_270_i1_4_lut_rep_241.init = 16'hcfca;
    LUT4 i17544_2_lut_rep_386_3_lut_4_lut (.A(n28391), .B(n28390), .C(n369), 
         .D(n28414), .Z(n28382)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+!(D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17544_2_lut_rep_386_3_lut_4_lut.init = 16'hf2fd;
    LUT4 div_273_i807_3_lut_rep_339_4_lut (.A(n28391), .B(n28390), .C(n1179), 
         .D(n4500), .Z(n28335)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i807_3_lut_rep_339_4_lut.init = 16'hfd0d;
    CCU2D mod_271_add_485_3 (.A0(n13091), .B0(n28445), .C0(n654), .D0(n617), 
          .A1(n13091), .B1(n28445), .C1(n653), .D1(n28451), .CIN(n24347), 
          .COUT(n24348), .S0(n708), .S1(n707));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_485_3.INIT0 = 16'h0e1f;
    defparam mod_271_add_485_3.INIT1 = 16'hf1e0;
    defparam mod_271_add_485_3.INJECT1_0 = "NO";
    defparam mod_271_add_485_3.INJECT1_1 = "NO";
    LUT4 i20904_1_lut_3_lut_4_lut (.A(n28391), .B(n28390), .C(n1179), 
         .D(n4500), .Z(n542_adj_582)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i20904_1_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 i20754_2_lut_rep_242 (.A(n265_adj_387), .B(zpone_3__N_246[0]), 
         .Z(n28238)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i20754_2_lut_rep_242.init = 16'h2222;
    LUT4 n23381_bdd_3_lut_24310_4_lut (.A(n265_adj_387), .B(zpone_3__N_246[0]), 
         .C(zpone_3__N_340[7]), .D(n238_adj_385), .Z(n28026)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam n23381_bdd_3_lut_24310_4_lut.init = 16'hd02f;
    LUT4 i1_2_lut_4_lut_adj_43 (.A(n281), .B(n821_adj_264), .C(n28241), 
         .D(n282), .Z(n4_adj_627)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_43.init = 16'hffca;
    LUT4 i1_2_lut_4_lut_adj_44 (.A(n775_adj_250), .B(n814_adj_257), .C(n28241), 
         .D(n834_adj_267), .Z(n6_adj_630)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_44.init = 16'hffca;
    LUT4 i1_2_lut_rep_245 (.A(n20298), .B(n13127), .Z(n28241)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_245.init = 16'heeee;
    LUT4 mux_160_Mux_1_i10_4_lut (.A(n28585), .B(n13490), .C(STATE[1]), 
         .D(STATE[0]), .Z(n10_adj_269)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam mux_160_Mux_1_i10_4_lut.init = 16'h0530;
    LUT4 i1_4_lut_adj_45 (.A(cnt[11]), .B(n13489), .C(n10_adj_594), .D(cnt[9]), 
         .Z(n13490)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_45.init = 16'heccc;
    LUT4 div_276_i530_3_lut_rep_244_4_lut (.A(n20298), .B(n13127), .C(n814_adj_257), 
         .D(n775_adj_250), .Z(n28240)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i530_3_lut_rep_244_4_lut.init = 16'hf1e0;
    LUT4 div_276_i537_3_lut_rep_243_4_lut (.A(n20298), .B(n13127), .C(n821_adj_264), 
         .D(n281), .Z(n28239)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i537_3_lut_rep_243_4_lut.init = 16'hf1e0;
    LUT4 div_276_i531_3_lut_4_lut (.A(n20298), .B(n13127), .C(n815_adj_258), 
         .D(n776_adj_251), .Z(n833_adj_266)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i531_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4_4_lut_adj_46 (.A(cnt[8]), .B(cnt[7]), .C(n14), .D(cnt[10]), 
         .Z(n10_adj_594)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_46.init = 16'h8000;
    LUT4 i1217_2_lut (.A(cnt[5]), .B(cnt[6]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1217_2_lut.init = 16'heeee;
    LUT4 i20461_2_lut_rep_390_3_lut_4_lut_4_lut (.A(n28394), .B(n28392), 
         .C(n28414), .D(n28393), .Z(n28386)) /* synthesis lut_function=(A (B)+!A (B+(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i20461_2_lut_rep_390_3_lut_4_lut_4_lut.init = 16'hdcdd;
    LUT4 div_276_i534_3_lut_4_lut (.A(n20298), .B(n13127), .C(n818_adj_261), 
         .D(n779_adj_254), .Z(n836)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i534_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5_3_lut_adj_47 (.A(n555), .B(n10_adj_683), .C(n558), .Z(n13087)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i5_3_lut_adj_47.init = 16'hfefe;
    LUT4 i4_4_lut_adj_48 (.A(n554), .B(n556), .C(n559), .D(n557), .Z(n10_adj_683)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i4_4_lut_adj_48.init = 16'hfffe;
    LUT4 i20469_2_lut_rep_387_3_lut_4_lut_4_lut (.A(n28394), .B(n28392), 
         .C(n478), .D(n28389), .Z(n28383)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i20469_2_lut_rep_387_3_lut_4_lut_4_lut.init = 16'hfdfc;
    LUT4 i2_4_lut_adj_49 (.A(n836), .B(n838), .C(n837), .D(n4_adj_627), 
         .Z(n20373)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_49.init = 16'ha080;
    LUT4 div_276_i533_3_lut_4_lut (.A(n20298), .B(n13127), .C(n817_adj_260), 
         .D(n778_adj_253), .Z(n835_adj_268)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i533_3_lut_4_lut.init = 16'hf1e0;
    LUT4 GET_TMP_CNT_0__bdd_4_lut (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[3]), 
         .C(GET_TMP_CNT[2]), .D(GET_TMP_CNT[1]), .Z(n3532)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam GET_TMP_CNT_0__bdd_4_lut.init = 16'hc081;
    LUT4 tens_3__I_19_i212_3_lut_4_lut (.A(n28179), .B(n28173), .C(n28177), 
         .D(n302_adj_344), .Z(n335_adj_348)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i212_3_lut_4_lut.init = 16'hfe01;
    LUT4 tens_3__I_19_i214_3_lut_4_lut (.A(n28174), .B(n13117), .C(n28176), 
         .D(n304_adj_345), .Z(n337_adj_350)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i214_3_lut_4_lut.init = 16'h2fd0;
    CCU2D mod_271_add_485_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n672), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24347), .S1(n709));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_485_1.INIT0 = 16'hF000;
    defparam mod_271_add_485_1.INIT1 = 16'h5555;
    defparam mod_271_add_485_1.INJECT1_0 = "NO";
    defparam mod_271_add_485_1.INJECT1_1 = "NO";
    LUT4 i17368_2_lut_rep_172_3_lut_4_lut (.A(n28174), .B(n13117), .C(n241_adj_338), 
         .D(n28190), .Z(n28168)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+!(D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i17368_2_lut_rep_172_3_lut_4_lut.init = 16'hf2fd;
    LUT4 tens_3__I_19_i213_3_lut_4_lut (.A(n28174), .B(n13117), .C(n28173), 
         .D(n28179), .Z(n336_adj_349)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i213_3_lut_4_lut.init = 16'hf20d;
    LUT4 i23982_4_lut (.A(n28595), .B(n14_adj_423), .C(ser_N_380[3]), 
         .D(ser_N_380[2]), .Z(n27394)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam i23982_4_lut.init = 16'hc5cf;
    LUT4 tens_3__I_19_i239_3_lut_4_lut (.A(n28167), .B(n13116), .C(n362_adj_356), 
         .D(n28169), .Z(n372_adj_362)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i239_3_lut_4_lut.init = 16'he0f1;
    LUT4 div_276_mux_3_i16_3_lut (.A(n1564), .B(n4_adj_186), .C(n1248), 
         .Z(n275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i16_3_lut.init = 16'hcaca;
    LUT4 i23951_4_lut (.A(n1163), .B(n27336), .C(n27169), .D(n1158), 
         .Z(n27360)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23951_4_lut.init = 16'hfffe;
    LUT4 div_273_mux_3_i2_3_lut (.A(n1531), .B(n18_adj_93), .C(n1179), 
         .Z(n190)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i2_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(WRITE_LOW_CNT[1]), .B(n28563), .C(n111), .Z(clk_c_enable_50)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i1_3_lut.init = 16'h8c8c;
    LUT4 i1_2_lut_rep_186_3_lut_4_lut_4_lut (.A(n28187), .B(n238_adj_337), 
         .C(n235_adj_336), .D(n28188), .Z(n28182)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i1_2_lut_rep_186_3_lut_4_lut_4_lut.init = 16'hcdc3;
    LUT4 i23949_4_lut (.A(n1124), .B(n27334), .C(n27159), .D(n1119), 
         .Z(n27358)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23949_4_lut.init = 16'hfffe;
    LUT4 i20612_2_lut_rep_174_3_lut_4_lut (.A(n304_adj_345), .B(n28176), 
         .C(n302_adj_344), .D(n28179), .Z(n28170)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i20612_2_lut_rep_174_3_lut_4_lut.init = 16'hfff8;
    LUT4 div_276_i535_3_lut_4_lut (.A(n20298), .B(n13127), .C(n819_adj_262), 
         .D(n780_adj_255), .Z(n837)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i535_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23899_2_lut_rep_188_3_lut_4_lut (.A(n28187), .B(n238_adj_337), 
         .C(n235_adj_336), .D(n28188), .Z(n28184)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i23899_2_lut_rep_188_3_lut_4_lut.init = 16'hfef0;
    LUT4 i23900_3_lut_2_lut_3_lut_4_lut (.A(n28187), .B(n238_adj_337), .C(n235_adj_336), 
         .D(n28188), .Z(n268_adj_340)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i23900_3_lut_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 tens_3__I_19_i166_3_lut_4_lut_3_lut_4_lut (.A(n28187), .B(n238_adj_337), 
         .C(n235_adj_336), .D(n28188), .Z(n269_adj_341)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i166_3_lut_4_lut_3_lut_4_lut.init = 16'h11e0;
    LUT4 ser_I_0_i44_4_lut (.A(n42), .B(cycledata[46]), .C(ser_N_380[1]), 
         .D(ser_N_380[0]), .Z(n44)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(369[19:37])
    defparam ser_I_0_i44_4_lut.init = 16'hfaca;
    LUT4 tens_3__I_19_i313_3_lut (.A(n378_adj_363), .B(tens_3__N_230[0]), 
         .C(tens_3__N_323[9]), .Z(tens_3__N_230[1])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i313_3_lut.init = 16'h6a6a;
    LUT4 tens_3__I_16_i313_4_lut (.A(n378), .B(n28438), .C(tens_3__N_294[8]), 
         .D(n38), .Z(tens_3__N_229[1])) /* synthesis lut_function=(!(A (C (D))+!A !(B (C)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i313_4_lut.init = 16'h4aea;
    LUT4 tens_3__I_19_i167_3_lut_rep_187_4_lut_4_lut (.A(n28187), .B(n238_adj_337), 
         .C(n28188), .D(n235_adj_336), .Z(n28183)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B+!(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i167_3_lut_rep_187_4_lut_4_lut.init = 16'h6675;
    LUT4 div_276_i529_3_lut_4_lut (.A(n20298), .B(n13127), .C(n813_adj_256), 
         .D(n774_adj_249), .Z(n831_adj_265)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i529_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i853_3_lut_rep_221_4_lut (.A(n20298), .B(n13127), .C(n1248), 
         .D(n4695), .Z(n28217)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i853_3_lut_rep_221_4_lut.init = 16'hfe0e;
    LUT4 tens_3__I_19_i235_3_lut_4_lut (.A(n28167), .B(n13116), .C(n358_adj_352), 
         .D(n335_adj_348), .Z(n368_adj_359)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i235_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i333_3_lut_4_lut_4_lut (.A(n28394), .B(n28392), .C(n28388), 
         .D(n28389), .Z(n536)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C+(D))+!B !(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i333_3_lut_4_lut_4_lut.init = 16'hc6c3;
    LUT4 i20672_2_lut (.A(temp2_8__N_286[1]), .B(temp2[0]), .Z(n23672)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i20672_2_lut.init = 16'h6666;
    LUT4 WRITE_HIGH_CNT_0__bdd_4_lut_24287 (.A(WRITE_HIGH_CNT[0]), .B(WRITE_HIGH_CNT[1]), 
         .C(STATE[1]), .D(STATE[0]), .Z(n27962)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;
    defparam WRITE_HIGH_CNT_0__bdd_4_lut_24287.init = 16'h0f0b;
    LUT4 div_273_i334_4_lut_3_lut (.A(n28394), .B(n28389), .C(n28388), 
         .Z(n537)) /* synthesis lut_function=(!(A ((C)+!B)+!A !((C)+!B))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i334_4_lut_3_lut.init = 16'h5959;
    LUT4 i2_3_lut_rep_394 (.A(n477), .B(n478), .C(n28392), .Z(n28390)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i2_3_lut_rep_394.init = 16'hfefe;
    LUT4 i24104_4_lut (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), .C(GET_TMP_CNT[2]), 
         .D(GET_TMP_CNT[3]), .Z(n26655)) /* synthesis lut_function=(!(A+(B (C (D))))) */ ;
    defparam i24104_4_lut.init = 16'h1555;
    LUT4 div_276_i532_3_lut_4_lut (.A(n20298), .B(n13127), .C(n816_adj_259), 
         .D(n777_adj_252), .Z(n834_adj_267)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i532_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i536_3_lut_4_lut (.A(n20298), .B(n13127), .C(n820_adj_263), 
         .D(n28243), .Z(n838)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i536_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_761_15 (.A0(n13120), .B0(n20449), .C0(n1100_adj_315), 
          .D0(n1061_adj_312), .A1(n13120), .B1(n20449), .C1(n1099_adj_314), 
          .D1(n1060_adj_311), .CIN(n24210), .COUT(n24211), .S0(n1157), 
          .S1(n1156));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_15.INIT0 = 16'h0e1f;
    defparam div_276_add_761_15.INIT1 = 16'h0e1f;
    defparam div_276_add_761_15.INJECT1_0 = "NO";
    defparam div_276_add_761_15.INJECT1_1 = "NO";
    LUT4 ones_3__I_18_i161_4_lut (.A(n202), .B(n203_adj_445), .C(n211), 
         .D(n28206), .Z(n232)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i161_4_lut.init = 16'haaa9;
    LUT4 i2_4_lut_adj_50 (.A(n202), .B(n12_adj_372), .C(n203_adj_445), 
         .D(n28210), .Z(n211)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;
    defparam i2_4_lut_adj_50.init = 16'h0405;
    LUT4 i16837_2_lut_rep_287_3_lut_4_lut_then_4_lut (.A(n28292), .B(zpzone_3__N_333[3]), 
         .C(n28291), .D(zpzone_3__N_333[6]), .Z(n28628)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(333[11:16])
    defparam i16837_2_lut_rep_287_3_lut_4_lut_then_4_lut.init = 16'ha282;
    LUT4 i16741_2_lut_rep_392_4_lut (.A(n477), .B(n478), .C(n28392), .D(n28391), 
         .Z(n28388)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i16741_2_lut_rep_392_4_lut.init = 16'h0100;
    LUT4 zpone_3__I_21_i184_3_lut_4_lut (.A(n28244), .B(n208), .C(n265_adj_387), 
         .D(n260), .Z(n9_adj_605)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i184_3_lut_4_lut.init = 16'hf20d;
    LUT4 i20724_rep_147_3_lut_4_lut (.A(n28244), .B(n208), .C(n260), .D(n259), 
         .Z(n27714)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i20724_rep_147_3_lut_4_lut.init = 16'hffd0;
    CCU2D div_276_add_761_13 (.A0(n13120), .B0(n20449), .C0(n1102), .D0(n1063), 
          .A1(n13120), .B1(n20449), .C1(n1101_adj_316), .D1(n1062), 
          .CIN(n24209), .COUT(n24210), .S0(n1159), .S1(n1158));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_13.INIT0 = 16'h0e1f;
    defparam div_276_add_761_13.INIT1 = 16'h0e1f;
    defparam div_276_add_761_13.INJECT1_0 = "NO";
    defparam div_276_add_761_13.INJECT1_1 = "NO";
    LUT4 i16740_1_lut_3_lut (.A(n477), .B(n478), .C(n28392), .Z(n19751)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i16740_1_lut_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_51 (.A(n829), .B(TMP[0]), .C(n3532), .D(n19561), 
         .Z(n13531)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_51.init = 16'h0ace;
    LUT4 i2_4_lut_adj_52 (.A(n952), .B(n954), .C(n953), .D(n4_adj_639), 
         .Z(n20407)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_52.init = 16'ha080;
    LUT4 i6_4_lut_adj_53 (.A(n949), .B(n12_adj_625), .C(n950), .D(n946), 
         .Z(n13122)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i6_4_lut_adj_53.init = 16'hfffe;
    LUT4 i5_4_lut_adj_54 (.A(n951), .B(n947), .C(n948), .D(n945), .Z(n12_adj_625)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i5_4_lut_adj_54.init = 16'hfffe;
    LUT4 i2_4_lut_adj_55 (.A(n894), .B(n896), .C(n895), .D(n4_adj_675), 
         .Z(n20399)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_55.init = 16'ha080;
    LUT4 i4_4_lut_adj_56 (.A(n891), .B(n892), .C(n893), .D(n889), .Z(n10_adj_614)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i4_4_lut_adj_56.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_57 (.A(n280), .B(n763_adj_248), .C(n28245), 
         .D(n281), .Z(n4_adj_671)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_57.init = 16'hffca;
    LUT4 i1_2_lut_rep_388_3_lut_4_lut (.A(n28414), .B(n28394), .C(n28393), 
         .D(n28390), .Z(n28384)) /* synthesis lut_function=(A ((D)+!B)+!A !(B (D)+!B ((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_rep_388_3_lut_4_lut.init = 16'haa76;
    LUT4 i20709_2_lut_rep_246_3_lut (.A(n28264), .B(n238_adj_385), .C(n208), 
         .Z(n28242)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;
    defparam i20709_2_lut_rep_246_3_lut.init = 16'hf9f9;
    LUT4 i17232_3_lut_4_lut (.A(n28264), .B(n238_adj_385), .C(n260), .D(n208), 
         .Z(n10_adj_604)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C)))) */ ;
    defparam i17232_3_lut_4_lut.init = 16'h0f6f;
    LUT4 div_273_i335_3_lut_rep_389_4_lut_4_lut (.A(n28414), .B(n28394), 
         .C(n28393), .D(n28390), .Z(n28385)) /* synthesis lut_function=(!(A (C)+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i335_3_lut_rep_389_4_lut_4_lut.init = 16'h5a0e;
    LUT4 i1_2_lut_4_lut_adj_58 (.A(n26981), .B(n28397), .C(n28398), .D(n477), 
         .Z(n4_adj_221)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_4_lut_adj_58.init = 16'hff65;
    LUT4 div_276_i490_3_lut_4_lut (.A(n20643), .B(n28248), .C(n756_adj_241), 
         .D(n28252), .Z(n774_adj_249)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i490_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_262_add_2_9 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23997), 
          .S0(tens_3__N_294[7]), .S1(tens_3__N_294[8]));   // d:/lab_6/temperature.vhd(319[10:15])
    defparam sub_262_add_2_9.INIT0 = 16'hffff;
    defparam sub_262_add_2_9.INIT1 = 16'hffff;
    defparam sub_262_add_2_9.INJECT1_0 = "NO";
    defparam sub_262_add_2_9.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_59 (.A(n1010), .B(n1012), .C(n1011), .D(n4_adj_640), 
         .Z(n20423)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_59.init = 16'ha080;
    LUT4 i7_4_lut_adj_60 (.A(n1009), .B(n14_adj_623), .C(n10_adj_626), 
         .D(n1005), .Z(n13121)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i7_4_lut_adj_60.init = 16'hfffe;
    LUT4 i6_4_lut_adj_61 (.A(n1007), .B(n1004), .C(n1006), .D(n1008), 
         .Z(n14_adj_623)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i6_4_lut_adj_61.init = 16'hfffe;
    LUT4 div_276_mux_3_i6_3_lut (.A(n1574), .B(n14_adj_196), .C(n1248), 
         .Z(n285_adj_216)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i6_3_lut.init = 16'hcaca;
    LUT4 div_276_i494_3_lut_4_lut (.A(n20643), .B(n28248), .C(n760_adj_245), 
         .D(n721_adj_239), .Z(n778_adj_253)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i494_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17040_3_lut_rep_395_4_lut (.A(n367_adj_107), .B(n28397), .C(n28394), 
         .D(n28414), .Z(n28391)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;
    defparam i17040_3_lut_rep_395_4_lut.init = 16'hf0f6;
    LUT4 div_276_i852_3_lut_4_lut (.A(n20643), .B(n28248), .C(n1248), 
         .D(n4694), .Z(ones_3__N_314[8])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i852_3_lut_4_lut.init = 16'hfe0e;
    LUT4 div_276_i491_3_lut_4_lut (.A(n20643), .B(n28248), .C(n757_adj_242), 
         .D(n718_adj_237), .Z(n775_adj_250)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i491_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i493_3_lut_4_lut (.A(n20643), .B(n28248), .C(n759_adj_244), 
         .D(n720_adj_238), .Z(n777_adj_252)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i493_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i495_3_lut_4_lut (.A(n20643), .B(n28248), .C(n761_adj_246), 
         .D(n722_adj_240), .Z(n779_adj_254)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i495_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i8_4_lut_adj_62 (.A(n15_adj_610), .B(n1063), .C(n14_adj_611), 
         .D(n1067), .Z(n13120)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i8_4_lut_adj_62.init = 16'hfffe;
    LUT4 i6_4_lut_adj_63 (.A(n1062), .B(n1066), .C(n1061_adj_312), .D(n1065), 
         .Z(n15_adj_610)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i6_4_lut_adj_63.init = 16'hfffe;
    LUT4 i5_3_lut_adj_64 (.A(n1059_adj_310), .B(n1060_adj_311), .C(n1064), 
         .Z(n14_adj_611)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i5_3_lut_adj_64.init = 16'hfefe;
    LUT4 i2_4_lut_adj_65 (.A(n1068), .B(n1070), .C(n1069), .D(n4_adj_657), 
         .Z(n20449)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_65.init = 16'ha080;
    LUT4 div_276_mux_3_i5_3_lut (.A(n1575), .B(n15_adj_197), .C(n1248), 
         .Z(n286_adj_217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i5_3_lut.init = 16'hcaca;
    LUT4 i145_4_lut (.A(tmp_bit), .B(TMP[0]), .C(n28607), .D(n28605), 
         .Z(n829)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i145_4_lut.init = 16'hccca;
    LUT4 n27778_bdd_2_lut_3_lut (.A(n27777), .B(n28164), .C(n370_adj_360), 
         .Z(n27779)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam n27778_bdd_2_lut_3_lut.init = 16'hf8f8;
    LUT4 div_276_i497_3_lut_rep_247_4_lut (.A(n20643), .B(n28248), .C(n763_adj_248), 
         .D(n280), .Z(n28243)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i497_3_lut_rep_247_4_lut.init = 16'hf1e0;
    LUT4 i16837_2_lut_rep_287_3_lut_4_lut_else_4_lut (.A(n28292), .B(zpzone_3__N_333[3]), 
         .C(n28291), .D(zpzone_3__N_333[6]), .Z(n28627)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C+!(D)))+!A)) */ ;   // d:/lab_6/temperature.vhd(333[11:16])
    defparam i16837_2_lut_rep_287_3_lut_4_lut_else_4_lut.init = 16'h28a2;
    LUT4 i23984_4_lut (.A(n20743), .B(n45), .C(ser_N_380[3]), .D(ser_N_380[1]), 
         .Z(n27396)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C))) */ ;
    defparam i23984_4_lut.init = 16'hc5cf;
    LUT4 div_276_i492_3_lut_4_lut (.A(n20643), .B(n28248), .C(n758_adj_243), 
         .D(n28253), .Z(n776_adj_251)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i492_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i496_3_lut_4_lut (.A(n20643), .B(n28248), .C(n762_adj_247), 
         .D(n28251), .Z(n780_adj_255)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i496_3_lut_4_lut.init = 16'hf1e0;
    LUT4 zpone_3__I_21_i163_3_lut_4_lut (.A(n28250), .B(n28247), .C(n238_adj_385), 
         .D(n231), .Z(n258)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i163_3_lut_4_lut.init = 16'hf807;
    LUT4 zpone_3__I_21_i164_3_lut_4_lut (.A(n28249), .B(n28264), .C(n238_adj_385), 
         .D(n28250), .Z(n259)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i164_3_lut_4_lut.init = 16'hf20d;
    FD1P3IX STATE__i0 (.D(STATE_3__N_144[0]), .SP(clk_c_enable_51), .CD(n3092), 
            .CK(clk_c), .Q(STATE[0])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam STATE__i0.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_66 (.A(n28562), .B(STATE[2]), .C(WRITE_HIGH_CNT[1]), 
         .D(n24785), .Z(clk_c_enable_45)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_66.init = 16'h4044;
    CCU2D mod_271_add_522_13 (.A0(n13092), .B0(n28437), .C0(n699), .D0(n662), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24346), 
          .S0(n753));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_522_13.INIT0 = 16'h0e1f;
    defparam mod_271_add_522_13.INIT1 = 16'h0000;
    defparam mod_271_add_522_13.INJECT1_0 = "NO";
    defparam mod_271_add_522_13.INJECT1_1 = "NO";
    LUT4 n27962_bdd_2_lut (.A(n27962), .B(STATE[3]), .Z(n27963)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n27962_bdd_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_adj_67 (.A(STATE[2]), .B(WRITE_HIGH_CNT[1]), .Z(n26870)) /* synthesis lut_function=(A (B)) */ ;   // d:/lab_6/temperature.vhd(104[1] 283[8])
    defparam i1_2_lut_adj_67.init = 16'h8888;
    LUT4 i2_4_lut_adj_68 (.A(cnt[3]), .B(n28555), .C(n13557), .D(n28612), 
         .Z(n24785)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lab_6/temperature.vhd(197[12:18])
    defparam i2_4_lut_adj_68.init = 16'hfffd;
    CCU2D mod_271_add_522_11 (.A0(n13092), .B0(n28437), .C0(n701), .D0(n664), 
          .A1(n13092), .B1(n28437), .C1(n700), .D1(n28441), .CIN(n24345), 
          .COUT(n24346), .S0(n755), .S1(n754));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_522_11.INIT0 = 16'h0e1f;
    defparam mod_271_add_522_11.INIT1 = 16'h0e1f;
    defparam mod_271_add_522_11.INJECT1_0 = "NO";
    defparam mod_271_add_522_11.INJECT1_1 = "NO";
    LUT4 i10533_2_lut (.A(cnt[6]), .B(WRITE_HIGH_CNT[0]), .Z(n13557)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i10533_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_249_4_lut (.A(n28252), .B(n718_adj_237), .C(n28253), 
         .D(n20643), .Z(n28245)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_249_4_lut.init = 16'hfffe;
    LUT4 n5_bdd_4_lut_24285 (.A(n28583), .B(STATE[3]), .C(STATE[1]), .D(STATE[0]), 
         .Z(n27964)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;
    defparam n5_bdd_4_lut_24285.init = 16'h10c3;
    CCU2D div_273_add_446_7 (.A0(n13061), .B0(n28376), .C0(n633), .D0(n28379), 
          .A1(n13061), .B1(n28376), .C1(n632), .D1(n593_adj_119), .CIN(n24089), 
          .COUT(n24090), .S0(n690), .S1(n689));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_446_7.INIT0 = 16'h0e1f;
    defparam div_273_add_446_7.INIT1 = 16'h0e1f;
    defparam div_273_add_446_7.INJECT1_0 = "NO";
    defparam div_273_add_446_7.INJECT1_1 = "NO";
    LUT4 i20451_2_lut_rep_391_3_lut_3_lut_4_lut (.A(n367_adj_107), .B(n28397), 
         .C(n28414), .D(n28394), .Z(n28387)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B ((D)+!C)+!B (D)))) */ ;
    defparam i20451_2_lut_rep_391_3_lut_3_lut_4_lut.init = 16'h00f9;
    CCU2D div_276_add_761_11 (.A0(n13120), .B0(n20449), .C0(n1104), .D0(n1065), 
          .A1(n13120), .B1(n20449), .C1(n1103), .D1(n1064), .CIN(n24208), 
          .COUT(n24209), .S0(n1161), .S1(n1160));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_11.INIT0 = 16'h0e1f;
    defparam div_276_add_761_11.INIT1 = 16'h0e1f;
    defparam div_276_add_761_11.INJECT1_0 = "NO";
    defparam div_276_add_761_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_69 (.A(cnt[2]), .B(cnt[3]), .C(cnt[1]), .Z(n26906)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_69.init = 16'h8080;
    LUT4 i1_4_lut_adj_70 (.A(n20785), .B(n28579), .C(cnt[9]), .D(cnt[8]), 
         .Z(n20809)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(116[21:28])
    defparam i1_4_lut_adj_70.init = 16'hfcec;
    LUT4 i17763_3_lut (.A(n26906), .B(n20515), .C(cnt[4]), .Z(n20785)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i17763_3_lut.init = 16'hc8c8;
    CCU2D mod_271_add_522_9 (.A0(n13092), .B0(n28437), .C0(n703), .D0(n666), 
          .A1(n13092), .B1(n28437), .C1(n702), .D1(n665), .CIN(n24344), 
          .COUT(n24345), .S0(n757), .S1(n756));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_522_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_522_9.INIT1 = 16'h0e1f;
    defparam mod_271_add_522_9.INJECT1_0 = "NO";
    defparam mod_271_add_522_9.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_71 (.A(cnt[7]), .B(cnt[5]), .C(cnt[6]), .Z(n20515)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_71.init = 16'h8080;
    CCU2D mod_271_add_522_7 (.A0(n13092), .B0(n28437), .C0(n705), .D0(n668), 
          .A1(n13092), .B1(n28437), .C1(n704), .D1(n667), .CIN(n24343), 
          .COUT(n24344), .S0(n759), .S1(n758));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_522_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_522_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_522_7.INJECT1_0 = "NO";
    defparam mod_271_add_522_7.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_72 (.A(cnt[2]), .B(n28588), .C(cnt[3]), .Z(n20703)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_adj_72.init = 16'hc8c8;
    LUT4 i1_4_lut_adj_73 (.A(n819), .B(temp1_8__N_270[6]), .C(n3532), 
         .D(n19561), .Z(n13543)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_73.init = 16'h0ace;
    LUT4 i135_4_lut (.A(tmp_bit), .B(temp1_8__N_270[6]), .C(n28606), .D(n6_adj_23), 
         .Z(n819)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i135_4_lut.init = 16'hccac;
    LUT4 n27775_bdd_2_lut_3_lut (.A(n27774), .B(n396_adj_370), .C(n393_adj_367), 
         .Z(n27776)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam n27775_bdd_2_lut_3_lut.init = 16'hf8f8;
    LUT4 equal_558_i6_2_lut (.A(GET_TMP_CNT[2]), .B(GET_TMP_CNT[3]), .Z(n6_adj_23)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam equal_558_i6_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_74 (.A(n820), .B(temp1_8__N_270[5]), .C(n3532), 
         .D(n19561), .Z(n13525)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_74.init = 16'h0ace;
    LUT4 i136_4_lut (.A(tmp_bit), .B(temp1_8__N_270[5]), .C(n5_adj_25), 
         .D(n6_adj_23), .Z(n820)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i136_4_lut.init = 16'hccca;
    LUT4 equal_560_i5_2_lut (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), .Z(n5_adj_25)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam equal_560_i5_2_lut.init = 16'hbbbb;
    LUT4 i20446_2_lut_rep_393_3_lut_4_lut (.A(n32_adj_446), .B(n28396), 
         .C(n28414), .D(n367_adj_107), .Z(n28389)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+!(D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i20446_2_lut_rep_393_3_lut_4_lut.init = 16'hf2fd;
    LUT4 n23301_bdd_4_lut (.A(n28436), .B(n28458), .C(n28486), .D(tens_3__N_294[8]), 
         .Z(n27994)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam n23301_bdd_4_lut.init = 16'he10f;
    CCU2D mod_271_add_522_5 (.A0(n28439), .B0(n13092), .C0(n707), .D0(n670), 
          .A1(n13092), .B1(n28437), .C1(n706), .D1(n669), .CIN(n24342), 
          .COUT(n24343), .S0(n761), .S1(n760));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_522_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_522_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_522_5.INJECT1_0 = "NO";
    defparam mod_271_add_522_5.INJECT1_1 = "NO";
    CCU2D div_276_add_761_9 (.A0(n13120), .B0(n20449), .C0(n1106), .D0(n1067), 
          .A1(n13120), .B1(n20449), .C1(n1105), .D1(n1066), .CIN(n24207), 
          .COUT(n24208), .S0(n1163), .S1(n1162));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_9.INIT0 = 16'h0e1f;
    defparam div_276_add_761_9.INIT1 = 16'h0e1f;
    defparam div_276_add_761_9.INJECT1_0 = "NO";
    defparam div_276_add_761_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_75 (.A(n821), .B(temp1_8__N_270[4]), .C(n3532), 
         .D(n19561), .Z(n13519)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_75.init = 16'h0ace;
    LUT4 i137_4_lut (.A(tmp_bit), .B(temp1_8__N_270[4]), .C(n28607), .D(n6_adj_23), 
         .Z(n821)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i137_4_lut.init = 16'hccca;
    LUT4 zpone_3__I_21_i165_3_lut_4_lut (.A(n206), .B(n28254), .C(n238_adj_385), 
         .D(n28264), .Z(n260)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam zpone_3__I_21_i165_3_lut_4_lut.init = 16'h6669;
    LUT4 div_273_i294_3_lut_rep_396_4_lut (.A(n32_adj_446), .B(n28396), 
         .C(n28398), .D(n26981), .Z(n28392)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i294_3_lut_rep_396_4_lut.init = 16'hd02f;
    LUT4 i2484_2_lut_rep_250_3_lut_4_lut_4_lut (.A(n28258), .B(n206), .C(n28254), 
         .D(n28264), .Z(n28246)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B+!(C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i2484_2_lut_rep_250_3_lut_4_lut_4_lut.init = 16'h9a18;
    CCU2D div_273_add_446_5 (.A0(n28377), .B0(n13061), .C0(n635), .D0(n596_adj_121), 
          .A1(n13061), .B1(n28376), .C1(n634), .D1(n595_adj_120), .CIN(n24088), 
          .COUT(n24089), .S0(n692), .S1(n691));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_446_5.INIT0 = 16'h0e3f;
    defparam div_273_add_446_5.INIT1 = 16'h0e1f;
    defparam div_273_add_446_5.INJECT1_0 = "NO";
    defparam div_273_add_446_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_76 (.A(n822), .B(temp1_8__N_270[3]), .C(n3532), 
         .D(n19561), .Z(n13534)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_76.init = 16'h0ace;
    CCU2D div_273_add_446_3 (.A0(n13061), .B0(n28376), .C0(n637), .D0(n370_adj_108), 
          .A1(n13061), .B1(n28376), .C1(n636), .D1(n28378), .CIN(n24087), 
          .COUT(n24088), .S0(n694), .S1(n693));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_446_3.INIT0 = 16'h0e1f;
    defparam div_273_add_446_3.INIT1 = 16'hf1e0;
    defparam div_273_add_446_3.INJECT1_0 = "NO";
    defparam div_273_add_446_3.INJECT1_1 = "NO";
    LUT4 n23301_bdd_4_lut_24293 (.A(n28162), .B(n28166), .C(n28177), .D(tens_3__N_323[9]), 
         .Z(n27993)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam n23301_bdd_4_lut_24293.init = 16'he10f;
    LUT4 div_273_i806_3_lut_rep_338_4_lut (.A(n32_adj_446), .B(n28396), 
         .C(n1179), .D(n4499), .Z(n28334)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i806_3_lut_rep_338_4_lut.init = 16'hfd0d;
    LUT4 div_276_i457_3_lut_rep_255 (.A(n279), .B(n705_adj_236), .C(n28255), 
         .Z(n28251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i457_3_lut_rep_255.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_77 (.A(n279), .B(n705_adj_236), .C(n28255), 
         .D(n280), .Z(n4_adj_114)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_77.init = 16'hffca;
    LUT4 i138_4_lut (.A(tmp_bit), .B(temp1_8__N_270[3]), .C(n28594), .D(n6_adj_23), 
         .Z(n822)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i138_4_lut.init = 16'hccca;
    LUT4 i2_3_lut_rep_252_4_lut (.A(n28255), .B(n699_adj_230), .C(n28253), 
         .D(n718_adj_237), .Z(n28248)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i2_3_lut_rep_252_4_lut.init = 16'hfff8;
    CCU2D div_273_add_446_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n371_adj_109), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24087), .S1(n695));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_446_1.INIT0 = 16'hF000;
    defparam div_273_add_446_1.INIT1 = 16'h5555;
    defparam div_273_add_446_1.INJECT1_0 = "NO";
    defparam div_273_add_446_1.INJECT1_1 = "NO";
    LUT4 div_276_i453_3_lut_rep_257 (.A(n662_adj_228), .B(n701_adj_232), 
         .C(n28255), .Z(n28253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i453_3_lut_rep_257.init = 16'hcaca;
    CCU2D div_273_add_407_9 (.A0(n13070), .B0(n28381), .C0(n573), .D0(n534), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24086), 
          .S0(n630));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_407_9.INIT0 = 16'h0e1f;
    defparam div_273_add_407_9.INIT1 = 16'h0000;
    defparam div_273_add_407_9.INJECT1_0 = "NO";
    defparam div_273_add_407_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_78 (.A(n823), .B(temp1_8__N_270[2]), .C(n3532), 
         .D(n19561), .Z(n13537)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_78.init = 16'h0ace;
    LUT4 i139_4_lut (.A(tmp_bit), .B(temp1_8__N_270[2]), .C(n28606), .D(n6_adj_19), 
         .Z(n823)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i139_4_lut.init = 16'hccac;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n662_adj_228), .B(n701_adj_232), .C(n28255), 
         .D(n699_adj_230), .Z(n4_adj_416)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfaca;
    LUT4 equal_562_i6_2_lut (.A(GET_TMP_CNT[2]), .B(GET_TMP_CNT[3]), .Z(n6_adj_19)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam equal_562_i6_2_lut.init = 16'hdddd;
    LUT4 i2269_2_lut_rep_190_4_lut_4_lut_4_lut (.A(n161), .B(n28189), .C(n120_adj_334), 
         .D(n238_adj_337), .Z(n28186)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))) */ ;
    defparam i2269_2_lut_rep_190_4_lut_4_lut_4_lut.init = 16'ha220;
    CCU2D sub_262_add_2_7 (.A0(temp1_8__N_270[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp1_8__N_270[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n23996), .COUT(n23997), .S0(tens_3__N_294[5]), 
          .S1(tens_3__N_294[6]));   // d:/lab_6/temperature.vhd(319[10:15])
    defparam sub_262_add_2_7.INIT0 = 16'h5555;
    defparam sub_262_add_2_7.INIT1 = 16'h5555;
    defparam sub_262_add_2_7.INJECT1_0 = "NO";
    defparam sub_262_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_262_add_2_5 (.A0(temp1_8__N_270[3]), .B0(ones_3__N_237[3]), 
          .C0(GND_net), .D0(GND_net), .A1(temp1_8__N_270[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n23995), .COUT(n23996), .S0(tens_3__N_294[3]), 
          .S1(tens_3__N_294[4]));   // d:/lab_6/temperature.vhd(319[10:15])
    defparam sub_262_add_2_5.INIT0 = 16'h5999;
    defparam sub_262_add_2_5.INIT1 = 16'h5555;
    defparam sub_262_add_2_5.INJECT1_0 = "NO";
    defparam sub_262_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_79 (.A(n824), .B(temp1_8__N_213[1]), .C(n3532), 
         .D(n19561), .Z(n13513)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_79.init = 16'h0ace;
    LUT4 i1_4_lut_adj_80 (.A(n1179), .B(n28_adj_571), .C(n4497), .D(n28333), 
         .Z(n502)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_4_lut_adj_80.init = 16'h82a0;
    LUT4 i2480_2_lut_rep_251_3_lut_4_lut (.A(n28257), .B(n203), .C(n28264), 
         .D(n206), .Z(n28247)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i2480_2_lut_rep_251_3_lut_4_lut.init = 16'hf1fe;
    CCU2D mod_271_add_522_3 (.A0(n13092), .B0(n28437), .C0(n709), .D0(n672), 
          .A1(n13092), .B1(n28437), .C1(n708), .D1(n28440), .CIN(n24341), 
          .COUT(n24342), .S0(n763), .S1(n762));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_522_3.INIT0 = 16'h0e1f;
    defparam mod_271_add_522_3.INIT1 = 16'hf1e0;
    defparam mod_271_add_522_3.INJECT1_0 = "NO";
    defparam mod_271_add_522_3.INJECT1_1 = "NO";
    LUT4 i140_4_lut (.A(tmp_bit), .B(temp1_8__N_213[1]), .C(n5_adj_25), 
         .D(n6_adj_19), .Z(n824)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i140_4_lut.init = 16'hccca;
    CCU2D div_276_add_761_7 (.A0(n13120), .B0(n20449), .C0(n1108), .D0(n1069), 
          .A1(n13120), .B1(n20449), .C1(n1107), .D1(n1068), .CIN(n24206), 
          .COUT(n24207), .S0(n1165), .S1(n1164));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_7.INIT0 = 16'hf1e0;
    defparam div_276_add_761_7.INIT1 = 16'h0e1f;
    defparam div_276_add_761_7.INJECT1_0 = "NO";
    defparam div_276_add_761_7.INJECT1_1 = "NO";
    LUT4 cycledata_46__N_70_2__bdd_4_lut_24300 (.A(n28193), .B(ser_N_380[0]), 
         .C(cycledata_46__N_70[1]), .D(n28218), .Z(n27401)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam cycledata_46__N_70_2__bdd_4_lut_24300.init = 16'hf67d;
    CCU2D sub_262_add_2_3 (.A0(temp1_8__N_213[1]), .B0(n28542), .C0(GND_net), 
          .D0(GND_net), .A1(temp1_8__N_270[2]), .B1(ones_3__N_237[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n23994), .COUT(n23995), .S0(tens_3__N_294[1]), 
          .S1(tens_3__N_294[2]));   // d:/lab_6/temperature.vhd(319[10:15])
    defparam sub_262_add_2_3.INIT0 = 16'h6333;
    defparam sub_262_add_2_3.INIT1 = 16'h5999;
    defparam sub_262_add_2_3.INJECT1_0 = "NO";
    defparam sub_262_add_2_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_81 (.A(n825), .B(temp1_8__N_213[0]), .C(n3532), 
         .D(n19561), .Z(n13516)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_81.init = 16'h0ace;
    CCU2D sub_262_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(temp1_8__N_213[0]), .B1(n11_adj_22), .C1(GND_net), .D1(GND_net), 
          .COUT(n23994));   // d:/lab_6/temperature.vhd(319[10:15])
    defparam sub_262_add_2_1.INIT0 = 16'h0000;
    defparam sub_262_add_2_1.INIT1 = 16'h5666;
    defparam sub_262_add_2_1.INJECT1_0 = "NO";
    defparam sub_262_add_2_1.INJECT1_1 = "NO";
    LUT4 cycledata_46__N_70_2__bdd_4_lut (.A(n28193), .B(ser_N_380[0]), 
         .C(cycledata_46__N_70[1]), .D(n28218), .Z(n27402)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam cycledata_46__N_70_2__bdd_4_lut.init = 16'h7be7;
    CCU2D add_502_9 (.A0(n3479), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3478), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23992), 
          .S0(n174), .S1(n173));   // d:/lab_6/temperature.vhd(316[10:18])
    defparam add_502_9.INIT0 = 16'h5aaa;
    defparam add_502_9.INIT1 = 16'h5aaa;
    defparam add_502_9.INJECT1_0 = "NO";
    defparam add_502_9.INJECT1_1 = "NO";
    LUT4 i10200_1_lut_2_lut_3_lut_4_lut (.A(n28403), .B(n28402), .C(n367_adj_107), 
         .D(n32_adj_446), .Z(n481)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C (D)+!C !(D))))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i10200_1_lut_2_lut_3_lut_4_lut.init = 16'h1e0f;
    CCU2D div_273_add_407_7 (.A0(n13070), .B0(n28381), .C0(n575), .D0(n536), 
          .A1(n13070), .B1(n28381), .C1(n574), .D1(n535), .CIN(n24085), 
          .COUT(n24086), .S0(n632), .S1(n631));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_407_7.INIT0 = 16'h0e1f;
    defparam div_273_add_407_7.INIT1 = 16'h0e1f;
    defparam div_273_add_407_7.INJECT1_0 = "NO";
    defparam div_273_add_407_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_397_3_lut_4_lut (.A(n28403), .B(n28402), .C(n367_adj_107), 
         .D(n32_adj_446), .Z(n28393)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_rep_397_3_lut_4_lut.init = 16'he1f0;
    LUT4 cycledata_31__N_74_2__bdd_4_lut (.A(cycledata_31__N_74[2]), .B(ser_N_380[0]), 
         .C(cycledata_31__N_74[1]), .D(n28237), .Z(n27407)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam cycledata_31__N_74_2__bdd_4_lut.init = 16'hf67d;
    CCU2D add_502_7 (.A0(n3481), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3480), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23991), 
          .COUT(n23992), .S0(n287_adj_288), .S1(n175));   // d:/lab_6/temperature.vhd(316[10:18])
    defparam add_502_7.INIT0 = 16'h5555;
    defparam add_502_7.INIT1 = 16'h5555;
    defparam add_502_7.INJECT1_0 = "NO";
    defparam add_502_7.INJECT1_1 = "NO";
    CCU2D add_502_5 (.A0(n3483), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3482), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23990), 
          .COUT(n23991), .S0(n397_adj_209), .S1(n342));   // d:/lab_6/temperature.vhd(316[10:18])
    defparam add_502_5.INIT0 = 16'h5555;
    defparam add_502_5.INIT1 = 16'h5555;
    defparam add_502_5.INJECT1_0 = "NO";
    defparam add_502_5.INJECT1_1 = "NO";
    LUT4 i141_4_lut (.A(tmp_bit), .B(temp1_8__N_213[0]), .C(n28607), .D(n6_adj_19), 
         .Z(n825)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i141_4_lut.init = 16'hccca;
    LUT4 i17642_2_lut_rep_171_3_lut_4_lut_4_lut (.A(n28178), .B(n28190), 
         .C(n28177), .D(n241_adj_338), .Z(n28167)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !(B+(C))) */ ;
    defparam i17642_2_lut_rep_171_3_lut_4_lut_4_lut.init = 16'ha981;
    LUT4 div_273_i293_3_lut_4_lut_4_lut (.A(n28403), .B(n28402), .C(n32_adj_113), 
         .D(n32_adj_446), .Z(n478)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i293_3_lut_4_lut_4_lut.init = 16'ha4a5;
    LUT4 i17784_4_lut (.A(STATE[0]), .B(n20703), .C(n28575), .D(n26906), 
         .Z(n1_adj_390)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C)))) */ ;
    defparam i17784_4_lut.init = 16'h0105;
    LUT4 i1_4_lut_adj_82 (.A(n826), .B(temp2_8__N_286[3]), .C(n3532), 
         .D(n19561), .Z(n13540)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_82.init = 16'h0ace;
    LUT4 i142_4_lut (.A(tmp_bit), .B(temp2_8__N_286[3]), .C(n28594), .D(n6_adj_19), 
         .Z(n826)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i142_4_lut.init = 16'hccca;
    LUT4 cycledata_31__N_74_2__bdd_4_lut_24304 (.A(cycledata_31__N_74[2]), 
         .B(ser_N_380[0]), .C(cycledata_31__N_74[1]), .D(n28237), .Z(n27408)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam cycledata_31__N_74_2__bdd_4_lut_24304.init = 16'h7be7;
    LUT4 n23381_bdd_4_lut_24305 (.A(n28238), .B(n238_adj_385), .C(n28254), 
         .D(zpone_3__N_340[7]), .Z(n28019)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;
    defparam n23381_bdd_4_lut_24305.init = 16'h87f0;
    LUT4 i1_4_lut_adj_83 (.A(n827), .B(temp2[0]), .C(n3532), .D(n19561), 
         .Z(n13522)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_83.init = 16'h0ace;
    LUT4 i143_4_lut (.A(tmp_bit), .B(temp2[0]), .C(n28606), .D(n28605), 
         .Z(n827)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i143_4_lut.init = 16'hccac;
    LUT4 i1_4_lut_adj_84 (.A(n828), .B(temp2_8__N_286[1]), .C(n3532), 
         .D(n19561), .Z(n13528)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // d:/lab_6/temperature.vhd(259[2] 270[11])
    defparam i1_4_lut_adj_84.init = 16'h0ace;
    LUT4 i144_4_lut (.A(tmp_bit), .B(temp2_8__N_286[1]), .C(n5_adj_25), 
         .D(n28605), .Z(n828)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i144_4_lut.init = 16'hccca;
    CCU2D add_502_3 (.A0(n3485), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3484), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23989), 
          .COUT(n23990), .S0(n507), .S1(n452));   // d:/lab_6/temperature.vhd(316[10:18])
    defparam add_502_3.INIT0 = 16'h5aaa;
    defparam add_502_3.INIT1 = 16'h5555;
    defparam add_502_3.INJECT1_0 = "NO";
    defparam add_502_3.INJECT1_1 = "NO";
    CCU2D add_502_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3486), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n23989), 
          .S1(n562));   // d:/lab_6/temperature.vhd(316[10:18])
    defparam add_502_1.INIT0 = 16'hF000;
    defparam add_502_1.INIT1 = 16'h5555;
    defparam add_502_1.INJECT1_0 = "NO";
    defparam add_502_1.INJECT1_1 = "NO";
    CCU2D sub_265_add_2_9 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23987), 
          .S0(zpone_3__N_304[7]), .S1(zpone_3__N_304[8]));   // d:/lab_6/temperature.vhd(321[11:16])
    defparam sub_265_add_2_9.INIT0 = 16'hffff;
    defparam sub_265_add_2_9.INIT1 = 16'hffff;
    defparam sub_265_add_2_9.INJECT1_0 = "NO";
    defparam sub_265_add_2_9.INJECT1_1 = "NO";
    LUT4 n23381_bdd_4_lut (.A(n28432), .B(n28446), .C(n28471), .D(zpone_3__N_304[8]), 
         .Z(n28020)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C))) */ ;
    defparam n23381_bdd_4_lut.init = 16'he10f;
    LUT4 i10727_2_lut (.A(READ_BIT_CNT[0]), .B(READ_BIT_CNT[1]), .Z(n767)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(216[2] 255[11])
    defparam i10727_2_lut.init = 16'h6666;
    LUT4 i24071_4_lut (.A(n27429), .B(n28546), .C(n26924), .D(n26918), 
         .Z(clk_c_enable_43)) /* synthesis lut_function=(!((B (C+!(D))+!B (C))+!A)) */ ;
    defparam i24071_4_lut.init = 16'h0a02;
    LUT4 div_273_i292_4_lut_4_lut (.A(n28403), .B(n28402), .C(n32_adj_446), 
         .D(n32_adj_113), .Z(n477)) /* synthesis lut_function=(A (B)+!A (B (D)+!B !(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i292_4_lut_4_lut.init = 16'hcc89;
    LUT4 i1_2_lut_adj_85 (.A(STATE[3]), .B(STATE[2]), .Z(n26924)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_85.init = 16'hbbbb;
    LUT4 zpone_3__N_246_0__bdd_3_lut (.A(zpone_3__N_246[0]), .B(n265_adj_387), 
         .C(zpone_3__N_340[7]), .Z(n28022)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B)) */ ;
    defparam zpone_3__N_246_0__bdd_3_lut.init = 16'h9393;
    LUT4 i1_2_lut_adj_86 (.A(READ_BIT_CNT[0]), .B(READ_BIT_CNT[1]), .Z(n26918)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i1_2_lut_adj_86.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_87 (.A(WRITE_BYTE_FLAG[0]), .B(n28580), .C(n28581), 
         .D(WRITE_BYTE_FLAG[1]), .Z(n3071)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (B (D)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(137[1] 161[10])
    defparam i1_4_lut_adj_87.init = 16'hdca0;
    LUT4 div_273_i295_3_lut_rep_398_4_lut_4_lut (.A(n28400), .B(n367_adj_107), 
         .C(n28396), .D(n32_adj_446), .Z(n28394)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A !(B+!(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i295_3_lut_rep_398_4_lut_4_lut.init = 16'h9a99;
    LUT4 i2121_2_lut_3_lut_4_lut (.A(n28413), .B(n28401), .C(n26981), 
         .D(n367_adj_107), .Z(n32_adj_113)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i2121_2_lut_3_lut_4_lut.init = 16'h0f06;
    LUT4 zpone_3__N_304_8__bdd_4_lut (.A(n13020), .B(n378_adj_73), .C(n37), 
         .D(n28442), .Z(n28023)) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(D)))) */ ;
    defparam zpone_3__N_304_8__bdd_4_lut.init = 16'h3726;
    LUT4 i24086_2_lut (.A(WRITE_BYTE_CNT[3]), .B(clk_c_enable_35), .Z(clk_c_enable_37)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i24086_2_lut.init = 16'h4444;
    LUT4 i23983_4_lut_4_lut (.A(ser_N_380[2]), .B(ser_N_380[3]), .C(n29), 
         .D(n21), .Z(n27395)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/lab_6/temperature.vhd(370[8:19])
    defparam i23983_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i1238_2_lut (.A(WRITE_BYTE_CNT[1]), .B(WRITE_BYTE_CNT[0]), .Z(n318)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(144[23:37])
    defparam i1238_2_lut.init = 16'h6666;
    LUT4 i20589_2_lut_rep_180_3_lut_3_lut (.A(n28191), .B(n28190), .C(n278_adj_342), 
         .Z(n28176)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i20589_2_lut_rep_180_3_lut_3_lut.init = 16'heded;
    LUT4 i17031_3_lut_4_lut (.A(n28413), .B(n28401), .C(n26981), .D(n367_adj_107), 
         .Z(n32_adj_446)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i17031_3_lut_4_lut.init = 16'hf0f9;
    LUT4 i17227_2_lut_3_lut_4_lut (.A(n28257), .B(n203), .C(n28264), .D(n206), 
         .Z(n10_adj_603)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i17227_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 i17013_2_lut_2_lut (.A(ser_N_380[1]), .B(ser_N_380[0]), .Z(n21)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lab_6/temperature.vhd(370[8:19])
    defparam i17013_2_lut_2_lut.init = 16'h4444;
    LUT4 i20778_1_lut (.A(n2_adj_408), .Z(n15_adj_413)) /* synthesis lut_function=(!(A)) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i20778_1_lut.init = 16'h5555;
    LUT4 i23615_2_lut_rep_256_4_lut (.A(n28260), .B(n20635), .C(n28261), 
         .D(n699_adj_230), .Z(n28252)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i23615_2_lut_rep_256_4_lut.init = 16'hfe00;
    CCU2D mod_271_add_522_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n673), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24341), .S1(n764));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_522_1.INIT0 = 16'hF000;
    defparam mod_271_add_522_1.INIT1 = 16'h5555;
    defparam mod_271_add_522_1.INJECT1_0 = "NO";
    defparam mod_271_add_522_1.INJECT1_1 = "NO";
    LUT4 div_276_i452_3_lut_4_lut (.A(n28260), .B(n20635), .C(n28261), 
         .D(n700_adj_231), .Z(n718_adj_237)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i452_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1267_2_lut (.A(GET_TMP_CNT[1]), .B(GET_TMP_CNT[0]), .Z(n834)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(266[21:32])
    defparam i1267_2_lut.init = 16'h6666;
    FD1P3IX cnt_1139__i5 (.D(n85), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i5.GSR = "ENABLED";
    LUT4 i17197_3_lut_rep_178_3_lut_4_lut_4_lut (.A(n28191), .B(n304_adj_345), 
         .C(n28190), .D(n278_adj_342), .Z(n28174)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))))) */ ;
    defparam i17197_3_lut_rep_178_3_lut_4_lut_4_lut.init = 16'h373b;
    LUT4 i2_4_lut_adj_88 (.A(STATE[0]), .B(n28570), .C(STATE[2]), .D(STATE[1]), 
         .Z(clk_c_enable_49)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;
    defparam i2_4_lut_adj_88.init = 16'h3002;
    LUT4 n28024_bdd_3_lut (.A(n28024), .B(n28022), .C(mode), .Z(cycledata_31__N_74[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n28024_bdd_3_lut.init = 16'hcaca;
    LUT4 i23937_2_lut_rep_258_3_lut_4_lut (.A(n28258), .B(n206), .C(n203), 
         .D(n204), .Z(n28254)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i23937_2_lut_rep_258_3_lut_4_lut.init = 16'hfef0;
    CCU2D mod_271_add_559_13 (.A0(n13058), .B0(n28430), .C0(n754), .D0(n717), 
          .A1(n13058), .B1(n28430), .C1(n753), .D1(n716), .CIN(n24339), 
          .S0(n808), .S1(n807));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_559_13.INIT0 = 16'h0e1f;
    defparam mod_271_add_559_13.INIT1 = 16'h0e1f;
    defparam mod_271_add_559_13.INJECT1_0 = "NO";
    defparam mod_271_add_559_13.INJECT1_1 = "NO";
    LUT4 i20594_2_lut_rep_177_3_lut_4_lut_4_lut (.A(n28191), .B(n28190), 
         .C(n304_adj_345), .D(n278_adj_342), .Z(n28173)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i20594_2_lut_rep_177_3_lut_4_lut_4_lut.init = 16'he0d0;
    CCU2D div_276_add_761_5 (.A0(n13120), .B0(n20449), .C0(n1110), .D0(n28227), 
          .A1(n13120), .B1(n20449), .C1(n1109), .D1(n1070), .CIN(n24205), 
          .COUT(n24206), .S0(n1167), .S1(n1166));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_5.INIT0 = 16'h0e1f;
    defparam div_276_add_761_5.INIT1 = 16'hf1e0;
    defparam div_276_add_761_5.INJECT1_0 = "NO";
    defparam div_276_add_761_5.INJECT1_1 = "NO";
    CCU2D div_273_add_407_5 (.A0(n28382), .B0(n13070), .C0(n577), .D0(n28385), 
          .A1(n13070), .B1(n28381), .C1(n576), .D1(n537), .CIN(n24084), 
          .COUT(n24085), .S0(n634), .S1(n633));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_407_5.INIT0 = 16'h0e3f;
    defparam div_273_add_407_5.INIT1 = 16'h0e1f;
    defparam div_273_add_407_5.INJECT1_0 = "NO";
    defparam div_273_add_407_5.INJECT1_1 = "NO";
    LUT4 i24139_2_lut (.A(clk_c_enable_53), .B(n27498), .Z(n13772)) /* synthesis lut_function=(A (B)) */ ;
    defparam i24139_2_lut.init = 16'h8888;
    LUT4 zpone_3__I_21_i144_3_lut_4_lut_3_lut_4_lut (.A(n28258), .B(n206), 
         .C(n203), .D(n204), .Z(n231)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i144_3_lut_4_lut_3_lut_4_lut.init = 16'h11e0;
    LUT4 ser_N_380_0__bdd_4_lut_24319 (.A(cycledata_15__N_78[0]), .B(n28271), 
         .C(n28272), .D(n28270), .Z(n28038)) /* synthesis lut_function=(A+(B (D)+!B (C))) */ ;
    defparam ser_N_380_0__bdd_4_lut_24319.init = 16'hfeba;
    LUT4 i1_2_lut_rep_253_3_lut_4_lut_4_lut (.A(n28258), .B(n206), .C(n203), 
         .D(n204), .Z(n28249)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i1_2_lut_rep_253_3_lut_4_lut_4_lut.init = 16'hcdc3;
    LUT4 i16915_2_lut (.A(STATE[0]), .B(STATE[2]), .Z(n7_adj_299)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam i16915_2_lut.init = 16'hbbbb;
    LUT4 i23938_3_lut_2_lut_3_lut_4_lut (.A(n28258), .B(n206), .C(n203), 
         .D(n204), .Z(n230)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i23938_3_lut_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i2428_2_lut_rep_261 (.A(n28258), .B(n206), .C(n204), .Z(n28257)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i2428_2_lut_rep_261.init = 16'he0e0;
    LUT4 i2117_2_lut_rep_402_3_lut_4_lut_4_lut (.A(n28404), .B(n28413), 
         .C(n367_adj_107), .D(n363_adj_106), .Z(n28398)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A ((C)+!B)) */ ;
    defparam i2117_2_lut_rep_402_3_lut_4_lut_4_lut.init = 16'hf3f9;
    LUT4 zpone_3__I_21_i145_3_lut_rep_254_4_lut_4_lut (.A(n28258), .B(n206), 
         .C(n204), .D(n203), .Z(n28250)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_i145_3_lut_rep_254_4_lut_4_lut.init = 16'h998a;
    LUT4 div_273_i255_3_lut_4_lut_4_lut (.A(n28404), .B(n28406), .C(n28413), 
         .D(n363_adj_106), .Z(n26981)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C)+!B !(C)))) */ ;
    defparam div_273_i255_3_lut_4_lut_4_lut.init = 16'h3c36;
    FD1P3JX segcnt_i2 (.D(n13142), .SP(sck_N_88_enable_3), .PD(n13760), 
            .CK(sck_N_88), .Q(segcnt[2])) /* synthesis lse_init_val=1 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam segcnt_i2.GSR = "ENABLED";
    LUT4 i10726_1_lut (.A(WRITE_HIGH_CNT[0]), .Z(n1_adj_30)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(186[2] 207[10])
    defparam i10726_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_adj_89 (.A(n278_adj_213), .B(n647_adj_227), .C(n28263), 
         .D(n279), .Z(n4_adj_629)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_4_lut_adj_89.init = 16'hffca;
    LUT4 i4971_2_lut_rep_193 (.A(n2_adj_323), .B(tens_3__N_323[9]), .Z(n28189)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4971_2_lut_rep_193.init = 16'h8888;
    PFUMX i24317 (.BLUT(n28038), .ALUT(n28037), .C0(ser_N_380[0]), .Z(n28039));
    LUT4 ser_I_0_i127_4_lut (.A(n27400), .B(n20745), .C(segcnt[2]), .D(n3286), 
         .Z(ser_N_379)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !(B+(C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(369[19:37])
    defparam ser_I_0_i127_4_lut.init = 16'ha33a;
    LUT4 tens_3__I_19_i143_3_lut_rep_192_3_lut_4_lut (.A(n2_adj_323), .B(tens_3__N_323[9]), 
         .C(n120_adj_334), .D(n161), .Z(n28188)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam tens_3__I_19_i143_3_lut_rep_192_3_lut_4_lut.init = 16'hf700;
    LUT4 i23614_3_lut_rep_259_4_lut (.A(n28263), .B(n642), .C(n28261), 
         .D(n20635), .Z(n28255)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i23614_3_lut_rep_259_4_lut.init = 16'hfff8;
    LUT4 i1_2_lut_rep_191_3_lut_4_lut (.A(n2_adj_323), .B(tens_3__N_323[9]), 
         .C(n120_adj_334), .D(n161), .Z(n28187)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_191_3_lut_4_lut.init = 16'h7870;
    LUT4 cycledata_15__N_78_0__bdd_3_lut (.A(cycledata_15__N_78[0]), .B(n28270), 
         .C(n28271), .Z(n28035)) /* synthesis lut_function=(!(A (B (C))+!A (B+(C)))) */ ;
    defparam cycledata_15__N_78_0__bdd_3_lut.init = 16'h2b2b;
    LUT4 i9099_2_lut_3_lut_4_lut (.A(n604), .B(n643), .C(n28263), .D(n642), 
         .Z(n12110)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i9099_2_lut_3_lut_4_lut.init = 16'hfaca;
    LUT4 i2_3_lut_4_lut (.A(n2_adj_373), .B(zpone_3__N_340[7]), .C(n3_adj_374), 
         .D(n106), .Z(n203)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0008;
    LUT4 i2_3_lut_4_lut_adj_90 (.A(n2_adj_323), .B(tens_3__N_323[9]), .C(n3_adj_324), 
         .D(n120_adj_334), .Z(n235_adj_336)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_90.init = 16'h0008;
    LUT4 i1_3_lut_rep_262_4_lut (.A(n2_adj_373), .B(zpone_3__N_340[7]), 
         .C(n141), .D(n106), .Z(n28258)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;
    defparam i1_3_lut_rep_262_4_lut.init = 16'h7780;
    LUT4 i1_3_lut_4_lut (.A(n2_adj_373), .B(zpone_3__N_340[7]), .C(n106), 
         .D(n141), .Z(n204)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf700;
    LUT4 div_276_i417_3_lut_rep_263_4_lut (.A(n28265), .B(n28269), .C(n647_adj_227), 
         .D(n278_adj_213), .Z(n28259)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_276_i417_3_lut_rep_263_4_lut.init = 16'hf1e0;
    LUT4 div_276_i414_3_lut_4_lut (.A(n28265), .B(n28269), .C(n644), .D(n28267), 
         .Z(n662_adj_228)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_276_i414_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i413_3_lut_rep_265_4_lut (.A(n28265), .B(n28269), .C(n643), 
         .D(n604), .Z(n28261)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_276_i413_3_lut_rep_265_4_lut.init = 16'hf1e0;
    LUT4 div_276_i415_3_lut_4_lut (.A(n28265), .B(n28269), .C(n645_adj_225), 
         .D(n606), .Z(n663)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_276_i415_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_i416_3_lut_4_lut (.A(n28265), .B(n28269), .C(n646_adj_226), 
         .D(n28266), .Z(n664_adj_229)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_276_i416_3_lut_4_lut.init = 16'hf1e0;
    LUT4 zpone_3__I_21_mux_3_i4_3_lut_rep_268 (.A(zpone_3__N_340[3]), .B(n6_adj_377), 
         .C(zpone_3__N_340[7]), .Z(n28264)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_mux_3_i4_3_lut_rep_268.init = 16'hcaca;
    LUT4 tens_3__I_19_mux_3_i5_3_lut_rep_194 (.A(tens_3__N_323[4]), .B(n7_adj_328), 
         .C(tens_3__N_323[9]), .Z(n28190)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_mux_3_i5_3_lut_rep_194.init = 16'hcaca;
    LUT4 mod_271_i686_3_lut (.A(n28415), .B(temp2[0]), .C(n950_adj_393), 
         .Z(n1511)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i686_3_lut.init = 16'h9a9a;
    LUT4 i1_2_lut_rep_248_4_lut (.A(zpone_3__N_340[3]), .B(n6_adj_377), 
         .C(zpone_3__N_340[7]), .D(n238_adj_385), .Z(n28244)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(334[11:23])
    defparam i1_2_lut_rep_248_4_lut.init = 16'h35ca;
    PFUMX i24227 (.BLUT(n28401), .ALUT(n27800), .C0(n1179), .Z(n503_adj_583));
    LUT4 i2_3_lut_rep_269 (.A(n604), .B(n20627), .C(n28267), .Z(n28265)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i2_3_lut_rep_269.init = 16'h8080;
    LUT4 ser_N_380_0__bdd_4_lut (.A(n28272), .B(n28271), .C(n28270), .D(cycledata_15__N_78[0]), 
         .Z(n28040)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C)+!B !(C (D)))) */ ;
    defparam ser_N_380_0__bdd_4_lut.init = 16'hb6a6;
    PFUMX i24351 (.BLUT(n28615), .ALUT(n28616), .C0(temp1_8__N_270[4]), 
          .Z(n28617));
    LUT4 i17654_2_lut_rep_267_4_lut (.A(n604), .B(n20627), .C(n28267), 
         .D(n28269), .Z(n28263)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i17654_2_lut_rep_267_4_lut.init = 16'hff80;
    LUT4 i20582_1_lut_3_lut (.A(tens_3__N_323[4]), .B(n7_adj_328), .C(tens_3__N_323[9]), 
         .Z(n329_adj_346)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i20582_1_lut_3_lut.init = 16'h3535;
    LUT4 i16754_2_lut_rep_401_4_lut (.A(n28404), .B(n363_adj_106), .C(n32_adj_446), 
         .D(n28403), .Z(n28397)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i16754_2_lut_rep_401_4_lut.init = 16'h00b0;
    LUT4 i24024_3_lut_4_lut (.A(n28040), .B(ser_N_380[0]), .C(ser_N_380[1]), 
         .D(n28039), .Z(n27346)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i24024_3_lut_4_lut.init = 16'hefe0;
    LUT4 i2_3_lut_4_lut_adj_91 (.A(n28281), .B(n28268), .C(n278_adj_213), 
         .D(n606), .Z(n20627)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_91.init = 16'hfff6;
    LUT4 tens_3__I_19_mux_3_i6_3_lut_rep_195 (.A(tens_3__N_323[5]), .B(n6_adj_327), 
         .C(tens_3__N_323[9]), .Z(n28191)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_mux_3_i6_3_lut_rep_195.init = 16'hcaca;
    LUT4 i9093_2_lut_4_lut (.A(n275), .B(n28279), .C(n28268), .D(n604), 
         .Z(n12104)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(B+!(C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i9093_2_lut_4_lut.init = 16'h9a00;
    PFUMX mux_160_Mux_1_i15 (.BLUT(n2_adj_271), .ALUT(n7_adj_270), .C0(n27381), 
          .Z(STATE_3__N_144[1]));
    LUT4 mod_271_i648_3_lut (.A(n28418), .B(n928_adj_406), .C(n896_adj_469), 
         .Z(n945_adj_392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i648_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_182_2_lut_4_lut (.A(tens_3__N_323[5]), .B(n6_adj_327), 
         .C(tens_3__N_323[9]), .D(n278_adj_342), .Z(n28178)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i1_2_lut_rep_182_2_lut_4_lut.init = 16'hca35;
    LUT4 i6705_2_lut_3_lut_4_lut_4_lut_then_4_lut (.A(zpzone_3__N_333[3]), 
         .B(n28292), .C(n28291), .D(zpzone_3__N_333[6]), .Z(n29284)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B+(C+(D))))) */ ;   // d:/lab_6/temperature.vhd(333[11:16])
    defparam i6705_2_lut_3_lut_4_lut_4_lut_then_4_lut.init = 16'h002b;
    CCU2D mod_271_add_559_11 (.A0(n13058), .B0(n28430), .C0(n756), .D0(n719), 
          .A1(n13058), .B1(n28430), .C1(n755), .D1(n718), .CIN(n24338), 
          .COUT(n24339), .S0(n810), .S1(n809));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_559_11.INIT0 = 16'h0e1f;
    defparam mod_271_add_559_11.INIT1 = 16'h0e1f;
    defparam mod_271_add_559_11.INJECT1_0 = "NO";
    defparam mod_271_add_559_11.INJECT1_1 = "NO";
    LUT4 i9945_3_lut_4_lut (.A(n28271), .B(n28270), .C(n28272), .D(n28636), 
         .Z(n12956)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i9945_3_lut_4_lut.init = 16'h2f20;
    LUT4 n30_bdd_4_lut (.A(n30_adj_570), .B(n4495), .C(n4496), .D(n1179), 
         .Z(n501_adj_584)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam n30_bdd_4_lut.init = 16'h7000;
    LUT4 div_276_i376_3_lut_4_lut (.A(n28280), .B(n28277), .C(n28281), 
         .D(n276), .Z(n606)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (D)) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i376_3_lut_4_lut.init = 16'hf708;
    LUT4 i17694_2_lut_rep_264_3_lut_4_lut (.A(n28277), .B(n28280), .C(n642), 
         .D(n28265), .Z(n28260)) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i17694_2_lut_rep_264_3_lut_4_lut.init = 16'hf040;
    LUT4 mux_269_i3_3_lut_rep_274 (.A(zpzone_3__N_253[2]), .B(zpzone_3__N_254[2]), 
         .C(mode), .Z(n28270)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_269_i3_3_lut_rep_274.init = 16'hcaca;
    CCU2D mod_271_add_559_9 (.A0(n13058), .B0(n28430), .C0(n758), .D0(n721), 
          .A1(n13058), .B1(n28430), .C1(n757), .D1(n720), .CIN(n24337), 
          .COUT(n24338), .S0(n812), .S1(n811));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_559_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_559_9.INIT1 = 16'h0e1f;
    defparam mod_271_add_559_9.INJECT1_0 = "NO";
    defparam mod_271_add_559_9.INJECT1_1 = "NO";
    LUT4 ser_N_380_0__bdd_2_lut_4_lut (.A(zpzone_3__N_253[2]), .B(zpzone_3__N_254[2]), 
         .C(mode), .D(n28271), .Z(n28037)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam ser_N_380_0__bdd_2_lut_4_lut.init = 16'hcaff;
    LUT4 i20604_2_lut_rep_175_3_lut_4_lut (.A(n28178), .B(n28190), .C(n28179), 
         .D(n304_adj_345), .Z(n28171)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i20604_2_lut_rep_175_3_lut_4_lut.init = 16'hfef0;
    FD1P3IX cnt_1139__i6 (.D(n84), .SP(clk_c_enable_53), .CD(n13772), 
            .CK(clk_c), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lab_6/temperature.vhd(277[10:13])
    defparam cnt_1139__i6.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(n882), .B(n24), .C(n20_adj_617), .D(n880), .Z(n896_adj_469)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut_adj_92 (.A(n889_adj_601), .B(n22_adj_616), .C(n16_adj_618), 
         .D(n887_adj_599), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut_adj_92.init = 16'hfffe;
    LUT4 mux_269_i4_3_lut_rep_276 (.A(zpzone_3__N_253[3]), .B(n27053), .C(mode), 
         .Z(n28272)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_269_i4_3_lut_rep_276.init = 16'h3a3a;
    LUT4 i7_4_lut_adj_93 (.A(n884), .B(n20621), .C(n885), .D(n890_adj_602), 
         .Z(n20_adj_617)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i7_4_lut_adj_93.init = 16'hfefa;
    LUT4 i23972_2_lut_4_lut (.A(zpzone_3__N_253[3]), .B(n27053), .C(mode), 
         .D(ser_N_380[0]), .Z(n27384)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam i23972_2_lut_4_lut.init = 16'hc500;
    LUT4 i9_4_lut_adj_94 (.A(n879), .B(n888_adj_600), .C(n878), .D(n28416), 
         .Z(n22_adj_616)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_94.init = 16'hfffe;
    LUT4 i1549_2_lut_rep_518_4_lut_then_4_lut (.A(tens_3__N_294[8]), .B(n3), 
         .C(n238), .D(n2), .Z(n28619)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam i1549_2_lut_rep_518_4_lut_then_4_lut.init = 16'h8088;
    LUT4 i24095_4_lut (.A(n28599), .B(ser_N_380[3]), .C(ser_N_380[0]), 
         .D(placecnt[4]), .Z(rck_N_378)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/lab_6/temperature.vhd(370[8:19])
    defparam i24095_4_lut.init = 16'h0080;
    CCU2D div_276_add_761_3 (.A0(n287_adj_218), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13120), .B1(n20449), .C1(n1111), .D1(n286_adj_217), 
          .CIN(n24204), .COUT(n24205), .S0(n1169), .S1(n1168));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_3.INIT0 = 16'h5aaa;
    defparam div_276_add_761_3.INIT1 = 16'h0e1f;
    defparam div_276_add_761_3.INJECT1_0 = "NO";
    defparam div_276_add_761_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_95 (.A(ser_N_380[1]), .B(ser_N_380[0]), .Z(placecnt_4__N_367[1])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_95.init = 16'h9999;
    LUT4 i1_2_lut_rep_270_3_lut_4_lut (.A(n28276), .B(n28282), .C(n28281), 
         .D(n28280), .Z(n28266)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_270_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_4_lut_adj_96 (.A(n778_adj_253), .B(n780_adj_255), .C(n779_adj_254), 
         .D(n4_adj_671), .Z(n20298)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_96.init = 16'ha080;
    LUT4 i8888_2_lut_rep_400_4_lut_4_lut_4_lut_3_lut_4_lut_4_lut_4_lut_3_lut (.A(n28407), 
         .B(n363_adj_106), .C(n28405), .Z(n28396)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i8888_2_lut_rep_400_4_lut_4_lut_4_lut_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_rep_404_3_lut_3_lut_4_lut_4_lut (.A(n28407), .B(n28413), 
         .C(n363_adj_106), .D(n28405), .Z(n28400)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C)+!B !(C))) */ ;
    defparam i1_2_lut_rep_404_3_lut_3_lut_4_lut_4_lut.init = 16'hc3c9;
    LUT4 i16753_1_lut_2_lut_4_lut_4_lut_4_lut_3_lut_4_lut_4_lut_4_lut_3_lut (.A(n28407), 
         .B(n363_adj_106), .C(n28405), .Z(n19764)) /* synthesis lut_function=(!(A (B+(C))+!A !((C)+!B))) */ ;
    defparam i16753_1_lut_2_lut_4_lut_4_lut_4_lut_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'h5353;
    PFUMX i24311 (.BLUT(n28027), .ALUT(n28026), .C0(mode), .Z(cycledata_31__N_74[2]));
    LUT4 div_273_i254_3_lut_4_lut_4_lut_rep_407_4_lut_4_lut_3_lut (.A(n28407), 
         .B(n363_adj_106), .C(n28405), .Z(n28403)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;
    defparam div_273_i254_3_lut_4_lut_4_lut_rep_407_4_lut_4_lut_3_lut.init = 16'ha4a4;
    LUT4 i3_4_lut_adj_97 (.A(n537), .B(n534), .C(n535), .D(n536), .Z(n13070)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i3_4_lut_adj_97.init = 16'hfffe;
    LUT4 div_276_i374_3_lut_4_lut_4_lut_3_lut_4_lut (.A(n275), .B(n28279), 
         .C(n28280), .D(n28282), .Z(n604)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i374_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h1f00;
    CCU2D sub_265_add_2_7 (.A0(temp2_8__N_286[3]), .B0(n28573), .C0(GND_net), 
          .D0(GND_net), .A1(TMP[0]), .B1(temp2_8__N_286[1]), .C1(temp2[0]), 
          .D1(temp2_8__N_286[3]), .CIN(n23986), .COUT(n23987), .S0(zpone_3__N_304[5]), 
          .S1(zpone_3__N_304[6]));   // d:/lab_6/temperature.vhd(321[11:16])
    defparam sub_265_add_2_7.INIT0 = 16'h9999;
    defparam sub_265_add_2_7.INIT1 = 16'h0bff;
    defparam sub_265_add_2_7.INJECT1_0 = "NO";
    defparam sub_265_add_2_7.INJECT1_1 = "NO";
    LUT4 i9941_3_lut_3_lut_4_lut (.A(cycledata_46__N_70[1]), .B(n28193), 
         .C(n27403), .D(cycledata_46__N_70[3]), .Z(n12952)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i9941_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i1_4_lut_adj_98 (.A(n15_adj_647), .B(n825_adj_7), .C(n16_adj_646), 
         .D(n824_adj_4), .Z(n13065)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_4_lut_adj_98.init = 16'hfffe;
    LUT4 i2_2_lut_rep_272_3_lut_4_lut (.A(n275), .B(n28279), .C(n28280), 
         .D(n28282), .Z(n28268)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i2_2_lut_rep_272_3_lut_4_lut.init = 16'he000;
    LUT4 n2_bdd_4_lut_adj_99 (.A(n2), .B(n120), .C(n3), .D(tens_3__N_294[8]), 
         .Z(n236)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;
    defparam n2_bdd_4_lut_adj_99.init = 16'hd000;
    LUT4 i6_4_lut_adj_100 (.A(n831), .B(n834_adj_3), .C(n830), .D(n832_adj_2), 
         .Z(n15_adj_647)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i6_4_lut_adj_100.init = 16'hfffe;
    LUT4 i4449_2_lut_3_lut_4_lut (.A(n275), .B(n28279), .C(n28280), .D(n28282), 
         .Z(n4654)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i4449_2_lut_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i23613_2_lut_rep_273_3_lut_4_lut (.A(n275), .B(n28279), .C(n28280), 
         .D(n28282), .Z(n28269)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i23613_2_lut_rep_273_3_lut_4_lut.init = 16'h10f0;
    LUT4 i7_4_lut_adj_101 (.A(n827_adj_29), .B(n828_adj_28), .C(n826_adj_27), 
         .D(n10_adj_650), .Z(n16_adj_646)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i7_4_lut_adj_101.init = 16'hfffe;
    LUT4 WRITE_BYTE_CNT_2__bdd_4_lut (.A(WRITE_BYTE_CNT[2]), .B(WRITE_BYTE_CNT[3]), 
         .C(WRITE_BYTE_CNT[0]), .D(WRITE_BYTE_CNT[1]), .Z(n28630)) /* synthesis lut_function=(A (B+(C (D)))+!A (B (C+(D)))) */ ;
    defparam WRITE_BYTE_CNT_2__bdd_4_lut.init = 16'hecc8;
    LUT4 i24161_2_lut_rep_409_3_lut_4_lut_4_lut_4_lut (.A(n28413), .B(n28411), 
         .C(n176), .D(n28412), .Z(n28405)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C)))) */ ;
    defparam i24161_2_lut_rep_409_3_lut_4_lut_4_lut_4_lut.init = 16'h4145;
    LUT4 div_276_i375_3_lut_rep_271_4_lut_4_lut (.A(n275), .B(n28279), .C(n28282), 
         .D(n28280), .Z(n28267)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i375_3_lut_rep_271_4_lut_4_lut.init = 16'h8aaa;
    LUT4 i23936_3_lut_rep_406_3_lut_4_lut_4_lut_4_lut (.A(n28413), .B(n28406), 
         .C(n363_adj_106), .D(n28407), .Z(n28402)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i23936_3_lut_rep_406_3_lut_4_lut_4_lut_4_lut.init = 16'he000;
    LUT4 mux_267_i3_3_lut_rep_197 (.A(ones_3__N_237[2]), .B(ones_3__N_238[2]), 
         .C(mode), .Z(n28193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_267_i3_3_lut_rep_197.init = 16'hcaca;
    LUT4 i23935_2_lut_rep_405_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n28413), .B(n28406), 
         .C(n363_adj_106), .D(n28407), .Z(n28401)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i23935_2_lut_rep_405_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hfef0;
    LUT4 i3_4_lut_adj_102 (.A(n777_adj_252), .B(n774_adj_249), .C(n775_adj_250), 
         .D(n776_adj_251), .Z(n13127)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i3_4_lut_adj_102.init = 16'hfffe;
    LUT4 i3_4_lut_rep_282 (.A(n6_adj_224), .B(n28098), .C(n192), .D(n13552), 
         .Z(n28278)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C)))) */ ;
    defparam i3_4_lut_rep_282.init = 16'h0301;
    LUT4 zpzone_3__I_20_i155_3_lut_4_lut (.A(n6_adj_224), .B(n28098), .C(n192), 
         .D(n13552), .Z(n27053)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A !(D))) */ ;
    defparam zpzone_3__I_20_i155_3_lut_4_lut.init = 16'h57aa;
    LUT4 i24155_2_lut_rep_408_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n28413), 
         .B(n28411), .C(n176), .D(n28412), .Z(n28404)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A !(B+!(C (D))))) */ ;
    defparam i24155_2_lut_rep_408_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h4dff;
    LUT4 i1_4_lut_adj_103 (.A(n15_adj_380), .B(n770), .C(n13_adj_391), 
         .D(n14_adj_389), .Z(n13059)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_4_lut_adj_103.init = 16'hfffe;
    LUT4 i6_4_lut_adj_104 (.A(n775), .B(n779), .C(n774), .D(n778), .Z(n15_adj_380)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i6_4_lut_adj_104.init = 16'hfffe;
    LUT4 i5_3_lut_adj_105 (.A(n772), .B(n773), .C(n777), .Z(n14_adj_389)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i5_3_lut_adj_105.init = 16'hfefe;
    LUT4 i4442_2_lut_rep_277_3_lut_4_lut (.A(n276), .B(n28281), .C(n28282), 
         .D(n275), .Z(n28273)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i4442_2_lut_rep_277_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i5015_2_lut_rep_415 (.A(n2_adj_82), .B(n1179), .Z(n28411)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5015_2_lut_rep_415.init = 16'h8888;
    LUT4 i4439_2_lut_rep_280_3_lut (.A(n276), .B(n28281), .C(n275), .Z(n28276)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i4439_2_lut_rep_280_3_lut.init = 16'hfefe;
    PFUMX i24216 (.BLUT(n27779), .ALUT(n27776), .C0(n378_adj_363), .Z(n27780));
    LUT4 i1_2_lut_rep_281_4_lut (.A(n276), .B(n28281), .C(n28282), .D(n275), 
         .Z(n28277)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_2_lut_rep_281_4_lut.init = 16'hf0e0;
    CCU2D div_273_add_407_3 (.A0(n13070), .B0(n28381), .C0(n579), .D0(n369), 
          .A1(n28388), .B1(n28414), .C1(n578), .D1(n28380), .CIN(n24083), 
          .COUT(n24084), .S0(n636), .S1(n635));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_407_3.INIT0 = 16'h0e1f;
    defparam div_273_add_407_3.INIT1 = 16'hf099;
    defparam div_273_add_407_3.INJECT1_0 = "NO";
    defparam div_273_add_407_3.INJECT1_1 = "NO";
    LUT4 div_273_i215_3_lut_rep_411_4_lut_3_lut_4_lut (.A(n2_adj_82), .B(n1179), 
         .C(n176), .D(n28412), .Z(n28407)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam div_273_i215_3_lut_rep_411_4_lut_3_lut_4_lut.init = 16'hf700;
    CCU2D mod_271_add_559_7 (.A0(n13058), .B0(n28430), .C0(n760), .D0(n723), 
          .A1(n13058), .B1(n28430), .C1(n759), .D1(n722), .CIN(n24336), 
          .COUT(n24337), .S0(n814), .S1(n813));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_559_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_559_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_559_7.INJECT1_0 = "NO";
    defparam mod_271_add_559_7.INJECT1_1 = "NO";
    LUT4 i4993_2_lut_rep_284 (.A(n2_adj_184), .B(n1248), .Z(n28280)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4993_2_lut_rep_284.init = 16'h8888;
    PFUMX i24308 (.BLUT(n378_adj_73), .ALUT(n28023), .C0(zpone_3__N_304[8]), 
          .Z(n28024));
    LUT4 i8_4_lut_adj_106 (.A(n15_adj_669), .B(n720), .C(n14_adj_670), 
         .D(n724), .Z(n13058)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i8_4_lut_adj_106.init = 16'hfffe;
    LUT4 i6_4_lut_adj_107 (.A(n719), .B(n723), .C(n718), .D(n722), .Z(n15_adj_669)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i6_4_lut_adj_107.init = 16'hfffe;
    LUT4 div_276_mux_3_i14_3_lut_rep_285 (.A(n1566), .B(n6_adj_188), .C(n1248), 
         .Z(n28281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i14_3_lut_rep_285.init = 16'hcaca;
    LUT4 i5_3_lut_adj_108 (.A(n716), .B(n717), .C(n721), .Z(n14_adj_670)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i5_3_lut_adj_108.init = 16'hfefe;
    LUT4 i4431_2_lut_rep_283_4_lut (.A(n1566), .B(n6_adj_188), .C(n1248), 
         .D(n276), .Z(n28279)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i4431_2_lut_rep_283_4_lut.init = 16'hffca;
    LUT4 div_276_mux_3_i17_3_lut_rep_286 (.A(n1563), .B(n3_adj_185), .C(n1248), 
         .Z(n28282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i17_3_lut_rep_286.init = 16'hcaca;
    FD1P3IX segcnt_i1 (.D(n13140), .SP(sck_N_88_enable_3), .CD(n13760), 
            .CK(sck_N_88), .Q(segcnt[1])) /* synthesis lse_init_val=0 */ ;   // d:/lab_6/temperature.vhd(365[7] 372[11])
    defparam segcnt_i1.GSR = "ENABLED";
    LUT4 i9087_2_lut_3_lut_3_lut (.A(n3_adj_185), .B(n1248), .C(n2_adj_184), 
         .Z(n12098)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i9087_2_lut_3_lut_3_lut.init = 16'h8080;
    LUT4 i17418_2_lut_rep_196_4_lut (.A(ones_3__N_237[2]), .B(ones_3__N_238[2]), 
         .C(mode), .D(cycledata_46__N_70[1]), .Z(n28192)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam i17418_2_lut_rep_196_4_lut.init = 16'hffca;
    CCU2D mod_271_add_559_5 (.A0(n28431), .B0(n13058), .C0(n762), .D0(n725), 
          .A1(n13058), .B1(n28430), .C1(n761), .D1(n724), .CIN(n24335), 
          .COUT(n24336), .S0(n816), .S1(n815));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_559_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_559_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_559_5.INJECT1_0 = "NO";
    defparam mod_271_add_559_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_109 (.A(n2_adj_82), .B(n1179), .C(n3_adj_83), 
         .D(n176), .Z(n363_adj_106)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_109.init = 16'h0008;
    LUT4 i8369_2_lut_4_lut (.A(ones_3__N_237[2]), .B(ones_3__N_238[2]), 
         .C(mode), .D(cycledata_46__N_70[1]), .Z(n11380)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam i8369_2_lut_4_lut.init = 16'hff35;
    CCU2D div_276_add_761_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n288_adj_219), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24204));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_761_1.INIT0 = 16'h0000;
    defparam div_276_add_761_1.INIT1 = 16'h5555;
    defparam div_276_add_761_1.INJECT1_0 = "NO";
    defparam div_276_add_761_1.INJECT1_1 = "NO";
    CCU2D div_276_add_722_15 (.A0(n13121), .B0(n20423), .C0(n1042_adj_302), 
          .D0(n1003), .A1(n13121), .B1(n20423), .C1(n1041_adj_301), 
          .D1(n28230), .CIN(n24202), .S0(n1099_adj_314), .S1(n1098_adj_313));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_15.INIT0 = 16'h0e1f;
    defparam div_276_add_722_15.INIT1 = 16'h0e1f;
    defparam div_276_add_722_15.INJECT1_0 = "NO";
    defparam div_276_add_722_15.INJECT1_1 = "NO";
    CCU2D mod_271_add_559_3 (.A0(n13058), .B0(n28430), .C0(n764), .D0(n673), 
          .A1(n13058), .B1(n28430), .C1(n763), .D1(n28433), .CIN(n24334), 
          .COUT(n24335), .S0(n818), .S1(n817));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_559_3.INIT0 = 16'h0e1f;
    defparam mod_271_add_559_3.INIT1 = 16'hf1e0;
    defparam mod_271_add_559_3.INJECT1_0 = "NO";
    defparam mod_271_add_559_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_410_3_lut_3_lut_4_lut (.A(n2_adj_82), .B(n1179), .C(n176), 
         .D(n28412), .Z(n28406)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam i1_2_lut_rep_410_3_lut_3_lut_4_lut.init = 16'h7870;
    CCU2D div_276_add_722_13 (.A0(n13121), .B0(n20423), .C0(n1044), .D0(n1005), 
          .A1(n13121), .B1(n20423), .C1(n1043_adj_303), .D1(n1004), 
          .CIN(n24201), .COUT(n24202), .S0(n1101_adj_316), .S1(n1100_adj_315));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_13.INIT0 = 16'h0e1f;
    defparam div_276_add_722_13.INIT1 = 16'h0e1f;
    defparam div_276_add_722_13.INJECT1_0 = "NO";
    defparam div_276_add_722_13.INJECT1_1 = "NO";
    CCU2D div_273_add_407_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n370_adj_108), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24083), .S1(n637));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_407_1.INIT0 = 16'hF000;
    defparam div_273_add_407_1.INIT1 = 16'h5555;
    defparam div_273_add_407_1.INJECT1_0 = "NO";
    defparam div_273_add_407_1.INJECT1_1 = "NO";
    LUT4 n170_bdd_4_lut (.A(n28284), .B(n28283), .C(n169), .Z(n28098)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam n170_bdd_4_lut.init = 16'hb8b8;
    LUT4 i17719_2_lut_rep_414_4_lut (.A(n2_adj_82), .B(n1179), .C(n176), 
         .D(n28412), .Z(n28410)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i17719_2_lut_rep_414_4_lut.init = 16'h8880;
    LUT4 i7_4_lut_adj_110 (.A(n669), .B(n14_adj_16), .C(n10_adj_17), .D(n668), 
         .Z(n13092)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i7_4_lut_adj_110.init = 16'hfffe;
    CCU2D sub_265_add_2_5 (.A0(n23672), .B0(n28609), .C0(zpzone_3__N_253[3]), 
          .D0(GND_net), .A1(n23681), .B1(n28589), .C1(GND_net), .D1(GND_net), 
          .CIN(n23985), .COUT(n23986), .S0(zpone_3__N_304[3]), .S1(zpone_3__N_304[4]));   // d:/lab_6/temperature.vhd(321[11:16])
    defparam sub_265_add_2_5.INIT0 = 16'h9969;
    defparam sub_265_add_2_5.INIT1 = 16'h9999;
    defparam sub_265_add_2_5.INJECT1_0 = "NO";
    defparam sub_265_add_2_5.INJECT1_1 = "NO";
    CCU2D div_276_add_722_11 (.A0(n13121), .B0(n20423), .C0(n1046), .D0(n1007), 
          .A1(n13121), .B1(n20423), .C1(n1045), .D1(n1006), .CIN(n24200), 
          .COUT(n24201), .S0(n1103), .S1(n1102));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_11.INIT0 = 16'h0e1f;
    defparam div_276_add_722_11.INIT1 = 16'h0e1f;
    defparam div_276_add_722_11.INJECT1_0 = "NO";
    defparam div_276_add_722_11.INJECT1_1 = "NO";
    LUT4 n382_bdd_3_lut (.A(n28333), .B(n4498), .C(n28334), .Z(n27800)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;
    defparam n382_bdd_3_lut.init = 16'hc6c6;
    CCU2D div_273_add_368_7 (.A0(n4_adj_221), .B0(n28391), .C0(n28386), 
          .D0(n478), .A1(n28390), .B1(n28391), .C1(n28383), .D1(n477), 
          .CIN(n24081), .S0(n574), .S1(n573));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_368_7.INIT0 = 16'h0ff4;
    defparam div_273_add_368_7.INIT1 = 16'h0bf4;
    defparam div_273_add_368_7.INJECT1_0 = "NO";
    defparam div_273_add_368_7.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_111 (.A(n664), .B(n667), .C(n662), .D(n666), .Z(n14_adj_16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i6_4_lut_adj_111.init = 16'hfffe;
    CCU2D div_273_add_368_5 (.A0(n537), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n28390), .B1(n28391), .C1(n28387), .D1(n28392), .CIN(n24080), 
          .COUT(n24081), .S0(n576), .S1(n575));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_368_5.INIT0 = 16'h5555;
    defparam div_273_add_368_5.INIT1 = 16'h0bf4;
    defparam div_273_add_368_5.INJECT1_0 = "NO";
    defparam div_273_add_368_5.INJECT1_1 = "NO";
    CCU2D div_276_add_722_9 (.A0(n13121), .B0(n20423), .C0(n1048), .D0(n1009), 
          .A1(n13121), .B1(n20423), .C1(n1047_adj_304), .D1(n1008), 
          .CIN(n24199), .COUT(n24200), .S0(n1105), .S1(n1104));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_9.INIT0 = 16'h0e1f;
    defparam div_276_add_722_9.INIT1 = 16'h0e1f;
    defparam div_276_add_722_9.INJECT1_0 = "NO";
    defparam div_276_add_722_9.INJECT1_1 = "NO";
    CCU2D div_276_add_722_7 (.A0(n13121), .B0(n20423), .C0(n1050_adj_306), 
          .D0(n1011), .A1(n13121), .B1(n20423), .C1(n1049_adj_305), 
          .D1(n1010), .CIN(n24198), .COUT(n24199), .S0(n1107), .S1(n1106));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_7.INIT0 = 16'hf1e0;
    defparam div_276_add_722_7.INIT1 = 16'h0e1f;
    defparam div_276_add_722_7.INJECT1_0 = "NO";
    defparam div_276_add_722_7.INJECT1_1 = "NO";
    LUT4 div_273_mux_3_i17_3_lut_rep_416 (.A(n1516), .B(n3_adj_83), .C(n1179), 
         .Z(n28412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i17_3_lut_rep_416.init = 16'hcaca;
    CCU2D mod_271_add_559_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp2[0]), .B1(n3047), .C1(GND_net), .D1(GND_net), 
          .COUT(n24334), .S1(n819_adj_6));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_559_1.INIT0 = 16'hF000;
    defparam mod_271_add_559_1.INIT1 = 16'h9999;
    defparam mod_271_add_559_1.INJECT1_0 = "NO";
    defparam mod_271_add_559_1.INJECT1_1 = "NO";
    LUT4 i3651_2_lut_rep_413_4_lut (.A(n1516), .B(n3_adj_83), .C(n1179), 
         .D(n176), .Z(n28409)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i3651_2_lut_rep_413_4_lut.init = 16'hffca;
    LUT4 cycledata_63__N_66_2__bdd_4_lut (.A(cycledata_63__N_66[2]), .B(cycledata_63__N_66[3]), 
         .C(cycledata_63__N_66[1]), .D(n28163), .Z(cycledata[62])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C)+!B !(C)))) */ ;
    defparam cycledata_63__N_66_2__bdd_4_lut.init = 16'h1636;
    PFUMX STATE_3__I_0_496_i3 (.BLUT(n1_adj_390), .ALUT(n2_adj_388), .C0(STATE[1]), 
          .Z(n3_adj_386));
    LUT4 tens_3__I_19_i238_3_lut_4_lut_4_lut (.A(n28168), .B(n28175), .C(n361_adj_355), 
         .D(n13116), .Z(n371_adj_361)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam tens_3__I_19_i238_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 div_273_mux_3_i15_3_lut_rep_417 (.A(n1518), .B(n5_adj_85), .C(n1179), 
         .Z(n28413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i15_3_lut_rep_417.init = 16'hcaca;
    LUT4 div_273_mux_3_i13_3_lut_rep_418 (.A(n1520), .B(n7_adj_87), .C(n1179), 
         .Z(n28414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i13_3_lut_rep_418.init = 16'hcaca;
    LUT4 i6_4_lut_adj_112 (.A(n610), .B(n12_adj_615), .C(n612), .D(n611), 
         .Z(n13091)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i6_4_lut_adj_112.init = 16'hfffe;
    LUT4 i5_4_lut_adj_113 (.A(n614), .B(n613), .C(n608), .D(n609), .Z(n12_adj_615)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i5_4_lut_adj_113.init = 16'hfffe;
    LUT4 i20439_1_lut_3_lut (.A(n1520), .B(n7_adj_87), .C(n1179), .Z(n521)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i20439_1_lut_3_lut.init = 16'h3535;
    LUT4 mod_271_i685_3_lut_4_lut (.A(temp2[0]), .B(n28415), .C(n950_adj_393), 
         .D(n945_adj_392), .Z(n1510)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam mod_271_i685_3_lut_4_lut.init = 16'h1fe0;
    CCU2D mod_271_add_596_15 (.A0(n13059), .B0(n28425), .C0(n807), .D0(n770), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24333), 
          .S0(n861));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_15.INIT0 = 16'h0e1f;
    defparam mod_271_add_596_15.INIT1 = 16'h0000;
    defparam mod_271_add_596_15.INJECT1_0 = "NO";
    defparam mod_271_add_596_15.INJECT1_1 = "NO";
    LUT4 i23958_3_lut_4_lut (.A(temp2[0]), .B(n28415), .C(n945_adj_392), 
         .D(n27356), .Z(n950_adj_393)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i23958_3_lut_4_lut.init = 16'hffe0;
    LUT4 i23881_4_lut (.A(n1162), .B(n1156), .C(n1161), .D(n1165), .Z(n27288)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23881_4_lut.init = 16'hfffe;
    PFUMX i24306 (.BLUT(n28020), .ALUT(n28019), .C0(mode), .Z(cycledata_31__N_74[3]));
    LUT4 i23725_2_lut_4_lut (.A(n829_adj_1), .B(n866), .C(n28419), .D(n28417), 
         .Z(n27125)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i23725_2_lut_4_lut.init = 16'hffca;
    LUT4 ones_3__I_18_i229_3_lut_4_lut (.A(n28221), .B(n28194), .C(n302_adj_432), 
         .D(n297_adj_433), .Z(ones_3__N_238[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam ones_3__I_18_i229_3_lut_4_lut.init = 16'h1fe0;
    CCU2D div_276_add_722_5 (.A0(n13121), .B0(n20423), .C0(n1052_adj_308), 
          .D0(n28229), .A1(n13121), .B1(n20423), .C1(n1051_adj_307), 
          .D1(n1012), .CIN(n24197), .COUT(n24198), .S0(n1109), .S1(n1108));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_5.INIT0 = 16'h0e1f;
    defparam div_276_add_722_5.INIT1 = 16'hf1e0;
    defparam div_276_add_722_5.INJECT1_0 = "NO";
    defparam div_276_add_722_5.INJECT1_1 = "NO";
    LUT4 i3_2_lut_4_lut (.A(n827_adj_29), .B(n864), .C(n28419), .D(n886), 
         .Z(n16_adj_618)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i3_2_lut_4_lut.init = 16'hffca;
    LUT4 i17482_2_lut_3_lut (.A(n28221), .B(n28194), .C(n297_adj_433), 
         .Z(n20501)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17482_2_lut_3_lut.init = 16'he0e0;
    CCU2D mod_271_add_596_13 (.A0(n13059), .B0(n28425), .C0(n809), .D0(n772), 
          .A1(n13059), .B1(n28425), .C1(n808), .D1(n28428), .CIN(n24332), 
          .COUT(n24333), .S0(n863), .S1(n862));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_13.INIT0 = 16'h0e1f;
    defparam mod_271_add_596_13.INIT1 = 16'h0e1f;
    defparam mod_271_add_596_13.INJECT1_0 = "NO";
    defparam mod_271_add_596_13.INJECT1_1 = "NO";
    LUT4 i14_4_lut (.A(n307), .B(WRITE_BYTE_FLAG[1]), .C(WRITE_BYTE_CNT[3]), 
         .D(n28592), .Z(n3053)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // d:/lab_6/temperature.vhd(137[1] 161[10])
    defparam i14_4_lut.init = 16'hc505;
    CCU2D div_276_add_722_3 (.A0(n286_adj_217), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13121), .B1(n20423), .C1(n1053_adj_309), 
          .D1(n285_adj_216), .CIN(n24196), .COUT(n24197), .S0(n1111), 
          .S1(n1110));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_3.INIT0 = 16'h5aaa;
    defparam div_276_add_722_3.INIT1 = 16'h0e1f;
    defparam div_276_add_722_3.INJECT1_0 = "NO";
    defparam div_276_add_722_3.INJECT1_1 = "NO";
    LUT4 ones_3__I_18_i209_3_lut_rep_198 (.A(ones_3__N_314[2]), .B(n289_adj_434), 
         .C(n272_adj_441), .Z(n28194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i209_3_lut_rep_198.init = 16'hcaca;
    LUT4 i17600_2_lut_4_lut (.A(n675), .B(n874), .C(n28419), .D(n28598), 
         .Z(n20621)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i17600_2_lut_4_lut.init = 16'hcaff;
    LUT4 mod_271_i603_3_lut_rep_420_4_lut (.A(n28420), .B(n13065), .C(n866), 
         .D(n829_adj_1), .Z(n28416)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i603_3_lut_rep_420_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_596_11 (.A0(n13059), .B0(n28425), .C0(n811), .D0(n774), 
          .A1(n13059), .B1(n28425), .C1(n810), .D1(n773), .CIN(n24331), 
          .COUT(n24332), .S0(n865), .S1(n864));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_11.INIT0 = 16'h0e1f;
    defparam mod_271_add_596_11.INIT1 = 16'h0e1f;
    defparam mod_271_add_596_11.INJECT1_0 = "NO";
    defparam mod_271_add_596_11.INJECT1_1 = "NO";
    LUT4 mod_271_i601_3_lut_rep_421_4_lut (.A(n28420), .B(n13065), .C(n864), 
         .D(n827_adj_29), .Z(n28417)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i601_3_lut_rep_421_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i611_3_lut_rep_422_4_lut (.A(n28420), .B(n13065), .C(n874), 
         .D(n675), .Z(n28418)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i611_3_lut_rep_422_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_596_9 (.A0(n13059), .B0(n28425), .C0(n813), .D0(n776), 
          .A1(n13059), .B1(n28425), .C1(n812), .D1(n775), .CIN(n24330), 
          .COUT(n24331), .S0(n867), .S1(n866));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_596_9.INIT1 = 16'h0e1f;
    defparam mod_271_add_596_9.INJECT1_0 = "NO";
    defparam mod_271_add_596_9.INJECT1_1 = "NO";
    LUT4 mod_271_i606_3_lut_4_lut (.A(n28420), .B(n13065), .C(n869), .D(n832_adj_2), 
         .Z(n886)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i606_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_mux_3_i12_3_lut (.A(n1521), .B(n8_adj_88), .C(n1179), 
         .Z(n369)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i12_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_114 (.A(n28561), .B(cnt[1]), .C(n13467), .D(cnt[6]), 
         .Z(n24764)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lab_6/temperature.vhd(166[13:19])
    defparam i2_4_lut_adj_114.init = 16'hfbff;
    LUT4 mod_271_i599_3_lut_4_lut (.A(n28420), .B(n13065), .C(n862), .D(n825_adj_7), 
         .Z(n879)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i599_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i24101_2_lut (.A(rst_c), .B(key_div_19__N_136), .Z(clk_c_enable_6)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i24101_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_115 (.A(mode), .B(btnflag), .Z(mode_N_397)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_115.init = 16'h6666;
    LUT4 div_276_mux_3_i8_3_lut (.A(n1572), .B(n12_adj_194), .C(n1248), 
         .Z(n283_adj_214)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i8_3_lut.init = 16'hcaca;
    LUT4 mod_271_i608_3_lut_4_lut (.A(n28420), .B(n13065), .C(n871), .D(n834_adj_3), 
         .Z(n888_adj_600)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i608_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_276_mux_3_i9_3_lut (.A(n1571), .B(n11_adj_193), .C(n1248), 
         .Z(n282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i9_3_lut.init = 16'hcaca;
    LUT4 ones_3__I_18_i208_3_lut_4_lut (.A(n28219), .B(n28202), .C(n272_adj_441), 
         .D(n288_adj_435), .Z(n297_adj_433)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam ones_3__I_18_i208_3_lut_4_lut.init = 16'hf909;
    CCU2D div_276_add_722_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n287_adj_218), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24196));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_722_1.INIT0 = 16'h0000;
    defparam div_276_add_722_1.INIT1 = 16'h5555;
    defparam div_276_add_722_1.INJECT1_0 = "NO";
    defparam div_276_add_722_1.INJECT1_1 = "NO";
    LUT4 mod_271_i598_3_lut_4_lut (.A(n28420), .B(n13065), .C(n861), .D(n824_adj_4), 
         .Z(n878)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i598_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_273_add_368_3 (.A0(n28390), .B0(n28391), .C0(n521), .D0(n28414), 
          .A1(n28390), .B1(n28391), .C1(n28414), .D1(n481), .CIN(n24079), 
          .COUT(n24080), .S0(n578), .S1(n577));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_368_3.INIT0 = 16'h0b4f;
    defparam div_273_add_368_3.INIT1 = 16'hf40b;
    defparam div_273_add_368_3.INJECT1_0 = "NO";
    defparam div_273_add_368_3.INJECT1_1 = "NO";
    LUT4 i20780_2_lut (.A(sck_c_1), .B(n2_adj_408), .Z(n14_adj_412)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // D:/lscc/diamond/3.11_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i20780_2_lut.init = 16'h6666;
    CCU2D mod_271_add_596_7 (.A0(n13059), .B0(n28425), .C0(n815), .D0(n778), 
          .A1(n13059), .B1(n28425), .C1(n814), .D1(n777), .CIN(n24329), 
          .COUT(n24330), .S0(n869), .S1(n868));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_596_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_596_7.INJECT1_0 = "NO";
    defparam mod_271_add_596_7.INJECT1_1 = "NO";
    LUT4 div_276_mux_3_i7_3_lut (.A(n1573), .B(n13_adj_195), .C(n1248), 
         .Z(n284_adj_215)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i7_3_lut.init = 16'hcaca;
    LUT4 zpone_3__I_17_mux_3_i4_3_lut (.A(zpone_3__N_304[3]), .B(n8_adj_37), 
         .C(zpone_3__N_304[8]), .Z(n241_adj_48)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_mux_3_i4_3_lut.init = 16'hcaca;
    CCU2D mod_271_add_596_5 (.A0(n28426), .B0(n13059), .C0(n817), .D0(n780), 
          .A1(n13059), .B1(n28425), .C1(n816), .D1(n779), .CIN(n24328), 
          .COUT(n24329), .S0(n871), .S1(n870));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_596_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_596_5.INJECT1_0 = "NO";
    defparam mod_271_add_596_5.INJECT1_1 = "NO";
    CCU2D mod_271_add_596_3 (.A0(n3047), .B0(temp2[0]), .C0(n819_adj_6), 
          .D0(n28424), .A1(n13059), .B1(n28425), .C1(n818), .D1(n28427), 
          .CIN(n24327), .COUT(n24328), .S0(n873), .S1(n872));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_3.INIT0 = 16'h0f99;
    defparam mod_271_add_596_3.INIT1 = 16'hf1e0;
    defparam mod_271_add_596_3.INJECT1_0 = "NO";
    defparam mod_271_add_596_3.INJECT1_1 = "NO";
    CCU2D div_276_add_683_15 (.A0(n13122), .B0(n20407), .C0(n984_adj_291), 
          .D0(n945), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n24195), .S0(n1041_adj_301));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_15.INIT0 = 16'h0e1f;
    defparam div_276_add_683_15.INIT1 = 16'h0000;
    defparam div_276_add_683_15.INJECT1_0 = "NO";
    defparam div_276_add_683_15.INJECT1_1 = "NO";
    LUT4 i8218_1_lut (.A(temp1_8__N_270[3]), .Z(n8_adj_211)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam i8218_1_lut.init = 16'h5555;
    CCU2D mod_271_add_596_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n675), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24327), .S1(n874));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_596_1.INIT0 = 16'hF000;
    defparam mod_271_add_596_1.INIT1 = 16'h5555;
    defparam mod_271_add_596_1.INJECT1_0 = "NO";
    defparam mod_271_add_596_1.INJECT1_1 = "NO";
    CCU2D div_273_add_368_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n369), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24079), .S1(n579));   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_add_368_1.INIT0 = 16'hF000;
    defparam div_273_add_368_1.INIT1 = 16'h5555;
    defparam div_273_add_368_1.INJECT1_0 = "NO";
    defparam div_273_add_368_1.INJECT1_1 = "NO";
    LUT4 mod_271_i604_3_lut_4_lut (.A(n28420), .B(n13065), .C(n867), .D(n830), 
         .Z(n884)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i604_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i605_3_lut_4_lut (.A(n28420), .B(n13065), .C(n868), .D(n831), 
         .Z(n885)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i605_3_lut_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_633_15 (.A0(n13065), .B0(n28420), .C0(n862), .D0(n825_adj_7), 
          .A1(n13065), .B1(n28420), .C1(n861), .D1(n824_adj_4), .CIN(n24325), 
          .S0(n916_adj_415), .S1(n915_adj_608));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_15.INIT0 = 16'h0e1f;
    defparam mod_271_add_633_15.INIT1 = 16'h0e1f;
    defparam mod_271_add_633_15.INJECT1_0 = "NO";
    defparam mod_271_add_633_15.INJECT1_1 = "NO";
    CCU2D div_276_add_683_13 (.A0(n13122), .B0(n20407), .C0(n986), .D0(n947), 
          .A1(n13122), .B1(n20407), .C1(n985_adj_292), .D1(n946), .CIN(n24194), 
          .COUT(n24195), .S0(n1043_adj_303), .S1(n1042_adj_302));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_13.INIT0 = 16'h0e1f;
    defparam div_276_add_683_13.INIT1 = 16'h0e1f;
    defparam div_276_add_683_13.INJECT1_0 = "NO";
    defparam div_276_add_683_13.INJECT1_1 = "NO";
    CCU2D mod_271_add_337_7 (.A0(n28517), .B0(n28518), .C0(n28502), .D0(n28528), 
          .A1(n4_adj_95), .B1(n28518), .C1(n28497), .D1(n392_adj_210), 
          .CIN(n24077), .S0(n484), .S1(n483));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_337_7.INIT0 = 16'h0bf4;
    defparam mod_271_add_337_7.INIT1 = 16'h0ff4;
    defparam mod_271_add_337_7.INJECT1_0 = "NO";
    defparam mod_271_add_337_7.INJECT1_1 = "NO";
    CCU2D mod_271_add_633_13 (.A0(n13065), .B0(n28420), .C0(n864), .D0(n827_adj_29), 
          .A1(n13065), .B1(n28420), .C1(n863), .D1(n826_adj_27), .CIN(n24324), 
          .COUT(n24325), .S0(n918_adj_409), .S1(n917_adj_414));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_13.INIT0 = 16'h0e1f;
    defparam mod_271_add_633_13.INIT1 = 16'h0e1f;
    defparam mod_271_add_633_13.INJECT1_0 = "NO";
    defparam mod_271_add_633_13.INJECT1_1 = "NO";
    LUT4 mod_271_i610_3_lut_4_lut (.A(n28420), .B(n13065), .C(n873), .D(n28422), 
         .Z(n890_adj_602)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i610_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_683_11 (.A0(n13122), .B0(n20407), .C0(n988), .D0(n949), 
          .A1(n13122), .B1(n20407), .C1(n987), .D1(n948), .CIN(n24193), 
          .COUT(n24194), .S0(n1045), .S1(n1044));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_11.INIT0 = 16'h0e1f;
    defparam div_276_add_683_11.INIT1 = 16'h0e1f;
    defparam div_276_add_683_11.INJECT1_0 = "NO";
    defparam div_276_add_683_11.INJECT1_1 = "NO";
    CCU2D mod_271_add_337_5 (.A0(n28517), .B0(n28522), .C0(n28506), .D0(n28523), 
          .A1(n28517), .B1(n28518), .C1(n28507), .D1(n28521), .CIN(n24076), 
          .COUT(n24077), .S0(n486), .S1(n485));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_337_5.INIT0 = 16'h0b5f;
    defparam mod_271_add_337_5.INIT1 = 16'h0bf4;
    defparam mod_271_add_337_5.INJECT1_0 = "NO";
    defparam mod_271_add_337_5.INJECT1_1 = "NO";
    CCU2D sub_265_add_2_3 (.A0(temp2_8__N_286[3]), .B0(TMP[0]), .C0(zpzone_3__N_253[1]), 
          .D0(GND_net), .A1(zpzone_3__N_253[2]), .B1(temp2_8__N_286[3]), 
          .C1(TMP[0]), .D1(temp2_8__N_286[1]), .CIN(n23984), .COUT(n23985), 
          .S0(zpone_3__N_304[1]), .S1(zpone_3__N_304[2]));   // d:/lab_6/temperature.vhd(321[11:16])
    defparam sub_265_add_2_3.INIT0 = 16'h6696;
    defparam sub_265_add_2_3.INIT1 = 16'ha956;
    defparam sub_265_add_2_3.INJECT1_0 = "NO";
    defparam sub_265_add_2_3.INJECT1_1 = "NO";
    LUT4 mod_271_i607_3_lut_4_lut (.A(n28420), .B(n13065), .C(n870), .D(n28423), 
         .Z(n887_adj_599)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i607_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_683_9 (.A0(n13122), .B0(n20407), .C0(n990_adj_293), 
          .D0(n951), .A1(n13122), .B1(n20407), .C1(n989), .D1(n950), 
          .CIN(n24192), .COUT(n24193), .S0(n1047_adj_304), .S1(n1046));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_9.INIT0 = 16'h0e1f;
    defparam div_276_add_683_9.INIT1 = 16'h0e1f;
    defparam div_276_add_683_9.INJECT1_0 = "NO";
    defparam div_276_add_683_9.INJECT1_1 = "NO";
    CCU2D mod_271_add_633_11 (.A0(n13065), .B0(n28420), .C0(n866), .D0(n829_adj_1), 
          .A1(n13065), .B1(n28420), .C1(n865), .D1(n828_adj_28), .CIN(n24323), 
          .COUT(n24324), .S0(n920_adj_410), .S1(n919_adj_411));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_11.INIT0 = 16'h0e1f;
    defparam mod_271_add_633_11.INIT1 = 16'h0e1f;
    defparam mod_271_add_633_11.INJECT1_0 = "NO";
    defparam mod_271_add_633_11.INJECT1_1 = "NO";
    LUT4 mod_271_i602_3_lut_4_lut (.A(n28420), .B(n13065), .C(n865), .D(n828_adj_28), 
         .Z(n882)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i602_3_lut_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_633_9 (.A0(n13065), .B0(n28420), .C0(n868), .D0(n831), 
          .A1(n13065), .B1(n28420), .C1(n867), .D1(n830), .CIN(n24322), 
          .COUT(n24323), .S0(n922_adj_400), .S1(n921_adj_399));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_633_9.INIT1 = 16'h0e1f;
    defparam mod_271_add_633_9.INJECT1_0 = "NO";
    defparam mod_271_add_633_9.INJECT1_1 = "NO";
    CCU2D mod_271_add_337_3 (.A0(n28517), .B0(n28518), .C0(n2_adj_642), 
          .D0(n397_adj_209), .A1(n28517), .B1(n28518), .C1(n397_adj_209), 
          .D1(n28520), .CIN(n24075), .COUT(n24076), .S0(n488), .S1(n487));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_337_3.INIT0 = 16'h0b4f;
    defparam mod_271_add_337_3.INIT1 = 16'hf40b;
    defparam mod_271_add_337_3.INJECT1_0 = "NO";
    defparam mod_271_add_337_3.INJECT1_1 = "NO";
    LUT4 mod_271_i600_3_lut_4_lut (.A(n28420), .B(n13065), .C(n863), .D(n826_adj_27), 
         .Z(n880)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i600_3_lut_4_lut.init = 16'hf1e0;
    PFUMX STATE_3__I_0_i3 (.BLUT(n1_adj_383), .ALUT(n24550), .C0(STATE[1]), 
          .Z(n3_adj_382));
    CCU2D mod_271_add_633_7 (.A0(n13065), .B0(n28420), .C0(n870), .D0(n28423), 
          .A1(n13065), .B1(n28420), .C1(n869), .D1(n832_adj_2), .CIN(n24321), 
          .COUT(n24322), .S0(n924_adj_402), .S1(n923_adj_401));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_633_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_633_7.INJECT1_0 = "NO";
    defparam mod_271_add_633_7.INJECT1_1 = "NO";
    CCU2D div_276_add_683_7 (.A0(n13122), .B0(n20407), .C0(n992_adj_295), 
          .D0(n953), .A1(n13122), .B1(n20407), .C1(n991_adj_294), .D1(n952), 
          .CIN(n24191), .COUT(n24192), .S0(n1049_adj_305), .S1(n1048));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_7.INIT0 = 16'hf1e0;
    defparam div_276_add_683_7.INIT1 = 16'h0e1f;
    defparam div_276_add_683_7.INJECT1_0 = "NO";
    defparam div_276_add_683_7.INJECT1_1 = "NO";
    CCU2D mod_271_add_337_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n452), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24075), .S1(n489));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_337_1.INIT0 = 16'hF000;
    defparam mod_271_add_337_1.INIT1 = 16'h5555;
    defparam mod_271_add_337_1.INJECT1_0 = "NO";
    defparam mod_271_add_337_1.INJECT1_1 = "NO";
    LUT4 mod_271_i609_3_lut_4_lut_4_lut (.A(n28421), .B(n835), .C(n872), 
         .D(n13065), .Z(n889_adj_601)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_271_i609_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i17737_2_lut_rep_424_3_lut (.A(n675), .B(n28422), .C(n835), .Z(n28420)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17737_2_lut_rep_424_3_lut.init = 16'he0e0;
    LUT4 i17755_2_lut_rep_423_3_lut_4_lut (.A(n675), .B(n28422), .C(n13065), 
         .D(n835), .Z(n28419)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i17755_2_lut_rep_423_3_lut_4_lut.init = 16'hfef0;
    LUT4 i17598_2_lut_rep_425_4_lut (.A(n28567), .B(n819_adj_6), .C(n28424), 
         .D(n675), .Z(n28421)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i17598_2_lut_rep_425_4_lut.init = 16'hffca;
    CCU2D div_276_add_683_5 (.A0(n13122), .B0(n20407), .C0(n994_adj_297), 
          .D0(n28232), .A1(n13122), .B1(n20407), .C1(n993_adj_296), 
          .D1(n954), .CIN(n24190), .COUT(n24191), .S0(n1051_adj_307), 
          .S1(n1050_adj_306));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_5.INIT0 = 16'h0e1f;
    defparam div_276_add_683_5.INIT1 = 16'hf1e0;
    defparam div_276_add_683_5.INJECT1_0 = "NO";
    defparam div_276_add_683_5.INJECT1_1 = "NO";
    CCU2D mod_271_add_374_9 (.A0(n13081), .B0(n28499), .C0(n483), .D0(n446), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n24074), 
          .S0(n537_adj_129));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_374_9.INIT0 = 16'h0e1f;
    defparam mod_271_add_374_9.INIT1 = 16'h0000;
    defparam mod_271_add_374_9.INJECT1_0 = "NO";
    defparam mod_271_add_374_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_116 (.A(n779), .B(n816), .C(n28424), .D(n829_adj_1), 
         .Z(n10_adj_650)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_2_lut_4_lut_adj_116.init = 16'hffca;
    CCU2D sub_265_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(temp2[0]), .B1(n11), .C1(GND_net), .D1(GND_net), .COUT(n23984));   // d:/lab_6/temperature.vhd(321[11:16])
    defparam sub_265_add_2_1.INIT0 = 16'h0000;
    defparam sub_265_add_2_1.INIT1 = 16'h5666;
    defparam sub_265_add_2_1.INJECT1_0 = "NO";
    defparam sub_265_add_2_1.INJECT1_1 = "NO";
    LUT4 mod_271_i573_3_lut_rep_426_4_lut (.A(n28425), .B(n13059), .C(n819_adj_6), 
         .D(n28567), .Z(n28422)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i573_3_lut_rep_426_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i570_3_lut_rep_427_4_lut (.A(n28425), .B(n13059), .C(n816), 
         .D(n779), .Z(n28423)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i570_3_lut_rep_427_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i561_3_lut_4_lut (.A(n28425), .B(n13059), .C(n807), .D(n770), 
         .Z(n824_adj_4)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i561_3_lut_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_633_5 (.A0(n28421), .B0(n13065), .C0(n872), .D0(n835), 
          .A1(n13065), .B1(n28420), .C1(n871), .D1(n834_adj_3), .CIN(n24320), 
          .COUT(n24321), .S0(n926_adj_404), .S1(n925_adj_403));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_633_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_633_5.INJECT1_0 = "NO";
    defparam mod_271_add_633_5.INJECT1_1 = "NO";
    CCU2D sub_272_add_2_18 (.A0(n173), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23982), 
          .S0(n1516), .S1(n1179));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_18.INIT0 = 16'h5555;
    defparam sub_272_add_2_18.INIT1 = 16'hffff;
    defparam sub_272_add_2_18.INJECT1_0 = "NO";
    defparam sub_272_add_2_18.INJECT1_1 = "NO";
    LUT4 mod_271_i562_3_lut_4_lut (.A(n28425), .B(n13059), .C(n808), .D(n28428), 
         .Z(n825_adj_7)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i562_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i569_3_lut_4_lut (.A(n28425), .B(n13059), .C(n815), .D(n778), 
         .Z(n832_adj_2)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i569_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i567_3_lut_4_lut (.A(n28425), .B(n13059), .C(n813), .D(n776), 
         .Z(n830)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i567_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i566_3_lut_4_lut (.A(n28425), .B(n13059), .C(n812), .D(n775), 
         .Z(n829_adj_1)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i566_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i24294 (.BLUT(n27994), .ALUT(n27993), .C0(mode), .Z(cycledata_63__N_66[3]));
    LUT4 mod_271_i568_3_lut_4_lut (.A(n28425), .B(n13059), .C(n814), .D(n777), 
         .Z(n831)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i568_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i564_3_lut_4_lut (.A(n28425), .B(n13059), .C(n810), .D(n773), 
         .Z(n827_adj_29)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i564_3_lut_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_633_3 (.A0(n13065), .B0(n28420), .C0(n874), .D0(n675), 
          .A1(n13065), .B1(n28420), .C1(n873), .D1(n28422), .CIN(n24319), 
          .COUT(n24320), .S0(n928_adj_406), .S1(n927_adj_405));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_3.INIT0 = 16'h0e1f;
    defparam mod_271_add_633_3.INIT1 = 16'hf1e0;
    defparam mod_271_add_633_3.INJECT1_0 = "NO";
    defparam mod_271_add_633_3.INJECT1_1 = "NO";
    LUT4 mod_271_i563_3_lut_4_lut (.A(n28425), .B(n13059), .C(n809), .D(n772), 
         .Z(n826_adj_27)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i563_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_683_3 (.A0(n285_adj_216), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n13122), .B1(n20407), .C1(n995_adj_298), 
          .D1(n284_adj_215), .CIN(n24189), .COUT(n24190), .S0(n1053_adj_309), 
          .S1(n1052_adj_308));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_3.INIT0 = 16'h5aaa;
    defparam div_276_add_683_3.INIT1 = 16'h0e1f;
    defparam div_276_add_683_3.INJECT1_0 = "NO";
    defparam div_276_add_683_3.INJECT1_1 = "NO";
    CCU2D div_276_add_683_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n286_adj_217), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24189));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_683_1.INIT0 = 16'h0000;
    defparam div_276_add_683_1.INIT1 = 16'h5555;
    defparam div_276_add_683_1.INJECT1_0 = "NO";
    defparam div_276_add_683_1.INJECT1_1 = "NO";
    LUT4 mod_271_i565_3_lut_4_lut (.A(n28425), .B(n13059), .C(n811), .D(n774), 
         .Z(n828_adj_28)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i565_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i572_3_lut_4_lut (.A(n28425), .B(n13059), .C(n818), .D(n28427), 
         .Z(n835)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mod_271_i572_3_lut_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_633_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(temp2_8__N_286[3]), .B1(TMP[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n24319), .S1(n929_adj_407));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_633_1.INIT0 = 16'hF000;
    defparam mod_271_add_633_1.INIT1 = 16'h6666;
    defparam mod_271_add_633_1.INJECT1_0 = "NO";
    defparam mod_271_add_633_1.INJECT1_1 = "NO";
    LUT4 i20879_2_lut_rep_202_3_lut_4_lut (.A(n28204), .B(n28219), .C(n28205), 
         .D(n235_adj_444), .Z(n28198)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i20879_2_lut_rep_202_3_lut_4_lut.init = 16'hfef0;
    LUT4 mod_271_i571_3_lut_4_lut_4_lut (.A(n28426), .B(n780), .C(n817), 
         .D(n13059), .Z(n834_adj_3)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_271_i571_3_lut_4_lut_4_lut.init = 16'hf0c4;
    CCU2D mod_271_add_374_7 (.A0(n13081), .B0(n28499), .C0(n485), .D0(n448), 
          .A1(n13081), .B1(n28499), .C1(n484), .D1(n447), .CIN(n24073), 
          .COUT(n24074), .S0(n539), .S1(n538));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_374_7.INIT0 = 16'h0e1f;
    defparam mod_271_add_374_7.INIT1 = 16'h0e1f;
    defparam mod_271_add_374_7.INJECT1_0 = "NO";
    defparam mod_271_add_374_7.INJECT1_1 = "NO";
    LUT4 i17775_2_lut_rep_428_3_lut_4_lut (.A(n28567), .B(n28427), .C(n13059), 
         .D(n780), .Z(n28424)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i17775_2_lut_rep_428_3_lut_4_lut.init = 16'hfef0;
    CCU2D div_276_add_644_13 (.A0(n28234), .B0(n20399), .C0(n928), .D0(n889), 
          .A1(n28234), .B1(n20399), .C1(n927_adj_281), .D1(n888), .CIN(n24187), 
          .S0(n985_adj_292), .S1(n984_adj_291));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_644_13.INIT0 = 16'h0e1f;
    defparam div_276_add_644_13.INIT1 = 16'h0e1f;
    defparam div_276_add_644_13.INJECT1_0 = "NO";
    defparam div_276_add_644_13.INJECT1_1 = "NO";
    LUT4 i17592_2_lut_rep_430_4_lut (.A(n673), .B(n764), .C(n28429), .D(n28567), 
         .Z(n28426)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i17592_2_lut_rep_430_4_lut.init = 16'hffca;
    LUT4 i4_2_lut_4_lut (.A(n717), .B(n754), .C(n28429), .D(n776), .Z(n13_adj_391)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i4_2_lut_4_lut.init = 16'hffca;
    CCU2D mod_271_add_374_5 (.A0(n28504), .B0(n13081), .C0(n487), .D0(n28510), 
          .A1(n13081), .B1(n28499), .C1(n486), .D1(n449), .CIN(n24072), 
          .COUT(n24073), .S0(n541), .S1(n540));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_374_5.INIT0 = 16'h0e3f;
    defparam mod_271_add_374_5.INIT1 = 16'h0e1f;
    defparam mod_271_add_374_5.INJECT1_0 = "NO";
    defparam mod_271_add_374_5.INJECT1_1 = "NO";
    CCU2D zpone_3__I_21_unary_minus_2_add_3_8 (.A0(zpone_3__N_340[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_340[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24317), .S0(n3_adj_374), 
          .S1(n2_adj_373));   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_unary_minus_2_add_3_8.INIT0 = 16'hf555;
    defparam zpone_3__I_21_unary_minus_2_add_3_8.INIT1 = 16'hf555;
    defparam zpone_3__I_21_unary_minus_2_add_3_8.INJECT1_0 = "NO";
    defparam zpone_3__I_21_unary_minus_2_add_3_8.INJECT1_1 = "NO";
    CCU2D zpone_3__I_21_unary_minus_2_add_3_6 (.A0(zpone_3__N_340[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_340[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24316), .COUT(n24317), .S0(n5_adj_376), 
          .S1(n4_adj_375));   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_unary_minus_2_add_3_6.INIT0 = 16'hf555;
    defparam zpone_3__I_21_unary_minus_2_add_3_6.INIT1 = 16'hf555;
    defparam zpone_3__I_21_unary_minus_2_add_3_6.INJECT1_0 = "NO";
    defparam zpone_3__I_21_unary_minus_2_add_3_6.INJECT1_1 = "NO";
    LUT4 mod_271_i535_3_lut_rep_431_4_lut (.A(n28430), .B(n13058), .C(n764), 
         .D(n673), .Z(n28427)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i535_3_lut_rep_431_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i525_3_lut_rep_432_4_lut (.A(n28430), .B(n13058), .C(n754), 
         .D(n717), .Z(n28428)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i525_3_lut_rep_432_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_644_11 (.A0(n28234), .B0(n20399), .C0(n930), .D0(n891), 
          .A1(n28234), .B1(n20399), .C1(n929), .D1(n890), .CIN(n24186), 
          .COUT(n24187), .S0(n987), .S1(n986));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_644_11.INIT0 = 16'h0e1f;
    defparam div_276_add_644_11.INIT1 = 16'h0e1f;
    defparam div_276_add_644_11.INJECT1_0 = "NO";
    defparam div_276_add_644_11.INJECT1_1 = "NO";
    CCU2D mod_271_add_374_3 (.A0(n13081), .B0(n28499), .C0(n489), .D0(n452), 
          .A1(n28513), .B1(n397_adj_209), .C1(n488), .D1(n28490), .CIN(n24071), 
          .COUT(n24072), .S0(n543), .S1(n542));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_374_3.INIT0 = 16'h0e1f;
    defparam mod_271_add_374_3.INIT1 = 16'hf099;
    defparam mod_271_add_374_3.INJECT1_0 = "NO";
    defparam mod_271_add_374_3.INJECT1_1 = "NO";
    LUT4 mod_271_i526_3_lut_4_lut (.A(n28430), .B(n13058), .C(n755), .D(n718), 
         .Z(n772)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i526_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_272_add_2_16 (.A0(n175), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n174), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23981), 
          .COUT(n23982), .S0(n1518), .S1(n1517));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_16.INIT0 = 16'h5555;
    defparam sub_272_add_2_16.INIT1 = 16'h5555;
    defparam sub_272_add_2_16.INJECT1_0 = "NO";
    defparam sub_272_add_2_16.INJECT1_1 = "NO";
    CCU2D div_276_add_644_9 (.A0(n28234), .B0(n20399), .C0(n932_adj_282), 
          .D0(n893), .A1(n28234), .B1(n20399), .C1(n931), .D1(n892), 
          .CIN(n24185), .COUT(n24186), .S0(n989), .S1(n988));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_644_9.INIT0 = 16'h0e1f;
    defparam div_276_add_644_9.INIT1 = 16'h0e1f;
    defparam div_276_add_644_9.INJECT1_0 = "NO";
    defparam div_276_add_644_9.INJECT1_1 = "NO";
    LUT4 mod_271_i524_3_lut_4_lut (.A(n28430), .B(n13058), .C(n753), .D(n716), 
         .Z(n770)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i524_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i532_3_lut_4_lut (.A(n28430), .B(n13058), .C(n761), .D(n724), 
         .Z(n778)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i532_3_lut_4_lut.init = 16'hf1e0;
    CCU2D mod_271_add_374_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n507), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n24071), .S1(n544));   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_add_374_1.INIT0 = 16'hF000;
    defparam mod_271_add_374_1.INIT1 = 16'h5555;
    defparam mod_271_add_374_1.INJECT1_0 = "NO";
    defparam mod_271_add_374_1.INJECT1_1 = "NO";
    LUT4 mod_271_i527_3_lut_4_lut (.A(n28430), .B(n13058), .C(n756), .D(n719), 
         .Z(n773)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i527_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_272_add_2_14 (.A0(n342), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n287_adj_288), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n23980), .COUT(n23981), .S0(n1520), .S1(n1519));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_14.INIT0 = 16'h5555;
    defparam sub_272_add_2_14.INIT1 = 16'h5555;
    defparam sub_272_add_2_14.INJECT1_0 = "NO";
    defparam sub_272_add_2_14.INJECT1_1 = "NO";
    LUT4 mod_271_i531_3_lut_4_lut (.A(n28430), .B(n13058), .C(n760), .D(n723), 
         .Z(n777)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i531_3_lut_4_lut.init = 16'hf1e0;
    CCU2D sub_272_add_2_12 (.A0(n452), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n397_adj_209), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n23979), .COUT(n23980), .S0(n1522), .S1(n1521));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_12.INIT0 = 16'h5555;
    defparam sub_272_add_2_12.INIT1 = 16'h5555;
    defparam sub_272_add_2_12.INJECT1_0 = "NO";
    defparam sub_272_add_2_12.INJECT1_1 = "NO";
    CCU2D zpone_3__I_21_unary_minus_2_add_3_4 (.A0(zpone_3__N_340[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_340[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24315), .COUT(n24316), .S0(n7_adj_378), 
          .S1(n6_adj_377));   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_unary_minus_2_add_3_4.INIT0 = 16'hf555;
    defparam zpone_3__I_21_unary_minus_2_add_3_4.INIT1 = 16'hf555;
    defparam zpone_3__I_21_unary_minus_2_add_3_4.INJECT1_0 = "NO";
    defparam zpone_3__I_21_unary_minus_2_add_3_4.INJECT1_1 = "NO";
    LUT4 mod_271_i528_3_lut_4_lut (.A(n28430), .B(n13058), .C(n757), .D(n720), 
         .Z(n774)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i528_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_644_7 (.A0(n28234), .B0(n20399), .C0(n934_adj_284), 
          .D0(n895), .A1(n28234), .B1(n20399), .C1(n933_adj_283), .D1(n894), 
          .CIN(n24184), .COUT(n24185), .S0(n991_adj_294), .S1(n990_adj_293));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_644_7.INIT0 = 16'hf1e0;
    defparam div_276_add_644_7.INIT1 = 16'h0e1f;
    defparam div_276_add_644_7.INJECT1_0 = "NO";
    defparam div_276_add_644_7.INJECT1_1 = "NO";
    LUT4 mod_271_i530_3_lut_4_lut (.A(n28430), .B(n13058), .C(n759), .D(n722), 
         .Z(n776)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i530_3_lut_4_lut.init = 16'hf1e0;
    CCU2D zpone_3__I_17_add_255_9 (.A0(n13044), .B0(n28450), .C0(n357_adj_60), 
          .D0(n334_adj_56), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24070), .S0(n390_adj_74));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_255_9.INIT0 = 16'h0e1f;
    defparam zpone_3__I_17_add_255_9.INIT1 = 16'h0000;
    defparam zpone_3__I_17_add_255_9.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_255_9.INJECT1_1 = "NO";
    LUT4 zpzone_3__I_20_i156_3_lut_4_lut_4_lut (.A(n28292), .B(n28336), 
         .C(n28278), .D(n175_adj_424), .Z(zpzone_3__N_254[2])) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam zpzone_3__I_20_i156_3_lut_4_lut_4_lut.init = 16'h56a9;
    CCU2D sub_272_add_2_10 (.A0(n562), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n507), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n23978), 
          .COUT(n23979), .S0(n1524), .S1(n1523));   // d:/lab_6/temperature.vhd(327[11:16])
    defparam sub_272_add_2_10.INIT0 = 16'h5555;
    defparam sub_272_add_2_10.INIT1 = 16'h5555;
    defparam sub_272_add_2_10.INJECT1_0 = "NO";
    defparam sub_272_add_2_10.INJECT1_1 = "NO";
    LUT4 mod_271_i529_3_lut_4_lut (.A(n28430), .B(n13058), .C(n758), .D(n721), 
         .Z(n775)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i529_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i534_3_lut_4_lut (.A(n28430), .B(n13058), .C(n763), .D(n28433), 
         .Z(n780)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i534_3_lut_4_lut.init = 16'hf1e0;
    CCU2D div_276_add_644_5 (.A0(n28234), .B0(n20399), .C0(n936_adj_286), 
          .D0(n28235), .A1(n28234), .B1(n20399), .C1(n935_adj_285), 
          .D1(n896), .CIN(n24183), .COUT(n24184), .S0(n993_adj_296), 
          .S1(n992_adj_295));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_644_5.INIT0 = 16'h0e1f;
    defparam div_276_add_644_5.INIT1 = 16'hf1e0;
    defparam div_276_add_644_5.INJECT1_0 = "NO";
    defparam div_276_add_644_5.INJECT1_1 = "NO";
    LUT4 mod_271_i533_3_lut_4_lut_4_lut (.A(n28431), .B(n725), .C(n762), 
         .D(n13058), .Z(n779)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_271_i533_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i17733_2_lut_rep_434_3_lut (.A(n673), .B(n28433), .C(n725), .Z(n28430)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17733_2_lut_rep_434_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_433_3_lut_4_lut (.A(n673), .B(n28433), .C(n13058), 
         .D(n725), .Z(n28429)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_433_3_lut_4_lut.init = 16'hfef0;
    LUT4 i6705_2_lut_3_lut_4_lut_4_lut_else_4_lut (.A(zpzone_3__N_333[3]), 
         .B(n28292), .C(n28291), .D(zpzone_3__N_333[6]), .Z(n29283)) /* synthesis lut_function=(A (C (D))+!A !(B (C+!(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(333[11:16])
    defparam i6705_2_lut_3_lut_4_lut_4_lut_else_4_lut.init = 16'hb500;
    LUT4 n23381_bdd_3_lut_4_lut (.A(n378_adj_73), .B(n28434), .C(zpone_3__N_304[8]), 
         .D(n28446), .Z(n28027)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam n23381_bdd_3_lut_4_lut.init = 16'h1fe0;
    CCU2D div_276_add_644_3 (.A0(n284_adj_215), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n28234), .B1(n20399), .C1(n937_adj_287), 
          .D1(n283_adj_214), .CIN(n24182), .COUT(n24183), .S0(n995_adj_298), 
          .S1(n994_adj_297));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_644_3.INIT0 = 16'h5aaa;
    defparam div_276_add_644_3.INIT1 = 16'h0e1f;
    defparam div_276_add_644_3.INJECT1_0 = "NO";
    defparam div_276_add_644_3.INJECT1_1 = "NO";
    LUT4 i17588_2_lut_rep_435_4_lut (.A(n672), .B(n709), .C(n28435), .D(n673), 
         .Z(n28431)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i17588_2_lut_rep_435_4_lut.init = 16'hffca;
    LUT4 i21007_2_lut_rep_436_3_lut (.A(n28442), .B(n13020), .C(n378_adj_73), 
         .Z(n28432)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(298[10:15])
    defparam i21007_2_lut_rep_436_3_lut.init = 16'hfefe;
    LUT4 mod_271_i497_3_lut_rep_437_4_lut (.A(n28437), .B(n13092), .C(n709), 
         .D(n672), .Z(n28433)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i497_3_lut_rep_437_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i487_3_lut_4_lut (.A(n28437), .B(n13092), .C(n699), .D(n662), 
         .Z(n716)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i487_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i494_3_lut_4_lut (.A(n28437), .B(n13092), .C(n706), .D(n669), 
         .Z(n723)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i494_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i24359 (.BLUT(n28627), .ALUT(n28628), .C0(zpzone_3__N_333[4]), 
          .Z(n28283));
    LUT4 mod_271_i488_3_lut_4_lut (.A(n28437), .B(n13092), .C(n700), .D(n28441), 
         .Z(n717)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i488_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23769_2_lut (.A(n1157), .B(n1155), .Z(n27169)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23769_2_lut.init = 16'heeee;
    LUT4 mod_271_i492_3_lut_4_lut (.A(n28437), .B(n13092), .C(n704), .D(n667), 
         .Z(n721)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i492_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i490_3_lut_4_lut (.A(n28437), .B(n13092), .C(n702), .D(n665), 
         .Z(n719)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i490_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i489_3_lut_4_lut (.A(n28437), .B(n13092), .C(n701), .D(n664), 
         .Z(n718)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i489_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i493_3_lut_4_lut (.A(n28437), .B(n13092), .C(n705), .D(n668), 
         .Z(n722)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i493_3_lut_4_lut.init = 16'hf1e0;
    CCU2D zpone_3__I_17_add_255_7 (.A0(n13044), .B0(n28450), .C0(n359_adj_62), 
          .D0(n336_adj_58), .A1(n13044), .B1(n28450), .C1(n358_adj_61), 
          .D1(n335_adj_57), .CIN(n24069), .COUT(n24070), .S0(n392_adj_76), 
          .S1(n391_adj_75));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_255_7.INIT0 = 16'h0e1f;
    defparam zpone_3__I_17_add_255_7.INIT1 = 16'h0e1f;
    defparam zpone_3__I_17_add_255_7.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_255_7.INJECT1_1 = "NO";
    LUT4 mod_271_i496_3_lut_4_lut (.A(n28437), .B(n13092), .C(n708), .D(n28440), 
         .Z(n725)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i496_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5_4_lut_adj_117 (.A(n296), .B(n7_adj_643), .C(n293), .D(n8_adj_641), 
         .Z(n302_adj_432)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_117.init = 16'hfffe;
    LUT4 ones_3__I_18_i207_3_lut (.A(n266), .B(n287_adj_436), .C(n272_adj_441), 
         .Z(n296)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i207_3_lut.init = 16'hcaca;
    LUT4 mod_271_i491_3_lut_4_lut (.A(n28437), .B(n13092), .C(n703), .D(n666), 
         .Z(n720)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i491_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_16_i312_3_lut_4_lut (.A(n378), .B(n28438), .C(tens_3__N_294[8]), 
         .D(n28458), .Z(tens_3__N_229[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam tens_3__I_16_i312_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_4_lut_adj_118 (.A(n20501), .B(n265_adj_442), .C(n286_adj_437), 
         .D(n272_adj_441), .Z(n7_adj_643)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_118.init = 16'hfaee;
    CCU2D zpone_3__I_17_add_255_5 (.A0(n28453), .B0(n13044), .C0(n361_adj_64), 
          .D0(n28468), .A1(n13044), .B1(n28450), .C1(n360_adj_63), .D1(n337_adj_59), 
          .CIN(n24068), .COUT(n24069), .S0(n394_adj_78), .S1(n393_adj_77));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_255_5.INIT0 = 16'h0e3f;
    defparam zpone_3__I_17_add_255_5.INIT1 = 16'h0e1f;
    defparam zpone_3__I_17_add_255_5.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_255_5.INJECT1_1 = "NO";
    CCU2D div_276_add_644_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n285_adj_216), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24182));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_644_1.INIT0 = 16'h0000;
    defparam div_276_add_644_1.INIT1 = 16'h5555;
    defparam div_276_add_644_1.INJECT1_0 = "NO";
    defparam div_276_add_644_1.INJECT1_1 = "NO";
    LUT4 ones_3__I_18_i204_3_lut (.A(n263), .B(n284_adj_439), .C(n272_adj_441), 
         .Z(n293)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i204_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_adj_119 (.A(n264_adj_443), .B(n292), .C(n285_adj_438), 
         .D(n272_adj_441), .Z(n8_adj_641)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_119.init = 16'hfcee;
    LUT4 ones_3__I_18_i203_3_lut (.A(n262), .B(n283_adj_96), .C(n272_adj_441), 
         .Z(n292)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i203_3_lut.init = 16'hcaca;
    LUT4 mod_271_i495_3_lut_4_lut_4_lut (.A(n28439), .B(n670), .C(n707), 
         .D(n13092), .Z(n724)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_271_i495_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i20992_2_lut_rep_440_3_lut (.A(n28449), .B(n13103), .C(n378), 
         .Z(n28436)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(296[10:14])
    defparam i20992_2_lut_rep_440_3_lut.init = 16'hfefe;
    CCU2D zpone_3__I_17_add_255_3 (.A0(n13044), .B0(n28450), .C0(n363_adj_66), 
          .D0(n241_adj_48), .A1(n28471), .B1(n28525), .C1(n28446), .D1(n362_adj_65), 
          .CIN(n24067), .COUT(n24068), .S0(n396_adj_80), .S1(n395_adj_79));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_255_3.INIT0 = 16'h0e1f;
    defparam zpone_3__I_17_add_255_3.INIT1 = 16'hf909;
    defparam zpone_3__I_17_add_255_3.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_255_3.INJECT1_1 = "NO";
    LUT4 i17526_2_lut_rep_441_3_lut (.A(n672), .B(n28440), .C(n670), .Z(n28437)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17526_2_lut_rep_441_3_lut.init = 16'he0e0;
    CCU2D zpone_3__I_21_unary_minus_2_add_3_2 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(zpone_3__N_340[1]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n24315), .S1(n8_adj_379));   // d:/lab_6/temperature.vhd(334[11:23])
    defparam zpone_3__I_21_unary_minus_2_add_3_2.INIT0 = 16'h0000;
    defparam zpone_3__I_21_unary_minus_2_add_3_2.INIT1 = 16'hf555;
    defparam zpone_3__I_21_unary_minus_2_add_3_2.INJECT1_0 = "NO";
    defparam zpone_3__I_21_unary_minus_2_add_3_2.INJECT1_1 = "NO";
    CCU2D div_276_add_605_13 (.A0(n13124), .B0(n20373), .C0(n870_adj_272), 
          .D0(n831_adj_265), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n24181), .S0(n927_adj_281));   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_add_605_13.INIT0 = 16'h0e1f;
    defparam div_276_add_605_13.INIT1 = 16'h0000;
    defparam div_276_add_605_13.INJECT1_0 = "NO";
    defparam div_276_add_605_13.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_120 (.A(n264_adj_443), .B(n262), .C(n263), .D(n6_adj_648), 
         .Z(n272_adj_441)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_120.init = 16'hfffe;
    CCU2D zpone_3__I_17_add_255_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n242_adj_49), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n24067), .S1(n397_adj_81));   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_add_255_1.INIT0 = 16'hF000;
    defparam zpone_3__I_17_add_255_1.INIT1 = 16'h5555;
    defparam zpone_3__I_17_add_255_1.INJECT1_0 = "NO";
    defparam zpone_3__I_17_add_255_1.INJECT1_1 = "NO";
    CCU2D tens_3__I_19_unary_minus_2_add_3_10 (.A0(tens_3__N_323[8]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(tens_3__N_323[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n24313), .S0(n3_adj_324), 
          .S1(n2_adj_323));   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_unary_minus_2_add_3_10.INIT0 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_10.INIT1 = 16'hf555;
    defparam tens_3__I_19_unary_minus_2_add_3_10.INJECT1_0 = "NO";
    defparam tens_3__I_19_unary_minus_2_add_3_10.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_121 (.A(ones_3__N_314[2]), .B(n265_adj_442), .C(n266), 
         .D(n28195), .Z(n6_adj_648)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_121.init = 16'hecfc;
    LUT4 i1_2_lut_rep_199_3_lut_4_lut_4_lut (.A(n28204), .B(n28203), .C(n235_adj_444), 
         .D(n28219), .Z(n28195)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (D)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_rep_199_3_lut_4_lut_4_lut.init = 16'hfc13;
    LUT4 i1_2_lut_rep_439_3_lut_4_lut (.A(n672), .B(n28440), .C(n13092), 
         .D(n670), .Z(n28435)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_439_3_lut_4_lut.init = 16'hfef0;
    LUT4 i2_4_lut_adj_122 (.A(n720_adj_238), .B(n722_adj_240), .C(n721_adj_239), 
         .D(n4_adj_114), .Z(n20643)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_122.init = 16'ha080;
    LUT4 i17524_2_lut_rep_443_4_lut (.A(n617), .B(n654), .C(n28443), .D(n672), 
         .Z(n28439)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i17524_2_lut_rep_443_4_lut.init = 16'hffca;
    LUT4 i16757_2_lut_rep_206 (.A(n28204), .B(n28203), .C(n235_adj_444), 
         .D(n28219), .Z(n28202)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i16757_2_lut_rep_206.init = 16'h0313;
    LUT4 i2_4_lut_adj_123 (.A(n556_adj_581), .B(n558_adj_579), .C(n557_adj_580), 
         .D(n4_adj_638), .Z(n20409)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_123.init = 16'ha080;
    LUT4 ones_3__I_18_i186_4_lut_3_lut_4_lut (.A(n28204), .B(n28203), .C(n235_adj_444), 
         .D(n28219), .Z(n266)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A !((D)+!B)) */ ;
    defparam ones_3__I_18_i186_4_lut_3_lut_4_lut.init = 16'haa46;
    LUT4 zpzone_3__I_20_i138_3_lut_4_lut_4_lut (.A(n28292), .B(n175_adj_424), 
         .C(n28285), .D(zpzone_3__N_333[3]), .Z(n13552)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;
    defparam zpzone_3__I_20_i138_3_lut_4_lut_4_lut.init = 16'hd22d;
    LUT4 i2_2_lut_4_lut_adj_124 (.A(n609), .B(n646), .C(n28443), .D(n665), 
         .Z(n10_adj_17)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i2_2_lut_4_lut_adj_124.init = 16'hffca;
    LUT4 i23584_3_lut_rep_446 (.A(n373_adj_72), .B(n242_adj_49), .C(n126_adj_43), 
         .Z(n28442)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/lab_6/temperature.vhd(298[10:15])
    defparam i23584_3_lut_rep_446.init = 16'ha8a8;
    LUT4 i2_3_lut_rep_207 (.A(n28207), .B(n232), .C(n28205), .Z(n28203)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i2_3_lut_rep_207.init = 16'hfefe;
    LUT4 i23585_2_lut_rep_438_4_lut (.A(n373_adj_72), .B(n242_adj_49), .C(n126_adj_43), 
         .D(n13020), .Z(n28434)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // d:/lab_6/temperature.vhd(298[10:15])
    defparam i23585_2_lut_rep_438_4_lut.init = 16'hffa8;
    LUT4 i16756_1_lut_3_lut (.A(n28207), .B(n232), .C(n28205), .Z(n19767)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i16756_1_lut_3_lut.init = 16'h0101;
    LUT4 mod_271_i459_3_lut_rep_444_4_lut (.A(n28445), .B(n13091), .C(n654), 
         .D(n617), .Z(n28440)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i459_3_lut_rep_444_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i451_3_lut_rep_445_4_lut (.A(n28445), .B(n13091), .C(n646), 
         .D(n609), .Z(n28441)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i451_3_lut_rep_445_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i455_3_lut_4_lut (.A(n28445), .B(n13091), .C(n650), .D(n613), 
         .Z(n667)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i455_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i453_3_lut_4_lut (.A(n28445), .B(n13091), .C(n648), .D(n611), 
         .Z(n665)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i453_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i456_3_lut_4_lut (.A(n28445), .B(n13091), .C(n651), .D(n614), 
         .Z(n668)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i456_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_173_3_lut_4_lut_4_lut (.A(n28178), .B(n13117), .C(n304_adj_345), 
         .D(n28190), .Z(n28169)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (D)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_rep_173_3_lut_4_lut_4_lut.init = 16'hfc13;
    LUT4 mod_271_i452_3_lut_4_lut (.A(n28445), .B(n13091), .C(n647), .D(n610), 
         .Z(n664)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i452_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i450_3_lut_4_lut (.A(n28445), .B(n13091), .C(n645), .D(n608), 
         .Z(n662)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i450_3_lut_4_lut.init = 16'hf1e0;
    L6MUX21 i23988 (.D0(n27398), .D1(n27399), .SD(ser_N_380[5]), .Z(n27400));
    PFUMX i23987 (.BLUT(n27396), .ALUT(n27397), .C0(ser_N_380[4]), .Z(n27399));
    LUT4 mod_271_i454_3_lut_4_lut (.A(n28445), .B(n13091), .C(n649), .D(n612), 
         .Z(n666)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i454_3_lut_4_lut.init = 16'hf1e0;
    PFUMX ser_I_0_i60 (.BLUT(n12950), .ALUT(n59), .C0(ser_N_380[2]), .Z(n60));
    LUT4 mod_271_i458_3_lut_4_lut (.A(n28445), .B(n13091), .C(n653), .D(n28451), 
         .Z(n670)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i458_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut_4_lut_adj_125 (.A(n336_adj_58), .B(n359_adj_62), .C(n28446), 
         .D(n370_adj_69), .Z(n8_adj_658)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i2_2_lut_4_lut_adj_125.init = 16'hffca;
    LUT4 i24028_4_lut_4_lut (.A(ser_N_380[1]), .B(n27384), .C(n27346), 
         .D(n28035), .Z(n27367)) /* synthesis lut_function=(!(A (C)+!A (B (D)+!B (C)))) */ ;   // d:/lab_6/temperature.vhd(370[8:19])
    defparam i24028_4_lut_4_lut.init = 16'h0b4f;
    PFUMX ser_I_0_i57 (.BLUT(cycledata[60]), .ALUT(cycledata[61]), .C0(ser_N_380[0]), 
          .Z(n57));
    LUT4 mod_271_i457_3_lut_4_lut_4_lut (.A(n28447), .B(n615), .C(n652), 
         .D(n13091), .Z(n669)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_271_i457_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 zpone_3__I_17_i236_3_lut_rep_448_4_lut (.A(n28450), .B(n13044), 
         .C(n359_adj_62), .D(n336_adj_58), .Z(n28444)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i236_3_lut_rep_448_4_lut.init = 16'hf1e0;
    LUT4 zpone_3__I_17_i237_3_lut_4_lut (.A(n28450), .B(n13044), .C(n360_adj_63), 
         .D(n337_adj_59), .Z(n370_adj_69)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i237_3_lut_4_lut.init = 16'hf1e0;
    LUT4 zpone_3__I_17_i234_3_lut_4_lut (.A(n28450), .B(n13044), .C(n357_adj_60), 
         .D(n334_adj_56), .Z(n367_adj_67)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i234_3_lut_4_lut.init = 16'hf1e0;
    LUT4 zpone_3__I_17_i240_3_lut_4_lut (.A(n28450), .B(n13044), .C(n363_adj_66), 
         .D(n241_adj_48), .Z(n373_adj_72)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i240_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i14889_3_lut_4_lut (.A(n28450), .B(n13044), .C(n362_adj_65), 
         .D(n28455), .Z(n372_adj_71)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i14889_3_lut_4_lut.init = 16'he0f1;
    LUT4 zpone_3__I_17_i235_3_lut_4_lut (.A(n28450), .B(n13044), .C(n358_adj_61), 
         .D(n335_adj_57), .Z(n368_adj_68)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i235_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i16805_2_lut_rep_449_3_lut (.A(n617), .B(n28451), .C(n615), .Z(n28445)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i16805_2_lut_rep_449_3_lut.init = 16'he0e0;
    LUT4 mod_274_i718_3_lut_3_lut_4_lut (.A(n28296), .B(n997_adj_448), .C(n1004_adj_447), 
         .D(n996), .Z(zpzone_3__N_333[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam mod_274_i718_3_lut_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_447_3_lut_4_lut (.A(n617), .B(n28451), .C(n13091), 
         .D(n615), .Z(n28443)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_447_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_3_lut_rep_452 (.A(n126), .B(n396), .C(n397), .Z(n28448)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_rep_452.init = 16'hc8c8;
    LUT4 i1_2_lut_4_lut_adj_126 (.A(n126), .B(n396), .C(n397), .D(n13103), 
         .Z(n38)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_126.init = 16'hffc8;
    LUT4 i23635_3_lut_rep_453 (.A(n373), .B(n242), .C(n126), .Z(n28449)) /* synthesis lut_function=(A (B+(C))) */ ;   // d:/lab_6/temperature.vhd(296[10:14])
    defparam i23635_3_lut_rep_453.init = 16'ha8a8;
    LUT4 i23636_2_lut_rep_442_4_lut (.A(n373), .B(n242), .C(n126), .D(n13103), 
         .Z(n28438)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;   // d:/lab_6/temperature.vhd(296[10:14])
    defparam i23636_2_lut_rep_442_4_lut.init = 16'hffa8;
    LUT4 zpone_3__I_17_i238_3_lut_4_lut_4_lut (.A(n28453), .B(n28468), .C(n361_adj_64), 
         .D(n13044), .Z(n371_adj_70)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam zpone_3__I_17_i238_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i16801_2_lut_rep_451_4_lut (.A(n562), .B(n599), .C(n28454), .D(n617), 
         .Z(n28447)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i16801_2_lut_rep_451_4_lut.init = 16'hffca;
    LUT4 i2_2_lut_4_lut_adj_127 (.A(n336), .B(n359), .C(n28458), .D(n370), 
         .Z(n8_adj_673)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i2_2_lut_4_lut_adj_127.init = 16'hffca;
    LUT4 ones_3__I_18_i182_3_lut_4_lut (.A(n28207), .B(n28198), .C(n28202), 
         .D(n232), .Z(n262)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i182_3_lut_4_lut.init = 16'hfe01;
    LUT4 i7408_2_lut_rep_297_3_lut_4_lut (.A(n998), .B(n28298), .C(n996), 
         .D(n997_adj_448), .Z(n28293)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i7408_2_lut_rep_297_3_lut_4_lut.init = 16'h1ef0;
    LUT4 mod_274_i719_3_lut_rep_295_3_lut_4_lut (.A(n998), .B(n28298), .C(n1004_adj_447), 
         .D(n997_adj_448), .Z(n28291)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i719_3_lut_rep_295_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_2_lut_rep_450_3_lut_4_lut (.A(n241_adj_48), .B(n28455), .C(n13044), 
         .D(n28468), .Z(n28446)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_rep_450_3_lut_4_lut.init = 16'hfbf0;
    LUT4 mod_271_i421_3_lut_rep_455_4_lut (.A(n28457), .B(n13087), .C(n599), 
         .D(n562), .Z(n28451)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i421_3_lut_rep_455_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_128 (.A(n1126), .B(n28224), .C(n1127), .D(n4_adj_651), 
         .Z(n20475)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_128.init = 16'ha080;
    LUT4 mod_271_i418_3_lut_4_lut (.A(n28457), .B(n13087), .C(n596), .D(n559), 
         .Z(n613)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i418_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i413_3_lut_4_lut (.A(n28457), .B(n13087), .C(n591), .D(n554), 
         .Z(n608)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i413_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i415_3_lut_4_lut (.A(n28457), .B(n13087), .C(n593), .D(n556), 
         .Z(n610)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i415_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i417_3_lut_4_lut (.A(n28457), .B(n13087), .C(n595), .D(n558), 
         .Z(n612)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i417_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n998), .B(n28298), .C(n996), .D(n997_adj_448), 
         .Z(n20525)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i2_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 mod_274_i721_3_lut_3_lut (.A(n28299), .B(n28337), .C(n1004_adj_447), 
         .Z(zpzone_3__N_333[3])) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;
    defparam mod_274_i721_3_lut_3_lut.init = 16'h9a9a;
    LUT4 mod_271_i416_3_lut_4_lut (.A(n28457), .B(n13087), .C(n594), .D(n557), 
         .Z(n611)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i416_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i420_3_lut_4_lut (.A(n28457), .B(n13087), .C(n598), .D(n28466), 
         .Z(n615)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i420_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i414_3_lut_4_lut (.A(n28457), .B(n13087), .C(n592), .D(n555), 
         .Z(n609)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i414_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i720_3_lut_3_lut_4_lut (.A(n28337), .B(n28299), .C(n1004_adj_447), 
         .D(n998), .Z(zpzone_3__N_333[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;
    defparam mod_274_i720_3_lut_3_lut_4_lut.init = 16'hef10;
    LUT4 i1_2_lut_rep_299_3_lut (.A(n28337), .B(n28299), .C(n998), .Z(n28295)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_299_3_lut.init = 16'h1e1e;
    LUT4 i7398_2_lut_rep_300_3_lut (.A(n28337), .B(n28299), .C(n998), 
         .Z(n28296)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i7398_2_lut_rep_300_3_lut.init = 16'hfefe;
    LUT4 i7401_2_lut_rep_298_3_lut_4_lut (.A(n28337), .B(n28299), .C(n997_adj_448), 
         .D(n998), .Z(n28294)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i7401_2_lut_rep_298_3_lut_4_lut.init = 16'h0f1e;
    LUT4 mod_274_i684_3_lut_rep_303 (.A(n945_adj_462), .B(n982_adj_450), 
         .C(n950_adj_461), .Z(n28299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i684_3_lut_rep_303.init = 16'hcaca;
    LUT4 i1_2_lut_rep_301_4_lut (.A(n945_adj_462), .B(n982_adj_450), .C(n950_adj_461), 
         .D(n28337), .Z(n28297)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_301_4_lut.init = 16'h35ca;
    LUT4 zpone_3__I_17_i211_3_lut_4_lut (.A(n302_adj_54), .B(n28460), .C(n28471), 
         .D(n301_adj_53), .Z(n334_adj_56)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i211_3_lut_4_lut.init = 16'hfe01;
    LUT4 i16730_4_lut (.A(n3_adj_382), .B(STATE[3]), .C(n28626), .D(STATE[2]), 
         .Z(dq_N_413)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam i16730_4_lut.init = 16'hfcee;
    LUT4 mod_271_i419_3_lut_4_lut_4_lut (.A(n28462), .B(n560), .C(n597), 
         .D(n13087), .Z(n614)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_271_i419_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i2_3_lut_adj_129 (.A(n301_adj_53), .B(n302_adj_54), .C(n28477), 
         .Z(n13063)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i2_3_lut_adj_129.init = 16'hfefe;
    LUT4 tens_3__I_16_i236_3_lut_rep_456_4_lut (.A(n28459), .B(n13107), 
         .C(n359), .D(n336), .Z(n28452)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i236_3_lut_rep_456_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_302_4_lut (.A(n945_adj_462), .B(n982_adj_450), .C(n950_adj_461), 
         .D(n28337), .Z(n28298)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_302_4_lut.init = 16'hffca;
    LUT4 zpone_3__I_17_i188_4_lut (.A(n268_adj_50), .B(n269_adj_51), .C(n278_adj_52), 
         .D(n28481), .Z(n301_adj_53)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i188_4_lut.init = 16'haaa9;
    LUT4 tens_3__I_16_i234_3_lut_4_lut (.A(n28459), .B(n13107), .C(n357), 
         .D(n334), .Z(n367)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i234_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23569_2_lut_4_lut (.A(n884_adj_477), .B(n921_adj_204), .C(n28302), 
         .D(n933_adj_180), .Z(n26955)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i23569_2_lut_4_lut.init = 16'hffca;
    LUT4 tens_3__I_16_i237_3_lut_4_lut (.A(n28459), .B(n13107), .C(n360), 
         .D(n337), .Z(n370)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i237_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_16_i240_3_lut_4_lut (.A(n28459), .B(n13107), .C(n363), 
         .D(n241), .Z(n373)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i240_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_130 (.A(n13_adj_653), .B(n1117), .C(n14_adj_652), 
         .D(n28225), .Z(n13119)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i1_4_lut_adj_130.init = 16'hfffe;
    LUT4 i15334_3_lut_4_lut (.A(n28459), .B(n13107), .C(n362), .D(n28467), 
         .Z(n372)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i15334_3_lut_4_lut.init = 16'he0f1;
    LUT4 i2_4_lut_adj_131 (.A(n268_adj_50), .B(n14_adj_425), .C(n269_adj_51), 
         .D(n28492), .Z(n278_adj_52)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_131.init = 16'h0504;
    LUT4 i2_2_lut_4_lut_adj_132 (.A(n881_adj_480), .B(n918_adj_201), .C(n28302), 
         .D(n937_adj_183), .Z(n12_adj_656)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i2_2_lut_4_lut_adj_132.init = 16'hffca;
    LUT4 tens_3__I_16_i235_3_lut_4_lut (.A(n28459), .B(n13107), .C(n358), 
         .D(n335), .Z(n368)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i235_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_16_i238_3_lut_4_lut_4_lut (.A(n28463), .B(n28484), .C(n361), 
         .D(n13107), .Z(n371)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam tens_3__I_16_i238_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i1_2_lut_rep_306 (.A(n20571), .B(n13108), .Z(n28302)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_306.init = 16'heeee;
    LUT4 i5_4_lut_adj_133 (.A(n1119), .B(n1121), .C(n1123), .D(n1120), 
         .Z(n13_adj_653)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i5_4_lut_adj_133.init = 16'hfffe;
    LUT4 mod_274_i640_3_lut_rep_304_4_lut (.A(n20571), .B(n13108), .C(n921_adj_204), 
         .D(n884_adj_477), .Z(n28300)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i640_3_lut_rep_304_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i637_3_lut_rep_305_4_lut (.A(n20571), .B(n13108), .C(n918_adj_201), 
         .D(n881_adj_480), .Z(n28301)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i637_3_lut_rep_305_4_lut.init = 16'hf1e0;
    LUT4 i6_4_lut_adj_134 (.A(n1125), .B(n1122), .C(n1124), .D(n1118_adj_317), 
         .Z(n14_adj_652)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i6_4_lut_adj_134.init = 16'hfffe;
    LUT4 ones_3__I_18_i162_3_lut_4_lut_rep_211 (.A(n28210), .B(n28208), 
         .C(n211), .D(n203_adj_445), .Z(n28207)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i162_3_lut_4_lut_rep_211.init = 16'hf807;
    LUT4 zpone_3__I_17_i212_3_lut_4_lut (.A(n28477), .B(n28464), .C(n28471), 
         .D(n302_adj_54), .Z(n335_adj_57)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i212_3_lut_4_lut.init = 16'hfe01;
    LUT4 mod_274_i644_3_lut_4_lut (.A(n20571), .B(n13108), .C(n925_adj_177), 
         .D(n888_adj_474), .Z(n942)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i644_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i646_3_lut_4_lut (.A(n20571), .B(n13108), .C(n927_adj_179), 
         .D(n890_adj_473), .Z(n944_adj_463)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i646_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i639_3_lut_4_lut (.A(n20571), .B(n13108), .C(n920_adj_203), 
         .D(n883_adj_478), .Z(n937_adj_183)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i639_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n28210), .B(n28208), .C(n211), .D(n203_adj_445), 
         .Z(n4_adj_418)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i1_2_lut_4_lut_4_lut.init = 16'hfea7;
    LUT4 mod_274_i645_3_lut_4_lut (.A(n20571), .B(n13108), .C(n926_adj_178), 
         .D(n28304), .Z(n943_adj_464)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i645_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17085_2_lut_rep_457_3_lut_4_lut (.A(n28465), .B(n13063), .C(n241_adj_48), 
         .D(n28525), .Z(n28453)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+!(D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i17085_2_lut_rep_457_3_lut_4_lut.init = 16'hf2fd;
    LUT4 zpone_3__I_17_i214_3_lut_4_lut (.A(n28465), .B(n13063), .C(n28470), 
         .D(n304_adj_55), .Z(n337_adj_59)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i214_3_lut_4_lut.init = 16'h2fd0;
    LUT4 zpone_3__I_17_i213_3_lut_4_lut (.A(n28465), .B(n13063), .C(n28464), 
         .D(n28477), .Z(n336_adj_58)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i213_3_lut_4_lut.init = 16'hf20d;
    LUT4 mod_274_i641_3_lut_4_lut (.A(n20571), .B(n13108), .C(n922_adj_205), 
         .D(n885_adj_476), .Z(n939_adj_467)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i641_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17005_2_lut_rep_461_3_lut (.A(n562), .B(n28466), .C(n560), .Z(n28457)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17005_2_lut_rep_461_3_lut.init = 16'he0e0;
    LUT4 div_276_mux_3_i4_3_lut (.A(n1576), .B(n16_adj_198), .C(n1248), 
         .Z(n287_adj_218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_458_3_lut_4_lut (.A(n562), .B(n28466), .C(n13087), 
         .D(n560), .Z(n28454)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_458_3_lut_4_lut.init = 16'hfef0;
    LUT4 mod_274_i638_3_lut_4_lut (.A(n20571), .B(n13108), .C(n919_adj_202), 
         .D(n882_adj_479), .Z(n936_adj_182)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i638_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4_4_lut_adj_135 (.A(n593_adj_119), .B(n591_adj_117), .C(n595_adj_120), 
         .D(n6_adj_8), .Z(n13061)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i4_4_lut_adj_135.init = 16'hfffe;
    LUT4 i1_2_lut_rep_462_3_lut_4_lut (.A(n241), .B(n28467), .C(n13107), 
         .D(n28484), .Z(n28458)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_rep_462_3_lut_4_lut.init = 16'hfbf0;
    LUT4 mod_274_i643_3_lut_4_lut (.A(n20571), .B(n13108), .C(n924_adj_176), 
         .D(n887), .Z(n941_adj_465)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i643_3_lut_4_lut.init = 16'hf1e0;
    LUT4 ones_3__I_18_i230_3_lut (.A(n28194), .B(n28221), .C(n302_adj_432), 
         .Z(ones_3__N_238[2])) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i230_3_lut.init = 16'h9a9a;
    LUT4 mod_274_i635_3_lut_4_lut (.A(n20571), .B(n13108), .C(n916_adj_470), 
         .D(n879_adj_482), .Z(n933_adj_180)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i635_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i636_3_lut_4_lut (.A(n20571), .B(n13108), .C(n917_adj_200), 
         .D(n880_adj_481), .Z(n934_adj_181)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i636_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i642_3_lut_4_lut (.A(n20571), .B(n13108), .C(n923_adj_206), 
         .D(n886_adj_475), .Z(n940_adj_466)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i642_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i634_3_lut_4_lut (.A(n20571), .B(n13108), .C(n915_adj_471), 
         .D(n28303), .Z(n932)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i634_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23960_2_lut (.A(n27246), .B(n27368), .Z(n27372)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23960_2_lut.init = 16'heeee;
    LUT4 i20357_2_lut_rep_460_3_lut_4_lut (.A(n304_adj_55), .B(n28470), 
         .C(n302_adj_54), .D(n28477), .Z(n28456)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i20357_2_lut_rep_460_3_lut_4_lut.init = 16'hfff8;
    LUT4 i17128_2_lut_rep_181 (.A(n28178), .B(n13117), .C(n304_adj_345), 
         .D(n28190), .Z(n28177)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i17128_2_lut_rep_181.init = 16'h0313;
    LUT4 tens_3__I_19_i215_4_lut_3_lut_rep_179_4_lut (.A(n28178), .B(n13117), 
         .C(n304_adj_345), .D(n28190), .Z(n28175)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A !((D)+!B)) */ ;
    defparam tens_3__I_19_i215_4_lut_3_lut_rep_179_4_lut.init = 16'haa46;
    LUT4 i2_2_lut_4_lut_adj_136 (.A(n824_adj_504), .B(n861_adj_493), .C(n28305), 
         .D(n879_adj_482), .Z(n10_adj_332)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i2_2_lut_4_lut_adj_136.init = 16'hffca;
    LUT4 div_276_mux_3_i3_3_lut (.A(n1577), .B(n17_adj_199), .C(n1248), 
         .Z(n288_adj_219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_137 (.A(n835_adj_494), .B(n872_adj_483), .C(n28305), 
         .D(n890_adj_473), .Z(n4_adj_5)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_adj_137.init = 16'hffca;
    LUT4 i1_2_lut_rep_309 (.A(n20070), .B(n13106), .Z(n28305)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_309.init = 16'heeee;
    LUT4 ones_3__I_18_i163_3_lut_rep_209_4_lut (.A(n28209), .B(n28220), 
         .C(n211), .D(n28210), .Z(n28205)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i163_3_lut_rep_209_4_lut.init = 16'hf20d;
    LUT4 i20637_2_lut_rep_166 (.A(n378_adj_363), .B(tens_3__N_230[0]), .Z(n28162)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i20637_2_lut_rep_166.init = 16'heeee;
    LUT4 n27964_bdd_4_lut (.A(n27964), .B(n27963), .C(STATE[2]), .D(n28574), 
         .Z(clk_c_enable_53)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n27964_bdd_4_lut.init = 16'h00ca;
    LUT4 mod_274_i597_3_lut_rep_307_4_lut (.A(n20070), .B(n13106), .C(n861_adj_493), 
         .D(n824_adj_504), .Z(n28303)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i597_3_lut_rep_307_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i608_3_lut_rep_308_4_lut (.A(n20070), .B(n13106), .C(n872_adj_483), 
         .D(n835_adj_494), .Z(n28304)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i608_3_lut_rep_308_4_lut.init = 16'hf1e0;
    LUT4 ones_3__I_18_i185_3_lut_4_lut (.A(n28200), .B(n28203), .C(n28201), 
         .D(n235_adj_444), .Z(n265_adj_442)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i185_3_lut_4_lut.init = 16'h2fd0;
    LUT4 ones_3__I_18_i184_3_lut_4_lut (.A(n28200), .B(n28203), .C(n28199), 
         .D(n28205), .Z(n264_adj_443)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i184_3_lut_4_lut.init = 16'hf20d;
    LUT4 i23985_4_lut_4_lut (.A(ser_N_380[1]), .B(ser_N_380[3]), .C(n60), 
         .D(n20585), .Z(n27397)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/lab_6/temperature.vhd(370[8:19])
    defparam i23985_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i16816_3_lut_3_lut (.A(WRITE_LOW_CNT[1]), .B(STATE[0]), .C(WRITE_LOW_CNT[0]), 
         .Z(n2_adj_388)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i16816_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i17001_2_lut_rep_466_4_lut (.A(n507), .B(n544), .C(n28472), .D(n562), 
         .Z(n28462)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i17001_2_lut_rep_466_4_lut.init = 16'hffca;
    LUT4 i2_4_lut_adj_138 (.A(n662_adj_228), .B(n664_adj_229), .C(n663), 
         .D(n4_adj_629), .Z(n20635)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_138.init = 16'ha080;
    LUT4 i1_2_lut_3_lut_adj_139 (.A(cnt[0]), .B(cnt[2]), .C(cnt[6]), .Z(n6_adj_677)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(197[12:18])
    defparam i1_2_lut_3_lut_adj_139.init = 16'hfefe;
    LUT4 mod_274_i604_3_lut_4_lut (.A(n20070), .B(n13106), .C(n868_adj_487), 
         .D(n831_adj_497), .Z(n885_adj_476)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i604_3_lut_4_lut.init = 16'hf1e0;
    LUT4 zpone_3__I_17_mux_3_i8_3_lut (.A(zpone_3__N_304[7]), .B(n4_adj_33), 
         .C(zpone_3__N_304[8]), .Z(n120_adj_42)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_mux_3_i8_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_4_lut_adj_140 (.A(n336_adj_349), .B(n359_adj_353), .C(n28166), 
         .D(n370_adj_360), .Z(n8_adj_633)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i2_2_lut_4_lut_adj_140.init = 16'hffca;
    LUT4 tens_3__I_19_i312_3_lut_4_lut (.A(n378_adj_363), .B(tens_3__N_230[0]), 
         .C(tens_3__N_323[9]), .D(n28166), .Z(tens_3__N_230[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam tens_3__I_19_i312_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i3_4_lut_adj_141 (.A(n337_adj_350), .B(n334_adj_347), .C(n335_adj_348), 
         .D(n336_adj_349), .Z(n13116)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i3_4_lut_adj_141.init = 16'hfffe;
    LUT4 mod_274_i607_3_lut_4_lut (.A(n20070), .B(n13106), .C(n871_adj_484), 
         .D(n28306), .Z(n888_adj_474)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i607_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i601_3_lut_4_lut (.A(n20070), .B(n13106), .C(n865_adj_207), 
         .D(n828_adj_500), .Z(n882_adj_479)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i601_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_i188_4_lut (.A(n268_adj_340), .B(n269_adj_341), .C(n278_adj_342), 
         .D(n28180), .Z(n301_adj_343)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i188_4_lut.init = 16'haaa9;
    LUT4 mod_274_i602_3_lut_4_lut (.A(n20070), .B(n13106), .C(n866_adj_489), 
         .D(n829_adj_499), .Z(n883_adj_478)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i602_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i606_3_lut_4_lut (.A(n20070), .B(n13106), .C(n870_adj_485), 
         .D(n833_adj_495), .Z(n887)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i606_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17578_2_lut_rep_454_3_lut_4_lut_4_lut (.A(n28476), .B(n28525), 
         .C(n28471), .D(n241_adj_48), .Z(n28450)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !(B+(C))) */ ;
    defparam i17578_2_lut_rep_454_3_lut_4_lut_4_lut.init = 16'ha981;
    LUT4 zpone_3__I_17_mux_3_i7_3_lut (.A(zpone_3__N_304[6]), .B(n5_adj_34), 
         .C(zpone_3__N_304[8]), .Z(n238_adj_47)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_mux_3_i7_3_lut.init = 16'hcaca;
    LUT4 mod_274_i599_3_lut_4_lut (.A(n20070), .B(n13106), .C(n863_adj_491), 
         .D(n826_adj_502), .Z(n880_adj_481)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i599_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i603_3_lut_4_lut (.A(n20070), .B(n13106), .C(n867_adj_488), 
         .D(n830_adj_498), .Z(n884_adj_477)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i603_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i600_3_lut_4_lut (.A(n20070), .B(n13106), .C(n864_adj_490), 
         .D(n827_adj_501), .Z(n881_adj_480)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i600_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_597 (.A(STATE[0]), .B(STATE[1]), .Z(n28593)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i1_2_lut_rep_597.init = 16'h2222;
    LUT4 tens_3__I_16_i211_3_lut_4_lut (.A(n302), .B(n28473), .C(n28486), 
         .D(n301), .Z(n334)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i211_3_lut_4_lut.init = 16'hfe01;
    LUT4 i1_2_lut_rep_557_3_lut_4_lut (.A(STATE[0]), .B(STATE[1]), .C(n28613), 
         .D(n33_adj_20), .Z(n28553)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i1_2_lut_rep_557_3_lut_4_lut.init = 16'h0020;
    LUT4 mod_274_i605_3_lut_4_lut (.A(n20070), .B(n13106), .C(n869_adj_486), 
         .D(n832_adj_496), .Z(n886_adj_475)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i605_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_mux_3_i11_3_lut (.A(n1522), .B(n9_adj_89), .C(n1179), 
         .Z(n370_adj_108)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i11_3_lut.init = 16'hcaca;
    LUT4 mod_274_i598_3_lut_4_lut (.A(n20070), .B(n13106), .C(n862_adj_492), 
         .D(n825_adj_503), .Z(n879_adj_482)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i598_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_adj_142 (.A(n780_adj_515), .B(n817_adj_505), .C(n28307), 
         .D(n835_adj_494), .Z(n4_adj_649)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_adj_142.init = 16'hffca;
    LUT4 i20349_2_lut_rep_464_3_lut_4_lut (.A(n28476), .B(n28525), .C(n28477), 
         .D(n304_adj_55), .Z(n28460)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i20349_2_lut_rep_464_3_lut_4_lut.init = 16'hfef0;
    LUT4 ones_3__I_18_i164_3_lut_4_lut (.A(ones_3__N_314[5]), .B(n28211), 
         .C(n211), .D(n28220), .Z(n235_adj_444)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam ones_3__I_18_i164_3_lut_4_lut.init = 16'h6669;
    LUT4 i1_2_lut_rep_459_3_lut_4_lut_4_lut (.A(n28476), .B(n13063), .C(n304_adj_55), 
         .D(n28525), .Z(n28455)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (D)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_rep_459_3_lut_4_lut_4_lut.init = 16'hfc13;
    LUT4 i2_3_lut_adj_143 (.A(n301_adj_343), .B(n302_adj_344), .C(n28179), 
         .Z(n13117)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i2_3_lut_adj_143.init = 16'hfefe;
    LUT4 mod_274_i570_3_lut_rep_310_4_lut (.A(n20164), .B(n28308), .C(n817_adj_505), 
         .D(n780_adj_515), .Z(n28306)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i570_3_lut_rep_310_4_lut.init = 16'hf1e0;
    PFUMX mux_268_i3 (.BLUT(tens_3__N_229[2]), .ALUT(tens_3__N_230[2]), 
          .C0(mode), .Z(cycledata_63__N_66[2]));
    LUT4 mod_274_i566_3_lut_4_lut (.A(n20164), .B(n28308), .C(n813_adj_508), 
         .D(n776_adj_518), .Z(n830_adj_498)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i566_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i562_3_lut_4_lut (.A(n20164), .B(n28308), .C(n809_adj_512), 
         .D(n772_adj_522), .Z(n826_adj_502)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i562_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i16666_2_lut_rep_475 (.A(n28476), .B(n13063), .C(n304_adj_55), 
         .D(n28525), .Z(n28471)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i16666_2_lut_rep_475.init = 16'h0313;
    LUT4 mod_274_i563_3_lut_4_lut (.A(n20164), .B(n28308), .C(n810_adj_511), 
         .D(n773_adj_521), .Z(n827_adj_501)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i563_3_lut_4_lut.init = 16'hf1e0;
    LUT4 zpone_3__I_17_i215_4_lut_3_lut_rep_472_4_lut (.A(n28476), .B(n13063), 
         .C(n304_adj_55), .D(n28525), .Z(n28468)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A !((D)+!B)) */ ;
    defparam zpone_3__I_17_i215_4_lut_3_lut_rep_472_4_lut.init = 16'haa46;
    LUT4 mod_274_i560_3_lut_4_lut (.A(n20164), .B(n28308), .C(n807_adj_514), 
         .D(n770_adj_523), .Z(n824_adj_504)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i560_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i565_3_lut_4_lut (.A(n20164), .B(n28308), .C(n812_adj_509), 
         .D(n775_adj_519), .Z(n829_adj_499)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i565_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i383_3_lut_rep_470_4_lut (.A(n28474), .B(n13082), .C(n544), 
         .D(n507), .Z(n28466)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i383_3_lut_rep_470_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i569_3_lut_4_lut (.A(n20164), .B(n28308), .C(n816_adj_506), 
         .D(n28309), .Z(n833_adj_495)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i569_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i568_3_lut_4_lut (.A(n20164), .B(n28308), .C(n815_adj_208), 
         .D(n778_adj_516), .Z(n832_adj_496)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i568_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i376_3_lut_4_lut (.A(n28474), .B(n13082), .C(n537_adj_129), 
         .D(n500), .Z(n554)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i376_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i382_3_lut_4_lut (.A(n28474), .B(n13082), .C(n543), .D(n28483), 
         .Z(n560)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i382_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i380_3_lut_4_lut (.A(n28474), .B(n13082), .C(n541), .D(n504), 
         .Z(n558)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i380_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i377_3_lut_4_lut (.A(n28474), .B(n13082), .C(n538), .D(n501), 
         .Z(n555)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i377_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i379_3_lut_4_lut (.A(n28474), .B(n13082), .C(n540), .D(n503), 
         .Z(n557)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i379_3_lut_4_lut.init = 16'hf1e0;
    PFUMX mux_268_i2 (.BLUT(tens_3__N_229[1]), .ALUT(tens_3__N_230[1]), 
          .C0(mode), .Z(cycledata_63__N_66[1]));
    LUT4 mod_271_i378_3_lut_4_lut (.A(n28474), .B(n13082), .C(n539), .D(n28482), 
         .Z(n556)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i378_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i561_3_lut_4_lut (.A(n20164), .B(n28308), .C(n808_adj_513), 
         .D(n771), .Z(n825_adj_503)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i561_3_lut_4_lut.init = 16'hf1e0;
    PFUMX ser_I_0_i45 (.BLUT(n12952), .ALUT(n44), .C0(ser_N_380[2]), .Z(n45));
    LUT4 mod_274_i564_3_lut_4_lut (.A(n20164), .B(n28308), .C(n811_adj_510), 
         .D(n774_adj_520), .Z(n828_adj_500)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i564_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i567_3_lut_4_lut (.A(n20164), .B(n28308), .C(n814_adj_507), 
         .D(n777_adj_517), .Z(n831_adj_497)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i567_3_lut_4_lut.init = 16'hf1e0;
    L6MUX21 i23991 (.D0(n27401), .D1(n27402), .SD(ser_N_380[1]), .Z(n27403));
    PFUMX ser_I_0_i42 (.BLUT(cycledata[44]), .ALUT(cycledata[45]), .C0(ser_N_380[0]), 
          .Z(n42));
    LUT4 i5_3_lut_rep_312 (.A(n770_adj_523), .B(n10_adj_333), .C(n772_adj_522), 
         .Z(n28308)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i5_3_lut_rep_312.init = 16'hfefe;
    LUT4 i1_2_lut_rep_311_4_lut (.A(n770_adj_523), .B(n10_adj_333), .C(n772_adj_522), 
         .D(n20164), .Z(n28307)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_311_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_144 (.A(n725_adj_534), .B(n762_adj_524), .C(n28310), 
         .D(n780_adj_515), .Z(n4_adj_664)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_adj_144.init = 16'hffca;
    LUT4 tens_3__I_16_i212_3_lut_4_lut (.A(n28489), .B(n28479), .C(n28486), 
         .D(n302), .Z(n335)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i212_3_lut_4_lut.init = 16'hfe01;
    LUT4 i2_4_lut_adj_145 (.A(n611_adj_568), .B(n613_adj_566), .C(n612_adj_567), 
         .D(n4_adj_635), .Z(n20389)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_145.init = 16'ha080;
    LUT4 i2_4_lut_adj_146 (.A(n268_adj_340), .B(n14_adj_595), .C(n269_adj_341), 
         .D(n28183), .Z(n278_adj_342)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_146.init = 16'h0504;
    LUT4 i1_2_lut_rep_314 (.A(n20275), .B(n13101), .Z(n28310)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_314.init = 16'heeee;
    LUT4 tens_3__I_19_mux_3_i7_3_lut (.A(tens_3__N_323[6]), .B(n5_adj_326), 
         .C(tens_3__N_323[9]), .Z(n238_adj_337)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_mux_3_i7_3_lut.init = 16'hcaca;
    LUT4 mod_271_i381_3_lut_4_lut_4_lut (.A(n28478), .B(n505), .C(n542), 
         .D(n13082), .Z(n559)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam mod_271_i381_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i17165_2_lut_rep_467_3_lut_4_lut (.A(n28480), .B(n13110), .C(n241), 
         .D(n28533), .Z(n28463)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+!(D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i17165_2_lut_rep_467_3_lut_4_lut.init = 16'hf2fd;
    LUT4 mod_274_i532_3_lut_rep_313_4_lut (.A(n20275), .B(n13101), .C(n762_adj_524), 
         .D(n725_adj_534), .Z(n28309)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i532_3_lut_rep_313_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_16_i213_3_lut_4_lut (.A(n28480), .B(n13110), .C(n28479), 
         .D(n28489), .Z(n336)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i213_3_lut_4_lut.init = 16'hf20d;
    LUT4 mod_274_i528_3_lut_4_lut (.A(n20275), .B(n13101), .C(n758_adj_528), 
         .D(n721_adj_536), .Z(n775_adj_519)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i528_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_16_i214_3_lut_4_lut (.A(n28480), .B(n13110), .C(n28485), 
         .D(n304), .Z(n337)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i214_3_lut_4_lut.init = 16'h2fd0;
    PFUMX i34 (.BLUT(n27358), .ALUT(n27360), .C0(n28222), .Z(n27368));
    LUT4 mod_274_i524_3_lut_4_lut (.A(n20275), .B(n13101), .C(n754_adj_532), 
         .D(n717_adj_539), .Z(n771)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i524_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_mux_3_i8_3_lut (.A(tens_3__N_323[7]), .B(n4_adj_325), 
         .C(tens_3__N_323[9]), .Z(n120_adj_334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_mux_3_i8_3_lut.init = 16'hcaca;
    LUT4 mod_274_i529_3_lut_4_lut (.A(n20275), .B(n13101), .C(n759_adj_527), 
         .D(n722_adj_220), .Z(n776_adj_518)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i529_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i523_3_lut_4_lut (.A(n20275), .B(n13101), .C(n753_adj_533), 
         .D(n716_adj_540), .Z(n770_adj_523)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i523_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i526_3_lut_4_lut (.A(n20275), .B(n13101), .C(n756_adj_530), 
         .D(n28311), .Z(n773_adj_521)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i526_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i531_3_lut_4_lut (.A(n20275), .B(n13101), .C(n761_adj_525), 
         .D(n28312), .Z(n778_adj_516)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i531_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7025_2_lut_rep_210_3_lut_4_lut_4_lut (.A(n28214), .B(ones_3__N_314[5]), 
         .C(n28211), .D(n28220), .Z(n28206)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B+!(C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i7025_2_lut_rep_210_3_lut_4_lut_4_lut.init = 16'h9a18;
    LUT4 i1_2_lut_4_lut_adj_147 (.A(n28492), .B(n278_adj_52), .C(n28487), 
         .D(n301_adj_53), .Z(n4_adj_300)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i1_2_lut_4_lut_adj_147.init = 16'hff65;
    LUT4 i17262_2_lut_rep_478_3_lut (.A(n507), .B(n28483), .C(n505), .Z(n28474)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17262_2_lut_rep_478_3_lut.init = 16'he0e0;
    LUT4 mod_274_i527_3_lut_4_lut (.A(n20275), .B(n13101), .C(n757_adj_529), 
         .D(n720_adj_537), .Z(n774_adj_520)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i527_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i530_3_lut_4_lut (.A(n20275), .B(n13101), .C(n760_adj_526), 
         .D(n723_adj_535), .Z(n777_adj_517)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i530_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_476_3_lut_4_lut (.A(n507), .B(n28483), .C(n13082), 
         .D(n505), .Z(n28472)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_476_3_lut_4_lut.init = 16'hfef0;
    LUT4 mod_274_i525_3_lut_4_lut (.A(n20275), .B(n13101), .C(n755_adj_531), 
         .D(n718_adj_538), .Z(n772_adj_522)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i525_3_lut_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_mux_3_i9_3_lut (.A(tens_3__N_323[8]), .B(n3_adj_324), 
         .C(tens_3__N_323[9]), .Z(n161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_mux_3_i9_3_lut.init = 16'hcaca;
    LUT4 i20228_2_lut_rep_473_3_lut_4_lut (.A(n304), .B(n28485), .C(n302), 
         .D(n28489), .Z(n28469)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i20228_2_lut_rep_473_3_lut_4_lut.init = 16'hfff8;
    LUT4 i1_2_lut_4_lut_adj_148 (.A(n665_adj_553), .B(n702_adj_546), .C(n28313), 
         .D(n717_adj_539), .Z(n6_adj_116)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_adj_148.init = 16'hffca;
    LUT4 i1_2_lut_4_lut_adj_149 (.A(n397_adj_592), .B(n707_adj_541), .C(n28313), 
         .D(n725_adj_534), .Z(n4_adj_18)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_adj_149.init = 16'hffca;
    PFUMX i23986 (.BLUT(n27394), .ALUT(n27395), .C0(ser_N_380[4]), .Z(n27398));
    LUT4 i1_2_lut_rep_317 (.A(n20383), .B(n13100), .Z(n28313)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_317.init = 16'heeee;
    LUT4 mod_274_i489_3_lut_rep_315_4_lut (.A(n20383), .B(n13100), .C(n702_adj_546), 
         .D(n665_adj_553), .Z(n28311)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i489_3_lut_rep_315_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i494_3_lut_rep_316_4_lut (.A(n20383), .B(n13100), .C(n707_adj_541), 
         .D(n397_adj_592), .Z(n28312)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i494_3_lut_rep_316_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i487_3_lut_4_lut (.A(n20383), .B(n13100), .C(n700_adj_548), 
         .D(n663_adj_555), .Z(n717_adj_539)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i487_3_lut_4_lut.init = 16'hf1e0;
    PFUMX ser_I_0_i29 (.BLUT(n12954), .ALUT(n28), .C0(ser_N_380[2]), .Z(n29));
    LUT4 zpone_3__I_17_i189_3_lut_4_lut (.A(n28492), .B(n28487), .C(n278_adj_52), 
         .D(n269_adj_51), .Z(n302_adj_54)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i189_3_lut_4_lut.init = 16'hf40b;
    LUT4 i1_2_lut_4_lut_adj_150 (.A(n448), .B(n485), .C(n28490), .D(n503), 
         .Z(n6_adj_682)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_2_lut_4_lut_adj_150.init = 16'hffca;
    L6MUX21 i23997 (.D0(n27407), .D1(n27408), .SD(ser_N_380[1]), .Z(n27409));
    PFUMX ser_I_0_i26 (.BLUT(cycledata[28]), .ALUT(cycledata[29]), .C0(ser_N_380[0]), 
          .Z(n26));
    LUT4 mod_274_i488_3_lut_4_lut (.A(n20383), .B(n13100), .C(n701_adj_547), 
         .D(n664_adj_554), .Z(n718_adj_538)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i488_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i24357 (.BLUT(n28624), .ALUT(n28625), .C0(STATE[0]), .Z(n28626));
    LUT4 mod_274_i490_3_lut_4_lut (.A(n20383), .B(n13100), .C(n703_adj_545), 
         .D(n666_adj_552), .Z(n720_adj_537)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i490_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7020_2_lut_rep_212_3_lut_4_lut (.A(n28213), .B(n172), .C(n28220), 
         .D(ones_3__N_314[5]), .Z(n28208)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i7020_2_lut_rep_212_3_lut_4_lut.init = 16'hf1fe;
    LUT4 i1_2_lut_rep_482_4_lut (.A(n452), .B(n489), .C(n28490), .D(n507), 
         .Z(n28478)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_2_lut_rep_482_4_lut.init = 16'hffca;
    LUT4 i17596_2_lut_rep_463_3_lut_4_lut_4_lut (.A(n28488), .B(n28533), 
         .C(n28486), .D(n241), .Z(n28459)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !(B+(C))) */ ;
    defparam i17596_2_lut_rep_463_3_lut_4_lut_4_lut.init = 16'ha981;
    LUT4 mod_274_i491_3_lut_4_lut (.A(n20383), .B(n13100), .C(n704_adj_544), 
         .D(n667_adj_551), .Z(n721_adj_536)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i491_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n283_bdd_4_lut_24250 (.A(n284), .B(n285), .C(n286), .D(n287), 
         .Z(n27813)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n283_bdd_4_lut_24250.init = 16'hfffe;
    LUT4 mod_274_i493_3_lut_4_lut (.A(n20383), .B(n13100), .C(n706_adj_542), 
         .D(n28314), .Z(n723_adj_535)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i493_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i16734_2_lut_3_lut_4_lut (.A(n28213), .B(n172), .C(n28220), .D(ones_3__N_314[5]), 
         .Z(n12_adj_372)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i16734_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 mod_274_i492_3_lut_4_lut (.A(n20383), .B(n13100), .C(n705_adj_543), 
         .D(n668_adj_550), .Z(n722_adj_220)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i492_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i486_3_lut_4_lut (.A(n20383), .B(n13100), .C(n699_adj_549), 
         .D(n662_adj_556), .Z(n716_adj_540)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i486_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i20220_2_lut_rep_477_3_lut_4_lut (.A(n28488), .B(n28533), .C(n28489), 
         .D(n304), .Z(n28473)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i20220_2_lut_rep_477_3_lut_4_lut.init = 16'hfef0;
    PFUMX ser_I_0_i14 (.BLUT(n12956), .ALUT(n27367), .C0(ser_N_380[2]), 
          .Z(n14_adj_423));
    LUT4 i3_4_lut_adj_151 (.A(n337), .B(n334), .C(n335), .D(n336), .Z(n13107)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i3_4_lut_adj_151.init = 16'hfffe;
    LUT4 i1_2_lut_rep_471_3_lut_4_lut_4_lut (.A(n28488), .B(n13110), .C(n304), 
         .D(n28533), .Z(n28467)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (D)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_rep_471_3_lut_4_lut_4_lut.init = 16'hfc13;
    LUT4 i1_2_lut_4_lut_adj_152 (.A(n396_adj_593), .B(n652_adj_557), .C(n28315), 
         .D(n397_adj_592), .Z(n4_adj_94)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_adj_152.init = 16'hffca;
    LUT4 mod_274_i456_3_lut_rep_318_4_lut (.A(n20389), .B(n28316), .C(n652_adj_557), 
         .D(n396_adj_593), .Z(n28314)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i456_3_lut_rep_318_4_lut.init = 16'hf1e0;
    LUT4 i17042_2_lut_rep_490 (.A(n28488), .B(n13110), .C(n304), .D(n28533), 
         .Z(n28486)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C (D))))) */ ;
    defparam i17042_2_lut_rep_490.init = 16'h0313;
    LUT4 tens_3__I_16_i215_4_lut_3_lut_rep_488_4_lut (.A(n28488), .B(n13110), 
         .C(n304), .D(n28533), .Z(n28484)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A !((D)+!B)) */ ;
    defparam tens_3__I_16_i215_4_lut_3_lut_rep_488_4_lut.init = 16'haa46;
    LUT4 zpone_3__I_17_i190_3_lut_rep_481_4_lut (.A(n28491), .B(n28526), 
         .C(n278_adj_52), .D(n28492), .Z(n28477)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i190_3_lut_rep_481_4_lut.init = 16'h0df2;
    LUT4 mod_274_i449_3_lut_4_lut (.A(n20389), .B(n28316), .C(n645_adj_565), 
         .D(n28319), .Z(n662_adj_556)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i449_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i455_3_lut_4_lut (.A(n20389), .B(n28316), .C(n651_adj_558), 
         .D(n28317), .Z(n668_adj_550)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i455_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i454_3_lut_4_lut (.A(n20389), .B(n28316), .C(n650_adj_559), 
         .D(n613_adj_566), .Z(n667_adj_551)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i454_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i452_3_lut_4_lut (.A(n20389), .B(n28316), .C(n648_adj_562), 
         .D(n611_adj_568), .Z(n665_adj_553)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i452_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_adj_153 (.A(n28500), .B(n278), .C(n28495), .D(n301), 
         .Z(n4)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i1_2_lut_4_lut_adj_153.init = 16'hff65;
    LUT4 mod_271_i339_3_lut_4_lut (.A(n28499), .B(n13081), .C(n483), .D(n446), 
         .Z(n500)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i339_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i450_3_lut_4_lut (.A(n20389), .B(n28316), .C(n646_adj_564), 
         .D(n609_adj_569), .Z(n663_adj_555)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i450_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i451_3_lut_4_lut (.A(n20389), .B(n28316), .C(n647_adj_563), 
         .D(n28318), .Z(n664_adj_554)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i451_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i453_3_lut_4_lut (.A(n20389), .B(n28316), .C(n649_adj_560), 
         .D(n612_adj_567), .Z(n666_adj_552)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i453_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i15723_3_lut_rep_487_4_lut (.A(n28499), .B(n13081), .C(n489), 
         .D(n452), .Z(n28483)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i15723_3_lut_rep_487_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i341_3_lut_rep_486_4_lut (.A(n28499), .B(n13081), .C(n485), 
         .D(n448), .Z(n28482)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i341_3_lut_rep_486_4_lut.init = 16'hf1e0;
    LUT4 i15713_3_lut_4_lut (.A(n28499), .B(n13081), .C(n486), .D(n449), 
         .Z(n503)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i15713_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_319_4_lut (.A(n28319), .B(n609_adj_569), .C(n28318), 
         .D(n20389), .Z(n28315)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_rep_319_4_lut.init = 16'hfffe;
    LUT4 mod_274_i418_3_lut_rep_321 (.A(n452_adj_588), .B(n597_adj_572), 
         .C(n28320), .Z(n28317)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i418_3_lut_rep_321.init = 16'hcaca;
    LUT4 i15715_3_lut_4_lut (.A(n28499), .B(n13081), .C(n488), .D(n28508), 
         .Z(n505)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i15715_3_lut_4_lut.init = 16'he0f1;
    LUT4 mod_271_i340_3_lut_4_lut (.A(n28499), .B(n13081), .C(n484), .D(n447), 
         .Z(n501)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i340_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_4_lut_adj_154 (.A(n452_adj_588), .B(n597_adj_572), .C(n28320), 
         .D(n396_adj_593), .Z(n4_adj_635)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_adj_154.init = 16'hffca;
    LUT4 i17685_2_lut_rep_353_3_lut (.A(n376), .B(n28351), .C(n944), .Z(n28349)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17685_2_lut_rep_353_3_lut.init = 16'he0e0;
    LUT4 i4_4_lut_adj_155 (.A(n651_adj_125), .B(n652_adj_126), .C(n653_adj_127), 
         .D(n649_adj_123), .Z(n10_adj_115)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i4_4_lut_adj_155.init = 16'hfffe;
    LUT4 mod_274_i414_3_lut_rep_322 (.A(n556_adj_581), .B(n593_adj_576), 
         .C(n28320), .Z(n28318)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i414_3_lut_rep_322.init = 16'hcaca;
    LUT4 tens_3__I_16_i188_4_lut (.A(n268), .B(n269), .C(n278), .D(n28493), 
         .Z(n301)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i188_4_lut.init = 16'haaa9;
    LUT4 tens_3__I_19_mux_3_i4_3_lut (.A(tens_3__N_323[3]), .B(n8_adj_329), 
         .C(tens_3__N_323[9]), .Z(n241_adj_338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_mux_3_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_4_lut_adj_156 (.A(n28320), .B(n591_adj_578), .C(n593_adj_576), 
         .D(n556_adj_581), .Z(n4_adj_320)) /* synthesis lut_function=(A (B+(C))+!A (D)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i1_2_lut_4_lut_4_lut_adj_156.init = 16'hfda8;
    PFUMX i24583 (.BLUT(n29280), .ALUT(n29281), .C0(temp1_8__N_270[5]), 
          .Z(n272));
    LUT4 i1_4_lut_4_lut (.A(STATE[0]), .B(STATE[1]), .C(STATE[2]), .D(n28570), 
         .Z(clk_c_enable_48)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i1_4_lut_4_lut.init = 16'h00c2;
    LUT4 i2_3_lut_rep_320_4_lut (.A(n28320), .B(n591_adj_578), .C(n28318), 
         .D(n609_adj_569), .Z(n28316)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i2_3_lut_rep_320_4_lut.init = 16'hfff8;
    LUT4 zpone_3__I_17_i191_3_lut_4_lut (.A(n238_adj_47), .B(n28494), .C(n278_adj_52), 
         .D(n28526), .Z(n304_adj_55)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam zpone_3__I_17_i191_3_lut_4_lut.init = 16'h6669;
    LUT4 ones_3__I_18_i183_3_lut_4_lut (.A(n28200), .B(n28203), .C(n28198), 
         .D(n28207), .Z(n263)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i183_3_lut_4_lut.init = 16'hf20d;
    LUT4 i23661_2_lut_rep_323_4_lut (.A(n28323), .B(n20409), .C(n28324), 
         .D(n591_adj_578), .Z(n28319)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i23661_2_lut_rep_323_4_lut.init = 16'hfe00;
    LUT4 mod_274_i413_3_lut_4_lut (.A(n28323), .B(n20409), .C(n28324), 
         .D(n592_adj_577), .Z(n609_adj_569)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i413_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1800_2_lut_rep_485_3_lut_4_lut_4_lut (.A(n28505), .B(n238_adj_47), 
         .C(n28494), .D(n28526), .Z(n28481)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B+!(C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i1800_2_lut_rep_485_3_lut_4_lut_4_lut.init = 16'h9a18;
    LUT4 tens_3__I_16_i189_3_lut_4_lut (.A(n28500), .B(n28495), .C(n278), 
         .D(n269), .Z(n302)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i189_3_lut_4_lut.init = 16'hf40b;
    LUT4 i1796_2_lut_rep_491_3_lut_4_lut (.A(n28501), .B(n235_adj_45), .C(n28526), 
         .D(n238_adj_47), .Z(n28487)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i1796_2_lut_rep_491_3_lut_4_lut.init = 16'hf1fe;
    LUT4 i16979_2_lut_3_lut_4_lut (.A(n28501), .B(n235_adj_45), .C(n28526), 
         .D(n238_adj_47), .Z(n14_adj_425)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i16979_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 mod_274_i417_3_lut_4_lut (.A(n28335), .B(n28322), .C(n28320), 
         .D(n596_adj_573), .Z(n613_adj_566)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i417_3_lut_4_lut.init = 16'hf606;
    LUT4 WRITE_HIGH_CNT_0__bdd_3_lut (.A(WRITE_HIGH_CNT[0]), .B(WRITE_HIGH_CNT[1]), 
         .C(STATE[0]), .Z(n27812)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam WRITE_HIGH_CNT_0__bdd_3_lut.init = 16'h0404;
    LUT4 i17800_2_lut (.A(STATE[0]), .B(n28560), .Z(n6)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i17800_2_lut.init = 16'h1111;
    LUT4 mod_274_i415_3_lut (.A(n557_adj_580), .B(n594_adj_575), .C(n28320), 
         .Z(n611_adj_568)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i415_3_lut.init = 16'hcaca;
    LUT4 tens_3__I_16_i190_3_lut_rep_493_4_lut (.A(n28498), .B(n28535), 
         .C(n278), .D(n28500), .Z(n28489)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i190_3_lut_rep_493_4_lut.init = 16'h0df2;
    PFUMX i32 (.BLUT(n27338), .ALUT(n27340), .C0(n950_adj_461), .Z(n27362));
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(n28329), .B(n500_adj_585), .C(n452_adj_588), 
         .D(n28335), .Z(n4_adj_638)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'hf1fe;
    LUT4 tens_3__I_19_mux_3_i3_3_lut (.A(tens_3__N_323[2]), .B(n9_adj_330), 
         .C(tens_3__N_323[9]), .Z(n242_adj_339)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_mux_3_i3_3_lut.init = 16'hcaca;
    LUT4 mod_274_i416_3_lut (.A(n558_adj_579), .B(n595_adj_574), .C(n28320), 
         .Z(n612_adj_567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i416_3_lut.init = 16'hcaca;
    LUT4 i24093_4_lut (.A(rst_c), .B(n26924), .C(n26918), .D(n6_adj_622), 
         .Z(clk_temp_enable_1)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i24093_4_lut.init = 16'h0002;
    LUT4 i4_4_lut_adj_158 (.A(n500), .B(n504), .C(n501), .D(n6_adj_682), 
         .Z(n13082)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i4_4_lut_adj_158.init = 16'hfffe;
    LUT4 mod_274_i378_3_lut_4_lut (.A(n28329), .B(n500_adj_585), .C(n28330), 
         .D(n503_adj_583), .Z(n557_adj_580)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (D))) */ ;
    defparam mod_274_i378_3_lut_4_lut.init = 16'hf10e;
    LUT4 mod_274_i379_3_lut_4_lut (.A(n28329), .B(n500_adj_585), .C(n28335), 
         .D(n28331), .Z(n558_adj_579)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (D))) */ ;
    defparam mod_274_i379_3_lut_4_lut.init = 16'hf10e;
    LUT4 i23905_2_lut_rep_215_3_lut_4_lut (.A(ones_3__N_314[5]), .B(n28214), 
         .C(n172), .D(n28215), .Z(n28211)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i23905_2_lut_rep_215_3_lut_4_lut.init = 16'hfef0;
    LUT4 mod_271_i302_3_lut_4_lut (.A(n28528), .B(n28502), .C(n28513), 
         .D(n392_adj_210), .Z(n446)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i302_3_lut_4_lut.init = 16'hfe01;
    LUT4 tens_3__I_16_i191_3_lut_4_lut (.A(n238), .B(n28503), .C(n278), 
         .D(n28535), .Z(n304)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam tens_3__I_16_i191_3_lut_4_lut.init = 16'h6669;
    LUT4 equal_554_i5_2_lut_rep_598 (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), 
         .Z(n28594)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam equal_554_i5_2_lut_rep_598.init = 16'heeee;
    LUT4 i15710_3_lut_4_lut_4_lut (.A(n28504), .B(n28510), .C(n487), .D(n13081), 
         .Z(n504)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i15710_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i1623_2_lut_rep_497_3_lut_4_lut_4_lut (.A(n28519), .B(n238), .C(n28503), 
         .D(n28535), .Z(n28493)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B+!(C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i1623_2_lut_rep_497_3_lut_4_lut_4_lut.init = 16'h9a18;
    LUT4 i23891_2_lut_rep_498_3_lut_4_lut (.A(n28505), .B(n238_adj_47), 
         .C(n235_adj_45), .D(n236_adj_46), .Z(n28494)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i23891_2_lut_rep_498_3_lut_4_lut.init = 16'hfef0;
    LUT4 zpone_3__I_17_i166_3_lut_4_lut_3_lut_4_lut (.A(n28505), .B(n238_adj_47), 
         .C(n235_adj_45), .D(n236_adj_46), .Z(n269_adj_51)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i166_3_lut_4_lut_3_lut_4_lut.init = 16'h11e0;
    LUT4 i23892_3_lut_2_lut_3_lut_4_lut (.A(n28505), .B(n238_adj_47), .C(n235_adj_45), 
         .D(n236_adj_46), .Z(n268_adj_50)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i23892_3_lut_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i1325_2_lut_rep_599 (.A(ser_N_380[1]), .B(ser_N_380[0]), .Z(n28595)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(368[19:27])
    defparam i1325_2_lut_rep_599.init = 16'heeee;
    LUT4 i1_2_lut_rep_495_3_lut_4_lut_4_lut (.A(n28505), .B(n238_adj_47), 
         .C(n235_adj_45), .D(n236_adj_46), .Z(n28491)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i1_2_lut_rep_495_3_lut_4_lut_4_lut.init = 16'hcdc3;
    LUT4 zpone_3__I_17_i167_3_lut_rep_496_4_lut_4_lut (.A(n28505), .B(n238_adj_47), 
         .C(n236_adj_46), .D(n235_adj_45), .Z(n28492)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B+!(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i167_3_lut_rep_496_4_lut_4_lut.init = 16'h6675;
    LUT4 i24083_4_lut (.A(temp1_8__N_270[6]), .B(temp1_8__N_270[5]), .C(temp1_8__N_270[4]), 
         .D(n4_adj_676), .Z(led_2__N_1)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // d:/lab_6/temperature.vhd(350[3] 351[26])
    defparam i24083_4_lut.init = 16'h0111;
    LUT4 i2_3_lut_adj_159 (.A(n301), .B(n302), .C(n28489), .Z(n13110)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i2_3_lut_adj_159.init = 16'hfefe;
    LUT4 mod_271_i303_3_lut_4_lut (.A(n28521), .B(n28507), .C(n28513), 
         .D(n28528), .Z(n447)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i303_3_lut_4_lut.init = 16'hfe01;
    LUT4 i17771_2_lut_rep_352_3_lut_4_lut (.A(n376), .B(n28351), .C(n13057), 
         .D(n944), .Z(n28348)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i17771_2_lut_rep_352_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1619_2_lut_rep_499_3_lut_4_lut (.A(n28514), .B(n235), .C(n28535), 
         .D(n238), .Z(n28495)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i1619_2_lut_rep_499_3_lut_4_lut.init = 16'hf1fe;
    LUT4 i1_4_lut_adj_160 (.A(temp1_8__N_270[3]), .B(temp1_8__N_270[2]), 
         .C(temp1_8__N_213[1]), .D(temp1_8__N_213[0]), .Z(n4_adj_676)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_160.init = 16'haaa8;
    LUT4 i16939_2_lut_3_lut_4_lut (.A(n28514), .B(n235), .C(n28535), .D(n238), 
         .Z(n14_adj_417)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i16939_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 i1_2_lut_rep_494_3_lut_4_lut (.A(n452), .B(n28508), .C(n13081), 
         .D(n28510), .Z(n28490)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_rep_494_3_lut_4_lut.init = 16'hfbf0;
    LUT4 i20974_2_lut (.A(temp1_8__N_213[0]), .B(temp1_8__N_270[4]), .Z(n9_adj_9)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20974_2_lut.init = 16'h6666;
    LUT4 i20680_2_lut (.A(temp2[0]), .B(temp2_8__N_286[3]), .Z(n23681)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i20680_2_lut.init = 16'h6666;
    LUT4 i20516_2_lut_rep_501_3_lut_4_lut (.A(n28523), .B(n28512), .C(n28528), 
         .D(n28521), .Z(n28497)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i20516_2_lut_rep_501_3_lut_4_lut.init = 16'hfff8;
    LUT4 mod_271_i304_3_lut_4_lut (.A(n28523), .B(n28512), .C(n28513), 
         .D(n28521), .Z(n448)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i304_3_lut_4_lut.init = 16'hf807;
    LUT4 i17270_2_lut_rep_503_3_lut_4_lut_4_lut (.A(n28520), .B(n397_adj_209), 
         .C(n28513), .D(n452), .Z(n28499)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !(B+(C))) */ ;
    defparam i17270_2_lut_rep_503_3_lut_4_lut_4_lut.init = 16'ha981;
    LUT4 i1424_1_lut (.A(dq_N_377), .Z(n3529)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(101[1] 285[13])
    defparam i1424_1_lut.init = 16'h5555;
    LUT4 mux_160_Mux_0_i15_3_lut (.A(n7_adj_40), .B(n14_adj_561), .C(STATE[3]), 
         .Z(STATE_3__N_144[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam mux_160_Mux_0_i15_3_lut.init = 16'hcaca;
    LUT4 i23660_3_lut_rep_324_4_lut (.A(n28329), .B(n500_adj_585), .C(n28324), 
         .D(n20409), .Z(n28320)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i23660_3_lut_rep_324_4_lut.init = 16'hfff8;
    LUT4 i15711_3_lut_3_lut_4_lut (.A(n28520), .B(n397_adj_209), .C(n28513), 
         .D(n28523), .Z(n449)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i15711_3_lut_3_lut_4_lut.init = 16'hf10e;
    LUT4 i20508_2_lut_rep_506_3_lut_4_lut (.A(n28520), .B(n397_adj_209), 
         .C(n28521), .D(n28523), .Z(n28502)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i20508_2_lut_rep_506_3_lut_4_lut.init = 16'hfef0;
    PFUMX i23981 (.BLUT(n27391), .ALUT(n27392), .C0(WRITE_BYTE_CNT[2]), 
          .Z(n307));
    LUT4 i15709_3_lut_rep_514_4_lut (.A(n28518), .B(n28517), .C(n397_adj_209), 
         .D(n28520), .Z(n28510)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i15709_3_lut_rep_514_4_lut.init = 16'hf20d;
    LUT4 i17266_2_lut_rep_508_3_lut_4_lut (.A(n28518), .B(n28517), .C(n452), 
         .D(n397_adj_209), .Z(n28504)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+!(D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i17266_2_lut_rep_508_3_lut_4_lut.init = 16'hf2fd;
    PFUMX i40 (.BLUT(n27354), .ALUT(n27352), .C0(n28339), .Z(n32_adj_612));
    LUT4 i23889_2_lut_rep_507_3_lut_4_lut (.A(n28519), .B(n238), .C(n235), 
         .D(n236), .Z(n28503)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i23889_2_lut_rep_507_3_lut_4_lut.init = 16'hfef0;
    LUT4 tens_3__I_16_i166_3_lut_4_lut_3_lut_4_lut (.A(n28519), .B(n238), 
         .C(n235), .D(n236), .Z(n269)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i166_3_lut_4_lut_3_lut_4_lut.init = 16'h11e0;
    PFUMX i45 (.BLUT(n27350), .ALUT(n27348), .C0(n896_adj_469), .Z(n27356));
    LUT4 i23890_3_lut_2_lut_3_lut_4_lut (.A(n28519), .B(n238), .C(n235), 
         .D(n236), .Z(n268)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i23890_3_lut_2_lut_3_lut_4_lut.init = 16'he000;
    L6MUX21 i103 (.D0(n58), .D1(n67), .SD(n27374), .Z(n73));
    LUT4 i1_2_lut_rep_502_3_lut_4_lut_4_lut (.A(n28519), .B(n238), .C(n235), 
         .D(n236), .Z(n28498)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i1_2_lut_rep_502_3_lut_4_lut_4_lut.init = 16'hcdc3;
    LUT4 tens_3__I_16_i167_3_lut_rep_504_4_lut_4_lut (.A(n28519), .B(n238), 
         .C(n236), .D(n235), .Z(n28500)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B+!(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i167_3_lut_rep_504_4_lut_4_lut.init = 16'h6675;
    LUT4 i16550_2_lut_4_lut_4_lut (.A(GET_TMP_CNT[2]), .B(GET_TMP_CNT[3]), 
         .C(GET_TMP_CNT[0]), .D(GET_TMP_CNT[1]), .Z(n19561)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(267[10:12])
    defparam i16550_2_lut_4_lut_4_lut.init = 16'hff7e;
    LUT4 i2_3_lut_4_lut_adj_161 (.A(n2_adj_31), .B(zpone_3__N_304[8]), .C(n120_adj_42), 
         .D(n3_adj_32), .Z(n235_adj_45)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_161.init = 16'h0008;
    LUT4 i25_4_lut_4_lut_4_lut (.A(clk_temp), .B(n28584), .C(STATE[3]), 
         .D(n19_adj_680), .Z(clk_c_enable_13)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i25_4_lut_4_lut_4_lut.init = 16'h4440;
    LUT4 i2_4_lut_adj_162 (.A(count[3]), .B(count[0]), .C(count[1]), .D(count[2]), 
         .Z(n197)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_162.init = 16'h0400;
    PFUMX i100 (.BLUT(n26895), .ALUT(n26884), .C0(STATE[2]), .Z(n67));
    PFUMX i24260 (.BLUT(n27882), .ALUT(n27881), .C0(STATE[0]), .Z(n27883));
    LUT4 i1_2_lut_rep_509_3_lut_4_lut_4_lut (.A(n3_adj_32), .B(zpone_3__N_304[8]), 
         .C(n120_adj_42), .D(n2_adj_31), .Z(n28505)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_509_3_lut_4_lut_4_lut.init = 16'h38f0;
    LUT4 i2_3_lut_rep_521 (.A(n28528), .B(n392_adj_210), .C(n28521), .Z(n28517)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i2_3_lut_rep_521.init = 16'hfefe;
    LUT4 i16606_2_lut_rep_517_4_lut (.A(n28528), .B(n392_adj_210), .C(n28521), 
         .D(n28518), .Z(n28513)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i16606_2_lut_rep_517_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_512_3_lut_4_lut (.A(n28523), .B(n28522), .C(n397_adj_209), 
         .D(n28517), .Z(n28508)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A (C (D)+!C !(D))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_2_lut_rep_512_3_lut_4_lut.init = 16'hf02d;
    LUT4 temp1_8__I_0_i208_4_lut (.A(temp1_8__N_270[3]), .B(n288), .C(n272), 
         .D(n28554), .Z(n297)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_i208_4_lut.init = 16'hcac5;
    LUT4 ones_3__I_18_i141_3_lut_4_lut_3_lut_4_lut (.A(ones_3__N_314[5]), 
         .B(n28214), .C(n172), .D(n28215), .Z(n203_adj_445)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam ones_3__I_18_i141_3_lut_4_lut_3_lut_4_lut.init = 16'h11e0;
    LUT4 i1_2_lut_rep_213_3_lut_4_lut_4_lut (.A(ones_3__N_314[5]), .B(n28214), 
         .C(n172), .D(n28215), .Z(n28209)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_213_3_lut_4_lut_4_lut.init = 16'haba5;
    LUT4 i20334_2_lut_rep_474_3_lut_3_lut (.A(n28526), .B(n28525), .C(n278_adj_52), 
         .Z(n28470)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i20334_2_lut_rep_474_3_lut_3_lut.init = 16'heded;
    LUT4 i20339_2_lut_rep_468_3_lut_4_lut_4_lut (.A(n28526), .B(n28525), 
         .C(n304_adj_55), .D(n278_adj_52), .Z(n28464)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i20339_2_lut_rep_468_3_lut_4_lut_4_lut.init = 16'he0d0;
    LUT4 i16984_3_lut_rep_469_3_lut_4_lut_4_lut (.A(n28526), .B(n304_adj_55), 
         .C(n28525), .D(n278_adj_52), .Z(n28465)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))))) */ ;
    defparam i16984_3_lut_rep_469_3_lut_4_lut_4_lut.init = 16'h373b;
    LUT4 div_276_mux_3_i11_3_lut (.A(n1569), .B(n9_adj_191), .C(n1248), 
         .Z(n280)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i11_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_526 (.A(n397_adj_209), .B(n28531), .C(n342), .Z(n28522)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_3_lut_rep_526.init = 16'h1414;
    LUT4 i1_2_lut_rep_522_4_lut_4_lut (.A(n28534), .B(n342), .C(n28531), 
         .D(n397_adj_209), .Z(n28518)) /* synthesis lut_function=(A (B+(C))+!A !(B (C+(D))+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_2_lut_rep_522_4_lut_4_lut.init = 16'ha9bd;
    LUT4 i20922_2_lut_rep_331 (.A(n502), .B(n6_adj_144), .Z(n28327)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i20922_2_lut_rep_331.init = 16'h6666;
    LUT4 i24060_2_lut_rep_524_2_lut (.A(n28531), .B(n342), .Z(n28520)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i24060_2_lut_rep_524_2_lut.init = 16'h9999;
    LUT4 i20493_2_lut_rep_516_3_lut_3_lut (.A(n28531), .B(n397_adj_209), 
         .C(n342), .Z(n28512)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i20493_2_lut_rep_516_3_lut_3_lut.init = 16'heded;
    LUT4 i20496_2_lut_rep_510_3_lut_4_lut_4_lut (.A(n28531), .B(n397_adj_209), 
         .C(n28523), .D(n342), .Z(n28506)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (B (C)+!B !(C (D)+!C !(D))))) */ ;
    defparam i20496_2_lut_rep_510_3_lut_4_lut_4_lut.init = 16'h1e2d;
    LUT4 i23906_3_lut_2_lut_3_lut_4_lut (.A(ones_3__N_314[5]), .B(n28214), 
         .C(n172), .D(n28215), .Z(n202)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i23906_3_lut_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i20498_2_lut_rep_511_3_lut_4_lut_4_lut (.A(n28531), .B(n397_adj_209), 
         .C(n28523), .D(n342), .Z(n28507)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i20498_2_lut_rep_511_3_lut_4_lut_4_lut.init = 16'he0d0;
    LUT4 zpone_3__I_17_mux_3_i5_3_lut_rep_529 (.A(zpone_3__N_304[4]), .B(n7_adj_36), 
         .C(zpone_3__N_304[8]), .Z(n28525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_mux_3_i5_3_lut_rep_529.init = 16'hcaca;
    LUT4 i20327_1_lut_3_lut (.A(zpone_3__N_304[4]), .B(n7_adj_36), .C(zpone_3__N_304[8]), 
         .Z(n329)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i20327_1_lut_3_lut.init = 16'h3535;
    LUT4 zpone_3__I_17_mux_3_i6_3_lut_rep_530 (.A(zpone_3__N_304[5]), .B(n6_adj_35), 
         .C(zpone_3__N_304[8]), .Z(n28526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_mux_3_i6_3_lut_rep_530.init = 16'hcaca;
    LUT4 i1_2_lut_rep_480_2_lut_4_lut (.A(zpone_3__N_304[5]), .B(n6_adj_35), 
         .C(zpone_3__N_304[8]), .D(n278_adj_52), .Z(n28476)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i1_2_lut_rep_480_2_lut_4_lut.init = 16'hca35;
    LUT4 temp2_8__I_0_i184_3_lut_4_lut_4_lut_3_lut_4_lut_4_lut (.A(temp2_8__N_286[3]), 
         .B(n28572), .C(n28590), .D(n28573), .Z(n264)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_i184_3_lut_4_lut_4_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 mod_271_i266_3_lut_4_lut_rep_532 (.A(n27013), .B(n28532), .C(n28531), 
         .D(n339), .Z(n28528)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i266_3_lut_4_lut_rep_532.init = 16'hf40b;
    LUT4 i1_2_lut_4_lut_4_lut_adj_163 (.A(n27013), .B(n28532), .C(n28531), 
         .D(n339), .Z(n4_adj_95)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A ((C+(D))+!B)) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_2_lut_4_lut_4_lut_adj_163.init = 16'hfd5b;
    LUT4 sub_262_inv_0_i1_1_lut (.A(temp1_8__N_213[0]), .Z(n11_adj_22)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(319[10:15])
    defparam sub_262_inv_0_i1_1_lut.init = 16'h5555;
    LUT4 i17473_3_lut_4_lut_4_lut (.A(cycledata_46__N_70[1]), .B(n28193), 
         .C(cycledata_46__N_70[3]), .D(n28218), .Z(cycledata[45])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B !(C+!(D))))) */ ;
    defparam i17473_3_lut_4_lut_4_lut.init = 16'h141d;
    LUT4 i20929_2_lut_rep_329_3_lut (.A(n502), .B(n6_adj_144), .C(n501_adj_584), 
         .Z(n28325)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i20929_2_lut_rep_329_3_lut.init = 16'h7878;
    LUT4 div_276_mux_3_i12_3_lut (.A(n1568), .B(n8_adj_190), .C(n1248), 
         .Z(n279)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i12_3_lut.init = 16'hcaca;
    LUT4 mux_160_Mux_1_i3_4_lut (.A(STATE[0]), .B(n27812), .C(STATE[2]), 
         .D(STATE[1]), .Z(n3_adj_589)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam mux_160_Mux_1_i3_4_lut.init = 16'hfaca;
    LUT4 i2_3_lut_4_lut_adj_164 (.A(n2), .B(tens_3__N_294[8]), .C(n120), 
         .D(n3), .Z(n235)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i2_3_lut_4_lut_adj_164.init = 16'h0008;
    LUT4 ones_3__I_18_i142_3_lut_rep_214_4_lut_4_lut (.A(ones_3__N_314[5]), 
         .B(n28214), .C(n28215), .D(n172), .Z(n28210)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam ones_3__I_18_i142_3_lut_rep_214_4_lut_4_lut.init = 16'h998c;
    LUT4 i16599_4_lut_4_lut_4_lut_4_lut (.A(n28163), .B(cycledata_63__N_66[1]), 
         .C(cycledata_63__N_66[2]), .D(cycledata_63__N_66[3]), .Z(cycledata[60])) /* synthesis lut_function=(!(A+(B (D)+!B (C)))) */ ;   // d:/lab_6/temperature.vhd(346[36:40])
    defparam i16599_4_lut_4_lut_4_lut_4_lut.init = 16'h0145;
    LUT4 div_276_i454_3_lut (.A(n663), .B(n702_adj_233), .C(n28255), .Z(n720_adj_238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i454_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_523_3_lut_4_lut_4_lut (.A(n3), .B(tens_3__N_294[8]), 
         .C(n120), .D(n2), .Z(n28519)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_523_3_lut_4_lut_4_lut.init = 16'h38f0;
    LUT4 i2_4_lut_rep_535 (.A(n338), .B(n28_adj_427), .C(n339), .D(n27013), 
         .Z(n28531)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_rep_535.init = 16'h0504;
    LUT4 i17782_3_lut_rep_327_3_lut_4_lut (.A(n502), .B(n6_adj_144), .C(n500_adj_585), 
         .D(n501_adj_584), .Z(n28323)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i17782_3_lut_rep_327_3_lut_4_lut.init = 16'h8000;
    LUT4 i17628_2_lut_rep_326_3_lut_4_lut (.A(n502), .B(n6_adj_144), .C(n500_adj_585), 
         .D(n501_adj_584), .Z(n28322)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i17628_2_lut_rep_326_3_lut_4_lut.init = 16'hf8f0;
    LUT4 div_276_i456_3_lut (.A(n28259), .B(n704_adj_235), .C(n28255), 
         .Z(n722_adj_240)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i456_3_lut.init = 16'hcaca;
    LUT4 mod_274_i376_3_lut_4_lut_rep_328_4_lut_3_lut_4_lut (.A(n502), .B(n6_adj_144), 
         .C(n500_adj_585), .D(n501_adj_584), .Z(n28324)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A !(D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i376_3_lut_4_lut_rep_328_4_lut_3_lut_4_lut.init = 16'h7780;
    LUT4 mod_271_i267_3_lut_rep_525_4_lut (.A(n28534), .B(n342), .C(n28531), 
         .D(n27013), .Z(n28521)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i267_3_lut_rep_525_4_lut.init = 16'h0df2;
    LUT4 div_276_i455_3_lut (.A(n664_adj_229), .B(n703_adj_234), .C(n28255), 
         .Z(n721_adj_239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_i455_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_165 (.A(segcnt[1]), .B(segcnt[0]), .Z(n13140)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_165.init = 16'h9999;
    LUT4 i9446_2_lut_4_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(n502), .B(n6_adj_144), 
         .C(n500_adj_585), .D(n501_adj_584), .Z(n12457)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i9446_2_lut_4_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hf780;
    LUT4 i20931_2_lut_rep_333 (.A(n502), .B(n6_adj_144), .C(n501_adj_584), 
         .Z(n28329)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i20931_2_lut_rep_333.init = 16'h8080;
    LUT4 i20205_2_lut_rep_489_3_lut_3_lut (.A(n28535), .B(n28533), .C(n278), 
         .Z(n28485)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i20205_2_lut_rep_489_3_lut_3_lut.init = 16'heded;
    LUT4 i5_4_lut_adj_166 (.A(n9_adj_143), .B(n7_adj_321), .C(n15_adj_142), 
         .D(n8_adj_319), .Z(n302_adj_440)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_166.init = 16'hfffe;
    LUT4 mod_274_i377_3_lut_4_lut_4_lut_4_lut (.A(n502), .B(n6_adj_144), 
         .C(n501_adj_584), .D(n500_adj_585), .Z(n556_adj_581)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !(B (D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i377_3_lut_4_lut_4_lut_4_lut.init = 16'h662a;
    LUT4 temp2_8__I_0_i207_3_lut (.A(n28544), .B(n287_adj_100), .C(n272_adj_105), 
         .Z(n9_adj_143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_i207_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_167 (.A(n20263), .B(n265), .C(n286_adj_101), .D(n272_adj_105), 
         .Z(n7_adj_321)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_167.init = 16'hfaee;
    LUT4 i2_4_lut_adj_168 (.A(n268), .B(n14_adj_417), .C(n269), .D(n28500), 
         .Z(n278)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;
    defparam i2_4_lut_adj_168.init = 16'h0504;
    LUT4 i2_4_lut_adj_169 (.A(n264), .B(n17_adj_141), .C(n285_adj_102), 
         .D(n272_adj_105), .Z(n8_adj_319)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_169.init = 16'hfcee;
    LUT4 i20919_2_lut_3_lut_4_lut (.A(n28334), .B(n28332), .C(n503_adj_583), 
         .D(n28335), .Z(n6_adj_144)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;
    defparam i20919_2_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 i4_4_lut_adj_170 (.A(n264), .B(n27090), .C(n265), .Z(n272_adj_105)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i4_4_lut_adj_170.init = 16'hfbfb;
    LUT4 i20210_2_lut_rep_483_3_lut_4_lut_4_lut (.A(n28535), .B(n28533), 
         .C(n304), .D(n278), .Z(n28479)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i20210_2_lut_rep_483_3_lut_4_lut_4_lut.init = 16'he0d0;
    LUT4 i16944_3_lut_rep_484_3_lut_4_lut_4_lut (.A(n28535), .B(n304), .C(n28533), 
         .D(n278), .Z(n28480)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))))) */ ;
    defparam i16944_3_lut_rep_484_3_lut_4_lut_4_lut.init = 16'h373b;
    LUT4 i3_4_lut_adj_171 (.A(n447), .B(n449), .C(n448), .D(n446), .Z(n13081)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i3_4_lut_adj_171.init = 16'hfffe;
    LUT4 tens_3__I_16_mux_3_i5_3_lut_rep_537 (.A(tens_3__N_294[4]), .B(n7), 
         .C(tens_3__N_294[8]), .Z(n28533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_mux_3_i5_3_lut_rep_537.init = 16'hcaca;
    LUT4 i2518_1_lut_3_lut (.A(tens_3__N_294[4]), .B(n7), .C(tens_3__N_294[8]), 
         .Z(n10_adj_419)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i2518_1_lut_3_lut.init = 16'h3535;
    LUT4 mod_271_i268_3_lut_rep_527_4_lut (.A(n287_adj_288), .B(n28536), 
         .C(n28531), .D(n342), .Z(n28523)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+(D))))) */ ;
    defparam mod_271_i268_3_lut_rep_527_4_lut.init = 16'h6669;
    LUT4 i5957_2_lut_rep_531_3_lut_4_lut (.A(n287_adj_288), .B(n28536), 
         .C(n27013), .D(n342), .Z(n28527)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i5957_2_lut_rep_531_3_lut_4_lut.init = 16'h0f06;
    LUT4 tens_3__I_16_mux_3_i6_3_lut_rep_539 (.A(tens_3__N_294[5]), .B(n6_adj_10), 
         .C(tens_3__N_294[8]), .Z(n28535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_mux_3_i6_3_lut_rep_539.init = 16'hcaca;
    LUT4 i1_2_lut_rep_492_2_lut_4_lut (.A(tens_3__N_294[5]), .B(n6_adj_10), 
         .C(tens_3__N_294[8]), .D(n278), .Z(n28488)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i1_2_lut_rep_492_2_lut_4_lut.init = 16'hca35;
    LUT4 i5952_2_lut_rep_536_3_lut_4_lut (.A(n28538), .B(n284_adj_290), 
         .C(n342), .D(n287_adj_288), .Z(n28532)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i5952_2_lut_rep_536_3_lut_4_lut.init = 16'hf1fe;
    LUT4 i20911_2_lut_rep_334_3_lut_4_lut (.A(n28333), .B(n1179), .C(n28335), 
         .D(n28334), .Z(n28330)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i20911_2_lut_rep_334_3_lut_4_lut.init = 16'hf7f8;
    LUT4 i16664_2_lut_3_lut_4_lut (.A(n28538), .B(n284_adj_290), .C(n342), 
         .D(n287_adj_288), .Z(n28_adj_427)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i16664_2_lut_3_lut_4_lut.init = 16'h0e01;
    LUT4 i2_3_lut_rep_337 (.A(n4495), .B(n4496), .C(n30_adj_570), .Z(n28333)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_337.init = 16'h8080;
    LUT4 i17174_2_lut_rep_336_4_lut (.A(n4495), .B(n4496), .C(n30_adj_570), 
         .D(n1179), .Z(n28332)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i17174_2_lut_rep_336_4_lut.init = 16'h8000;
    LUT4 i23898_3_lut_2_lut_3_lut_4_lut (.A(n287_adj_288), .B(n28539), .C(n284_adj_290), 
         .D(n285_adj_289), .Z(n338)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i23898_3_lut_2_lut_3_lut_4_lut.init = 16'he000;
    LUT4 i23897_2_lut_rep_540_3_lut_4_lut (.A(n287_adj_288), .B(n28539), 
         .C(n284_adj_290), .D(n285_adj_289), .Z(n28536)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i23897_2_lut_rep_540_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_rep_538_3_lut_4_lut_4_lut (.A(n287_adj_288), .B(n28539), 
         .C(n284_adj_290), .D(n285_adj_289), .Z(n28534)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+(D))+!B (C))) */ ;
    defparam i1_2_lut_rep_538_3_lut_4_lut_4_lut.init = 16'haba5;
    LUT4 mod_271_i229_3_lut_4_lut_3_lut_4_lut (.A(n287_adj_288), .B(n28539), 
         .C(n284_adj_290), .D(n285_adj_289), .Z(n339)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam mod_271_i229_3_lut_4_lut_3_lut_4_lut.init = 16'h11e0;
    LUT4 i23814_2_lut_rep_542 (.A(n287_adj_288), .B(n28539), .C(n285_adj_289), 
         .Z(n28538)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i23814_2_lut_rep_542.init = 16'he0e0;
    LUT4 mod_271_i230_3_lut_4_lut_4_lut (.A(n287_adj_288), .B(n28539), .C(n285_adj_289), 
         .D(n284_adj_290), .Z(n27013)) /* synthesis lut_function=(!(A (B)+!A !(B (C+(D))+!B !(D)))) */ ;
    defparam mod_271_i230_3_lut_4_lut_4_lut.init = 16'h6673;
    LUT4 i1_2_lut_3_lut_adj_172 (.A(n175), .B(n174), .C(n173), .Z(n284_adj_290)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_172.init = 16'h1010;
    LUT4 i21306_1_lut_2_lut_3_lut_4_lut (.A(n28397), .B(n4499), .C(n1179), 
         .D(n28333), .Z(n13308)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i21306_1_lut_2_lut_3_lut_4_lut.init = 16'hca3a;
    FD1S3AX btnflag_414 (.D(n27567), .CK(clk_c), .Q(btnflag));   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam btnflag_414.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_543_3_lut (.A(n175), .B(n174), .C(n173), .Z(n28539)) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i1_3_lut_rep_543_3_lut.init = 16'h4a4a;
    LUT4 i1_2_lut_rep_335_3_lut_4_lut (.A(n28397), .B(n4499), .C(n1179), 
         .D(n28333), .Z(n28331)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_rep_335_3_lut_4_lut.init = 16'h35c5;
    LUT4 temp2_8__I_0_i229_3_lut_4_lut (.A(n28541), .B(n28598), .C(n302_adj_440), 
         .D(n297_adj_97), .Z(zpzone_3__N_253[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (D)+!B !(C (D)+!C !(D))))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_i229_3_lut_4_lut.init = 16'h4fb0;
    LUT4 n27818_bdd_3_lut_4_lut (.A(n27813), .B(n283), .C(n272), .D(n28617), 
         .Z(n27819)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n27818_bdd_3_lut_4_lut.init = 16'hefe0;
    LUT4 temp1_8__I_0_i229_3_lut_3_lut_4_lut (.A(n28543), .B(temp1_8__N_213[1]), 
         .C(n297), .D(n27819), .Z(ones_3__N_237[3])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_i229_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i24193_3_lut_rep_546 (.A(n28543), .B(temp1_8__N_213[1]), .C(n297), 
         .D(n27819), .Z(n28542)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam i24193_3_lut_rep_546.init = 16'hffe0;
    LUT4 temp1_8__I_0_i230_3_lut_4_lut (.A(n28543), .B(temp1_8__N_213[1]), 
         .C(n297), .D(n27819), .Z(ones_3__N_237[2])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_i230_3_lut_4_lut.init = 16'h998a;
    LUT4 temp1_8__I_0_i209_3_lut_rep_547 (.A(temp1_8__N_270[2]), .B(n289), 
         .C(n272), .Z(n28543)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam temp1_8__I_0_i209_3_lut_rep_547.init = 16'hcaca;
    LUT4 temp2_8__I_0_i208_3_lut_4_lut_4_lut (.A(n28548), .B(n288_adj_99), 
         .C(n272_adj_105), .D(n28590), .Z(n297_adj_97)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_i208_3_lut_4_lut_4_lut.init = 16'hcac5;
    LUT4 i23691_3_lut_4_lut_4_lut_4_lut (.A(n28548), .B(n28590), .C(n28582), 
         .D(n28544), .Z(n27090)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(D)))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam i23691_3_lut_4_lut_4_lut_4_lut.init = 16'h60ff;
    LUT4 temp2_8__I_0_i203_3_lut_4_lut (.A(n28548), .B(n28549), .C(n272_adj_105), 
         .D(n283_adj_104), .Z(n17_adj_141)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam temp2_8__I_0_i203_3_lut_4_lut.init = 16'hf808;
    LUT4 temp2_8__I_0_i204_3_lut_4_lut (.A(n28548), .B(n28549), .C(n272_adj_105), 
         .D(n284_adj_103), .Z(n15_adj_142)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam temp2_8__I_0_i204_3_lut_4_lut.init = 16'hf808;
    LUT4 n33_bdd_3_lut_4_lut (.A(n13467), .B(n28550), .C(n33_adj_20), 
         .D(n28613), .Z(n27881)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(237[12:17])
    defparam n33_bdd_3_lut_4_lut.init = 16'hf0ee;
    LUT4 mux_126_Mux_0_i3_3_lut_4_lut (.A(n13467), .B(n28550), .C(READ_BIT_CNT[1]), 
         .D(READ_BIT_CNT[0]), .Z(n768)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lab_6/temperature.vhd(237[12:17])
    defparam mux_126_Mux_0_i3_3_lut_4_lut.init = 16'h0ef1;
    LUT4 i24137_3_lut_4_lut (.A(n13467), .B(n28550), .C(READ_BIT_CNT[1]), 
         .D(clk_c_enable_43), .Z(clk_c_enable_33)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(237[12:17])
    defparam i24137_3_lut_4_lut.init = 16'hf100;
    LUT4 i2_3_lut_4_lut_adj_173 (.A(cnt[6]), .B(n28555), .C(n28604), .D(cnt[0]), 
         .Z(n26933)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(237[12:17])
    defparam i2_3_lut_4_lut_adj_173.init = 16'hfeff;
    LUT4 tens_3__I_16_mux_3_i7_3_lut (.A(tens_3__N_294[6]), .B(n5), .C(tens_3__N_294[8]), 
         .Z(n238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_mux_3_i7_3_lut.init = 16'hcaca;
    LUT4 tens_3__I_16_mux_3_i8_3_lut (.A(tens_3__N_294[7]), .B(n4_adj_11), 
         .C(tens_3__N_294[8]), .Z(n120)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_mux_3_i8_3_lut.init = 16'hcaca;
    LUT4 mux_160_Mux_3_i7_3_lut_4_lut (.A(n28557), .B(n28593), .C(STATE[2]), 
         .D(n26896), .Z(n7_adj_280)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam mux_160_Mux_3_i7_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_550_3_lut_4_lut (.A(cnt[1]), .B(n28561), .C(n13467), 
         .D(cnt[6]), .Z(n28546)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(174[12:17])
    defparam i1_2_lut_rep_550_3_lut_4_lut.init = 16'hfffe;
    LUT4 i20887_2_lut_rep_200_3_lut_4_lut (.A(n235_adj_444), .B(n28201), 
         .C(n28207), .D(n28205), .Z(n28196)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i20887_2_lut_rep_200_3_lut_4_lut.init = 16'hfff8;
    LUT4 mux_269_i2_3_lut_rep_275_4_lut_4_lut (.A(n28336), .B(zpzone_3__N_253[1]), 
         .C(mode), .D(n28278), .Z(n28271)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A !(B (C (D))+!B ((D)+!C)))) */ ;
    defparam mux_269_i2_3_lut_rep_275_4_lut_4_lut.init = 16'h53a3;
    LUT4 i1_2_lut_rep_554_3_lut (.A(cnt[1]), .B(n28561), .C(cnt[6]), .Z(n28550)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(174[12:17])
    defparam i1_2_lut_rep_554_3_lut.init = 16'hfefe;
    LUT4 i2_1_lut (.A(n397_adj_209), .Z(n2_adj_642)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i2_1_lut.init = 16'h5555;
    LUT4 sub_265_inv_0_i1_1_lut (.A(temp2[0]), .Z(n11)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(321[11:16])
    defparam sub_265_inv_0_i1_1_lut.init = 16'h5555;
    LUT4 mux_268_i1_4_lut_rep_167 (.A(n13103), .B(tens_3__N_230[0]), .C(mode), 
         .D(n27238), .Z(n28163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_268_i1_4_lut_rep_167.init = 16'hcfca;
    LUT4 i3_4_lut_adj_174 (.A(n337_adj_59), .B(n334_adj_56), .C(n335_adj_57), 
         .D(n336_adj_58), .Z(n13044)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i3_4_lut_adj_174.init = 16'hfffe;
    LUT4 i9450_2_lut (.A(n502), .B(n501_adj_584), .Z(n12461)) /* synthesis lut_function=(A (B)) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i9450_2_lut.init = 16'h8888;
    LUT4 div_276_mux_3_i13_3_lut (.A(n1567), .B(n7_adj_189), .C(n1248), 
         .Z(n278_adj_213)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i13_3_lut.init = 16'hcaca;
    LUT4 i20809_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n28337), .B(n28336), .C(n175_adj_424), 
         .D(n1004_adj_447), .Z(n6_adj_224)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam i20809_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hdeed;
    LUT4 i2_3_lut_rep_565 (.A(n26795), .B(cnt[4]), .C(cnt[5]), .Z(n28561)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(247[12:18])
    defparam i2_3_lut_rep_565.init = 16'hfefe;
    LUT4 i1_2_lut_rep_559_4_lut (.A(n26795), .B(cnt[4]), .C(cnt[5]), .D(cnt[1]), 
         .Z(n28555)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(247[12:18])
    defparam i1_2_lut_rep_559_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_279_2_lut_4_lut (.A(n28339), .B(n4510), .C(n1179), 
         .D(n28278), .Z(n28275)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_rep_279_2_lut_4_lut.init = 16'hca35;
    LUT4 i1_2_lut_4_lut_adj_175 (.A(n28611), .B(STATE[0]), .C(n28570), 
         .D(WRITE_LOW_CNT[1]), .Z(n24718)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_175.init = 16'h0800;
    LUT4 i10742_2_lut_4_lut (.A(n28565), .B(STATE[3]), .C(STATE[2]), .D(n3532), 
         .Z(n13768)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i10742_2_lut_4_lut.init = 16'h0800;
    LUT4 i24069_2_lut_3_lut_4_lut (.A(n28574), .B(n28593), .C(n28613), 
         .D(n33_adj_20), .Z(n27429)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i24069_2_lut_3_lut_4_lut.init = 16'h0444;
    LUT4 i1_3_lut_rep_568_4_lut (.A(n28574), .B(n28593), .C(STATE[2]), 
         .D(STATE[3]), .Z(clk_c_enable_41)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_3_lut_rep_568_4_lut.init = 16'h0400;
    LUT4 i14893_3_lut (.A(zpone_3__N_304[2]), .B(n9_adj_38), .C(zpone_3__N_304[8]), 
         .Z(n242_adj_49)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(298[10:15])
    defparam i14893_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_296_2_lut_4_lut (.A(n28342), .B(n4509), .C(n1179), 
         .D(n1004_adj_447), .Z(n28292)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_rep_296_2_lut_4_lut.init = 16'hca35;
    LUT4 div_273_i818_3_lut_3_lut (.A(n4511), .B(n1179), .C(n20729), .Z(zpzone_3__N_333[0])) /* synthesis lut_function=(!(A (B+(C))+!A !(B+!(C)))) */ ;   // d:/lab_6/temperature.vhd(334[11:16])
    defparam div_273_i818_3_lut_3_lut.init = 16'h4747;
    LUT4 i17721_2_lut (.A(ser_N_380[2]), .B(ser_N_380[0]), .Z(n20743)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(369[19:37])
    defparam i17721_2_lut.init = 16'heeee;
    LUT4 i17667_3_lut_rep_342 (.A(n190), .B(n1118), .C(n5_adj_468), .Z(n28338)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i17667_3_lut_rep_342.init = 16'hc8c8;
    LUT4 i17707_2_lut_4_lut (.A(n190), .B(n1118), .C(n5_adj_468), .D(n32_adj_612), 
         .Z(n20729)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i17707_2_lut_4_lut.init = 16'hffc8;
    LUT4 i17565_2_lut (.A(ser_N_380[2]), .B(ser_N_380[0]), .Z(n20585)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lab_6/temperature.vhd(369[19:37])
    defparam i17565_2_lut.init = 16'h4444;
    LUT4 i3_4_lut_adj_176 (.A(n665_adj_553), .B(n662_adj_556), .C(n663_adj_555), 
         .D(n664_adj_554), .Z(n13100)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i3_4_lut_adj_176.init = 16'hfffe;
    LUT4 i20973_2_lut_rep_571 (.A(temp2[0]), .B(n3047), .Z(n28567)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20973_2_lut_rep_571.init = 16'h6666;
    LUT4 i17735_2_lut_rep_429_3_lut_4_lut (.A(temp2[0]), .B(n3047), .C(n780), 
         .D(n28427), .Z(n28425)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i17735_2_lut_rep_429_3_lut_4_lut.init = 16'hf060;
    LUT4 i2_4_lut_rep_564_4_lut (.A(n20703), .B(n28575), .C(n20809), .D(n20695), 
         .Z(n28560)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;
    defparam i2_4_lut_rep_564_4_lut.init = 16'he0c0;
    LUT4 i1351_2_lut (.A(segcnt[0]), .B(placecnt[4]), .Z(ser_N_380[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(369[19:28])
    defparam i1351_2_lut.init = 16'h6666;
    LUT4 i1549_2_lut_rep_518_4_lut_else_4_lut (.A(tens_3__N_294[8]), .B(n3), 
         .C(n238), .D(n2), .Z(n28618)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1549_2_lut_rep_518_4_lut_else_4_lut.init = 16'h0080;
    LUT4 i23994_then_4_lut (.A(ser_N_380[1]), .B(ser_N_380[0]), .C(cycledata_63__N_66[1]), 
         .D(cycledata_63__N_66[2]), .Z(n28632)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i23994_then_4_lut.init = 16'h7bf6;
    LUT4 i2_3_lut_rep_567_4_lut (.A(STATE[3]), .B(n28574), .C(STATE[0]), 
         .D(n28611), .Z(n28563)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_rep_567_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_177 (.A(STATE[0]), .B(n28574), .C(n26870), 
         .D(n28614), .Z(n24719)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i1_2_lut_3_lut_4_lut_adj_177.init = 16'h0010;
    LUT4 i1_3_lut_adj_178 (.A(n174), .B(n175), .C(n173), .Z(n285_adj_289)) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam i1_3_lut_adj_178.init = 16'h8a8a;
    LUT4 div_273_i736_3_lut_4_lut (.A(n28340), .B(n13073), .C(n1101), 
         .D(n378_adj_112), .Z(n5_adj_468)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i736_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i817_3_lut_rep_340_4_lut (.A(n28340), .B(n13073), .C(n1179), 
         .D(n4510), .Z(n28336)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam div_273_i817_3_lut_rep_340_4_lut.init = 16'hfe0e;
    LUT4 div_276_mux_3_i15_3_lut (.A(n1565), .B(n5_adj_187), .C(n1248), 
         .Z(n276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam div_276_mux_3_i15_3_lut.init = 16'hcaca;
    LUT4 mux_160_Mux_1_i7_3_lut_4_lut (.A(n10_adj_269), .B(STATE[2]), .C(STATE[3]), 
         .D(n3_adj_589), .Z(n7_adj_270)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam mux_160_Mux_1_i7_3_lut_4_lut.init = 16'h2f20;
    LUT4 mux_160_Mux_3_i15_3_lut_4_lut (.A(n10_adj_269), .B(STATE[2]), .C(STATE[3]), 
         .D(n7_adj_280), .Z(STATE_3__N_144[3])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam mux_160_Mux_3_i15_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_rep_170_3_lut_4_lut (.A(n241_adj_338), .B(n28169), .C(n13116), 
         .D(n28175), .Z(n28166)) /* synthesis lut_function=(A (C+(D))+!A (B (C)+!B (C+(D)))) */ ;
    defparam i1_2_lut_rep_170_3_lut_4_lut.init = 16'hfbf0;
    LUT4 div_273_i735_3_lut_4_lut (.A(n28340), .B(n13073), .C(n1100), 
         .D(n1061), .Z(n1118)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i735_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17677_3_lut_rep_344 (.A(n378_adj_112), .B(n1060), .C(n1061), 
         .Z(n28340)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i17677_3_lut_rep_344.init = 16'hc8c8;
    LUT4 i17743_2_lut_rep_343_4_lut (.A(n378_adj_112), .B(n1060), .C(n1061), 
         .D(n13073), .Z(n28339)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i17743_2_lut_rep_343_4_lut.init = 16'hffc8;
    LUT4 i7109_2_lut_rep_217_4_lut_4_lut_4_lut (.A(n28217), .B(ones_3__N_314[6]), 
         .C(ones_3__N_314[8]), .D(ones_3__N_314[5]), .Z(n28213)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i7109_2_lut_rep_217_4_lut_4_lut_4_lut.init = 16'h8a08;
    LUT4 i23749_2_lut_4_lut (.A(n991), .B(n1030), .C(n28342), .D(n1051), 
         .Z(n27149)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i23749_2_lut_4_lut.init = 16'hffca;
    LUT4 i28_3_lut (.A(n28449), .B(n28448), .C(n378), .Z(n27238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(296[10:14])
    defparam i28_3_lut.init = 16'hcaca;
    LUT4 i24090_4_lut (.A(key_div[11]), .B(n27290), .C(n20_adj_335), .D(key_div[1]), 
         .Z(key_div_19__N_136)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/lab_6/temperature.vhd(62[6:20])
    defparam i24090_4_lut.init = 16'h0800;
    LUT4 div_273_i683_3_lut_rep_345_4_lut (.A(n28343), .B(n13097), .C(n1030), 
         .D(n991), .Z(n28341)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i683_3_lut_rep_345_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_adj_179 (.A(ser_N_380[1]), .B(ser_N_380[0]), .C(ser_N_380[2]), 
         .Z(placecnt_4__N_367[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // d:/lab_6/temperature.vhd(368[19:27])
    defparam i1_2_lut_3_lut_adj_179.init = 16'he1e1;
    LUT4 div_273_i684_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1031), 
         .D(n992), .Z(n1049)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i684_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_271_i265_4_lut (.A(n338), .B(n339), .C(n28531), .D(n28527), 
         .Z(n392_adj_210)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(326[11:16])
    defparam mod_271_i265_4_lut.init = 16'haaa9;
    LUT4 div_273_i690_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1037), 
         .D(n28347), .Z(n1055)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i690_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i24243 (.BLUT(n27849), .ALUT(n27847), .C0(n28222), .Z(n27246));
    LUT4 div_273_i816_3_lut_rep_341_4_lut (.A(n28343), .B(n13097), .C(n1179), 
         .D(n4509), .Z(n28337)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam div_273_i816_3_lut_rep_341_4_lut.init = 16'hfe0e;
    LUT4 div_273_i685_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1032), 
         .D(n993), .Z(n1050)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i685_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i692_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1039), 
         .D(n1000), .Z(n1057)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i692_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i693_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1040), 
         .D(n1001), .Z(n1058)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i693_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i688_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1035), 
         .D(n28346), .Z(n1053)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i688_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5_4_lut_adj_180 (.A(n371), .B(n7_adj_674), .C(n367), .D(n8_adj_673), 
         .Z(n378)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_180.init = 16'hfffe;
    LUT4 i1_4_lut_adj_181 (.A(n242), .B(n368), .C(n372), .D(n373), .Z(n7_adj_674)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_181.init = 16'hfcec;
    LUT4 div_273_i687_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1034), 
         .D(n995), .Z(n1052)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i687_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_218_3_lut_3_lut (.A(n28217), .B(ones_3__N_314[6]), 
         .C(ones_3__N_314[8]), .Z(n28214)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i1_2_lut_rep_218_3_lut_3_lut.init = 16'h2c2c;
    LUT4 i23567_2_lut_rep_566_3_lut_4_lut (.A(rst_c), .B(n28577), .C(n28614), 
         .D(STATE[0]), .Z(n28562)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lab_6/temperature.vhd(12[6:9])
    defparam i23567_2_lut_rep_566_3_lut_4_lut.init = 16'hfffd;
    LUT4 div_273_i691_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1038), 
         .D(n999), .Z(n1056)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i691_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i689_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1036), 
         .D(n997), .Z(n1054)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i689_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i17728_2_lut_3_lut (.A(n28217), .B(ones_3__N_314[6]), .C(ones_3__N_314[8]), 
         .Z(n172)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam i17728_2_lut_3_lut.init = 16'h1010;
    LUT4 i16558_2_lut_3_lut_4_lut (.A(cnt[9]), .B(n28579), .C(STATE[0]), 
         .D(n20703), .Z(n1_adj_383)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // d:/lab_6/temperature.vhd(116[21:28])
    defparam i16558_2_lut_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i2_3_lut_4_lut_adj_182 (.A(cnt[9]), .B(n28579), .C(cnt[8]), .D(cnt[7]), 
         .Z(n26795)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(116[21:28])
    defparam i2_3_lut_4_lut_adj_182.init = 16'hfffe;
    LUT4 i23797_2_lut_rep_570_2_lut_3_lut (.A(n28587), .B(temp1_8__N_270[3]), 
         .C(n28597), .Z(n28566)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i23797_2_lut_rep_570_2_lut_3_lut.init = 16'he0e0;
    LUT4 i20255_2_lut_2_lut_3_lut (.A(n28587), .B(temp1_8__N_270[3]), .C(n28597), 
         .Z(n256)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i20255_2_lut_2_lut_3_lut.init = 16'h1e1e;
    LUT4 div_273_i686_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1033), 
         .D(n994), .Z(n1051)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i686_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23640_1_lut_2_lut_2_lut_3_lut (.A(n28587), .B(temp1_8__N_270[3]), 
         .C(n28597), .Z(n12_adj_212)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i23640_1_lut_2_lut_2_lut_3_lut.init = 16'h1f1f;
    LUT4 i24147_2_lut_rep_558_2_lut_3_lut_3_lut_4_lut (.A(n28587), .B(temp1_8__N_270[3]), 
         .C(n28597), .D(n28586), .Z(n28554)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i24147_2_lut_rep_558_2_lut_3_lut_3_lut_4_lut.init = 16'h001f;
    LUT4 div_273_i682_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1029), 
         .D(n990), .Z(n1047)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i682_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i695_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1042), 
         .D(n28345), .Z(n1060)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i695_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i696_3_lut_4_lut (.A(n28343), .B(n13097), .C(n1043), 
         .D(n377), .Z(n1061)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i696_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_578_3_lut (.A(clk_temp), .B(n28584), .C(rst_c), 
         .Z(n28574)) /* synthesis lut_function=(A+!(B (C))) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i1_2_lut_rep_578_3_lut.init = 16'hbfbf;
    PFUMX i102 (.BLUT(n6), .ALUT(n26901), .C0(STATE[1]), .Z(n58));
    LUT4 i24181_2_lut_3_lut (.A(clk_temp), .B(n28584), .C(rst_c), .Z(n3092)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i24181_2_lut_3_lut.init = 16'h0404;
    LUT4 i23994_else_4_lut (.A(ser_N_380[1]), .B(ser_N_380[0]), .C(cycledata_63__N_66[1]), 
         .D(cycledata_63__N_66[2]), .Z(n28631)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D))+!B !(C+!(D)))) */ ;
    defparam i23994_else_4_lut.init = 16'hb6df;
    LUT4 i24138_2_lut_3_lut_4_lut (.A(clk_temp), .B(n28584), .C(n73), 
         .D(rst_c), .Z(n27498)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i24138_2_lut_3_lut_4_lut.init = 16'hbfff;
    LUT4 i20975_2_lut_rep_574_3_lut_4_lut (.A(clk_temp), .B(n28584), .C(STATE[3]), 
         .D(rst_c), .Z(n28570)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i20975_2_lut_rep_574_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_569_3_lut_4_lut (.A(clk_temp), .B(n28584), .C(n28593), 
         .D(rst_c), .Z(n28565)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i1_2_lut_rep_569_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_575_3_lut_4_lut (.A(clk_temp), .B(n28584), .C(STATE[0]), 
         .D(rst_c), .Z(n28571)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lab_6/temperature.vhd(61[1] 86[8])
    defparam i1_2_lut_rep_575_3_lut_4_lut.init = 16'hfbff;
    LUT4 temp2_8__I_0_i186_3_lut_rep_548_4_lut_4_lut (.A(n28590), .B(n28559), 
         .C(n28569), .D(n28551), .Z(n28544)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_i186_3_lut_rep_548_4_lut_4_lut.init = 16'h666c;
    LUT4 ones_3__I_18_i120_3_lut_rep_219_4_lut_3_lut (.A(n28217), .B(ones_3__N_314[6]), 
         .C(ones_3__N_314[8]), .Z(n28215)) /* synthesis lut_function=(A (B+!(C))) */ ;   // d:/lab_6/temperature.vhd(331[9:14])
    defparam ones_3__I_18_i120_3_lut_rep_219_4_lut_3_lut.init = 16'h8a8a;
    LUT4 tens_3__I_16_mux_3_i2_3_lut (.A(tens_3__N_294[1]), .B(n10), .C(tens_3__N_294[8]), 
         .Z(n126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_mux_3_i2_3_lut.init = 16'hcaca;
    LUT4 div_273_i694_3_lut_4_lut_4_lut (.A(n28344), .B(n1002), .C(n1041), 
         .D(n13097), .Z(n1059)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i694_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i9939_3_lut_3_lut_4_lut (.A(cycledata_63__N_66[1]), .B(cycledata_63__N_66[2]), 
         .C(cycledata_63__N_66[3]), .D(n28633), .Z(n12950)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i9939_3_lut_3_lut_4_lut.init = 16'h1f10;
    LUT4 i5_4_lut_adj_183 (.A(n19), .B(n7_adj_637), .C(n15_adj_421), .D(n8_adj_636), 
         .Z(n13103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i5_4_lut_adj_183.init = 16'hfffe;
    LUT4 i24123_2_lut_rep_552_3_lut_4_lut_4_lut (.A(n28590), .B(n28558), 
         .C(n28569), .D(n28559), .Z(n28548)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A ((C)+!B)) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam i24123_2_lut_rep_552_3_lut_4_lut_4_lut.init = 16'hf3f1;
    LUT4 i17683_2_lut_rep_347_3_lut (.A(n377), .B(n28345), .C(n1002), 
         .Z(n28343)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17683_2_lut_rep_347_3_lut.init = 16'he0e0;
    LUT4 i24122_2_lut_rep_555_3_lut_4_lut_4_lut_4_lut (.A(n28590), .B(n28572), 
         .C(temp2_8__N_286[3]), .D(n28573), .Z(n28551)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam i24122_2_lut_rep_555_3_lut_4_lut_4_lut_4_lut.init = 16'h0d70;
    LUT4 tens_3__I_16_i257_3_lut (.A(n367), .B(n390), .C(n378), .Z(n19)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_i257_3_lut.init = 16'hcaca;
    LUT4 i17767_2_lut_rep_346_3_lut_4_lut (.A(n377), .B(n28345), .C(n13097), 
         .D(n1002), .Z(n28342)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i17767_2_lut_rep_346_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_4_lut_adj_184 (.A(n370), .B(n9_adj_420), .C(n393), .D(n378), 
         .Z(n7_adj_637)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i1_4_lut_adj_184.init = 16'hfcee;
    LUT4 temp2_8__I_0_i185_3_lut_4_lut_3_lut_4_lut_4_lut (.A(n28590), .B(n28558), 
         .C(n28569), .D(n28559), .Z(n265)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam temp2_8__I_0_i185_3_lut_4_lut_3_lut_4_lut_4_lut.init = 16'hc062;
    LUT4 i15339_3_lut (.A(n28452), .B(n392), .C(n378), .Z(n15_adj_421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15339_3_lut.init = 16'hcaca;
    LUT4 i17508_2_lut_rep_348_4_lut (.A(n376), .B(n985), .C(n28348), .D(n377), 
         .Z(n28344)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17508_2_lut_rep_348_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_rep_551_3_lut_4_lut_4_lut_4_lut (.A(n28590), .B(n28559), 
         .C(n28558), .D(n28569), .Z(n28547)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam i1_2_lut_rep_551_3_lut_4_lut_4_lut_4_lut.init = 16'h0df2;
    LUT4 i2_4_lut_adj_185 (.A(n371), .B(n17_adj_422), .C(n394), .D(n378), 
         .Z(n8_adj_636)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam i2_4_lut_adj_185.init = 16'hfcee;
    LUT4 div_273_mux_3_i16_3_lut (.A(n1517), .B(n4_adj_84), .C(n1179), 
         .Z(n176)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i16_3_lut.init = 16'hcaca;
    LUT4 i15335_3_lut (.A(n372), .B(n395), .C(n378), .Z(n9_adj_420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15335_3_lut.init = 16'hcaca;
    LUT4 i15337_3_lut (.A(n368), .B(n391), .C(n378), .Z(n17_adj_422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i15337_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut_adj_186 (.A(n15_adj_597), .B(n9_adj_668), .C(n27780), 
         .D(n10_adj_667), .Z(tens_3__N_230[0])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_186.init = 16'hfffe;
    LUT4 tens_3__I_19_i259_3_lut (.A(n28165), .B(n392_adj_366), .C(n378_adj_363), 
         .Z(n15_adj_597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i259_3_lut.init = 16'hcaca;
    LUT4 tens_3__I_16_mux_3_i4_3_lut (.A(tens_3__N_294[3]), .B(n8), .C(tens_3__N_294[8]), 
         .Z(n241)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(319[10:20])
    defparam tens_3__I_16_mux_3_i4_3_lut.init = 16'hcaca;
    LUT4 i6_2_lut_4_lut (.A(n939), .B(n978), .C(n28348), .D(n992), .Z(n18)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i6_2_lut_4_lut.init = 16'hffca;
    LUT4 i2_4_lut_adj_187 (.A(n372_adj_362), .B(n11_adj_596), .C(n395_adj_369), 
         .D(n378_adj_363), .Z(n9_adj_668)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i2_4_lut_adj_187.init = 16'hfcee;
    LUT4 i2_2_lut_4_lut_adj_188 (.A(n941), .B(n980), .C(n28348), .D(n999), 
         .Z(n14_adj_44)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i2_2_lut_4_lut_adj_188.init = 16'hffca;
    LUT4 i24118_2_lut_rep_553_3_lut_4_lut_4_lut (.A(n28590), .B(n28558), 
         .C(n28569), .D(n28559), .Z(n28549)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lab_6/temperature.vhd(320[11:16])
    defparam i24118_2_lut_rep_553_3_lut_4_lut_4_lut.init = 16'h0c0e;
    LUT4 i3_4_lut_adj_189 (.A(n368_adj_359), .B(n19_adj_598), .C(n391_adj_365), 
         .D(n378_adj_363), .Z(n10_adj_667)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i3_4_lut_adj_189.init = 16'hfcee;
    INV i24587 (.A(clk_c), .Z(clk_N_92));   // d:/lab_6/temperature.vhd(10[6:9])
    LUT4 i2_3_lut_rep_583 (.A(cnt[10]), .B(cnt[11]), .C(n13489), .Z(n28579)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(116[21:28])
    defparam i2_3_lut_rep_583.init = 16'hfefe;
    LUT4 i1_2_lut_rep_579_4_lut (.A(cnt[10]), .B(cnt[11]), .C(n13489), 
         .D(cnt[9]), .Z(n28575)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(116[21:28])
    defparam i1_2_lut_rep_579_4_lut.init = 16'hfffe;
    LUT4 mod_274_i682_3_lut (.A(n943_adj_464), .B(n980_adj_452), .C(n950_adj_461), 
         .Z(n997_adj_448)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i682_3_lut.init = 16'hcaca;
    LUT4 div_273_i651_3_lut_rep_351_4_lut (.A(n28349), .B(n13057), .C(n980), 
         .D(n941), .Z(n28347)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i651_3_lut_rep_351_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_i261_3_lut (.A(n371_adj_361), .B(n394_adj_368), .C(n378_adj_363), 
         .Z(n11_adj_596)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i261_3_lut.init = 16'hcaca;
    LUT4 div_273_i649_3_lut_rep_350_4_lut (.A(n28349), .B(n13057), .C(n978), 
         .D(n939), .Z(n28346)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i649_3_lut_rep_350_4_lut.init = 16'hf1e0;
    LUT4 i10609_3_lut_4_lut_3_lut (.A(WRITE_BYTE_CNT[3]), .B(n28592), .C(WRITE_BYTE_FLAG[0]), 
         .Z(n3057)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i10609_3_lut_4_lut_3_lut.init = 16'h7878;
    LUT4 div_273_i815_3_lut_4_lut (.A(n28349), .B(n13057), .C(n1179), 
         .D(n4508), .Z(n945_adj_462)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam div_273_i815_3_lut_4_lut.init = 16'hfe0e;
    LUT4 temp2_8__I_0_i209_3_lut_rep_545_4_lut (.A(temp2_8__N_286[1]), .B(n28608), 
         .C(n272_adj_105), .D(n289_adj_98), .Z(n28541)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam temp2_8__I_0_i209_3_lut_rep_545_4_lut.init = 16'hf606;
    LUT4 i1_3_lut_rep_588 (.A(count[4]), .B(n197), .C(count[5]), .Z(n28584)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut_rep_588.init = 16'h0404;
    LUT4 div_273_i645_3_lut_4_lut (.A(n28349), .B(n13057), .C(n974), .D(n935), 
         .Z(n992)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i645_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i643_3_lut_4_lut (.A(n28349), .B(n13057), .C(n972), .D(n933), 
         .Z(n990)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i643_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i28_2_lut_4_lut (.A(count[4]), .B(n197), .C(count[5]), .D(clk_temp), 
         .Z(clk_temp_N_391)) /* synthesis lut_function=(A (D)+!A (B (C (D)+!C !(D))+!B (D))) */ ;
    defparam i28_2_lut_4_lut.init = 16'hfb04;
    LUT4 i1_2_lut_rep_581_4_lut (.A(count[4]), .B(n197), .C(count[5]), 
         .D(clk_temp), .Z(n28577)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_rep_581_4_lut.init = 16'hfffb;
    LUT4 i1_3_lut_4_lut_adj_190 (.A(ser_N_380[2]), .B(n28595), .C(ser_N_380[3]), 
         .D(placecnt[4]), .Z(placecnt_4__N_367[4])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(368[19:27])
    defparam i1_3_lut_4_lut_adj_190.init = 16'hfe01;
    LUT4 div_273_i646_3_lut_4_lut (.A(n28349), .B(n13057), .C(n975), .D(n936), 
         .Z(n993)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i646_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mod_274_i681_3_lut (.A(n942), .B(n979_adj_453), .C(n950_adj_461), 
         .Z(n996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam mod_274_i681_3_lut.init = 16'hcaca;
    LUT4 div_273_i656_3_lut_rep_349_4_lut (.A(n28349), .B(n13057), .C(n985), 
         .D(n376), .Z(n28345)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i656_3_lut_rep_349_4_lut.init = 16'hf1e0;
    LUT4 tens_3__I_19_i257_3_lut (.A(n367_adj_358), .B(n390_adj_364), .C(n378_adj_363), 
         .Z(n19_adj_598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam tens_3__I_19_i257_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_592 (.A(cnt[8]), .B(n20515), .C(cnt[4]), .Z(n28588)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_rep_592.init = 16'h8080;
    LUT4 i1_2_lut_4_lut_adj_191 (.A(cnt[8]), .B(n20515), .C(cnt[4]), .D(n26906), 
         .Z(n20695)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_191.init = 16'h8000;
    LUT4 i5_4_lut_adj_192 (.A(n371_adj_361), .B(n7_adj_634), .C(n367_adj_358), 
         .D(n8_adj_633), .Z(n378_adj_363)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_192.init = 16'hfffe;
    LUT4 div_273_i650_3_lut_4_lut (.A(n28349), .B(n13057), .C(n979), .D(n940), 
         .Z(n997)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i650_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7_4_lut_adj_193 (.A(n934_adj_181), .B(n28300), .C(n939_adj_467), 
         .D(n936_adj_182), .Z(n17_adj_654)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_193.init = 16'hfffe;
    LUT4 i9_4_lut_adj_194 (.A(n17_adj_654), .B(n940_adj_466), .C(n16_adj_655), 
         .D(n932), .Z(n950_adj_461)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_194.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_195 (.A(ser_N_380[1]), .B(ser_N_380[0]), 
         .C(ser_N_380[3]), .D(ser_N_380[2]), .Z(placecnt_4__N_367[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(368[19:27])
    defparam i1_2_lut_3_lut_4_lut_adj_195.init = 16'hf0e1;
    LUT4 i1_2_lut_4_lut_adj_196 (.A(n28183), .B(n278_adj_342), .C(n28181), 
         .D(n301_adj_343), .Z(n4_adj_41)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B+((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(332[10:20])
    defparam i1_2_lut_4_lut_adj_196.init = 16'hff65;
    LUT4 div_273_i653_3_lut_4_lut (.A(n28349), .B(n13057), .C(n982), .D(n943), 
         .Z(n1000)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i653_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5052_1_lut_rep_600 (.A(ser_N_380[0]), .Z(n28596)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(369[19:37])
    defparam i5052_1_lut_rep_600.init = 16'h5555;
    LUT4 ser_I_0_i28_4_lut_4_lut (.A(ser_N_380[0]), .B(ser_N_380[1]), .C(cycledata[30]), 
         .D(n26), .Z(n28)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lab_6/temperature.vhd(369[19:37])
    defparam ser_I_0_i28_4_lut_4_lut.init = 16'h7340;
    LUT4 div_273_i648_3_lut_4_lut (.A(n28349), .B(n13057), .C(n977), .D(n938), 
         .Z(n995)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i648_3_lut_4_lut.init = 16'hf1e0;
    LUT4 ser_I_0_i59_4_lut_4_lut (.A(ser_N_380[0]), .B(ser_N_380[1]), .C(cycledata[62]), 
         .D(n57), .Z(n59)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lab_6/temperature.vhd(369[19:37])
    defparam ser_I_0_i59_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_3_lut_rep_601 (.A(temp1_8__N_270[5]), .B(temp1_8__N_270[6]), 
         .C(temp1_8__N_270[4]), .Z(n28597)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam i1_3_lut_rep_601.init = 16'ha2a2;
    LUT4 i8_4_lut_adj_197 (.A(n15_adj_631), .B(n823_adj_154), .C(n14_adj_632), 
         .D(n827_adj_158), .Z(n13056)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i8_4_lut_adj_197.init = 16'hfffe;
    LUT4 i17510_2_lut_rep_354_4_lut (.A(n375), .B(n927), .C(n28353), .D(n376), 
         .Z(n28350)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17510_2_lut_rep_354_4_lut.init = 16'hffca;
    LUT4 div_273_i652_3_lut_4_lut (.A(n28349), .B(n13057), .C(n981), .D(n28352), 
         .Z(n999)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i652_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i647_3_lut_4_lut (.A(n28349), .B(n13057), .C(n976), .D(n937), 
         .Z(n994)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i647_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_198 (.A(n242_adj_339), .B(n368_adj_359), .C(n372_adj_362), 
         .D(n28164), .Z(n7_adj_634)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_198.init = 16'hfcec;
    LUT4 i6_4_lut_adj_199 (.A(n822_adj_153), .B(n826_adj_157), .C(n821_adj_152), 
         .D(n825_adj_156), .Z(n15_adj_631)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i6_4_lut_adj_199.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_200 (.A(n885_adj_174), .B(n924), .C(n28353), 
         .D(n938), .Z(n10_adj_586)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i1_2_lut_4_lut_adj_200.init = 16'hffca;
    LUT4 i1_2_lut_rep_590_3_lut (.A(temp1_8__N_270[5]), .B(temp1_8__N_270[4]), 
         .C(temp1_8__N_270[6]), .Z(n28586)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam i1_2_lut_rep_590_3_lut.init = 16'h1010;
    LUT4 i16607_4_lut_4_lut_4_lut (.A(n28218), .B(n11380), .C(cycledata_46__N_70[3]), 
         .D(n28192), .Z(cycledata[44])) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // d:/lab_6/temperature.vhd(344[36:40])
    defparam i16607_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i1_3_lut_rep_591_3_lut (.A(temp1_8__N_270[5]), .B(temp1_8__N_270[4]), 
         .C(temp1_8__N_270[6]), .Z(n28587)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam i1_3_lut_rep_591_3_lut.init = 16'h2c2c;
    LUT4 div_273_i613_3_lut_rep_356_4_lut (.A(n28354), .B(n13079), .C(n924), 
         .D(n885_adj_174), .Z(n28352)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i613_3_lut_rep_356_4_lut.init = 16'hf1e0;
    LUT4 div_273_i611_3_lut_4_lut (.A(n28354), .B(n13079), .C(n922), .D(n883), 
         .Z(n940)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i611_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i605_3_lut_4_lut (.A(n28354), .B(n13079), .C(n916), .D(n28357), 
         .Z(n934)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i605_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i604_3_lut_4_lut (.A(n28354), .B(n13079), .C(n915), .D(n876), 
         .Z(n933)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i604_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i24135_2_lut_rep_580_4_lut_4_lut (.A(temp1_8__N_270[5]), .B(temp1_8__N_270[4]), 
         .C(temp1_8__N_270[3]), .D(temp1_8__N_270[6]), .Z(n28576)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // d:/lab_6/temperature.vhd(318[9:14])
    defparam i24135_2_lut_rep_580_4_lut_4_lut.init = 16'h0d03;
    LUT4 i5_3_lut_adj_201 (.A(n819_adj_150), .B(n820_adj_151), .C(n824_adj_155), 
         .Z(n14_adj_632)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i5_3_lut_adj_201.init = 16'hfefe;
    LUT4 i1_2_lut_rep_602 (.A(temp2_8__N_286[3]), .B(TMP[0]), .Z(n28598)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_602.init = 16'h6666;
    LUT4 div_273_i610_3_lut_4_lut (.A(n28354), .B(n13079), .C(n921), .D(n882_adj_172), 
         .Z(n939)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i610_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i814_3_lut_4_lut (.A(n28354), .B(n13079), .C(n1179), 
         .D(n4507), .Z(n890_adj_473)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam div_273_i814_3_lut_4_lut.init = 16'hfe0e;
    LUT4 mod_271_i649_3_lut_rep_419_4_lut (.A(temp2_8__N_286[3]), .B(TMP[0]), 
         .C(n896_adj_469), .D(n929_adj_407), .Z(n28415)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam mod_271_i649_3_lut_rep_419_4_lut.init = 16'hf909;
    LUT4 i7563_4_lut (.A(n28410), .B(n28_adj_571), .C(n4497), .D(n1179), 
         .Z(n30_adj_570)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(328[10:15])
    defparam i7563_4_lut.init = 16'hfcee;
    LUT4 i23883_4_lut (.A(key_div[0]), .B(n27183), .C(n27076), .D(key_div[4]), 
         .Z(n27290)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i23883_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_202 (.A(n28334), .B(n28401), .C(n4498), .D(n1179), 
         .Z(n28_adj_571)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_202.init = 16'hfaee;
    LUT4 i2_4_lut_adj_203 (.A(n666_adj_552), .B(n668_adj_550), .C(n667_adj_551), 
         .D(n4_adj_94), .Z(n20383)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_203.init = 16'ha080;
    LUT4 div_273_i616_3_lut_rep_355_4_lut (.A(n28354), .B(n13079), .C(n927), 
         .D(n375), .Z(n28351)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i616_3_lut_rep_355_4_lut.init = 16'hf1e0;
    LUT4 i17252_2_lut_3_lut_4_lut (.A(temp2_8__N_286[3]), .B(TMP[0]), .C(n297_adj_97), 
         .D(n28541), .Z(n20263)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;
    defparam i17252_2_lut_3_lut_4_lut.init = 16'hf090;
    LUT4 div_273_i609_3_lut_4_lut (.A(n28354), .B(n13079), .C(n920), .D(n881), 
         .Z(n938)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i609_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i28_3_lut_adj_204 (.A(n28442), .B(n37), .C(n378_adj_73), .Z(n27221)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(298[10:15])
    defparam i28_3_lut_adj_204.init = 16'hcaca;
    LUT4 i1_2_lut_2_lut_3_lut (.A(temp2_8__N_286[3]), .B(TMP[0]), .C(n302_adj_440), 
         .Z(zpzone_3__N_253[1])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_2_lut_3_lut.init = 16'h6969;
    LUT4 i1_3_lut_adj_205 (.A(n126_adj_43), .B(n396_adj_80), .C(n397_adj_81), 
         .Z(n37)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut_adj_205.init = 16'hc8c8;
    LUT4 div_273_i612_3_lut_4_lut (.A(n28354), .B(n13079), .C(n923), .D(n884_adj_173), 
         .Z(n941)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i612_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i5_4_lut_adj_206 (.A(n371_adj_70), .B(n7_adj_659), .C(n367_adj_67), 
         .D(n8_adj_658), .Z(n378_adj_73)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_206.init = 16'hfffe;
    LUT4 i1_4_lut_adj_207 (.A(n242_adj_49), .B(n368_adj_68), .C(n372_adj_71), 
         .D(n373_adj_72), .Z(n7_adj_659)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_207.init = 16'hfcec;
    LUT4 temp2_8__I_0_i230_3_lut_4_lut (.A(temp2_8__N_286[3]), .B(TMP[0]), 
         .C(n302_adj_440), .D(n28541), .Z(zpzone_3__N_253[2])) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam temp2_8__I_0_i230_3_lut_4_lut.init = 16'h9f60;
    LUT4 div_273_i615_3_lut_4_lut (.A(n28354), .B(n13079), .C(n926), .D(n28356), 
         .Z(n944)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i615_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i606_3_lut_4_lut (.A(n28354), .B(n13079), .C(n917), .D(n878_adj_169), 
         .Z(n935)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i606_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23616_2_lut_rep_603 (.A(ser_N_380[2]), .B(ser_N_380[1]), .Z(n28599)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23616_2_lut_rep_603.init = 16'h8888;
    LUT4 i17723_3_lut_4_lut (.A(ser_N_380[2]), .B(ser_N_380[1]), .C(n28600), 
         .D(segcnt[1]), .Z(n20745)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;
    defparam i17723_3_lut_4_lut.init = 16'h8ff8;
    LUT4 div_273_i608_3_lut_4_lut (.A(n28354), .B(n13079), .C(n919), .D(n880_adj_171), 
         .Z(n937)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i608_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1353_2_lut_rep_604 (.A(segcnt[0]), .B(placecnt[4]), .Z(n28600)) /* synthesis lut_function=(A (B)) */ ;   // d:/lab_6/temperature.vhd(369[19:28])
    defparam i1353_2_lut_rep_604.init = 16'h8888;
    LUT4 i1361_2_lut_3_lut (.A(segcnt[0]), .B(placecnt[4]), .C(segcnt[1]), 
         .Z(n3286)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lab_6/temperature.vhd(369[19:28])
    defparam i1361_2_lut_3_lut.init = 16'h8080;
    LUT4 i1359_2_lut_3_lut (.A(segcnt[0]), .B(placecnt[4]), .C(segcnt[1]), 
         .Z(ser_N_380[5])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/lab_6/temperature.vhd(369[19:28])
    defparam i1359_2_lut_3_lut.init = 16'h7878;
    LUT4 div_273_i607_3_lut_4_lut (.A(n28354), .B(n13079), .C(n918), .D(n879_adj_170), 
         .Z(n936)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam div_273_i607_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4_1_lut_rep_605 (.A(WRITE_LOW_CNT[0]), .Z(n28601)) /* synthesis lut_function=(!(A)) */ ;   // d:/lab_6/temperature.vhd(104[1] 283[8])
    defparam i4_1_lut_rep_605.init = 16'h5555;
    LUT4 i1_2_lut_rep_587_2_lut (.A(WRITE_LOW_CNT[0]), .B(WRITE_LOW_CNT[1]), 
         .Z(n28583)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lab_6/temperature.vhd(104[1] 283[8])
    defparam i1_2_lut_rep_587_2_lut.init = 16'h4444;
    LUT4 mux_160_Mux_1_i2_3_lut_4_lut_4_lut (.A(WRITE_LOW_CNT[0]), .B(n20679), 
         .C(STATE[0]), .D(WRITE_LOW_CNT[1]), .Z(n2_adj_271)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;   // d:/lab_6/temperature.vhd(104[1] 283[8])
    defparam mux_160_Mux_1_i2_3_lut_4_lut_4_lut.init = 16'h5303;
    LUT4 i2_3_lut_3_lut_3_lut (.A(STATE[0]), .B(WRITE_LOW_CNT[1]), .C(WRITE_LOW_CNT[0]), 
         .Z(n24550)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 zpone_3__I_17_mux_3_i2_3_lut (.A(zpone_3__N_304[1]), .B(n10_adj_39), 
         .C(zpone_3__N_304[8]), .Z(n126_adj_43)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_mux_3_i2_3_lut.init = 16'hcaca;
    LUT4 div_273_i614_3_lut_4_lut_4_lut (.A(n28355), .B(n886_adj_175), .C(n925), 
         .D(n13079), .Z(n943)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam div_273_i614_3_lut_4_lut_4_lut.init = 16'hf0c4;
    LUT4 i2_3_lut_3_lut (.A(STATE[0]), .B(STATE[2]), .C(WRITE_LOW_CNT[1]), 
         .Z(n16_adj_679)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i2_3_lut_3_lut.init = 16'hfdfd;
    LUT4 mux_160_Mux_0_i7_4_lut_4_lut (.A(STATE[0]), .B(n9_adj_666), .C(STATE[2]), 
         .D(n28553), .Z(n7_adj_40)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_160_Mux_0_i7_4_lut_4_lut.init = 16'hf404;
    LUT4 i5_4_lut_adj_208 (.A(n19_adj_431), .B(n7_adj_662), .C(n15_adj_429), 
         .D(n8_adj_660), .Z(n13020)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i5_4_lut_adj_208.init = 16'hfffe;
    LUT4 zpone_3__I_17_i257_3_lut (.A(n367_adj_67), .B(n390_adj_74), .C(n378_adj_73), 
         .Z(n19_adj_431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam zpone_3__I_17_i257_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_209 (.A(n370_adj_69), .B(n9_adj_428), .C(n393_adj_77), 
         .D(n378_adj_73), .Z(n7_adj_662)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i1_4_lut_adj_209.init = 16'hfcee;
    LUT4 i1_2_lut_2_lut (.A(STATE[0]), .B(STATE[1]), .Z(n6_adj_622)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_4_lut_adj_210 (.A(STATE[2]), .B(STATE[0]), .C(n28557), 
         .D(WRITE_HIGH_CNT[1]), .Z(n13_adj_678)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;
    defparam i1_4_lut_4_lut_adj_210.init = 16'hf7d5;
    LUT4 i17687_2_lut_rep_358_3_lut (.A(n375), .B(n28356), .C(n886_adj_175), 
         .Z(n28354)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i17687_2_lut_rep_358_3_lut.init = 16'he0e0;
    LUT4 i16918_2_lut_rep_606 (.A(STATE[0]), .B(STATE[2]), .Z(n28602)) /* synthesis lut_function=(A (B)) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam i16918_2_lut_rep_606.init = 16'h8888;
    LUT4 i17729_2_lut_rep_357_3_lut_4_lut (.A(n375), .B(n28356), .C(n13079), 
         .D(n886_adj_175), .Z(n28353)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i17729_2_lut_rep_357_3_lut_4_lut.init = 16'hfef0;
    LUT4 i17251_1_lut_2_lut (.A(STATE[0]), .B(STATE[2]), .Z(n7_adj_318)) /* synthesis lut_function=(!(A (B))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam i17251_1_lut_2_lut.init = 16'h7777;
    LUT4 i1245_2_lut_3_lut (.A(WRITE_BYTE_CNT[1]), .B(WRITE_BYTE_CNT[0]), 
         .C(WRITE_BYTE_CNT[2]), .Z(n317)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/lab_6/temperature.vhd(144[23:37])
    defparam i1245_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_608 (.A(cnt[3]), .B(cnt[2]), .Z(n28604)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lab_6/temperature.vhd(166[13:19])
    defparam i1_2_lut_rep_608.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_211 (.A(cnt[3]), .B(cnt[2]), .C(cnt[0]), .Z(n13467)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/lab_6/temperature.vhd(166[13:19])
    defparam i1_2_lut_3_lut_adj_211.init = 16'hfbfb;
    LUT4 equal_563_i6_2_lut_rep_609 (.A(GET_TMP_CNT[2]), .B(GET_TMP_CNT[3]), 
         .Z(n28605)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam equal_563_i6_2_lut_rep_609.init = 16'heeee;
    LUT4 equal_146_i7_2_lut_3_lut_4_lut (.A(GET_TMP_CNT[2]), .B(GET_TMP_CNT[3]), 
         .C(GET_TMP_CNT[1]), .D(GET_TMP_CNT[0]), .Z(n7_adj_21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam equal_146_i7_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i16597_2_lut_rep_610 (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), .Z(n28606)) /* synthesis lut_function=(A (B)) */ ;
    defparam i16597_2_lut_rep_610.init = 16'h8888;
    LUT4 i1281_3_lut_4_lut (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), .C(GET_TMP_CNT[2]), 
         .D(GET_TMP_CNT[3]), .Z(n832)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i1281_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1274_2_lut_3_lut (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), .C(GET_TMP_CNT[2]), 
         .Z(n833)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1274_2_lut_3_lut.init = 16'h7878;
    LUT4 equal_565_i5_2_lut_rep_611 (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), 
         .Z(n28607)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam equal_565_i5_2_lut_rep_611.init = 16'hdddd;
    LUT4 i17514_2_lut_rep_359_4_lut (.A(n374), .B(n869_adj_168), .C(n28358), 
         .D(n375), .Z(n28355)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i17514_2_lut_rep_359_4_lut.init = 16'hffca;
    LUT4 i2_3_lut_rep_589_4_lut (.A(GET_TMP_CNT[0]), .B(GET_TMP_CNT[1]), 
         .C(GET_TMP_CNT[3]), .D(GET_TMP_CNT[2]), .Z(n28585)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // d:/lab_6/temperature.vhd(265[12:25])
    defparam i2_3_lut_rep_589_4_lut.init = 16'hdfff;
    LUT4 i14894_3_lut (.A(n28444), .B(n392_adj_76), .C(n378_adj_73), .Z(n15_adj_429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14894_3_lut.init = 16'hcaca;
    LUT4 i4_2_lut_4_lut_adj_212 (.A(n820_adj_151), .B(n859), .C(n28358), 
         .D(n882_adj_172), .Z(n13_adj_624)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam i4_2_lut_4_lut_adj_212.init = 16'hffca;
    LUT4 div_273_i566_3_lut_rep_361_4_lut (.A(n28359), .B(n13056), .C(n859), 
         .D(n820_adj_151), .Z(n28357)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i566_3_lut_rep_361_4_lut.init = 16'hf1e0;
    LUT4 div_273_i813_3_lut_4_lut (.A(n28359), .B(n13056), .C(n1179), 
         .D(n4506), .Z(n835_adj_494)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i813_3_lut_4_lut.init = 16'hfe0e;
    LUT4 div_273_i575_3_lut_4_lut (.A(n28359), .B(n13056), .C(n868_adj_167), 
         .D(n28361), .Z(n886_adj_175)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i575_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i2_4_lut_adj_213 (.A(n371_adj_70), .B(n17_adj_430), .C(n394_adj_78), 
         .D(n378_adj_73), .Z(n8_adj_660)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(321[11:23])
    defparam i2_4_lut_adj_213.init = 16'hfcee;
    LUT4 i20869_2_lut_rep_203_3_lut_4_lut_4_lut (.A(n28220), .B(n28219), 
         .C(n235_adj_444), .D(n211), .Z(n28199)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i20869_2_lut_rep_203_3_lut_4_lut_4_lut.init = 16'he0d0;
    LUT4 i24116_2_lut_rep_612 (.A(TMP[0]), .B(temp2_8__N_286[3]), .Z(n28608)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i24116_2_lut_rep_612.init = 16'h1111;
    LUT4 i4_4_lut_adj_214 (.A(n833_adj_266), .B(n831_adj_265), .C(n835_adj_268), 
         .D(n6_adj_630), .Z(n13124)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lab_6/temperature.vhd(329[11:22])
    defparam i4_4_lut_adj_214.init = 16'hfffe;
    LUT4 i20864_2_lut_rep_205_3_lut_3_lut (.A(n28220), .B(n28219), .C(n211), 
         .Z(n28201)) /* synthesis lut_function=(A (B+(C))+!A (B+!(C))) */ ;
    defparam i20864_2_lut_rep_205_3_lut_3_lut.init = 16'heded;
    LUT4 div_273_i573_3_lut_4_lut (.A(n28359), .B(n13056), .C(n866_adj_165), 
         .D(n827_adj_158), .Z(n884_adj_173)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i573_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_586_3_lut (.A(TMP[0]), .B(temp2_8__N_286[3]), .C(temp2_8__N_286[1]), 
         .Z(n28582)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_586_3_lut.init = 16'h1e1e;
    LUT4 i1_3_lut_rep_613 (.A(TMP[0]), .B(temp2_8__N_286[1]), .C(temp2_8__N_286[3]), 
         .Z(n28609)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i1_3_lut_rep_613.init = 16'h5454;
    LUT4 div_273_mux_3_i14_3_lut (.A(n1519), .B(n6_adj_86), .C(n1179), 
         .Z(n367_adj_107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_mux_3_i14_3_lut.init = 16'hcaca;
    LUT4 i14890_3_lut (.A(n372_adj_71), .B(n395_adj_79), .C(n378_adj_73), 
         .Z(n9_adj_428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14890_3_lut.init = 16'hcaca;
    LUT4 i14892_3_lut (.A(n368_adj_68), .B(n391_adj_75), .C(n378_adj_73), 
         .Z(n17_adj_430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14892_3_lut.init = 16'hcaca;
    LUT4 i20678_4_lut_rep_593_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(n28589)) /* synthesis lut_function=(A (B (D))+!A (B+(C (D)))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i20678_4_lut_rep_593_4_lut.init = 16'hdc44;
    LUT4 i1_2_lut_rep_576_4_lut_3_lut_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(n28572)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (D)+!B (C+!(D))))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i1_2_lut_rep_576_4_lut_3_lut_4_lut.init = 16'h2344;
    LUT4 i16799_3_lut_rep_204_3_lut_4_lut_4_lut (.A(n28220), .B(n235_adj_444), 
         .C(n28219), .D(n211), .Z(n28200)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+!(D))))) */ ;
    defparam i16799_3_lut_rep_204_3_lut_4_lut_4_lut.init = 16'h373b;
    LUT4 i2_3_lut_adj_215 (.A(rst_c), .B(n7_adj_384), .C(STATE[3]), .Z(dq_N_403)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/lab_6/temperature.vhd(103[1] 284[8])
    defparam i2_3_lut_adj_215.init = 16'h0808;
    LUT4 div_273_i569_3_lut_4_lut (.A(n28359), .B(n13056), .C(n862_adj_161), 
         .D(n823_adj_154), .Z(n880_adj_171)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i569_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i20691_2_lut_4_lut_3_lut_4_lut_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(temp2[6])) /* synthesis lut_function=(A (C (D))+!A (B (C)+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i20691_2_lut_4_lut_3_lut_4_lut_4_lut.init = 16'hf040;
    LUT4 div_273_i567_3_lut_4_lut (.A(n28359), .B(n13056), .C(n860), .D(n821_adj_152), 
         .Z(n878_adj_169)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i567_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i576_3_lut_rep_360_4_lut (.A(n28359), .B(n13056), .C(n869_adj_168), 
         .D(n374), .Z(n28356)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i576_3_lut_rep_360_4_lut.init = 16'hf1e0;
    LUT4 div_273_i571_3_lut_4_lut (.A(n28359), .B(n13056), .C(n864_adj_163), 
         .D(n825_adj_156), .Z(n882_adj_172)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i571_3_lut_4_lut.init = 16'hf1e0;
    LUT4 div_273_i565_3_lut_4_lut (.A(n28359), .B(n13056), .C(n858), .D(n819_adj_150), 
         .Z(n876)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i565_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_267_i1_3_lut_rep_222 (.A(temp1_8__N_213[0]), .B(ones_3__N_314[0]), 
         .C(mode), .Z(n28218)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // d:/lab_6/temperature.vhd(317[3] 324[10])
    defparam mux_267_i1_3_lut_rep_222.init = 16'h3a3a;
    LUT4 STATE_3__I_0_496_i7_4_lut (.A(n3_adj_386), .B(n24892), .C(STATE[2]), 
         .D(STATE[1]), .Z(n7_adj_384)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam STATE_3__I_0_496_i7_4_lut.init = 16'h0aca;
    LUT4 n4_bdd_2_lut_rep_562_4_lut_3_lut_4_lut_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(n28558)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B ((D)+!C))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam n4_bdd_2_lut_rep_562_4_lut_3_lut_4_lut_4_lut.init = 16'hf34f;
    LUT4 div_273_i572_3_lut_4_lut (.A(n28359), .B(n13056), .C(n865_adj_164), 
         .D(n826_adj_157), .Z(n883)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i572_3_lut_4_lut.init = 16'hf1e0;
    LUT4 n4_bdd_3_lut_4_lut_3_lut_4_lut_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(n20381)) /* synthesis lut_function=(!(A (B (C (D)))+!A (C (D)))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam n4_bdd_3_lut_4_lut_3_lut_4_lut_4_lut.init = 16'h2fff;
    LUT4 i20686_4_lut_rep_577_4_lut_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(n28573)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C+(D))+!B (C (D)))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i20686_4_lut_rep_577_4_lut_4_lut.init = 16'hfc40;
    LUT4 i1_2_lut_rep_573_3_lut_4_lut_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(n28569)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i1_2_lut_rep_573_3_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 n8_bdd_3_lut_rep_563_4_lut_3_lut_4_lut_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), 
         .C(temp2_8__N_286[3]), .D(temp2[0]), .Z(n28559)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C+(D))+!B (C (D)+!C !(D))))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam n8_bdd_3_lut_rep_563_4_lut_3_lut_4_lut_4_lut.init = 16'h03b4;
    LUT4 i2_3_lut_rep_594_4_lut (.A(TMP[0]), .B(temp2_8__N_286[1]), .C(temp2_8__N_286[3]), 
         .D(temp2[0]), .Z(n28590)) /* synthesis lut_function=(A (B (D)+!B !(D))+!A !(B (D)+!B !(C (D)+!C !(D)))) */ ;   // d:/lab_6/temperature.vhd(314[10:15])
    defparam i2_3_lut_rep_594_4_lut.init = 16'h9867;
    LUT4 i1_2_lut_3_lut_adj_216 (.A(STATE[0]), .B(WRITE_LOW_CNT[1]), .C(n111), 
         .Z(n26901)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_216.init = 16'h2020;
    LUT4 i1_2_lut_rep_614 (.A(STATE[1]), .B(STATE[0]), .Z(n28610)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_614.init = 16'h2222;
    LUT4 div_273_i570_3_lut_4_lut (.A(n28359), .B(n13056), .C(n863_adj_162), 
         .D(n824_adj_155), .Z(n881)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i570_3_lut_4_lut.init = 16'hf1e0;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 div_273_i568_3_lut_4_lut (.A(n28359), .B(n13056), .C(n861_adj_160), 
         .D(n822_adj_153), .Z(n879_adj_170)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lab_6/temperature.vhd(327[11:23])
    defparam div_273_i568_3_lut_4_lut.init = 16'hf1e0;
    LUT4 m1_lut (.Z(n29287)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i24365 (.BLUT(n28637), .ALUT(n28638), .C0(WRITE_LOW_CNT[1]), 
          .Z(n28639));
    LUT4 i1_2_lut_3_lut_adj_217 (.A(STATE[1]), .B(STATE[0]), .C(n13490), 
         .Z(n26895)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_217.init = 16'h0202;
    PFUMX i24355 (.BLUT(n28621), .ALUT(n28622), .C0(n120_adj_42), .Z(n28501));
    PFUMX i24363 (.BLUT(n28634), .ALUT(n28635), .C0(n28271), .Z(n28636));
    LUT4 n4495_bdd_4_lut (.A(n4495), .B(n30_adj_570), .C(n1179), .D(n4496), 
         .Z(n500_adj_585)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C))+!A)) */ ;
    defparam n4495_bdd_4_lut.init = 16'h20a0;
    LUT4 i10713_2_lut_rep_615 (.A(STATE[1]), .B(STATE[2]), .Z(n28611)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lab_6/temperature.vhd(107[1] 281[10])
    defparam i10713_2_lut_rep_615.init = 16'h2222;
    PFUMX i24585 (.BLUT(n29283), .ALUT(n29284), .C0(zpzone_3__N_333[4]), 
          .Z(n29285));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

