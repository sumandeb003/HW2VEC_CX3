//****************************************************************
// TRIT-ASIC Generated Trojans.  The design generated below is for academic use only.
// Please cite the following if using the benchmark provided:
// J. Cruz, Y. Huang, P. Mishra, S. Bhunia, 
// "An Automated Configurable Trojan Insertion Framework for Dynamic Trust Benchmarks", DATE, 2018
//****************************************************************

module s9234( GND, VDD, RST, CLK, g102, g107, g22, g23, g301, g306, 
		g310, g314, g319, g32, g36, g37, g38, g39, g40, g41, 
		g42, g44, g45, g46, g47, g557, g558, g559, g560, g561, 
		g562, g563, g564, g567, g639, g702, g705, g89, g94, g98, 
		g1290, g1293, g2584, g3222, g3600, g4098, g4099, g4100, g4101, g4102, 
		g4103, g4104, g4105, g4106, g4107, g4108, g4109, g4110, g4112, g4121, 
		g4307, g4321, g4422, g4809, g5137, g5468, g5469, g5692, g6282, g6284, 
		g6360, g6362, g6364, g6366, g6368, g6370, g6372, g6374, g6728);

	input GND, VDD, RST, CLK, g102, g107, g22, g23, g301, g306, g310, g314, g319,
         g32, g36, g37, g38, g39, g40, g41, g42, g44, g45, g46, g47, g557,
         g558, g559, g560, g561, g562, g563, g564, g567, g639, g702, g705, g89,
         g94, g98;

	output g1290, g1293, g2584, g3222, g3600, g4098, g4099, g4100, g4101, g4102,
         g4103, g4104, g4105, g4106, g4107, g4108, g4109, g4110, g4112, g4121,
         g4307, g4321, g4422, g4809, g5137, g5468, g5469, g5692, g6282, g6284,
         g6360, g6362, g6364, g6366, g6368, g6370, g6372, g6374, g6728;

	wire n993, n563, n1043, n937, n512, n938, n511, n1025, n540, n533, 
		n1004, n503, n539, n939, n567, n931, n508, n940, n530, n1030, 
		n536, n941, n990, n2163, n1024, n546, n997, n528, n1014, n1028, 
		n544, n942, n551, n943, n566, n515, n944, n996, n1015, n988, 
		n1000, n517, n945, n526, n946, n559, n933, n979, n1006, n506, 
		n165, n1016, n1010, n2256, n535, n1003, n547, n1011, n1002, n531, 
		n934, n935, n2246, n947, n995, n1042, n1040, n1009, n1007, n549, 
		n518, n1041, n564, n994, n948, n1036, n949, n569, n992, n556, 
		n548, n950, n1022, n543, n951, n507, n952, n555, n2245, n1027, 
		n545, n953, n1037, n954, n557, n955, n504, n562, n565, n1012, 
		n1033, n989, n956, n977, n1001, n550, n2257, n957, n509, n980, 
		n958, n527, n538, n184, n984, n959, n525, n932, n522, n561, 
		n960, n521, n961, n554, n1013, n505, n929, n962, n524, n963, 
		n510, n978, n985, n1029, n1020, n542, n964, n981, n965, n553, 
		n1017, n541, n520, n982, n966, n514, n1008, n516, n967, n986, 
		n1005, n968, n523, n1031, n558, n2230, n534, n969, n1034, n970, 
		n519, n987, n1032, n572, n971, n570, n532, n983, n1035, n930, 
		n972, n571, n568, n999, n991, n998, n973, n529, n1038, n974, 
		n537, n1039, n975, n552, n976, n513, n936, n560, g676, n1023, 
		n1026, n1021, g218, n1018, g212, n1019, n7, n6, n3, n20, 
		n2, n18, n17, n16, n14, n601, n606, DFF_9_N3, DFF_99_N3, DFF_98_N3, 
		DFF_96_N3, DFF_95_N3, DFF_94_N3, DFF_93_N3, n612, DFF_92_N3, DFF_90_N3, n617, n619, n621, 
		n620, n497, n628, n615, DFF_89_N3, n598, n613, n633, n630, DFF_88_N3, 
		n634, DFF_85_N3, DFF_84_N3, DFF_83_N3, n638, n639, DFF_82_N3, DFF_81_N3, DFF_80_N3, DFF_79_N3, 
		n642, n643, n645, n644, n496, n646, n641, DFF_87_N3, DFF_78_N3, DFF_77_N3, 
		DFF_76_N3, DFF_75_N3, DFF_74_N3, n651, DFF_73_N3, DFF_70_N3, DFF_6_N3, DFF_69_N3, DFF_68_N3, DFF_66_N3, 
		DFF_64_N3, n652, DFF_63_N3, n656, n658, n661, n657, n664, n593, n667, 
		n668, n669, n673, n672, n595, n676, n677, n678, n682, n681, 
		DFF_60_N3, DFF_5_N3, DFF_59_N3, n687, DFF_58_N3, n690, DFF_57_N3, DFF_55_N3, DFF_53_N3, DFF_51_N3, 
		DFF_4_N3, DFF_48_N3, n694, n695, n693, n692, n698, n700, n702, n701, 
		n697, n703, n705, n704, n699, n696, DFF_47_N3, DFF_46_N3, DFF_44_N3, n707, 
		n708, n712, n713, n711, n710, n709, n706, n594, n717, DFF_42_N3, 
		DFF_41_N3, DFF_40_N3, n720, n719, DFF_36_N3, DFF_30_N3, n725, n724, DFF_28_N3, n727, 
		n726, n498, DFF_27_N3, n730, n732, n733, n731, n734, n729, DFF_52_N3, 
		n735, n599, n737, n738, DFF_25_N3, n629, DFF_24_N3, n742, DFF_23_N3, n602, 
		n744, n746, n745, n743, n748, n747, DFF_21_N3, n749, n750, n752, 
		DFF_20_N3, n647, DFF_209_N3, DFF_208_N3, DFF_205_N3, DFF_204_N3, DFF_200_N3, DFF_19_N3, n758, n757, 
		n8, n691, DFF_197_N3, DFF_196_N3, DFF_195_N3, DFF_191_N3, DFF_190_N3, n754, n759, n761, 
		n741, n671, n764, n760, DFF_189_N3, DFF_187_N3, n768, n769, n771, n770, 
		n19, n772, n773, n774, n597, n776, n777, n779, DFF_186_N3, n782, 
		n783, n787, n788, n786, n785, n784, n781, n596, n718, n790, 
		n789, n792, n655, DFF_182_N3, DFF_180_N3, DFF_179_N3, n611, n610, n794, DFF_178_N3, 
		DFF_177_N3, DFF_175_N3, DFF_173_N3, n648, DFF_172_N3, DFF_170_N3, n798, n631, n614, n15, 
		n632, n799, DFF_169_N3, n600, DFF_168_N3, n736, DFF_167_N3, n801, n802, n804, 
		n624, n806, n808, n807, n663, n805, n716, n715, n662, n665, 
		n810, n666, n714, n623, n819, n622, n659, n803, n627, n809, 
		n626, n660, n814, n812, n625, n816, n811, n820, n618, n1, 
		n791, n670, n825, n824, n827, n765, n592, n828, n829, n830, 
		n800, n679, n832, n616, n834, n823, n822, n817, n821, DFF_164_N3, 
		n649, DFF_163_N3, n609, n837, n608, DFF_161_N3, n797, n840, n842, DFF_15_N3, 
		n843, DFF_158_N3, n845, n844, DFF_157_N3, DFF_154_N3, n847, n846, DFF_153_N3, DFF_151_N3, 
		n635, n637, n850, n849, n851, n640, n636, n767, DFF_14_N3, n688, 
		n853, n855, n854, n852, n857, n856, DFF_148_N3, DFF_147_N3, DFF_144_N3, n860, 
		n4, n859, n861, DFF_143_N3, DFF_141_N3, n862, n728, n689, n650, DFF_166_N3, 
		n863, DFF_139_N3, DFF_135_N3, n864, n865, n866, n763, n868, n869, n871, 
		n872, n874, n873, n870, n875, n793, n766, n877, n826, n878, 
		n867, DFF_131_N3, n880, n604, n881, DFF_128_N3, DFF_127_N3, DFF_126_N3, n883, DFF_124_N3, 
		DFF_123_N3, DFF_121_N3, n654, n653, n722, n721, n723, n848, DFF_11_N3, DFF_117_N3, 
		DFF_114_N3, DFF_113_N3, n740, n836, n839, n680, n778, n884, n751, n885, 
		n833, n887, n841, n753, n889, n890, n892, n893, n895, n894, 
		n891, n896, n796, n886, n739, DFF_111_N3, DFF_110_N3, n899, n900, n902, 
		n888, n901, n879, n756, n755, DFF_10_N3, DFF_109_N3, DFF_105_N3, n904, n903, 
		n905, n907, n908, n831, n780, n683, n684, n897, n762, n775, 
		n674, n675, n876, n838, n898, n912, n916, n915, n914, n913, 
		n911, n919, n918, n917, n910, n909, DFF_102_N3, n686, n685, n607, 
		n906, n815, n795, n920, n835, n813, n921, n605, n818, n882, 
		n603, n922, n858, n924, n926, n925, n923, n928, n927, troj39_0_n2, 
		troj39_0_n1, tempn904, Trigger_en_39_0;

	dfxbp_1 DFF_0_Q_reg( .D(DFF_208_N3), .CLK(CLK), .Q(n993), .Q_N(n563) );
	dfxbp_1 DFF_209_Q_reg( .D(DFF_209_N3), .CLK(CLK), .Q_N(n1043) );
	dfxbp_1 DFF_208_Q_reg( .D(DFF_208_N3), .CLK(CLK), .Q(n937), .Q_N(n512) );
	dfxbp_1 DFF_207_Q_reg( .D(DFF_41_N3), .CLK(CLK), .Q(n938), .Q_N(n511) );
	dfxbp_1 DFF_205_Q_reg( .D(DFF_205_N3), .CLK(CLK), .Q(n1025), .Q_N(n540) );
	dfxbp_1 DFF_204_Q_reg( .D(DFF_204_N3), .CLK(CLK), .Q_N(n533) );
	dfxbp_1 DFF_201_Q_reg( .D(n2), .CLK(CLK), .Q(n1004) );
	dfxbp_1 DFF_200_Q_reg( .D(DFF_200_N3), .CLK(CLK), .Q_N(n503) );
	dfxbp_1 DFF_197_Q_reg( .D(DFF_197_N3), .CLK(CLK), .Q(n539) );
	dfxbp_1 DFF_196_Q_reg( .D(DFF_196_N3), .CLK(CLK), .Q(n939), .Q_N(n567) );
	dfxbp_1 DFF_195_Q_reg( .D(DFF_195_N3), .CLK(CLK), .Q(n931), .Q_N(n508) );
	dfxbp_1 DFF_189_Q_reg( .D(DFF_189_N3), .CLK(CLK), .Q(n940), .Q_N(n530) );
	dfxbp_1 DFF_188_Q_reg( .D(DFF_95_N3), .CLK(CLK), .Q(n1030), .Q_N(n536) );
	dfxbp_1 DFF_187_Q_reg( .D(DFF_187_N3), .CLK(CLK), .Q_N(n941) );
	dfxbp_1 DFF_186_Q_reg( .D(DFF_186_N3), .CLK(CLK), .Q_N(n990) );
	dfxbp_1 DFF_183_Q_reg( .D(n17), .CLK(CLK), .Q_N(n2163) );
	dfxbp_1 DFF_182_Q_reg( .D(DFF_182_N3), .CLK(CLK), .Q(n1024), .Q_N(n546) );
	dfxbp_1 DFF_179_Q_reg( .D(DFF_179_N3), .CLK(CLK), .Q(n997), .Q_N(n528) );
	dfxbp_1 DFF_178_Q_reg( .D(DFF_178_N3), .CLK(CLK), .Q(n1014) );
	dfxbp_1 DFF_177_Q_reg( .D(DFF_177_N3), .CLK(CLK), .Q(n1028), .Q_N(n544) );
	dfxbp_1 DFF_175_Q_reg( .D(DFF_175_N3), .CLK(CLK), .Q(n942), .Q_N(n551) );
	dfxbp_1 DFF_173_Q_reg( .D(DFF_173_N3), .CLK(CLK), .Q(n943), .Q_N(n566) );
	dfxbp_1 DFF_172_Q_reg( .D(DFF_172_N3), .CLK(CLK), .Q_N(n515) );
	dfxbp_1 DFF_170_Q_reg( .D(DFF_170_N3), .CLK(CLK), .Q(n944) );
	dfxbp_1 DFF_169_Q_reg( .D(DFF_169_N3), .CLK(CLK), .Q(n996) );
	dfxbp_1 DFF_168_Q_reg( .D(DFF_168_N3), .CLK(CLK), .Q(n1015) );
	dfxbp_1 DFF_167_Q_reg( .D(DFF_167_N3), .CLK(CLK), .Q_N(n988) );
	dfxbp_1 DFF_164_Q_reg( .D(DFF_164_N3), .CLK(CLK), .Q(n1000), .Q_N(n517) );
	dfxbp_1 DFF_163_Q_reg( .D(DFF_163_N3), .CLK(CLK), .Q(n945), .Q_N(n526) );
	dfxbp_1 DFF_158_Q_reg( .D(DFF_158_N3), .CLK(CLK), .Q(n946) );
	dfxbp_1 DFF_154_Q_reg( .D(DFF_154_N3), .CLK(CLK), .Q(n559) );
	dfxbp_1 DFF_153_Q_reg( .D(DFF_153_N3), .CLK(CLK), .Q_N(n933) );
	dfxbp_1 DFF_151_Q_reg( .D(DFF_151_N3), .CLK(CLK), .Q(n979) );
	dfxbp_1 DFF_148_Q_reg( .D(DFF_148_N3), .CLK(CLK), .Q(n1006), .Q_N(n506) );
	dfxbp_1 DFF_147_Q_reg( .D(DFF_147_N3), .CLK(CLK), .Q(n165) );
	dfxbp_1 DFF_146_Q_reg( .D(n7), .CLK(CLK), .Q(n1016) );
	dfxbp_1 DFF_144_Q_reg( .D(DFF_144_N3), .CLK(CLK), .Q(n1010) );
	dfxbp_1 DFF_143_Q_reg( .D(DFF_143_N3), .CLK(CLK), .Q_N(n2256) );
	dfxbp_1 DFF_142_Q_reg( .D(n19), .CLK(CLK), .Q_N(n535) );
	dfxbp_1 DFF_141_Q_reg( .D(DFF_141_N3), .CLK(CLK), .Q(n1003), .Q_N(n547) );
	dfxbp_1 DFF_140_Q_reg( .D(n4), .CLK(CLK), .Q(n1011) );
	dfxbp_1 DFF_139_Q_reg( .D(DFF_139_N3), .CLK(CLK), .Q(n1002), .Q_N(n531) );
	dfxbp_1 DFF_135_Q_reg( .D(DFF_135_N3), .CLK(CLK), .Q(n934) );
	dfxbp_1 DFF_134_Q_reg( .D(n6), .CLK(CLK), .Q(n935) );
	dfxbp_1 DFF_132_Q_reg( .D(n14), .CLK(CLK), .Q_N(n2246) );
	dfxbp_1 DFF_131_Q_reg( .D(DFF_131_N3), .CLK(CLK), .Q(n947) );
	dfxbp_1 DFF_129_Q_reg( .D(DFF_66_N3), .CLK(CLK), .Q(n995) );
	dfxbp_1 DFF_128_Q_reg( .D(DFF_128_N3), .CLK(CLK), .Q_N(n1042) );
	dfxbp_1 DFF_127_Q_reg( .D(DFF_127_N3), .CLK(CLK), .Q_N(n1040) );
	dfxbp_1 DFF_126_Q_reg( .D(DFF_126_N3), .CLK(CLK), .Q(n1009) );
	dfxbp_1 DFF_125_Q_reg( .D(n496), .CLK(CLK), .Q(n1007), .Q_N(n549) );
	dfxbp_1 DFF_124_Q_reg( .D(DFF_124_N3), .CLK(CLK), .Q_N(n518) );
	dfxbp_1 DFF_123_Q_reg( .D(DFF_123_N3), .CLK(CLK), .Q_N(n1041) );
	dfxbp_1 DFF_122_Q_reg( .D(DFF_200_N3), .CLK(CLK), .Q(n564), .Q_N(n994) );
	dfxbp_1 DFF_121_Q_reg( .D(DFF_121_N3), .CLK(CLK), .Q_N(n948) );
	dfxbp_1 DFF_117_Q_reg( .D(DFF_117_N3), .CLK(CLK), .Q_N(n1036) );
	dfxbp_1 DFF_113_Q_reg( .D(DFF_113_N3), .CLK(CLK), .Q(n949), .Q_N(n569) );
	dfxbp_1 DFF_111_Q_reg( .D(DFF_111_N3), .CLK(CLK), .Q(n992), .Q_N(n556) );
	dfxbp_1 DFF_110_Q_reg( .D(DFF_110_N3), .CLK(CLK), .Q(n548), .Q_N(n950) );
	dfxbp_1 DFF_109_Q_reg( .D(DFF_109_N3), .CLK(CLK), .Q(n1022), .Q_N(n543) );
	dfxbp_1 DFF_108_Q_reg( .D(DFF_111_N3), .CLK(CLK), .Q(n951), .Q_N(n507) );
	dfxbp_1 DFF_105_Q_reg( .D(DFF_105_N3), .CLK(CLK), .Q(n952), .Q_N(n555) );
	dfxbp_1 DFF_103_Q_reg( .D(DFF_143_N3), .CLK(CLK), .Q_N(n2245) );
	dfxbp_1 DFF_102_Q_reg( .D(DFF_102_N3), .CLK(CLK), .Q(n1027), .Q_N(n545) );
	dfxbp_1 DFF_99_Q_reg( .D(DFF_99_N3), .CLK(CLK), .Q_N(n953) );
	dfxbp_1 DFF_98_Q_reg( .D(DFF_98_N3), .CLK(CLK), .Q_N(n1037) );
	dfxbp_1 DFF_96_Q_reg( .D(DFF_96_N3), .CLK(CLK), .Q(n954), .Q_N(n557) );
	dfxbp_1 DFF_95_Q_reg( .D(DFF_95_N3), .CLK(CLK), .Q(n955), .Q_N(n504) );
	dfxbp_1 DFF_94_Q_reg( .D(DFF_94_N3), .CLK(CLK), .Q_N(n562) );
	dfxbp_1 DFF_93_Q_reg( .D(DFF_93_N3), .CLK(CLK), .Q(n565), .Q_N(n1012) );
	dfxbp_1 DFF_92_Q_reg( .D(DFF_92_N3), .CLK(CLK), .Q_N(n1033) );
	dfxbp_1 DFF_90_Q_reg( .D(DFF_90_N3), .CLK(CLK), .Q_N(n989) );
	dfxbp_1 DFF_89_Q_reg( .D(DFF_89_N3), .CLK(CLK), .Q(n956) );
	dfxbp_1 DFF_88_Q_reg( .D(DFF_88_N3), .CLK(CLK), .Q(n977) );
	dfxbp_1 DFF_87_Q_reg( .D(DFF_87_N3), .CLK(CLK), .Q(n1001), .Q_N(n550) );
	dfxbp_1 DFF_85_Q_reg( .D(DFF_85_N3), .CLK(CLK), .Q_N(n2257) );
	dfxbp_1 DFF_84_Q_reg( .D(DFF_84_N3), .CLK(CLK), .Q(n957), .Q_N(n509) );
	dfxbp_1 DFF_83_Q_reg( .D(DFF_83_N3), .CLK(CLK), .Q(n980) );
	dfxbp_1 DFF_82_Q_reg( .D(DFF_82_N3), .CLK(CLK), .Q(n958), .Q_N(n527) );
	dfxbp_1 DFF_81_Q_reg( .D(DFF_81_N3), .CLK(CLK), .Q_N(n538) );
	dfxbp_1 DFF_80_Q_reg( .D(DFF_80_N3), .CLK(CLK), .Q(n184) );
	dfxbp_1 DFF_79_Q_reg( .D(DFF_79_N3), .CLK(CLK), .Q_N(n984) );
	dfxbp_1 DFF_78_Q_reg( .D(DFF_78_N3), .CLK(CLK), .Q(n959), .Q_N(n525) );
	dfxbp_1 DFF_77_Q_reg( .D(DFF_77_N3), .CLK(CLK), .Q(n932), .Q_N(n522) );
	dfxbp_1 DFF_75_Q_reg( .D(DFF_75_N3), .CLK(CLK), .Q_N(n561) );
	dfxbp_1 DFF_74_Q_reg( .D(DFF_74_N3), .CLK(CLK), .Q(n960), .Q_N(n521) );
	dfxbp_1 DFF_73_Q_reg( .D(DFF_73_N3), .CLK(CLK), .Q(n961), .Q_N(n554) );
	dfxbp_1 DFF_70_Q_reg( .D(DFF_70_N3), .CLK(CLK), .Q(n1013), .Q_N(n505) );
	dfxbp_1 DFF_69_Q_reg( .D(DFF_69_N3), .CLK(CLK), .Q_N(n929) );
	dfxbp_1 DFF_68_Q_reg( .D(DFF_68_N3), .CLK(CLK), .Q(n962), .Q_N(n524) );
	dfxbp_1 DFF_66_Q_reg( .D(DFF_66_N3), .CLK(CLK), .Q(n963), .Q_N(n510) );
	dfxbp_1 DFF_64_Q_reg( .D(DFF_64_N3), .CLK(CLK), .Q(n978) );
	dfxbp_1 DFF_63_Q_reg( .D(DFF_63_N3), .CLK(CLK), .Q_N(n985) );
	dfxbp_1 DFF_61_Q_reg( .D(n1), .CLK(CLK), .Q(n1029) );
	dfxbp_1 DFF_60_Q_reg( .D(DFF_60_N3), .CLK(CLK), .Q(n1020), .Q_N(n542) );
	dfxbp_1 DFF_59_Q_reg( .D(DFF_59_N3), .CLK(CLK), .Q(n964) );
	dfxbp_1 DFF_58_Q_reg( .D(DFF_58_N3), .CLK(CLK), .Q_N(n981) );
	dfxbp_1 DFF_57_Q_reg( .D(DFF_57_N3), .CLK(CLK), .Q(n965), .Q_N(n553) );
	dfxbp_1 DFF_55_Q_reg( .D(DFF_55_N3), .CLK(CLK), .Q(n1017), .Q_N(n541) );
	dfxbp_1 DFF_53_Q_reg( .D(DFF_53_N3), .CLK(CLK), .Q_N(n520) );
	dfxbp_1 DFF_52_Q_reg( .D(DFF_52_N3), .CLK(CLK), .Q(n982) );
	dfxbp_1 DFF_51_Q_reg( .D(DFF_51_N3), .CLK(CLK), .Q(n966), .Q_N(n514) );
	dfxbp_1 DFF_50_Q_reg( .D(n497), .CLK(CLK), .Q(n1008), .Q_N(n516) );
	dfxbp_1 DFF_47_Q_reg( .D(DFF_47_N3), .CLK(CLK), .Q_N(n967) );
	dfxbp_1 DFF_44_Q_reg( .D(DFF_44_N3), .CLK(CLK), .Q_N(n986) );
	dfxbp_1 DFF_43_Q_reg( .D(n3), .CLK(CLK), .Q(n1005) );
	dfxbp_1 DFF_42_Q_reg( .D(DFF_42_N3), .CLK(CLK), .Q(n968), .Q_N(n523) );
	dfxbp_1 DFF_41_Q_reg( .D(DFF_41_N3), .CLK(CLK), .Q(n1031) );
	dfxbp_1 DFF_40_Q_reg( .D(DFF_40_N3), .CLK(CLK), .Q(n558) );
	dfxbp_1 DFF_38_Q_reg( .D(n15), .CLK(CLK), .Q_N(n2230) );
	dfxbp_1 DFF_37_Q_reg( .D(n18), .CLK(CLK), .Q_N(n534) );
	dfxbp_1 DFF_36_Q_reg( .D(DFF_36_N3), .CLK(CLK), .Q_N(n969) );
	dfxbp_1 DFF_35_Q_reg( .D(DFF_51_N3), .CLK(CLK), .Q(n1034) );
	dfxbp_1 DFF_30_Q_reg( .D(DFF_30_N3), .CLK(CLK), .Q_N(n970) );
	dfxbp_1 DFF_28_Q_reg( .D(DFF_28_N3), .CLK(CLK), .Q_N(n519) );
	dfxbp_1 DFF_27_Q_reg( .D(DFF_27_N3), .CLK(CLK), .Q_N(n987) );
	dfxbp_1 DFF_26_Q_reg( .D(DFF_4_N3), .CLK(CLK), .Q(n1032), .Q_N(n572) );
	dfxbp_1 DFF_25_Q_reg( .D(DFF_25_N3), .CLK(CLK), .Q(n971), .Q_N(n570) );
	dfxbp_1 DFF_24_Q_reg( .D(DFF_24_N3), .CLK(CLK), .Q(n532), .Q_N(n983) );
	dfxbp_1 DFF_23_Q_reg( .D(DFF_23_N3), .CLK(CLK), .Q_N(n1035) );
	dfxbp_1 DFF_21_Q_reg( .D(DFF_21_N3), .CLK(CLK), .Q(n930) );
	dfxbp_1 DFF_20_Q_reg( .D(DFF_20_N3), .CLK(CLK), .Q(n972), .Q_N(n571) );
	dfxbp_1 DFF_19_Q_reg( .D(DFF_19_N3), .CLK(CLK), .Q(n568), .Q_N(n999) );
	dfxbp_1 DFF_17_Q_reg( .D(n16), .CLK(CLK), .Q(n991) );
	dfxbp_1 DFF_15_Q_reg( .D(DFF_15_N3), .CLK(CLK), .Q(n998) );
	dfxbp_1 DFF_11_Q_reg( .D(DFF_11_N3), .CLK(CLK), .Q(n973), .Q_N(n529) );
	dfxbp_1 DFF_10_Q_reg( .D(DFF_10_N3), .CLK(CLK), .Q_N(n1038) );
	dfxbp_1 DFF_9_Q_reg( .D(DFF_9_N3), .CLK(CLK), .Q(n974), .Q_N(n537) );
	dfxbp_1 DFF_6_Q_reg( .D(DFF_6_N3), .CLK(CLK), .Q_N(n1039) );
	dfxbp_1 DFF_5_Q_reg( .D(DFF_5_N3), .CLK(CLK), .Q(n975), .Q_N(n552) );
	dfxbp_1 DFF_4_Q_reg( .D(DFF_4_N3), .CLK(CLK), .Q(n976), .Q_N(n513) );
	dfxbp_1 DFF_3_Q_reg( .D(n20), .CLK(CLK), .Q(n936) );
	dfxbp_1 DFF_191_Q_reg( .D(DFF_191_N3), .CLK(CLK), .Q(g1293), .Q_N(n560) );
	dfxbp_1 DFF_14_Q_reg( .D(DFF_14_N3), .CLK(CLK), .Q(g676) );
	dfxbp_1 DFF_176_Q_reg( .D(n498), .CLK(CLK), .Q(n1023) );
	dfxbp_1 DFF_166_Q_reg( .D(DFF_166_N3), .CLK(CLK), .Q(n1026) );
	dfxbp_1 DFF_157_Q_reg( .D(DFF_157_N3), .CLK(CLK), .Q(n1021) );
	dfxbp_1 DFF_156_Q_reg( .D(n8), .CLK(CLK), .Q(g218) );
	dfxbp_1 DFF_114_Q_reg( .D(DFF_114_N3), .CLK(CLK), .Q(n1018) );
	dfxbp_1 DFF_76_Q_reg( .D(DFF_76_N3), .CLK(CLK), .Q(g212) );
	dfxbp_1 DFF_46_Q_reg( .D(DFF_46_N3), .CLK(CLK), .Q(n1019) );
	dfxbp_1 DFF_190_Q_reg( .D(DFF_190_N3), .CLK(CLK), .Q(g5468) );
	dfxbp_1 DFF_180_Q_reg( .D(DFF_180_N3), .CLK(CLK), .Q(g1290) );
	dfxbp_1 DFF_161_Q_reg( .D(DFF_161_N3), .CLK(CLK), .Q(g5469) );
	dfxbp_1 DFF_48_Q_reg( .D(DFF_48_N3), .CLK(CLK), .Q(g5137) );
	inv_2 U570( .A(1'b1), .Y(g6728) );
	inv_2 U572( .A(1'b1), .Y(g5692) );
	buf_1 U574( .A(g5469), .X(g4321) );
	buf_1 U575( .A(g5468), .X(g4307) );
	buf_1 U576( .A(g5137), .X(g3600) );
	buf_1 U577( .A(g564), .X(g4422) );
	buf_1 U578( .A(g47), .X(g4112) );
	buf_1 U579( .A(g41), .X(g4110) );
	buf_1 U580( .A(g46), .X(g4109) );
	buf_1 U581( .A(g45), .X(g4108) );
	buf_1 U582( .A(g44), .X(g4107) );
	buf_1 U583( .A(g42), .X(g4106) );
	buf_1 U584( .A(g40), .X(g4105) );
	buf_1 U585( .A(g22), .X(g4104) );
	buf_1 U586( .A(g39), .X(g4103) );
	buf_1 U587( .A(g38), .X(g4102) );
	buf_1 U588( .A(g37), .X(g4101) );
	buf_1 U589( .A(g36), .X(g4100) );
	buf_1 U590( .A(g32), .X(g4099) );
	buf_1 U591( .A(g23), .X(g4098) );
	buf_1 U592( .A(g705), .X(g3222) );
	inv_1 U593( .A(n592), .Y(n7) );
	inv_1 U594( .A(n593), .Y(n6) );
	inv_1 U595( .A(n594), .Y(n3) );
	inv_1 U596( .A(n595), .Y(n20) );
	inv_1 U597( .A(n596), .Y(n2) );
	inv_1 U598( .A(n597), .Y(n18) );
	inv_1 U599( .A(n598), .Y(n17) );
	inv_1 U600( .A(n599), .Y(n16) );
	inv_1 U601( .A(n600), .Y(n14) );
	nand2_1 U602( .A(n941), .B(n601), .Y(g6374) );
	nand2_1 U603( .A(n985), .B(n601), .Y(g6372) );
	nand2_1 U604( .A(n987), .B(n601), .Y(g6370) );
	nand2_1 U605( .A(n990), .B(n601), .Y(g6368) );
	nand2_1 U606( .A(n984), .B(n601), .Y(g6366) );
	nand2_1 U607( .A(n986), .B(n601), .Y(g6364) );
	nand2_1 U608( .A(n989), .B(n601), .Y(g6362) );
	nand2_1 U609( .A(n988), .B(n601), .Y(g6360) );
	nand2_1 U610( .A(n601), .B(n602), .Y(g6284) );
	nor2_1 U611( .A(n603), .B(g6282), .Y(n601) );
	nand3_1 U612( .A(n604), .B(n165), .C(n605), .Y(g6282) );
	a22oi_1 U613( .A1(n933), .A2(n934), .B1(n929), .B2(n930), .Y(g4809) );
	nor2_1 U614( .A(g102), .B(n606), .Y(g2584) );
	inv_1 U615( .A(g89), .Y(n606) );
	and2_0 U616( .A(n607), .B(g39), .X(DFF_9_N3) );
	and2_0 U617( .A(n607), .B(g37), .X(DFF_99_N3) );
	nor2_1 U618( .A(n987), .B(RST), .Y(DFF_98_N3) );
	o22ai_1 U619( .A1(n608), .A2(n520), .B1(n609), .B2(n557), .Y(DFF_96_N3) );
	nor2_1 U620( .A(n1043), .B(RST), .Y(DFF_95_N3) );
	o22ai_1 U621( .A1(n610), .A2(n562), .B1(n611), .B2(n503), .Y(DFF_94_N3) );
	nor2_1 U622( .A(n612), .B(n613), .Y(DFF_93_N3) );
	a21oi_1 U623( .A1(n15), .A2(n614), .B1(DFF_114_N3), .Y(n612) );
	and2_0 U624( .A(n607), .B(g40), .X(DFF_92_N3) );
	o21ai_0 U625( .A1(n615), .A2(n616), .B1(n617), .Y(DFF_90_N3) );
	a21oi_1 U626( .A1(n497), .A2(n618), .B1(n619), .Y(n617) );
	a21oi_1 U627( .A1(n620), .A2(n621), .B1(RST), .Y(n619) );
	a221oi_1 U628( .A1(n968), .A2(n622), .B1(n623), .B2(n951), .C1(n624), .Y( n621) );
	a222oi_1 U629( .A1(g558), .A2(n625), .B1(n626), .B2(n1024), .C1(n965), .C2( n627), .Y(n620) );
	and2_0 U630( .A(n628), .B(n607), .X(n497) );
	mux2i_1 U631( .A0(n629), .A1(n507), .S(n527), .Y(n628) );
	inv_1 U632( .A(DFF_164_N3), .Y(n615) );
	o32ai_1 U633( .A1(n630), .A2(n631), .A3(n632), .B1(n613), .B2(n598), .Y( DFF_89_N3) );
	nand2_1 U634( .A(n956), .B(n607), .Y(n598) );
	nand2_1 U635( .A(n1002), .B(n633), .Y(n613) );
	nand3_1 U636( .A(n944), .B(n565), .C(n614), .Y(n633) );
	or3_1 U637( .A(n1012), .B(n956), .C(n531), .X(n630) );
	nor2_1 U638( .A(n634), .B(n635), .Y(DFF_88_N3) );
	xnor2_1 U639( .A(n977), .B(n636), .Y(n634) );
	nor2_1 U640( .A(RST), .B(n2256), .Y(DFF_85_N3) );
	o22ai_1 U641( .A1(n557), .A2(n608), .B1(n609), .B2(n509), .Y(DFF_84_N3) );
	a21oi_1 U642( .A1(n637), .A2(n638), .B1(RST), .Y(DFF_83_N3) );
	o21ai_0 U643( .A1(n639), .A2(n980), .B1(n640), .Y(n638) );
	and2_0 U644( .A(n636), .B(n977), .X(n639) );
	o22ai_1 U645( .A1(n527), .A2(n610), .B1(n611), .B2(n512), .Y(DFF_82_N3) );
	o22ai_1 U646( .A1(n608), .A2(n524), .B1(n609), .B2(n538), .Y(DFF_81_N3) );
	nor2_1 U647( .A(RST), .B(n539), .Y(DFF_80_N3) );
	o21ai_0 U648( .A1(n641), .A2(n616), .B1(n642), .Y(DFF_79_N3) );
	a21oi_1 U649( .A1(n496), .A2(n618), .B1(n643), .Y(n642) );
	a21oi_1 U650( .A1(n644), .A2(n645), .B1(RST), .Y(n643) );
	a221oi_1 U651( .A1(n939), .A2(n622), .B1(n623), .B2(n966), .C1(n624), .Y( n645) );
	a222oi_1 U652( .A1(g557), .A2(n625), .B1(n626), .B2(n1017), .C1(n959), .C2( n627), .Y(n644) );
	and2_0 U653( .A(n646), .B(n607), .X(n496) );
	mux2i_1 U654( .A0(n647), .A1(n514), .S(n527), .Y(n646) );
	inv_1 U655( .A(DFF_87_N3), .Y(n641) );
	o32ai_1 U656( .A1(n528), .A2(RST), .A3(n648), .B1(n514), .B2(n649), .Y( DFF_87_N3) );
	o22ai_1 U657( .A1(n608), .A2(n553), .B1(n609), .B2(n525), .Y(DFF_78_N3) );
	o22ai_1 U658( .A1(n608), .A2(n551), .B1(n609), .B2(n522), .Y(DFF_77_N3) );
	nor2_1 U659( .A(RST), .B(n650), .Y(DFF_76_N3) );
	o22ai_1 U660( .A1(n610), .A2(n561), .B1(n611), .B2(n510), .Y(DFF_75_N3) );
	o22ai_1 U661( .A1(n609), .A2(n521), .B1(n608), .B2(n651), .Y(DFF_74_N3) );
	mux2i_1 U662( .A0(n1006), .A1(n1013), .S(n529), .Y(n651) );
	o22ai_1 U663( .A1(n608), .A2(n508), .B1(n609), .B2(n554), .Y(DFF_73_N3) );
	nor2_1 U664( .A(RST), .B(n2257), .Y(DFF_70_N3) );
	nor2_1 U665( .A(n988), .B(RST), .Y(DFF_6_N3) );
	nor2_1 U666( .A(n955), .B(RST), .Y(DFF_69_N3) );
	o22ai_1 U667( .A1(n608), .A2(n552), .B1(n609), .B2(n524), .Y(DFF_68_N3) );
	nor2_1 U668( .A(n1040), .B(RST), .Y(DFF_66_N3) );
	nor2_1 U669( .A(n652), .B(n653), .Y(DFF_64_N3) );
	xnor2_1 U670( .A(n654), .B(n978), .Y(n652) );
	o221ai_1 U671( .A1(n616), .A2(n595), .B1(n655), .B2(n593), .C1(n656), .Y( DFF_63_N3) );
	o21ai_0 U672( .A1(n657), .A2(n658), .B1(n607), .Y(n656) );
	o221ai_1 U673( .A1(n520), .A2(n659), .B1(n533), .B2(n660), .C1(n661), .Y( n658) );
	a22oi_1 U674( .A1(n931), .A2(n627), .B1(g561), .B2(n625), .Y(n661) );
	o221ai_1 U675( .A1(n561), .A2(n662), .B1(n663), .B2(n510), .C1(n664), .Y( n657) );
	a221oi_1 U676( .A1(n952), .A2(n665), .B1(n972), .B2(n666), .C1(n624), .Y( n664) );
	nand2_1 U677( .A(n667), .B(n607), .Y(n593) );
	mux2i_1 U678( .A0(n668), .A1(n510), .S(n527), .Y(n667) );
	o21ai_0 U679( .A1(n669), .A2(n670), .B1(n671), .Y(n668) );
	nor2_1 U680( .A(n672), .B(n673), .Y(n669) );
	inv_1 U681( .A(n674), .Y(n673) );
	a21oi_1 U682( .A1(n991), .A2(n675), .B1(n935), .Y(n672) );
	nand2_1 U683( .A(n676), .B(n607), .Y(n595) );
	mux2i_1 U684( .A0(n677), .A1(n510), .S(n528), .Y(n676) );
	o21ai_0 U685( .A1(n678), .A2(n679), .B1(n680), .Y(n677) );
	nor2_1 U686( .A(n681), .B(n682), .Y(n678) );
	inv_1 U687( .A(n683), .Y(n682) );
	a21oi_1 U688( .A1(n982), .A2(n684), .B1(n936), .Y(n681) );
	o22ai_1 U689( .A1(n542), .A2(n685), .B1(n513), .B2(n686), .Y(DFF_60_N3) );
	o22ai_1 U690( .A1(n608), .A2(n525), .B1(n609), .B2(n552), .Y(DFF_5_N3) );
	nor2_1 U691( .A(RST), .B(n687), .Y(DFF_59_N3) );
	a21oi_1 U692( .A1(n688), .A2(n604), .B1(n964), .Y(n687) );
	nor2_1 U693( .A(n689), .B(n690), .Y(DFF_58_N3) );
	a22oi_1 U694( .A1(DFF_46_N3), .A2(n1002), .B1(n8), .B2(n691), .Y(n690) );
	o22ai_1 U695( .A1(n608), .A2(n526), .B1(n609), .B2(n553), .Y(DFF_57_N3) );
	o22ai_1 U696( .A1(n541), .A2(n685), .B1(n514), .B2(n686), .Y(DFF_55_N3) );
	o22ai_1 U697( .A1(n608), .A2(n538), .B1(n609), .B2(n520), .Y(DFF_53_N3) );
	nor2_1 U698( .A(n1041), .B(RST), .Y(DFF_51_N3) );
	nor2_1 U699( .A(n1039), .B(RST), .Y(DFF_4_N3) );
	a211oi_1 U700( .A1(n692), .A2(n693), .B1(RST), .C1(n694), .Y(DFF_48_N3) );
	nor3_1 U701( .A(n695), .B(n696), .C(n532), .Y(n694) );
	nand3_1 U702( .A(n977), .B(n980), .C(n979), .Y(n695) );
	xnor2_1 U703( .A(n979), .B(n532), .Y(n693) );
	mux2i_1 U704( .A0(n697), .A1(n698), .S(n977), .Y(n692) );
	a21oi_1 U705( .A1(n699), .A2(n504), .B1(n700), .Y(n698) );
	mux2i_1 U706( .A0(n701), .A1(n702), .S(n530), .Y(n700) );
	mux2i_1 U707( .A0(n510), .A1(n503), .S(n946), .Y(n702) );
	or2_0 U708( .A(n946), .B(n937), .X(n701) );
	o21ai_0 U709( .A1(n696), .A2(n511), .B1(n703), .Y(n697) );
	mux2i_1 U710( .A0(n704), .A1(n705), .S(n530), .Y(n703) );
	mux2i_1 U711( .A0(n514), .A1(n507), .S(n946), .Y(n705) );
	nor2_1 U712( .A(n699), .B(n513), .Y(n704) );
	inv_1 U713( .A(n696), .Y(n699) );
	nand2_1 U714( .A(n940), .B(n946), .Y(n696) );
	and2_0 U715( .A(n607), .B(g32), .X(DFF_47_N3) );
	nor2_1 U716( .A(RST), .B(n981), .Y(DFF_46_N3) );
	o221ai_1 U717( .A1(n655), .A2(n594), .B1(n706), .B2(n616), .C1(n707), .Y( DFF_44_N3) );
	nand2_1 U718( .A(n708), .B(n607), .Y(n707) );
	nand4_1 U719( .A(n709), .B(n710), .C(n711), .D(n712), .Y(n708) );
	a221oi_1 U720( .A1(n949), .A2(n666), .B1(n713), .B2(n714), .C1(n624), .Y( n712) );
	mux2_1 U721( .A0(n930), .A1(n929), .S(n993), .X(n713) );
	a222oi_1 U722( .A1(n715), .A2(n997), .B1(n665), .B2(n1025), .C1(n964), .C2( n716), .Y(n711) );
	a222oi_1 U723( .A1(n626), .A2(n1028), .B1(n955), .B2(n623), .C1(n975), .C2( n622), .Y(n710) );
	a22oi_1 U724( .A1(n960), .A2(n627), .B1(g564), .B2(n625), .Y(n709) );
	inv_1 U725( .A(DFF_168_N3), .Y(n706) );
	nand2_1 U726( .A(n717), .B(n718), .Y(n594) );
	mux2i_1 U727( .A0(n1005), .A1(n504), .S(n527), .Y(n717) );
	o22ai_1 U728( .A1(n608), .A2(n509), .B1(n609), .B2(n523), .Y(DFF_42_N3) );
	nor2_1 U729( .A(n1042), .B(RST), .Y(DFF_41_N3) );
	nor3_1 U730( .A(n653), .B(n719), .C(n720), .Y(DFF_40_N3) );
	a21oi_1 U731( .A1(n998), .A2(n721), .B1(n558), .Y(n720) );
	inv_1 U732( .A(n722), .Y(n719) );
	a211oi_1 U733( .A1(n969), .A2(n723), .B1(n653), .C1(n721), .Y(DFF_36_N3) );
	a211oi_1 U734( .A1(n724), .A2(n725), .B1(n531), .C1(n614), .Y(DFF_30_N3) );
	nand3_1 U735( .A(n1003), .B(n689), .C(n498), .Y(n725) );
	inv_1 U736( .A(DFF_157_N3), .Y(n724) );
	a21oi_1 U737( .A1(n726), .A2(n727), .B1(n531), .Y(DFF_28_N3) );
	nand3_1 U738( .A(n689), .B(n519), .C(DFF_166_N3), .Y(n727) );
	o21ai_0 U739( .A1(n728), .A2(n547), .B1(n498), .Y(n726) );
	nor2_1 U740( .A(n519), .B(RST), .Y(n498) );
	o221ai_1 U741( .A1(n655), .A2(n599), .B1(n729), .B2(n616), .C1(n730), .Y( DFF_27_N3) );
	o21ai_0 U742( .A1(n731), .A2(n732), .B1(n607), .Y(n730) );
	o221ai_1 U743( .A1(n659), .A2(n538), .B1(n515), .B2(n660), .C1(n733), .Y( n732) );
	a22oi_1 U744( .A1(n932), .A2(n627), .B1(g562), .B2(n625), .Y(n733) );
	o221ai_1 U745( .A1(n562), .A2(n662), .B1(n503), .B2(n663), .C1(n734), .Y( n731) );
	a221oi_1 U746( .A1(n665), .A2(n548), .B1(n971), .B2(n666), .C1(n624), .Y( n734) );
	inv_1 U747( .A(DFF_52_N3), .Y(n729) );
	o22ai_1 U748( .A1(n503), .A2(n649), .B1(n735), .B2(n736), .Y(DFF_52_N3) );
	xnor2_1 U749( .A(n684), .B(n982), .Y(n735) );
	nand2_1 U750( .A(n737), .B(n718), .Y(n599) );
	mux2i_1 U751( .A0(n738), .A1(n503), .S(n527), .Y(n737) );
	xnor2_1 U752( .A(n675), .B(n991), .Y(n738) );
	o22ai_1 U753( .A1(n570), .A2(n739), .B1(n629), .B2(n740), .Y(DFF_25_N3) );
	inv_1 U754( .A(n741), .Y(n629) );
	a21oi_1 U755( .A1(n637), .A2(n742), .B1(RST), .Y(DFF_24_N3) );
	xnor2_1 U756( .A(n983), .B(n640), .Y(n742) );
	nor2_1 U757( .A(RST), .B(n602), .Y(DFF_23_N3) );
	xnor2_1 U758( .A(n743), .B(n744), .Y(n602) );
	xor2_1 U759( .A(n745), .B(n746), .X(n744) );
	xor2_1 U760( .A(n985), .B(n986), .X(n746) );
	xor2_1 U761( .A(n941), .B(n984), .X(n745) );
	xor2_1 U762( .A(n747), .B(n748), .X(n743) );
	xor2_1 U763( .A(n987), .B(n988), .X(n748) );
	xnor2_1 U764( .A(n990), .B(n989), .Y(n747) );
	nor2_1 U765( .A(RST), .B(n749), .Y(DFF_21_N3) );
	a21oi_1 U766( .A1(n1001), .A2(n750), .B1(n930), .Y(n749) );
	o21ai_0 U767( .A1(n517), .A2(n751), .B1(n752), .Y(n750) );
	inv_1 U768( .A(n753), .Y(n752) );
	o22ai_1 U769( .A1(n571), .A2(n739), .B1(n647), .B2(n740), .Y(DFF_20_N3) );
	inv_1 U770( .A(n754), .Y(n647) );
	nor2_1 U771( .A(n986), .B(RST), .Y(DFF_209_N3) );
	nor2_1 U772( .A(n1036), .B(RST), .Y(DFF_208_N3) );
	o22ai_1 U773( .A1(n504), .A2(n755), .B1(n540), .B2(n756), .Y(DFF_205_N3) );
	o22ai_1 U774( .A1(n533), .A2(n685), .B1(n510), .B2(n686), .Y(DFF_204_N3) );
	nor2_1 U775( .A(n1037), .B(RST), .Y(DFF_200_N3) );
	o32ai_1 U776( .A1(n568), .A2(RST), .A3(g4121), .B1(n757), .B2(n758), .Y( DFF_19_N3) );
	nand2_1 U777( .A(n1002), .B(n650), .Y(n758) );
	inv_1 U778( .A(n8), .Y(n757) );
	nor2_1 U779( .A(RST), .B(n999), .Y(n8) );
	inv_1 U780( .A(n691), .Y(g4121) );
	nor2_1 U781( .A(n531), .B(n650), .Y(n691) );
	nor2_1 U782( .A(n539), .B(n600), .Y(DFF_197_N3) );
	o22ai_1 U783( .A1(n608), .A2(n523), .B1(n609), .B2(n567), .Y(DFF_196_N3) );
	o22ai_1 U784( .A1(n608), .A2(n522), .B1(n609), .B2(n508), .Y(DFF_195_N3) );
	nor2_1 U785( .A(g47), .B(RST), .Y(DFF_191_N3) );
	a21oi_1 U786( .A1(n741), .A2(n754), .B1(RST), .Y(DFF_190_N3) );
	nand2_1 U787( .A(n759), .B(n760), .Y(n754) );
	mux2i_1 U788( .A0(n761), .A1(n1007), .S(n762), .Y(n759) );
	nor2_1 U789( .A(n763), .B(n516), .Y(n761) );
	o211ai_1 U790( .A1(n762), .A2(n549), .B1(n764), .C1(n671), .Y(n741) );
	inv_1 U791( .A(n765), .Y(n671) );
	nand3_1 U792( .A(n766), .B(n760), .C(n1008), .Y(n764) );
	nand2_1 U793( .A(n763), .B(n762), .Y(n760) );
	a211oi_1 U794( .A1(n530), .A2(n767), .B1(n635), .C1(n636), .Y(DFF_189_N3) );
	o21ai_0 U795( .A1(n616), .A2(n597), .B1(n768), .Y(DFF_187_N3) );
	a21oi_1 U796( .A1(n19), .A2(n618), .B1(n769), .Y(n768) );
	a21oi_1 U797( .A1(n770), .A2(n771), .B1(RST), .Y(n769) );
	a221oi_1 U798( .A1(n622), .A2(n954), .B1(n938), .B2(n623), .C1(n624), .Y( n771) );
	a222oi_1 U799( .A1(g560), .A2(n625), .B1(n626), .B2(n1022), .C1(n961), .C2( n627), .Y(n770) );
	and2_0 U800( .A(n772), .B(n607), .X(n19) );
	mux2i_1 U801( .A0(n773), .A1(n511), .S(n527), .Y(n772) );
	nor3_1 U802( .A(n670), .B(n765), .C(n774), .Y(n773) );
	a21oi_1 U803( .A1(n674), .A2(n535), .B1(n775), .Y(n774) );
	nand2_1 U804( .A(n776), .B(n607), .Y(n597) );
	mux2i_1 U805( .A0(n777), .A1(n511), .S(n528), .Y(n776) );
	nor3_1 U806( .A(n679), .B(n778), .C(n779), .Y(n777) );
	a21oi_1 U807( .A1(n683), .A2(n534), .B1(n780), .Y(n779) );
	o221ai_1 U808( .A1(n655), .A2(n596), .B1(n781), .B2(n616), .C1(n782), .Y( DFF_186_N3) );
	nand2_1 U809( .A(n783), .B(n607), .Y(n782) );
	nand4_1 U810( .A(n784), .B(n785), .C(n786), .D(n787), .Y(n783) );
	a221oi_1 U811( .A1(n943), .A2(n666), .B1(n788), .B2(n714), .C1(n624), .Y( n787) );
	mux2_1 U812( .A0(n934), .A1(n933), .S(n993), .X(n788) );
	a222oi_1 U813( .A1(n715), .A2(n958), .B1(n665), .B2(n973), .C1(n947), .C2( n716), .Y(n786) );
	a222oi_1 U814( .A1(n626), .A2(n1027), .B1(n937), .B2(n623), .C1(n962), .C2( n622), .Y(n785) );
	a22oi_1 U815( .A1(n942), .A2(n627), .B1(g563), .B2(n625), .Y(n784) );
	inv_1 U816( .A(DFF_178_N3), .Y(n781) );
	nand2_1 U817( .A(n789), .B(n718), .Y(n596) );
	a21oi_1 U818( .A1(n958), .A2(n765), .B1(n790), .Y(n718) );
	inv_1 U819( .A(n791), .Y(n790) );
	mux2i_1 U820( .A0(n792), .A1(n512), .S(n527), .Y(n789) );
	or2_0 U821( .A(n675), .B(n793), .X(n792) );
	inv_1 U822( .A(n618), .Y(n655) );
	o22ai_1 U823( .A1(n546), .A2(n685), .B1(n507), .B2(n686), .Y(DFF_182_N3) );
	and2_0 U824( .A(g46), .B(n607), .X(DFF_180_N3) );
	o22ai_1 U825( .A1(n528), .A2(n610), .B1(n611), .B2(n504), .Y(DFF_179_N3) );
	or2_0 U826( .A(n794), .B(RST), .X(n611) );
	nand2_1 U827( .A(n794), .B(n607), .Y(n610) );
	nand2_1 U828( .A(n795), .B(n556), .Y(n794) );
	o32ai_1 U829( .A1(n736), .A2(n684), .A3(n796), .B1(n649), .B2(n512), .Y( DFF_178_N3) );
	o22ai_1 U830( .A1(n544), .A2(n685), .B1(n686), .B2(n504), .Y(DFF_177_N3) );
	o22ai_1 U831( .A1(n608), .A2(n521), .B1(n609), .B2(n551), .Y(DFF_175_N3) );
	o22ai_1 U832( .A1(n739), .A2(n566), .B1(n648), .B2(n740), .Y(DFF_173_N3) );
	inv_1 U833( .A(n797), .Y(n648) );
	o22ai_1 U834( .A1(n515), .A2(n685), .B1(n503), .B2(n686), .Y(DFF_172_N3) );
	nor2_1 U835( .A(n531), .B(n798), .Y(DFF_170_N3) );
	mux2i_1 U836( .A0(n799), .A1(n15), .S(n631), .Y(n798) );
	inv_1 U837( .A(n614), .Y(n631) );
	nor4_1 U838( .A(n547), .B(n728), .C(n519), .D(n970), .Y(n614) );
	inv_1 U839( .A(n632), .Y(n15) );
	nand2_1 U840( .A(n944), .B(n607), .Y(n632) );
	nor2_1 U841( .A(n944), .B(RST), .Y(n799) );
	nor2_1 U842( .A(n996), .B(n600), .Y(DFF_169_N3) );
	nand2_1 U843( .A(g45), .B(n607), .Y(n600) );
	o22ai_1 U844( .A1(n649), .A2(n504), .B1(n1015), .B2(n736), .Y(DFF_168_N3) );
	nand4_1 U845( .A(n997), .B(n800), .C(n680), .D(n607), .Y(n736) );
	o21ai_0 U846( .A1(n616), .A2(n592), .B1(n801), .Y(DFF_167_N3) );
	a21oi_1 U847( .A1(n1), .A2(n618), .B1(n802), .Y(n801) );
	a21oi_1 U848( .A1(n803), .A2(n804), .B1(RST), .Y(n802) );
	a221oi_1 U849( .A1(n957), .A2(n622), .B1(n623), .B2(n976), .C1(n624), .Y( n804) );
	and2_0 U850( .A(n805), .B(n806), .X(n624) );
	nor4_1 U851( .A(n807), .B(n625), .C(n808), .D(n618), .Y(n806) );
	inv_1 U852( .A(n616), .Y(n808) );
	nand3_1 U853( .A(n659), .B(n809), .C(n663), .Y(n807) );
	inv_1 U854( .A(n623), .Y(n663) );
	nor4_1 U855( .A(n810), .B(n665), .C(n715), .D(n716), .Y(n805) );
	and4_1 U856( .A(n995), .B(n994), .C(n811), .D(n563), .X(n716) );
	inv_1 U857( .A(n662), .Y(n715) );
	nand3_1 U858( .A(n812), .B(n556), .C(n813), .Y(n662) );
	and3_1 U859( .A(n814), .B(n536), .C(n815), .X(n665) );
	or3_1 U860( .A(n714), .B(n666), .C(n626), .X(n810) );
	and3_1 U861( .A(n814), .B(n572), .C(n1031), .X(n666) );
	nor3_1 U862( .A(n816), .B(n995), .C(n564), .Y(n714) );
	nor4_1 U863( .A(n817), .B(n537), .C(n818), .D(n819), .Y(n623) );
	a21oi_1 U864( .A1(n518), .A2(n967), .B1(n1033), .Y(n819) );
	inv_1 U865( .A(n659), .Y(n622) );
	nand3_1 U866( .A(n814), .B(n536), .C(n1032), .Y(n659) );
	a222oi_1 U867( .A1(g559), .A2(n625), .B1(n626), .B2(n1020), .C1(n945), .C2( n627), .Y(n803) );
	inv_1 U868( .A(n809), .Y(n627) );
	nand3_1 U869( .A(n1032), .B(n814), .C(n1030), .Y(n809) );
	inv_1 U870( .A(n660), .Y(n626) );
	nand3_1 U871( .A(n1030), .B(n814), .C(n815), .Y(n660) );
	and3_1 U872( .A(n813), .B(n812), .C(n992), .X(n814) );
	inv_1 U873( .A(n820), .Y(n812) );
	nor4_1 U874( .A(n563), .B(n816), .C(n995), .D(n994), .Y(n625) );
	inv_1 U875( .A(n811), .Y(n816) );
	nor4_1 U876( .A(n518), .B(n537), .C(n820), .D(n1033), .Y(n811) );
	a21oi_1 U877( .A1(n539), .A2(n821), .B1(n822), .Y(n820) );
	nor3_1 U878( .A(n974), .B(n953), .C(n823), .Y(n618) );
	and2_0 U879( .A(n824), .B(n791), .X(n1) );
	a21oi_1 U880( .A1(n670), .A2(n958), .B1(RST), .Y(n791) );
	nand2_1 U881( .A(n762), .B(n825), .Y(n670) );
	nand4_1 U882( .A(n826), .B(n516), .C(n549), .D(n506), .Y(n825) );
	mux2i_1 U883( .A0(n827), .A1(n513), .S(n527), .Y(n824) );
	nor3_1 U884( .A(n775), .B(n1029), .C(n765), .Y(n827) );
	nor4_1 U885( .A(n826), .B(n1008), .C(n1007), .D(n1006), .Y(n765) );
	nand2_1 U886( .A(n828), .B(n607), .Y(n592) );
	mux2i_1 U887( .A0(n829), .A1(n513), .S(n528), .Y(n828) );
	nand2_1 U888( .A(n800), .B(n830), .Y(n829) );
	or3_1 U889( .A(n778), .B(n1016), .C(n780), .X(n830) );
	inv_1 U890( .A(n679), .Y(n800) );
	nand2_1 U891( .A(n831), .B(n832), .Y(n679) );
	nand4_1 U892( .A(n833), .B(n505), .C(n550), .D(n517), .Y(n832) );
	nand3_1 U893( .A(n834), .B(n537), .C(n953), .Y(n616) );
	inv_1 U894( .A(n823), .Y(n834) );
	nand4_1 U895( .A(n1033), .B(n822), .C(n605), .D(n518), .Y(n823) );
	inv_1 U896( .A(n817), .Y(n822) );
	nand2_1 U897( .A(n821), .B(n184), .Y(n817) );
	nor4_1 U898( .A(n560), .B(n835), .C(n603), .D(n996), .Y(n821) );
	o32ai_1 U899( .A1(n528), .A2(RST), .A3(n836), .B1(n507), .B2(n649), .Y( DFF_164_N3) );
	nand2_1 U900( .A(n528), .B(n607), .Y(n649) );
	o22ai_1 U901( .A1(n608), .A2(n554), .B1(n609), .B2(n526), .Y(DFF_163_N3) );
	nand2_1 U902( .A(n607), .B(n837), .Y(n609) );
	nand3_1 U903( .A(n838), .B(n555), .C(n950), .Y(n837) );
	or3_1 U904( .A(n548), .B(n952), .C(n740), .X(n608) );
	a21oi_1 U905( .A1(n839), .A2(n797), .B1(RST), .Y(DFF_161_N3) );
	nand2_1 U906( .A(n840), .B(n841), .Y(n797) );
	mux2i_1 U907( .A0(n842), .A1(n1001), .S(n831), .Y(n840) );
	nor2_1 U908( .A(n753), .B(n517), .Y(n842) );
	nor2_1 U909( .A(n843), .B(n653), .Y(DFF_15_N3) );
	xnor2_1 U910( .A(n721), .B(n998), .Y(n843) );
	nor3_1 U911( .A(n635), .B(n844), .C(n845), .Y(DFF_158_N3) );
	a21oi_1 U912( .A1(n978), .A2(n654), .B1(n946), .Y(n845) );
	inv_1 U913( .A(n767), .Y(n844) );
	nor2_1 U914( .A(RST), .B(n970), .Y(DFF_157_N3) );
	nor3_1 U915( .A(n653), .B(n846), .C(n847), .Y(DFF_154_N3) );
	a21oi_1 U916( .A1(n1009), .A2(n848), .B1(n559), .Y(n847) );
	inv_1 U917( .A(n723), .Y(n846) );
	nor2_1 U918( .A(n937), .B(RST), .Y(DFF_153_N3) );
	nor2_1 U919( .A(n849), .B(n635), .Y(DFF_151_N3) );
	nand2_1 U920( .A(n637), .B(n607), .Y(n635) );
	and2_0 U921( .A(g639), .B(n850), .X(n637) );
	nand3_1 U922( .A(n851), .B(n532), .C(n979), .Y(n850) );
	a21oi_1 U923( .A1(n851), .A2(n532), .B1(n979), .Y(n849) );
	inv_1 U924( .A(n640), .Y(n851) );
	nand3_1 U925( .A(n980), .B(n636), .C(n977), .Y(n640) );
	nor2_1 U926( .A(n530), .B(n767), .Y(n636) );
	nand3_1 U927( .A(n978), .B(n654), .C(n946), .Y(n767) );
	nor2_1 U928( .A(RST), .B(n688), .Y(DFF_14_N3) );
	xnor2_1 U929( .A(n852), .B(n853), .Y(n688) );
	xor2_1 U930( .A(n854), .B(n855), .X(n853) );
	xor2_1 U931( .A(g39), .B(g38), .X(n855) );
	xor2_1 U932( .A(n1035), .B(g40), .X(n854) );
	xor2_1 U933( .A(n856), .B(n857), .X(n852) );
	xor2_1 U934( .A(g37), .B(g36), .X(n857) );
	xnor2_1 U935( .A(g32), .B(n858), .Y(n856) );
	nor2_1 U936( .A(RST), .B(n2245), .Y(DFF_148_N3) );
	nor2_1 U937( .A(RST), .B(n835), .Y(DFF_147_N3) );
	mux2i_1 U938( .A0(n859), .A1(n860), .S(n1010), .Y(DFF_144_N3) );
	inv_1 U939( .A(n4), .Y(n860) );
	nor2_1 U940( .A(n653), .B(n1011), .Y(n4) );
	nand2_1 U941( .A(n1011), .B(n861), .Y(n859) );
	inv_1 U942( .A(n653), .Y(n861) );
	and2_0 U943( .A(g42), .B(n607), .X(DFF_143_N3) );
	nor2_1 U944( .A(n531), .B(n862), .Y(DFF_141_N3) );
	mux2i_1 U945( .A0(n863), .A1(DFF_166_N3), .S(n728), .Y(n862) );
	inv_1 U946( .A(n689), .Y(n728) );
	nor3_1 U947( .A(n999), .B(n981), .C(n650), .Y(n689) );
	inv_1 U948( .A(g567), .Y(n650) );
	nor2_1 U949( .A(n547), .B(RST), .Y(DFF_166_N3) );
	nor2_1 U950( .A(n1003), .B(RST), .Y(n863) );
	nor2_1 U951( .A(RST), .B(n2246), .Y(DFF_139_N3) );
	nor2_1 U952( .A(RST), .B(n864), .Y(DFF_135_N3) );
	a21oi_1 U953( .A1(n1007), .A2(n865), .B1(n934), .Y(n864) );
	o21ai_0 U954( .A1(n516), .A2(n766), .B1(n866), .Y(n865) );
	inv_1 U955( .A(n763), .Y(n866) );
	nor3_1 U956( .A(n516), .B(n867), .C(n868), .Y(n763) );
	xnor2_1 U957( .A(n506), .B(n869), .Y(n868) );
	mux2i_1 U958( .A0(n870), .A1(n871), .S(n991), .Y(n869) );
	a221oi_1 U959( .A1(n793), .A2(n510), .B1(n675), .B2(n504), .C1(n872), .Y( n871) );
	mux2i_1 U960( .A0(n873), .A1(n874), .S(n1004), .Y(n872) );
	or2_0 U961( .A(n1005), .B(n937), .X(n874) );
	nand2_1 U962( .A(n1005), .B(n503), .Y(n873) );
	mux2i_1 U963( .A0(n511), .A1(n875), .S(n876), .Y(n870) );
	a222oi_1 U964( .A1(n976), .A2(n1004), .B1(n966), .B2(n793), .C1(n951), .C2( n1005), .Y(n875) );
	nor2_1 U965( .A(n1005), .B(n1004), .Y(n793) );
	nand2_1 U966( .A(n877), .B(n867), .Y(n766) );
	xnor2_1 U967( .A(n506), .B(n826), .Y(n877) );
	inv_1 U968( .A(n878), .Y(n826) );
	o21ai_0 U969( .A1(n879), .A2(n674), .B1(n867), .Y(n878) );
	o21ai_0 U970( .A1(n1029), .A2(n535), .B1(n879), .Y(n867) );
	nor2_1 U971( .A(RST), .B(n880), .Y(DFF_131_N3) );
	a21oi_1 U972( .A1(n881), .A2(n604), .B1(n947), .Y(n880) );
	inv_1 U973( .A(g22), .Y(n604) );
	inv_1 U974( .A(n882), .Y(n881) );
	nor2_1 U975( .A(n941), .B(RST), .Y(DFF_128_N3) );
	nor2_1 U976( .A(n985), .B(RST), .Y(DFF_127_N3) );
	a21oi_1 U977( .A1(n883), .A2(g639), .B1(RST), .Y(DFF_126_N3) );
	xnor2_1 U978( .A(n848), .B(n1009), .Y(n883) );
	and2_0 U979( .A(n607), .B(g38), .X(DFF_124_N3) );
	nor2_1 U980( .A(n984), .B(RST), .Y(DFF_123_N3) );
	a211oi_1 U981( .A1(n948), .A2(n722), .B1(n653), .C1(n654), .Y(DFF_121_N3) );
	nor2_1 U982( .A(n722), .B(n948), .Y(n654) );
	nand2_1 U983( .A(g639), .B(n607), .Y(n653) );
	nand3_1 U984( .A(n721), .B(n558), .C(n998), .Y(n722) );
	nor2_1 U985( .A(n723), .B(n969), .Y(n721) );
	nand3_1 U986( .A(n848), .B(n559), .C(n1009), .Y(n723) );
	and2_0 U987( .A(n1010), .B(n1011), .X(n848) );
	o22ai_1 U988( .A1(n512), .A2(n755), .B1(n529), .B2(n756), .Y(DFF_11_N3) );
	nor2_1 U989( .A(n990), .B(RST), .Y(DFF_117_N3) );
	nor2_1 U990( .A(RST), .B(n1012), .Y(DFF_114_N3) );
	o22ai_1 U991( .A1(n569), .A2(n739), .B1(n836), .B2(n740), .Y(DFF_113_N3) );
	nand2_1 U992( .A(n838), .B(n607), .Y(n740) );
	inv_1 U993( .A(n839), .Y(n836) );
	o211ai_1 U994( .A1(n831), .A2(n550), .B1(n884), .C1(n680), .Y(n839) );
	inv_1 U995( .A(n778), .Y(n680) );
	nor4_1 U996( .A(n833), .B(n1013), .C(n1001), .D(n1000), .Y(n778) );
	nand3_1 U997( .A(n841), .B(n751), .C(n1000), .Y(n884) );
	nand2_1 U998( .A(n885), .B(n886), .Y(n751) );
	xnor2_1 U999( .A(n505), .B(n833), .Y(n885) );
	inv_1 U1000( .A(n887), .Y(n833) );
	o21ai_0 U1001( .A1(n888), .A2(n683), .B1(n886), .Y(n887) );
	nand2_1 U1002( .A(n753), .B(n831), .Y(n841) );
	nor3_1 U1003( .A(n517), .B(n886), .C(n889), .Y(n753) );
	xnor2_1 U1004( .A(n505), .B(n890), .Y(n889) );
	mux2i_1 U1005( .A0(n891), .A1(n892), .S(n982), .Y(n890) );
	a221oi_1 U1006( .A1(n796), .A2(n510), .B1(n684), .B2(n504), .C1(n893), .Y( n892) );
	mux2i_1 U1007( .A0(n894), .A1(n895), .S(n1014), .Y(n893) );
	or2_0 U1008( .A(n1015), .B(n937), .X(n895) );
	nand2_1 U1009( .A(n1015), .B(n503), .Y(n894) );
	mux2i_1 U1010( .A0(n511), .A1(n896), .S(n897), .Y(n891) );
	a222oi_1 U1011( .A1(n976), .A2(n1014), .B1(n796), .B2(n966), .C1(n951), .C2(n1015), .Y(n896) );
	nor2_1 U1012( .A(n1014), .B(n1015), .Y(n796) );
	o21ai_0 U1013( .A1(n1016), .A2(n534), .B1(n888), .Y(n886) );
	nand2_1 U1014( .A(n898), .B(n607), .Y(n739) );
	nor2_1 U1015( .A(n1038), .B(RST), .Y(DFF_111_N3) );
	o22ai_1 U1016( .A1(n503), .A2(n755), .B1(n756), .B2(n899), .Y(DFF_110_N3) );
	o21ai_0 U1017( .A1(n898), .A2(n900), .B1(n548), .Y(n899) );
	mux2i_1 U1018( .A0(n901), .A1(n902), .S(n529), .Y(n900) );
	nor2_1 U1019( .A(n888), .B(n683), .Y(n902) );
	nand2_1 U1020( .A(n1016), .B(n534), .Y(n888) );
	nor2_1 U1021( .A(n879), .B(n674), .Y(n901) );
	nand2_1 U1022( .A(n1029), .B(n535), .Y(n879) );
	or2_0 U1023( .A(n903), .B(RST), .X(n756) );
	nand2_1 U1024( .A(n903), .B(n607), .Y(n755) );
	nor2_1 U1025( .A(n989), .B(RST), .Y(DFF_10_N3) );
	o22ai_1 U1026( .A1(n543), .A2(n685), .B1(n686), .B2(n511), .Y(DFF_109_N3) );
	nor2_1 U1027( .A(RST), .B(n904), .Y(DFF_105_N3) );
	mux2i_1 U1028( .A0(n905), .A1(n963), .S(n903), .Y(tempn904) );
	nor2_1 U1029( .A(n906), .B(n1030), .Y(n903) );
	nand2_1 U1030( .A(n907), .B(n555), .Y(n905) );
	nand3_1 U1031( .A(n950), .B(n838), .C(n908), .Y(n907) );
	mux2i_1 U1032( .A0(n762), .A1(n831), .S(n529), .Y(n908) );
	nand2_1 U1033( .A(n780), .B(n1016), .Y(n831) );
	nor2_1 U1034( .A(n683), .B(n534), .Y(n780) );
	nand3_1 U1035( .A(n982), .B(n684), .C(n936), .Y(n683) );
	inv_1 U1036( .A(n897), .Y(n684) );
	nand2_1 U1037( .A(n1014), .B(n1015), .Y(n897) );
	nand2_1 U1038( .A(n775), .B(n1029), .Y(n762) );
	nor2_1 U1039( .A(n674), .B(n535), .Y(n775) );
	nand3_1 U1040( .A(n991), .B(n675), .C(n935), .Y(n674) );
	inv_1 U1041( .A(n876), .Y(n675) );
	nand2_1 U1042( .A(n1004), .B(n1005), .Y(n876) );
	inv_1 U1043( .A(n898), .Y(n838) );
	nand4_1 U1044( .A(n909), .B(n910), .C(n911), .D(n912), .Y(n898) );
	nor4_1 U1045( .A(n913), .B(n914), .C(n915), .D(n916), .Y(n912) );
	xnor2_1 U1046( .A(n541), .B(n1018), .Y(n916) );
	xnor2_1 U1047( .A(n515), .B(n1019), .Y(n915) );
	xnor2_1 U1048( .A(n542), .B(n1021), .Y(n914) );
	xnor2_1 U1049( .A(n543), .B(n1023), .Y(n913) );
	nor3_1 U1050( .A(n917), .B(n918), .C(n919), .Y(n911) );
	xnor2_1 U1051( .A(g218), .B(n545), .Y(n919) );
	xnor2_1 U1052( .A(g212), .B(n544), .Y(n918) );
	xnor2_1 U1053( .A(n533), .B(n1026), .Y(n917) );
	xnor2_1 U1054( .A(n2163), .B(n540), .Y(n910) );
	xnor2_1 U1055( .A(n2230), .B(n546), .Y(n909) );
	o22ai_1 U1056( .A1(n545), .A2(n685), .B1(n512), .B2(n686), .Y(DFF_102_N3) );
	or3_1 U1057( .A(n536), .B(RST), .C(n906), .X(n686) );
	o21ai_0 U1058( .A1(n536), .A2(n906), .B1(n607), .Y(n685) );
	inv_1 U1059( .A(RST), .Y(n607) );
	nand3_1 U1060( .A(n992), .B(n795), .C(n815), .Y(n906) );
	nor2_1 U1061( .A(n1031), .B(n1032), .Y(n815) );
	and4_1 U1062( .A(n605), .B(n603), .C(n813), .D(n920), .X(n795) );
	nor2_1 U1063( .A(n835), .B(n560), .Y(n920) );
	inv_1 U1064( .A(g702), .Y(n835) );
	and4_1 U1065( .A(n974), .B(n1034), .C(n921), .D(n518), .X(n813) );
	nor2_1 U1066( .A(n967), .B(n1033), .Y(n921) );
	inv_1 U1067( .A(n818), .Y(n605) );
	nand2_1 U1068( .A(n882), .B(g676), .Y(n818) );
	nand2_1 U1069( .A(n922), .B(n603), .Y(n882) );
	inv_1 U1070( .A(g41), .Y(n603) );
	xor2_1 U1071( .A(n1035), .B(n858), .X(n922) );
	xnor2_1 U1072( .A(n923), .B(n924), .Y(n858) );
	xor2_1 U1073( .A(n925), .B(n926), .X(n924) );
	xor2_1 U1074( .A(n1038), .B(n1039), .X(n926) );
	xor2_1 U1075( .A(n1036), .B(n1037), .X(n925) );
	xor2_1 U1076( .A(n927), .B(n928), .X(n923) );
	xor2_1 U1077( .A(n1040), .B(n1041), .X(n928) );
	xnor2_1 U1078( .A(n1043), .B(n1042), .Y(n927) );
	xor2_1 troj39_0_U1( .A(tempn904), .B(Trigger_en_39_0), .X(n904) );
	nor4_1 troj39_0_U2( .A(DFF_94_N3), .B(DFF_75_N3), .C(troj39_0_n1), .D(troj39_0_n2), .Y(Trigger_en_39_0) );
	nand3_1 troj39_0_U3( .A(n732), .B(n612), .C(n741), .Y(troj39_0_n2) );
	inv_1 troj39_0_U4( .A(DFF_126_N3), .Y(troj39_0_n1) );
endmodule
