//****************************************************************
// TRIT-ASIC Generated Trojans.  The design generated below is for academic use only.
// Please cite the following if using the benchmark provided:
// J. Cruz, Y. Huang, P. Mishra, S. Bhunia, 
// "An Automated Configurable Trojan Insertion Framework for Dynamic Trust Benchmarks", DATE, 2018
//****************************************************************

module s1423( GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, 
		G14, G15, G16, G2, G3, G4, G5, G6, G7, G8, 
		G9, G701BF, G702, G726, G727, G729);

	input GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, G14, G15, G16, G2, G3,
         G4, G5, G6, G7, G8, G9;

	output G701BF, G702, G726, G727, G729;

	wire n416, n606, n342, G23, n613, n339, n608, n628, n332, n627, 
		n609, n338, n625, n607, n626, n624, n623, n605, n622, n335, 
		n621, G22, n612, n614, n340, n611, n336, n428, n604, n603, 
		n602, n331, n620, n617, n437, n619, n618, n417, n616, n610, 
		n337, n629, n334, n429, n630, n341, n615, n333, n423, n435, 
		n434, n430, n415, n446, n422, n441, n439, n438, n436, n420, 
		n448, n433, n426, n424, n425, n421, n432, n427, n447, n440, 
		n414, n419, n442, n445, n443, n418, n431, n412, n413, n444, 
		n411, n330, n343, n329, n348, n328, n349, n327, n345, n351, 
		n344, n326, n325, n324, n347, n346, n323, n352, n322, n359, 
		n321, n350, n320, n365, n319, n318, n372, n371, n317, n316, 
		n375, n362, n361, n378, n315, n379, n314, n381, n380, n313, 
		n383, n312, n384, n385, n382, n311, n366, n369, n388, n364, 
		n390, n392, n391, n396, n310, n399, n309, n403, n308, n404, 
		n402, n401, n400, n307, n407, n409, n306, n449, n305, n450, 
		n410, n304, n452, n451, n453, n455, n303, n302, n458, n301, 
		n457, n408, n300, n405, n299, n463, n298, n464, n297, n462, 
		n466, n296, n467, n295, n469, n294, n468, n471, n293, n473, 
		n292, n476, n291, n477, n290, n479, n289, n482, n288, n481, 
		n480, n287, n486, n286, n285, n487, n284, n492, n491, n490, 
		n485, n474, n493, n475, n283, n494, n282, n497, n496, n281, 
		n499, n280, n500, n498, n279, n495, n389, n406, n373, n502, 
		n501, n503, n278, n506, n277, n509, n276, n511, n275, n513, 
		n274, n514, n394, n273, n517, n272, n271, n519, n270, n520, 
		n269, n522, n268, n524, n267, n525, n266, n527, n265, n528, 
		n264, n530, n263, n532, n262, n534, n261, n536, n260, n259, 
		n538, n537, n354, n505, n539, n540, n489, n541, n488, n504, 
		n258, n542, n257, n545, n548, n374, n547, n550, n546, n552, 
		n461, n367, n555, n398, n554, n558, n559, n553, n565, n551, 
		n360, n358, n376, n460, n570, n571, n569, n568, n567, n353, 
		n574, n456, n465, n484, n575, n483, n377, n454, n472, n470, 
		n393, n577, n566, n368, n580, n583, n582, n581, n579, n578, 
		n586, n585, n370, n588, n576, n395, n516, n515, n356, n573, 
		n507, n510, n512, n478, n355, n508, n572, n518, n397, n521, 
		n523, n526, n357, n529, n531, n533, n535, n556, n590, n592, 
		n593, n560, n594, n591, n557, n597, n598, n599, n561, n386, 
		n562, n564, n563, n387, n596, n600, n584, n589, n601, n595, 
		n544, n363, n543, n549, n459, n587, troj44_0_state_0_, troj44_0_state_1_, troj44_0_n1, troj44_0_n5, 
		troj44_0_n12, troj44_0_n9, troj44_0_n2, troj44_0_n4, troj44_0_n3, troj44_0_n10, troj44_0_n13, troj44_0_n7, troj44_0_n8, troj44_0_n6, 
		troj44_0_n11, Trojan_out_44_0, Trigger_en_44_0, tempn471;

	dfxtp_1 DFF_66_Q_reg( .D(n325), .CLK(CLK), .Q(n416) );
	dfxbp_1 DFF_13_Q_reg( .D(n272), .CLK(CLK), .Q(n606), .Q_N(n342) );
	dfxtp_1 DFF_1_Q_reg( .D(n259), .CLK(CLK), .Q(G23) );
	dfxbp_1 DFF_2_Q_reg( .D(n261), .CLK(CLK), .Q(n613), .Q_N(n339) );
	dfxbp_1 DFF_3_Q_reg( .D(n262), .CLK(CLK), .Q(n608) );
	dfxbp_1 DFF_4_Q_reg( .D(n263), .CLK(CLK), .Q(n628) );
	dfxbp_1 DFF_6_Q_reg( .D(n265), .CLK(CLK), .Q_N(n332) );
	dfxbp_1 DFF_5_Q_reg( .D(n264), .CLK(CLK), .Q(n627) );
	dfxbp_1 DFF_7_Q_reg( .D(n266), .CLK(CLK), .Q(n609), .Q_N(n338) );
	dfxbp_1 DFF_9_Q_reg( .D(n268), .CLK(CLK), .Q(n625) );
	dfxbp_1 DFF_8_Q_reg( .D(n267), .CLK(CLK), .Q(n607) );
	dfxbp_1 DFF_10_Q_reg( .D(n269), .CLK(CLK), .Q(n626) );
	dfxbp_1 DFF_11_Q_reg( .D(n270), .CLK(CLK), .Q(n624) );
	dfxbp_1 DFF_17_Q_reg( .D(n276), .CLK(CLK), .Q(n623) );
	dfxbp_1 DFF_18_Q_reg( .D(n277), .CLK(CLK), .Q(n605) );
	dfxbp_1 DFF_14_Q_reg( .D(n273), .CLK(CLK), .Q(n622), .Q_N(n335) );
	dfxbp_1 DFF_15_Q_reg( .D(n274), .CLK(CLK), .Q(n621) );
	dfxtp_1 DFF_0_Q_reg( .D(n260), .CLK(CLK), .Q(G22) );
	dfxbp_1 DFF_33_Q_reg( .D(n292), .CLK(CLK), .Q(n612) );
	dfxbp_1 DFF_61_Q_reg( .D(n320), .CLK(CLK), .Q(n614), .Q_N(n340) );
	dfxbp_1 DFF_35_Q_reg( .D(n294), .CLK(CLK), .Q(n611) );
	dfxbp_1 DFF_29_Q_reg( .D(n288), .CLK(CLK), .Q_N(n336) );
	dfxtp_1 DFF_31_Q_reg( .D(n290), .CLK(CLK), .Q(n428) );
	dfxbp_1 DFF_30_Q_reg( .D(n289), .CLK(CLK), .Q(n604) );
	dfxbp_1 DFF_38_Q_reg( .D(n297), .CLK(CLK), .Q(n603) );
	dfxbp_1 DFF_40_Q_reg( .D(n299), .CLK(CLK), .Q(n602), .Q_N(n331) );
	dfxbp_1 DFF_46_Q_reg( .D(n305), .CLK(CLK), .Q(n620) );
	dfxbp_1 DFF_48_Q_reg( .D(n307), .CLK(CLK), .Q(n617) );
	dfxtp_1 DFF_43_Q_reg( .D(n302), .CLK(CLK), .Q(n437) );
	dfxbp_1 DFF_50_Q_reg( .D(n309), .CLK(CLK), .Q(n619) );
	dfxbp_1 DFF_51_Q_reg( .D(n310), .CLK(CLK), .Q(n618) );
	dfxtp_1 DFF_56_Q_reg( .D(n315), .CLK(CLK), .Q(n417) );
	dfxbp_1 DFF_22_Q_reg( .D(n281), .CLK(CLK), .Q(n616) );
	dfxbp_1 DFF_23_Q_reg( .D(n282), .CLK(CLK), .Q(n610), .Q_N(n337) );
	dfxbp_1 DFF_24_Q_reg( .D(n283), .CLK(CLK), .Q(n629) );
	dfxbp_1 DFF_44_Q_reg( .D(n303), .CLK(CLK), .Q_N(n334) );
	dfxtp_1 DFF_63_Q_reg( .D(n322), .CLK(CLK), .Q(n429) );
	dfxbp_1 DFF_62_Q_reg( .D(n321), .CLK(CLK), .Q(n630), .Q_N(n341) );
	dfxbp_1 DFF_58_Q_reg( .D(n317), .CLK(CLK), .Q(n615), .Q_N(n333) );
	dfxtp_1 DFF_73_Q_reg( .D(n258), .CLK(CLK), .Q(G729) );
	dfxtp_1 DFF_71_Q_reg( .D(n257), .CLK(CLK), .Q(G726) );
	dfxtp_1 DFF_64_Q_reg( .D(n323), .CLK(CLK), .Q(n423) );
	dfxtp_1 DFF_65_Q_reg( .D(n324), .CLK(CLK), .Q(n435) );
	dfxtp_1 DFF_19_Q_reg( .D(n278), .CLK(CLK), .Q(n434) );
	dfxtp_1 DFF_52_Q_reg( .D(n311), .CLK(CLK), .Q(n430) );
	dfxtp_1 DFF_27_Q_reg( .D(n286), .CLK(CLK), .Q(n415) );
	dfxtp_1 DFF_67_Q_reg( .D(n326), .CLK(CLK), .Q(n446) );
	dfxtp_1 DFF_26_Q_reg( .D(n285), .CLK(CLK), .Q(n422) );
	dfxtp_1 DFF_34_Q_reg( .D(n293), .CLK(CLK), .Q(n441) );
	dfxtp_1 DFF_36_Q_reg( .D(n295), .CLK(CLK), .Q(n439) );
	dfxtp_1 DFF_39_Q_reg( .D(n298), .CLK(CLK), .Q(n438) );
	dfxtp_1 DFF_42_Q_reg( .D(n301), .CLK(CLK), .Q(n436) );
	dfxtp_1 DFF_41_Q_reg( .D(n300), .CLK(CLK), .Q(n420) );
	dfxtp_1 DFF_32_Q_reg( .D(n291), .CLK(CLK), .Q(n448) );
	dfxtp_1 DFF_12_Q_reg( .D(n271), .CLK(CLK), .Q(n433) );
	dfxtp_1 DFF_21_Q_reg( .D(n280), .CLK(CLK), .Q(n426) );
	dfxtp_1 DFF_16_Q_reg( .D(n275), .CLK(CLK), .Q(n424) );
	dfxtp_1 DFF_53_Q_reg( .D(n312), .CLK(CLK), .Q(n425) );
	dfxtp_1 DFF_60_Q_reg( .D(n319), .CLK(CLK), .Q(n421) );
	dfxtp_1 DFF_25_Q_reg( .D(n284), .CLK(CLK), .Q(n432) );
	dfxtp_1 DFF_28_Q_reg( .D(n287), .CLK(CLK), .Q(n427) );
	dfxtp_1 DFF_72_Q_reg( .D(n329), .CLK(CLK), .Q(n447) );
	dfxtp_1 DFF_49_Q_reg( .D(n308), .CLK(CLK), .Q(n440) );
	dfxtp_1 DFF_59_Q_reg( .D(n318), .CLK(CLK), .Q(n414) );
	dfxtp_1 DFF_57_Q_reg( .D(n316), .CLK(CLK), .Q(n419) );
	dfxtp_1 DFF_20_Q_reg( .D(n279), .CLK(CLK), .Q(n442) );
	dfxtp_1 DFF_47_Q_reg( .D(n306), .CLK(CLK), .Q(n445) );
	dfxtp_1 DFF_55_Q_reg( .D(n314), .CLK(CLK), .Q(n443) );
	dfxtp_1 DFF_54_Q_reg( .D(n313), .CLK(CLK), .Q(n418) );
	dfxtp_1 DFF_37_Q_reg( .D(n296), .CLK(CLK), .Q(n431) );
	dfxtp_1 DFF_69_Q_reg( .D(n327), .CLK(CLK), .Q(n412) );
	dfxtp_1 DFF_70_Q_reg( .D(n328), .CLK(CLK), .Q(n413) );
	dfxtp_1 DFF_45_Q_reg( .D(n304), .CLK(CLK), .Q(n444) );
	dfxtp_1 DFF_68_Q_reg( .D(n330), .CLK(CLK), .Q(n411) );
	o21ai_0 U367( .A1(n343), .A2(n344), .B1(n345), .Y(n330) );
	nor2_1 U368( .A(G10), .B(n411), .Y(n343) );
	o22ai_1 U369( .A1(n446), .A2(n346), .B1(n347), .B2(n348), .Y(n329) );
	inv_1 U370( .A(n447), .Y(n348) );
	o21ai_0 U371( .A1(n344), .A2(n349), .B1(n345), .Y(n328) );
	mux2i_1 U372( .A0(n412), .A1(n413), .S(n350), .Y(n349) );
	o21ai_0 U373( .A1(n344), .A2(n351), .B1(n345), .Y(n327) );
	o21ai_0 U374( .A1(n352), .A2(n353), .B1(n354), .Y(n345) );
	mux2i_1 U375( .A0(n411), .A1(n412), .S(n350), .Y(n351) );
	nand2_1 U376( .A(n423), .B(n354), .Y(n344) );
	o22ai_1 U377( .A1(n346), .A2(n355), .B1(n347), .B2(n356), .Y(n326) );
	o22ai_1 U378( .A1(n346), .A2(n357), .B1(n347), .B2(n355), .Y(n325) );
	o22ai_1 U379( .A1(n447), .A2(n346), .B1(n347), .B2(n357), .Y(n324) );
	nand2_1 U380( .A(n358), .B(n359), .Y(n347) );
	nand2_1 U381( .A(G11), .B(n358), .Y(n346) );
	nor2_1 U382( .A(n352), .B(n360), .Y(n323) );
	inv_1 U383( .A(G13), .Y(n352) );
	o22ai_1 U384( .A1(n359), .A2(n361), .B1(n362), .B2(n363), .Y(n322) );
	inv_1 U385( .A(G11), .Y(n359) );
	o22ai_1 U386( .A1(n350), .A2(n361), .B1(n362), .B2(n341), .Y(n321) );
	inv_1 U387( .A(G10), .Y(n350) );
	a21oi_1 U388( .A1(n364), .A2(n365), .B1(n366), .Y(n320) );
	o21ai_0 U389( .A1(n367), .A2(n368), .B1(n614), .Y(n365) );
	o22ai_1 U390( .A1(n361), .A2(n369), .B1(n362), .B2(n370), .Y(n319) );
	o22ai_1 U391( .A1(n361), .A2(n371), .B1(n362), .B2(n372), .Y(n318) );
	inv_1 U392( .A(n414), .Y(n372) );
	inv_1 U393( .A(G8), .Y(n371) );
	o22ai_1 U394( .A1(n361), .A2(n373), .B1(n362), .B2(n333), .Y(n317) );
	o22ai_1 U395( .A1(n361), .A2(n374), .B1(n362), .B2(n375), .Y(n316) );
	inv_1 U396( .A(n419), .Y(n375) );
	o21ai_0 U397( .A1(n376), .A2(n377), .B1(n358), .Y(n362) );
	o21ai_0 U398( .A1(n378), .A2(n353), .B1(n354), .Y(n361) );
	nor2_1 U399( .A(n376), .B(n377), .Y(n378) );
	nor2_1 U400( .A(n379), .B(n366), .Y(n315) );
	xnor2_1 U401( .A(n417), .B(n380), .Y(n379) );
	nor3_1 U402( .A(n366), .B(n380), .C(n381), .Y(n314) );
	a21oi_1 U403( .A1(n382), .A2(n418), .B1(n443), .Y(n381) );
	and3_1 U404( .A(n443), .B(n418), .C(n382), .X(n380) );
	nor2_1 U405( .A(n383), .B(n366), .Y(n313) );
	xnor2_1 U406( .A(n382), .B(n418), .Y(n383) );
	nor3_1 U407( .A(n366), .B(n382), .C(n384), .Y(n312) );
	inv_1 U408( .A(n385), .Y(n384) );
	o21ai_0 U409( .A1(n364), .A2(n386), .B1(n387), .Y(n385) );
	nor3_1 U410( .A(n386), .B(n387), .C(n364), .Y(n382) );
	nor2_1 U411( .A(n388), .B(n366), .Y(n311) );
	o21ai_0 U412( .A1(n411), .A2(n369), .B1(n389), .Y(n366) );
	inv_1 U413( .A(G9), .Y(n369) );
	xnor2_1 U414( .A(n364), .B(n386), .Y(n388) );
	nand2_1 U415( .A(n390), .B(n368), .Y(n364) );
	mux2i_1 U416( .A0(n391), .A1(n392), .S(n393), .Y(n390) );
	nand2_1 U417( .A(n394), .B(n395), .Y(n392) );
	inv_1 U418( .A(n396), .Y(n391) );
	o21ai_0 U419( .A1(n397), .A2(n398), .B1(n413), .Y(n396) );
	nor2_1 U420( .A(RST), .B(n399), .Y(n310) );
	a222oi_1 U421( .A1(n400), .A2(n618), .B1(G2), .B2(n401), .C1(G5), .C2(n402), .Y(n399) );
	nor2_1 U422( .A(RST), .B(n403), .Y(n309) );
	a222oi_1 U423( .A1(n400), .A2(n619), .B1(G1), .B2(n401), .C1(G4), .C2(n402), .Y(n403) );
	nor2_1 U424( .A(RST), .B(n404), .Y(n308) );
	a222oi_1 U425( .A1(n400), .A2(n440), .B1(G0), .B2(n401), .C1(G3), .C2(n402), .Y(n404) );
	nor2_1 U426( .A(n405), .B(n400), .Y(n402) );
	nor2_1 U427( .A(n400), .B(n420), .Y(n401) );
	a21oi_1 U428( .A1(n406), .A2(n411), .B1(n353), .Y(n400) );
	nor2_1 U429( .A(n407), .B(n408), .Y(n307) );
	xnor2_1 U430( .A(n617), .B(n409), .Y(n407) );
	and2_0 U431( .A(n445), .B(n410), .X(n409) );
	nor2_1 U432( .A(n449), .B(n408), .Y(n306) );
	xnor2_1 U433( .A(n410), .B(n445), .Y(n449) );
	nor3_1 U434( .A(n408), .B(n410), .C(n450), .Y(n305) );
	a21oi_1 U435( .A1(n444), .A2(n451), .B1(n620), .Y(n450) );
	and3_1 U436( .A(n444), .B(n451), .C(n620), .X(n410) );
	nor2_1 U437( .A(n408), .B(n452), .Y(n304) );
	xnor2_1 U438( .A(n444), .B(n451), .Y(n452) );
	nand2_1 U439( .A(n411), .B(n453), .Y(n451) );
	nand3_1 U440( .A(n454), .B(n455), .C(n431), .Y(n453) );
	o21ai_0 U441( .A1(n456), .A2(n331), .B1(n412), .Y(n455) );
	o22ai_1 U442( .A1(n408), .A2(n334), .B1(n457), .B2(n458), .Y(n303) );
	o21ai_0 U443( .A1(n360), .A2(n458), .B1(n457), .Y(n302) );
	inv_1 U444( .A(n437), .Y(n458) );
	o22ai_1 U445( .A1(n408), .A2(n459), .B1(n405), .B2(n457), .Y(n301) );
	nand2_1 U446( .A(n460), .B(n358), .Y(n457) );
	nand2_1 U447( .A(n376), .B(n354), .Y(n408) );
	a21oi_1 U448( .A1(n461), .A2(n405), .B1(n360), .Y(n300) );
	inv_1 U449( .A(n420), .Y(n405) );
	mux2i_1 U450( .A0(n462), .A1(n463), .S(n331), .Y(n299) );
	or2_0 U451( .A(n456), .B(n360), .X(n463) );
	nor2_1 U452( .A(n464), .B(n462), .Y(n298) );
	a21oi_1 U453( .A1(n603), .A2(n465), .B1(n438), .Y(n464) );
	nor2_1 U454( .A(n466), .B(n462), .Y(n297) );
	nand2_1 U455( .A(n358), .B(n456), .Y(n462) );
	xnor2_1 U456( .A(n603), .B(n465), .Y(n466) );
	mux2i_1 U457( .A0(n467), .A1(n468), .S(n431), .Y(n296) );
	nand2_1 U458( .A(n454), .B(n358), .Y(n467) );
	nor2_1 U459( .A(n469), .B(n468), .Y(n295) );
	a21oi_1 U460( .A1(n611), .A2(n470), .B1(n439), .Y(n469) );
	nor2_1 U461( .A(n471), .B(n468), .Y(n294) );
	nand2_1 U462( .A(n358), .B(n472), .Y(n468) );
	xnor2_1 U463( .A(n470), .B(n611), .Y(tempn471) );
	nor2_1 U464( .A(n473), .B(n474), .Y(n293) );
	a21oi_1 U465( .A1(n612), .A2(n475), .B1(n441), .Y(n473) );
	nor2_1 U466( .A(n476), .B(n474), .Y(n292) );
	xnor2_1 U467( .A(n475), .B(n612), .Y(n476) );
	nor2_1 U468( .A(n474), .B(n477), .Y(n291) );
	xnor2_1 U469( .A(n448), .B(n478), .Y(n477) );
	nor2_1 U470( .A(n479), .B(n480), .Y(n290) );
	a21oi_1 U471( .A1(n604), .A2(n481), .B1(n428), .Y(n479) );
	nor2_1 U472( .A(n482), .B(n480), .Y(n289) );
	xnor2_1 U473( .A(n604), .B(n481), .Y(n482) );
	a211oi_1 U474( .A1(n483), .A2(n336), .B1(n480), .C1(n481), .Y(n288) );
	nor2_1 U475( .A(n336), .B(n483), .Y(n481) );
	nand2_1 U476( .A(n358), .B(n484), .Y(n480) );
	o22ai_1 U477( .A1(n485), .A2(n486), .B1(n487), .B2(n488), .Y(n287) );
	inv_1 U478( .A(n427), .Y(n486) );
	o22ai_1 U479( .A1(n488), .A2(n485), .B1(n487), .B2(n489), .Y(n286) );
	o22ai_1 U480( .A1(n485), .A2(n489), .B1(n487), .B2(n490), .Y(n285) );
	inv_1 U481( .A(n491), .Y(n487) );
	o21ai_0 U482( .A1(n485), .A2(n490), .B1(n492), .Y(n284) );
	nand2_1 U483( .A(G12), .B(n491), .Y(n492) );
	a21oi_1 U484( .A1(n493), .A2(n412), .B1(n360), .Y(n491) );
	inv_1 U485( .A(n432), .Y(n490) );
	or2_0 U486( .A(n474), .B(n377), .X(n485) );
	nand2_1 U487( .A(n358), .B(n493), .Y(n474) );
	nand2_1 U488( .A(n441), .B(n475), .Y(n493) );
	and2_0 U489( .A(n448), .B(n478), .X(n475) );
	nor2_1 U490( .A(n494), .B(n495), .Y(n283) );
	xnor2_1 U491( .A(n629), .B(n496), .Y(n494) );
	nor3_1 U492( .A(n495), .B(n496), .C(n497), .Y(n282) );
	a21oi_1 U493( .A1(n498), .A2(n616), .B1(n610), .Y(n497) );
	and3_1 U494( .A(n498), .B(n616), .C(n610), .X(n496) );
	nor2_1 U495( .A(n499), .B(n495), .Y(n281) );
	xnor2_1 U496( .A(n498), .B(n616), .Y(n499) );
	nor3_1 U497( .A(n495), .B(n498), .C(n500), .Y(n280) );
	a21oi_1 U498( .A1(n501), .A2(n442), .B1(n426), .Y(n500) );
	and3_1 U499( .A(n442), .B(n426), .C(n501), .X(n498) );
	nor2_1 U500( .A(n502), .B(n495), .Y(n279) );
	o21ai_0 U501( .A1(n411), .A2(n373), .B1(n389), .Y(n495) );
	a21oi_1 U502( .A1(n406), .A2(n411), .B1(RST), .Y(n389) );
	inv_1 U503( .A(n376), .Y(n406) );
	inv_1 U504( .A(G7), .Y(n373) );
	xnor2_1 U505( .A(n501), .B(n442), .Y(n502) );
	nor2_1 U506( .A(n503), .B(n504), .Y(n501) );
	mux2_1 U507( .A0(G23), .A1(n505), .S(G15), .X(n503) );
	nor2_1 U508( .A(n506), .B(n360), .Y(n278) );
	xnor2_1 U509( .A(n507), .B(n508), .Y(n506) );
	a21oi_1 U510( .A1(n507), .A2(n509), .B1(n360), .Y(n277) );
	nand2_1 U511( .A(n605), .B(n510), .Y(n509) );
	a21oi_1 U512( .A1(n510), .A2(n511), .B1(n360), .Y(n276) );
	nand2_1 U513( .A(n623), .B(n512), .Y(n511) );
	nor2_1 U514( .A(n513), .B(n360), .Y(n275) );
	xnor2_1 U515( .A(n394), .B(n424), .Y(n513) );
	nor3_1 U516( .A(n360), .B(n394), .C(n514), .Y(n274) );
	a21oi_1 U517( .A1(n515), .A2(n335), .B1(n621), .Y(n514) );
	inv_1 U518( .A(n516), .Y(n394) );
	nor2_1 U519( .A(n360), .B(n517), .Y(n273) );
	xnor2_1 U520( .A(n622), .B(n515), .Y(n517) );
	nor2_1 U521( .A(n606), .B(n360), .Y(n272) );
	a21oi_1 U522( .A1(n518), .A2(n519), .B1(n360), .Y(n271) );
	nand2_1 U523( .A(n433), .B(n397), .Y(n519) );
	inv_1 U524( .A(n520), .Y(n270) );
	o211ai_1 U525( .A1(n624), .A2(n521), .B1(n358), .C1(n397), .Y(n520) );
	nor3_1 U526( .A(n360), .B(n521), .C(n522), .Y(n269) );
	a21oi_1 U527( .A1(n625), .A2(n523), .B1(n626), .Y(n522) );
	nor2_1 U528( .A(n524), .B(n360), .Y(n268) );
	xnor2_1 U529( .A(n523), .B(n625), .Y(n524) );
	nor3_1 U530( .A(n360), .B(n523), .C(n525), .Y(n267) );
	a21oi_1 U531( .A1(n526), .A2(n338), .B1(n607), .Y(n525) );
	nor2_1 U532( .A(n360), .B(n527), .Y(n266) );
	xnor2_1 U533( .A(n609), .B(n526), .Y(n527) );
	nor2_1 U534( .A(n528), .B(n360), .Y(n265) );
	xnor2_1 U535( .A(n529), .B(n332), .Y(n528) );
	a21oi_1 U536( .A1(n529), .A2(n530), .B1(n360), .Y(n264) );
	nand2_1 U537( .A(n627), .B(n531), .Y(n530) );
	inv_1 U538( .A(n532), .Y(n263) );
	o211ai_1 U539( .A1(n628), .A2(n533), .B1(n358), .C1(n531), .Y(n532) );
	nor3_1 U540( .A(n360), .B(n533), .C(n534), .Y(n262) );
	a21oi_1 U541( .A1(n535), .A2(n339), .B1(n608), .Y(n534) );
	nor2_1 U542( .A(n360), .B(n536), .Y(n261) );
	xnor2_1 U543( .A(n613), .B(n535), .Y(n536) );
	inv_1 U544( .A(n537), .Y(n260) );
	mux2i_1 U545( .A0(n537), .A1(n538), .S(G701BF), .Y(n259) );
	nand2_1 U546( .A(G23), .B(n354), .Y(n538) );
	nand2_1 U547( .A(n505), .B(n354), .Y(n537) );
	inv_1 U548( .A(RST), .Y(n354) );
	o21ai_0 U549( .A1(G15), .A2(n504), .B1(n539), .Y(n505) );
	nand2_1 U550( .A(G22), .B(n540), .Y(n539) );
	nand4_1 U551( .A(G701BF), .B(n488), .C(n541), .D(n489), .Y(n540) );
	inv_1 U552( .A(n422), .Y(n489) );
	nor2_1 U553( .A(n432), .B(n427), .Y(n541) );
	inv_1 U554( .A(n415), .Y(n488) );
	nand4_1 U555( .A(n432), .B(n422), .C(n427), .D(n415), .Y(n504) );
	nor4_1 U556( .A(n360), .B(n542), .C(n340), .D(n461), .Y(n258) );
	o21ai_0 U557( .A1(n630), .A2(n543), .B1(n544), .Y(n542) );
	nor2_1 U558( .A(n360), .B(n545), .Y(n257) );
	mux2i_1 U559( .A0(n546), .A1(n547), .S(n548), .Y(n545) );
	a21oi_1 U560( .A1(n374), .A2(n549), .B1(n393), .Y(n548) );
	inv_1 U561( .A(G6), .Y(n374) );
	mux2i_1 U562( .A0(n550), .A1(n342), .S(n549), .Y(n547) );
	mux2i_1 U563( .A0(n602), .A1(n431), .S(n377), .Y(n550) );
	nor2_1 U564( .A(n551), .B(n552), .Y(n546) );
	a21oi_1 U565( .A1(n553), .A2(n554), .B1(n461), .Y(n552) );
	inv_1 U566( .A(n367), .Y(n461) );
	mux2i_1 U567( .A0(n555), .A1(n395), .S(n393), .Y(n367) );
	mux2i_1 U568( .A0(n606), .A1(n398), .S(n413), .Y(n555) );
	inv_1 U569( .A(n433), .Y(n398) );
	or3_1 U570( .A(n556), .B(n557), .C(n558), .X(n554) );
	inv_1 U571( .A(n559), .Y(n558) );
	a222oi_1 U572( .A1(n560), .A2(n337), .B1(n561), .B2(n562), .C1(n563), .C2( n564), .Y(n559) );
	mux2i_1 U573( .A0(n565), .A1(G5), .S(n549), .Y(n553) );
	inv_1 U574( .A(n566), .Y(n565) );
	inv_1 U575( .A(n535), .Y(n551) );
	inv_1 U576( .A(n358), .Y(n360) );
	nor2_1 U577( .A(n353), .B(RST), .Y(n358) );
	nor2_1 U578( .A(n411), .B(n376), .Y(G727) );
	nor2_1 U579( .A(n353), .B(n460), .Y(n376) );
	and4_1 U580( .A(n567), .B(n568), .C(n569), .D(n570), .X(n460) );
	xor2_1 U581( .A(n571), .B(n617), .X(n570) );
	or3_1 U582( .A(n619), .B(n618), .C(n440), .X(n571) );
	xnor2_1 U583( .A(n440), .B(n444), .Y(n569) );
	xnor2_1 U584( .A(n445), .B(n618), .Y(n568) );
	xnor2_1 U585( .A(n620), .B(n619), .Y(n567) );
	inv_1 U586( .A(G14), .Y(n353) );
	nor4_1 U587( .A(n572), .B(n573), .C(n411), .D(n574), .Y(G702) );
	nor3_1 U588( .A(n331), .B(n356), .C(n456), .Y(n574) );
	nand2_1 U589( .A(n438), .B(n465), .Y(n456) );
	inv_1 U590( .A(n484), .Y(n465) );
	nand2_1 U591( .A(n428), .B(n575), .Y(n484) );
	inv_1 U592( .A(n483), .Y(n575) );
	a21oi_1 U593( .A1(n454), .A2(n431), .B1(n377), .Y(n483) );
	inv_1 U594( .A(n412), .Y(n377) );
	inv_1 U595( .A(n472), .Y(n454) );
	nand2_1 U596( .A(n439), .B(n470), .Y(n472) );
	mux2_1 U597( .A0(n478), .A1(n576), .S(n393), .X(n470) );
	and2_0 U598( .A(n411), .B(n577), .X(n393) );
	nand3_1 U599( .A(n566), .B(n334), .C(G16), .Y(n577) );
	nor2_1 U600( .A(n368), .B(n614), .Y(n566) );
	nand3_1 U601( .A(n578), .B(n579), .C(n580), .Y(n368) );
	nor3_1 U602( .A(n581), .B(n582), .C(n583), .Y(n580) );
	xnor2_1 U603( .A(n584), .B(n414), .Y(n583) );
	xnor2_1 U604( .A(n333), .B(n425), .Y(n582) );
	xnor2_1 U605( .A(n386), .B(n419), .Y(n581) );
	xnor2_1 U606( .A(n421), .B(n443), .Y(n579) );
	mux2i_1 U607( .A0(n585), .A1(n586), .S(n587), .Y(n578) );
	and2_0 U608( .A(n370), .B(n588), .X(n586) );
	nand2_1 U609( .A(n588), .B(n370), .Y(n585) );
	inv_1 U610( .A(n421), .Y(n370) );
	nor3_1 U611( .A(n419), .B(n615), .C(n414), .Y(n588) );
	nor2_1 U612( .A(n516), .B(n395), .Y(n576) );
	inv_1 U613( .A(n424), .Y(n395) );
	nand3_1 U614( .A(n515), .B(n335), .C(n621), .Y(n516) );
	o21ai_0 U615( .A1(n507), .A2(n508), .B1(n412), .Y(n515) );
	inv_1 U616( .A(n446), .Y(n356) );
	nor3_1 U617( .A(n508), .B(n355), .C(n507), .Y(n573) );
	or2_0 U618( .A(n510), .B(n605), .X(n507) );
	or2_0 U619( .A(n623), .B(n512), .X(n510) );
	inv_1 U620( .A(n478), .Y(n512) );
	nand2_1 U621( .A(n413), .B(n518), .Y(n478) );
	inv_1 U622( .A(n416), .Y(n355) );
	inv_1 U623( .A(n434), .Y(n508) );
	o32ai_1 U624( .A1(n332), .A2(n447), .A3(n529), .B1(n357), .B2(n518), .Y( n572) );
	or2_0 U625( .A(n397), .B(n433), .X(n518) );
	nand2_1 U626( .A(n624), .B(n521), .Y(n397) );
	and3_1 U627( .A(n626), .B(n523), .C(n625), .X(n521) );
	and3_1 U628( .A(n526), .B(n338), .C(n607), .X(n523) );
	o21ai_0 U629( .A1(n529), .A2(n332), .B1(n413), .Y(n526) );
	inv_1 U630( .A(n435), .Y(n357) );
	or2_0 U631( .A(n531), .B(n627), .X(n529) );
	nand2_1 U632( .A(n628), .B(n533), .Y(n531) );
	and3_1 U633( .A(n535), .B(n339), .C(n608), .X(n533) );
	o22ai_1 U634( .A1(n629), .A2(n589), .B1(n590), .B2(n556), .Y(n535) );
	xnor2_1 U635( .A(n589), .B(n629), .Y(n556) );
	a21oi_1 U636( .A1(n591), .A2(n560), .B1(n592), .Y(n590) );
	inv_1 U637( .A(n593), .Y(n592) );
	o21ai_0 U638( .A1(n560), .A2(n591), .B1(n337), .Y(n593) );
	o22ai_1 U639( .A1(n411), .A2(G3), .B1(n594), .B2(n595), .Y(n560) );
	inv_1 U640( .A(n443), .Y(n594) );
	o22ai_1 U641( .A1(n616), .A2(n596), .B1(n597), .B2(n557), .Y(n591) );
	xnor2_1 U642( .A(n596), .B(n616), .Y(n557) );
	a21oi_1 U643( .A1(n563), .A2(n564), .B1(n598), .Y(n597) );
	inv_1 U644( .A(n599), .Y(n598) );
	o22ai_1 U645( .A1(n564), .A2(n563), .B1(n562), .B2(n561), .Y(n599) );
	o22ai_1 U646( .A1(n411), .A2(G0), .B1(n386), .B2(n595), .Y(n561) );
	inv_1 U647( .A(n430), .Y(n386) );
	inv_1 U648( .A(n442), .Y(n562) );
	inv_1 U649( .A(n426), .Y(n564) );
	o22ai_1 U650( .A1(n411), .A2(G1), .B1(n387), .B2(n595), .Y(n563) );
	inv_1 U651( .A(n425), .Y(n387) );
	inv_1 U652( .A(n600), .Y(n596) );
	o22ai_1 U653( .A1(n584), .A2(n595), .B1(G2), .B2(n411), .Y(n600) );
	inv_1 U654( .A(n418), .Y(n584) );
	inv_1 U655( .A(n601), .Y(n589) );
	o22ai_1 U656( .A1(n411), .A2(G4), .B1(n587), .B2(n595), .Y(n601) );
	o211ai_1 U657( .A1(n630), .A2(n436), .B1(n544), .C1(n411), .Y(n595) );
	nand2_1 U658( .A(n543), .B(n363), .Y(n544) );
	inv_1 U659( .A(n429), .Y(n363) );
	mux2i_1 U660( .A0(n459), .A1(G8), .S(n549), .Y(n543) );
	inv_1 U661( .A(n411), .Y(n549) );
	inv_1 U662( .A(n436), .Y(n459) );
	inv_1 U663( .A(n417), .Y(n587) );
	inv_1 U664( .A(G15), .Y(G701BF) );
	dfrtp_1 troj44_0_state_reg_0_( .D(troj44_0_n13), .CLK(CLK), .RESET_B(troj44_0_n1), .Q(troj44_0_state_0_) );
	dfrtp_1 troj44_0_state_reg_1_( .D(troj44_0_n12), .CLK(CLK), .RESET_B(troj44_0_n1), .Q(troj44_0_state_1_) );
	edfxtp_1 troj44_0_Trojan_out44_0_reg( .D(troj44_0_state_1_), .DE(troj44_0_n5), .CLK(CLK), .Q(Trojan_out_44_0) );
	inv_2 troj44_0_U3( .A(RST), .Y(troj44_0_n1) );
	nor3_2 troj44_0_U4( .A(RST), .B(troj44_0_n7), .C(troj44_0_n3), .Y(troj44_0_n5) );
	o32ai_2 troj44_0_U5( .A1(troj44_0_n8), .A2(troj44_0_state_1_), .A3(troj44_0_n9), .B1(troj44_0_n6), .B2(troj44_0_n10), .Y(troj44_0_n12) );
	a21oi_2 troj44_0_U6( .A1(troj44_0_n6), .A2(Trigger_en_44_0), .B1(troj44_0_n7), .Y(troj44_0_n9) );
	nor3_2 troj44_0_U7( .A(n344), .B(n321), .C(troj44_0_n11), .Y(Trigger_en_44_0) );
	xor2_1 troj44_0_U8( .A(tempn471), .B(troj44_0_n2), .X(n471) );
	nor2_1 troj44_0_U9( .A(troj44_0_n3), .B(troj44_0_n4), .Y(troj44_0_n2) );
	inv_1 troj44_0_U10( .A(Trojan_out_44_0), .Y(troj44_0_n4) );
	inv_1 troj44_0_U11( .A(Trigger_en_44_0), .Y(troj44_0_n3) );
	inv_1 troj44_0_U12( .A(troj44_0_n9), .Y(troj44_0_n10) );
	xnor2_1 troj44_0_U13( .A(troj44_0_state_0_), .B(troj44_0_n9), .Y(troj44_0_n13) );
	nor2_1 troj44_0_U14( .A(troj44_0_n6), .B(troj44_0_n8), .Y(troj44_0_n7) );
	inv_1 troj44_0_U15( .A(troj44_0_state_0_), .Y(troj44_0_n8) );
	inv_1 troj44_0_U16( .A(troj44_0_state_1_), .Y(troj44_0_n6) );
	or3_1 troj44_0_U17( .A(n588), .B(n548), .C(n397), .X(troj44_0_n11) );
endmodule
