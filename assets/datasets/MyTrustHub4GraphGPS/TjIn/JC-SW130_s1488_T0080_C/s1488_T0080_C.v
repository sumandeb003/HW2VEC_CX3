//****************************************************************
// TRIT-ASIC Generated Trojans.  The design generated below is for academic use only.
// Please cite the following if using the benchmark provided:
// J. Cruz, Y. Huang, P. Mishra, S. Bhunia, 
// "An Automated Configurable Trojan Insertion Framework for Dynamic Trust Benchmarks", DATE, 2018
//****************************************************************

module s1488( GND, VDD, RST, CLK, CLR, v0, v1, v2, v3, v4, 
		v5, v6, v13_D_10, v13_D_11, v13_D_12, v13_D_13, v13_D_14, v13_D_15, v13_D_16, v13_D_17, 
		v13_D_18, v13_D_19, v13_D_20, v13_D_21, v13_D_22, v13_D_23, v13_D_24, v13_D_6, v13_D_7, v13_D_8, v13_D_9);

	input GND, VDD, RST, CLK, CLR, v0, v1, v2, v3, v4, v5, v6;

	output v13_D_10, v13_D_11, v13_D_12, v13_D_13, v13_D_14, v13_D_15, v13_D_16,
         v13_D_17, v13_D_18, v13_D_19, v13_D_20, v13_D_21, v13_D_22, v13_D_23,
         v13_D_24, v13_D_6, v13_D_7, v13_D_8, v13_D_9;

	wire v12, n288, v7, n289, v8, n287, v9, n292, v10, n290, 
		v11, n291, n294, n296, n293, n304, n307, n303, n314, n317, 
		n315, n313, n325, n324, n330, n336, n337, n341, n334, n320, 
		n343, n348, n350, n352, n351, n347, n355, n356, n354, n332, 
		n362, n364, n366, n365, n363, n375, n374, n372, n361, n381, 
		n384, n383, n382, n388, n393, n398, n360, n397, n403, n404, 
		n407, n408, n411, n410, n392, n416, n415, n419, n425, n427, 
		n424, n422, n434, n436, n438, n437, n442, n441, n344, n433, 
		n444, n443, n445, n306, n389, n448, n449, n423, n359, n346, 
		n454, n428, n455, n453, n298, n456, n390, n452, n458, n459, 
		n447, n440, n406, n426, n460, n461, n457, n463, n462, n335, 
		n446, n413, DFF_5_N3, n465, n469, n470, n373, n402, n468, n473, 
		n299, n472, n476, n475, n479, n467, n396, n405, DFF_4_N3, n483, 
		n486, n484, n450, n482, n487, n492, n493, n495, n497, n421, 
		n496, n494, n491, DFF_3_N3, n503, n506, n507, n508, n505, n399, 
		n431, n502, n412, n378, n510, n513, n515, n517, n318, n516, 
		n489, n514, n519, n512, n520, n521, n367, n339, n523, n342, 
		n511, n524, n526, n481, n439, n478, n321, n295, n312, DFF_2_N3, 
		n528, n529, n527, n531, n535, n380, n386, n537, n400, n538, 
		n536, n534, n541, n540, n477, n329, n327, n533, n300, n401, 
		n532, n530, DFF_1_N3, n543, n417, n310, n379, n305, n544, n322, 
		n345, n420, n542, n546, n548, n504, n501, n547, n539, n545, 
		n552, n554, n429, n490, n499, n387, n464, n553, n340, n391, 
		n474, n323, n551, n525, n498, n357, n451, n550, DFF_0_N3, n466, 
		n557, n556, n560, n549, n311, n333, n485, n559, n316, n338, 
		n331, n561, n558, n563, n565, n567, n414, n500, n480, n319, 
		n566, n569, n395, n385, n571, n394, n309, n570, n568, n308, 
		n509, n409, n328, n368, n302, n564, n430, n435, n358, n418, 
		n562, n297, n471, n301, n555, n488, n572, n369, n432, n370, 
		n326, n376, n377, n371, n353, n522, n518, n349, troj30_0_n1, troj30_0_n2, 
		tempn481, Trigger_en_30_0;

	dfxbp_1 DFF_0_Q_reg( .D(DFF_0_N3), .CLK(CLK), .Q(v12), .Q_N(n288) );
	dfxbp_1 DFF_5_Q_reg( .D(DFF_5_N3), .CLK(CLK), .Q(v7), .Q_N(n289) );
	dfxbp_1 DFF_4_Q_reg( .D(DFF_4_N3), .CLK(CLK), .Q(v8), .Q_N(n287) );
	dfxbp_1 DFF_3_Q_reg( .D(DFF_3_N3), .CLK(CLK), .Q(v9), .Q_N(n292) );
	dfxbp_1 DFF_2_Q_reg( .D(DFF_2_N3), .CLK(CLK), .Q(v10), .Q_N(n290) );
	dfxbp_1 DFF_1_Q_reg( .D(DFF_1_N3), .CLK(CLK), .Q(v11), .Q_N(n291) );
	o22ai_1 U312( .A1(v12), .A2(n293), .B1(n294), .B2(n295), .Y(v13_D_9) );
	a21oi_1 U313( .A1(n296), .A2(n297), .B1(n298), .Y(n294) );
	nor2_1 U314( .A(v9), .B(v7), .Y(n296) );
	a22oi_1 U315( .A1(n299), .A2(n300), .B1(n301), .B2(n302), .Y(n293) );
	nand2_1 U316( .A(n303), .B(n304), .Y(v13_D_8) );
	nor4_1 U317( .A(n305), .B(n298), .C(n306), .D(n307), .Y(n304) );
	nor3_1 U318( .A(n308), .B(n309), .C(n310), .Y(n307) );
	a221oi_1 U319( .A1(n311), .A2(n312), .B1(n313), .B2(n289), .C1(n314), .Y( n303) );
	o22ai_1 U320( .A1(n315), .A2(n316), .B1(n317), .B2(n318), .Y(n314) );
	a21oi_1 U321( .A1(v9), .A2(n291), .B1(n319), .Y(n317) );
	a21oi_1 U322( .A1(v11), .A2(n320), .B1(n321), .Y(n315) );
	nand4_1 U323( .A(n322), .B(n323), .C(n324), .D(n325), .Y(n313) );
	a222oi_1 U324( .A1(v9), .A2(n326), .B1(n327), .B2(v11), .C1(n328), .C2(n329), .Y(n325) );
	inv_1 U325( .A(n330), .Y(n324) );
	o22ai_1 U326( .A1(n331), .A2(n332), .B1(n333), .B2(n312), .Y(n330) );
	nand3_1 U327( .A(n334), .B(n335), .C(n336), .Y(v13_D_7) );
	a22oi_1 U328( .A1(v7), .A2(n337), .B1(n338), .B2(n339), .Y(n336) );
	o32ai_1 U329( .A1(n326), .A2(n340), .A3(n292), .B1(n341), .B2(n333), .Y( n337) );
	a22oi_1 U330( .A1(n342), .A2(n288), .B1(n319), .B2(n290), .Y(n341) );
	o21ai_0 U331( .A1(n343), .A2(n344), .B1(n320), .Y(n334) );
	inv_1 U332( .A(n332), .Y(n320) );
	nor3_1 U333( .A(n345), .B(v0), .C(n290), .Y(n343) );
	o221ai_1 U334( .A1(v10), .A2(n346), .B1(v7), .B2(n347), .C1(n348), .Y( v13_D_6) );
	a21oi_1 U335( .A1(n349), .A2(n340), .B1(n350), .Y(n348) );
	mux2i_1 U336( .A0(n351), .A1(n352), .S(n300), .Y(n350) );
	nand2_1 U337( .A(n319), .B(v8), .Y(n352) );
	nand2_1 U338( .A(v12), .B(n353), .Y(n351) );
	a211oi_1 U339( .A1(v9), .A2(n326), .B1(n354), .C1(n355), .Y(n347) );
	mux2i_1 U340( .A0(n356), .A1(n288), .S(n291), .Y(n355) );
	nand2_1 U341( .A(v8), .B(n331), .Y(n356) );
	o221ai_1 U342( .A1(n332), .A2(n300), .B1(n328), .B2(n333), .C1(n357), .Y( n354) );
	nor2_1 U343( .A(n358), .B(v4), .Y(n332) );
	nand4_1 U344( .A(n359), .B(n360), .C(n361), .D(n362), .Y(v13_D_24) );
	a222oi_1 U345( .A1(n306), .A2(n327), .B1(n363), .B2(n358), .C1(v7), .C2( n364), .Y(n362) );
	nand2_1 U346( .A(n365), .B(n366), .Y(n364) );
	nand4_1 U347( .A(n349), .B(n340), .C(n367), .D(n368), .Y(n366) );
	mux2i_1 U348( .A0(n369), .A1(n370), .S(n371), .Y(n365) );
	o221ai_1 U349( .A1(n345), .A2(n372), .B1(n373), .B2(n374), .C1(n375), .Y( n363) );
	nand3_1 U350( .A(n376), .B(n368), .C(n377), .Y(n375) );
	inv_1 U351( .A(n378), .Y(n374) );
	nand2_1 U352( .A(n301), .B(n367), .Y(n372) );
	nand3_1 U353( .A(n379), .B(n368), .C(n380), .Y(n361) );
	nor2_1 U354( .A(n381), .B(n316), .Y(v13_D_23) );
	nor3_1 U355( .A(n382), .B(n383), .C(n384), .Y(n381) );
	nor3_1 U356( .A(n308), .B(n367), .C(n326), .Y(n384) );
	nor3_1 U357( .A(n385), .B(n386), .C(n300), .Y(n383) );
	nor3_1 U358( .A(n387), .B(n290), .C(n292), .Y(n382) );
	o211ai_1 U359( .A1(n346), .A2(n322), .B1(n388), .C1(n389), .Y(v13_D_22) );
	nand3_1 U360( .A(n390), .B(n368), .C(n391), .Y(n388) );
	nand2_1 U361( .A(n392), .B(n393), .Y(v13_D_21) );
	nand3_1 U362( .A(n377), .B(v2), .C(n391), .Y(n393) );
	nor3_1 U363( .A(n394), .B(n395), .C(n396), .Y(v13_D_20) );
	nand3_1 U364( .A(n397), .B(n360), .C(n398), .Y(v13_D_19) );
	nand3_1 U365( .A(n328), .B(n309), .C(n399), .Y(n398) );
	nand3_1 U366( .A(n400), .B(n321), .C(n377), .Y(n360) );
	nand4_1 U367( .A(n401), .B(n402), .C(n327), .D(v12), .Y(n397) );
	o21ai_0 U368( .A1(n326), .A2(n403), .B1(n392), .Y(v13_D_18) );
	o21ai_0 U369( .A1(v5), .A2(v4), .B1(n404), .Y(n403) );
	o32ai_1 U370( .A1(n331), .A2(v7), .A3(n287), .B1(n308), .B2(n405), .Y(n404) );
	nand4_1 U371( .A(n406), .B(n335), .C(n392), .D(n407), .Y(v13_D_17) );
	inv_1 U372( .A(n408), .Y(n407) );
	o32ai_1 U373( .A1(n409), .A2(n410), .A3(n326), .B1(n411), .B2(n368), .Y( n408) );
	a221oi_1 U374( .A1(n370), .A2(v7), .B1(n399), .B2(n301), .C1(n412), .Y(n411) );
	a21oi_1 U375( .A1(n367), .A2(n289), .B1(v9), .Y(n410) );
	nand2_1 U376( .A(n413), .B(n414), .Y(n392) );
	nand2_1 U377( .A(n415), .B(n416), .Y(v13_D_16) );
	nand4_1 U378( .A(n390), .B(n400), .C(v9), .D(n312), .Y(n416) );
	inv_1 U379( .A(n417), .Y(n415) );
	nor3_1 U380( .A(n418), .B(v5), .C(n419), .Y(v13_D_15) );
	a21oi_1 U381( .A1(n420), .A2(n421), .B1(n344), .Y(n419) );
	nand4_1 U382( .A(n422), .B(n423), .C(n424), .D(n425), .Y(v13_D_14) );
	a221oi_1 U383( .A1(n426), .A2(n288), .B1(n427), .B2(n289), .C1(n428), .Y( n425) );
	o211ai_1 U384( .A1(v5), .A2(v4), .B1(n429), .C1(n430), .Y(n427) );
	o221ai_1 U385( .A1(v0), .A2(n308), .B1(v9), .B2(v11), .C1(n338), .Y(n424) );
	inv_1 U386( .A(n431), .Y(n422) );
	nand4_1 U387( .A(n389), .B(n432), .C(n433), .D(n434), .Y(v13_D_13) );
	a221oi_1 U388( .A1(n344), .A2(n435), .B1(n413), .B2(n291), .C1(n436), .Y( n434) );
	o22ai_1 U389( .A1(n437), .A2(n308), .B1(v7), .B2(n438), .Y(n436) );
	nor2_1 U390( .A(n439), .B(n440), .Y(n438) );
	a221oi_1 U391( .A1(v8), .A2(n441), .B1(n442), .B2(n288), .C1(n402), .Y(n437) );
	o22ai_1 U392( .A1(v7), .A2(v1), .B1(n430), .B2(n405), .Y(n442) );
	o21ai_0 U393( .A1(v1), .A2(n291), .B1(n387), .Y(n441) );
	nor4_1 U394( .A(n331), .B(n326), .C(n287), .D(v7), .Y(n344) );
	a21oi_1 U395( .A1(n327), .A2(n443), .B1(n444), .Y(n433) );
	and3_1 U396( .A(v1), .B(v9), .C(n369), .X(n444) );
	o21ai_0 U397( .A1(n309), .A2(n310), .B1(n445), .Y(n443) );
	inv_1 U398( .A(n306), .Y(n445) );
	nor2_1 U399( .A(n387), .B(n316), .Y(n306) );
	nand2_1 U400( .A(n321), .B(n299), .Y(n389) );
	o211ai_1 U401( .A1(v10), .A2(n446), .B1(n447), .C1(n448), .Y(v13_D_12) );
	inv_1 U402( .A(n449), .Y(n448) );
	o211ai_1 U403( .A1(n450), .A2(n346), .B1(n359), .C1(n423), .Y(n449) );
	inv_1 U404( .A(n412), .Y(n423) );
	nand3_1 U405( .A(n402), .B(n292), .C(n451), .Y(n359) );
	nand2_1 U406( .A(v9), .B(n338), .Y(n346) );
	o211ai_1 U407( .A1(v7), .A2(n452), .B1(n453), .C1(n454), .Y(v13_D_11) );
	a221oi_1 U408( .A1(n402), .A2(v10), .B1(n370), .B2(n287), .C1(n428), .Y( n454) );
	o22ai_1 U409( .A1(v7), .A2(n288), .B1(n455), .B2(n287), .Y(n428) );
	nor2_1 U410( .A(n414), .B(n292), .Y(n455) );
	a21oi_1 U411( .A1(n390), .A2(n456), .B1(n298), .Y(n453) );
	nor3_1 U412( .A(n367), .B(n316), .C(n291), .Y(n298) );
	inv_1 U413( .A(n400), .Y(n456) );
	nor2_1 U414( .A(n333), .B(v7), .Y(n390) );
	a221oi_1 U415( .A1(n435), .A2(n333), .B1(n426), .B2(v11), .C1(n302), .Y( n452) );
	nand4_1 U416( .A(n446), .B(n335), .C(n457), .D(n458), .Y(v13_D_10) );
	inv_1 U417( .A(n459), .Y(n458) );
	o221ai_1 U418( .A1(n429), .A2(n345), .B1(n450), .B2(n323), .C1(n447), .Y( n459) );
	a221oi_1 U419( .A1(n460), .A2(n376), .B1(v8), .B2(n380), .C1(n440), .Y(n447) );
	inv_1 U420( .A(n406), .Y(n440) );
	nand3_1 U421( .A(n376), .B(n342), .C(n426), .Y(n406) );
	nor2_1 U422( .A(n368), .B(n287), .Y(n426) );
	o21ai_0 U423( .A1(n342), .A2(v8), .B1(n461), .Y(n460) );
	nand3_1 U424( .A(v0), .B(n292), .C(n338), .Y(n461) );
	a22oi_1 U425( .A1(n311), .A2(n462), .B1(n376), .B2(n463), .Y(n457) );
	o22ai_1 U426( .A1(n371), .A2(n430), .B1(n327), .B2(n310), .Y(n463) );
	o21ai_0 U427( .A1(v9), .A2(n451), .B1(n464), .Y(n462) );
	nand4_1 U428( .A(n349), .B(n328), .C(n291), .D(n289), .Y(n335) );
	inv_1 U429( .A(n413), .Y(n446) );
	nor2_1 U430( .A(n430), .B(n345), .Y(n413) );
	nor2_1 U431( .A(n465), .B(n466), .Y(DFF_5_N3) );
	a211oi_1 U432( .A1(n376), .A2(n467), .B1(n468), .C1(n469), .Y(n465) );
	o32ai_1 U433( .A1(n373), .A2(v12), .A3(n331), .B1(n386), .B2(n470), .Y(n469) );
	o21ai_0 U434( .A1(n471), .A2(n368), .B1(n379), .Y(n470) );
	inv_1 U435( .A(n402), .Y(n373) );
	nor2_1 U436( .A(n316), .B(v11), .Y(n402) );
	o22ai_1 U437( .A1(v7), .A2(n472), .B1(n473), .B2(n300), .Y(n468) );
	inv_1 U438( .A(n299), .Y(n473) );
	nor2_1 U439( .A(n289), .B(n371), .Y(n299) );
	a222oi_1 U440( .A1(n474), .A2(n329), .B1(v9), .B2(n475), .C1(n302), .C2( n476), .Y(n472) );
	o221ai_1 U441( .A1(n312), .A2(n291), .B1(v3), .B2(n477), .C1(n478), .Y(n476) );
	o221ai_1 U442( .A1(n479), .A2(n387), .B1(n288), .B2(n333), .C1(n322), .Y( n475) );
	nor2_1 U443( .A(n395), .B(n480), .Y(n479) );
	o32ai_1 U444( .A1(n405), .A2(n308), .A3(n430), .B1(n396), .B2(n481), .Y( n467) );
	inv_1 U445( .A(n377), .Y(n396) );
	nand2_1 U446( .A(n338), .B(n367), .Y(n405) );
	a21oi_1 U447( .A1(n482), .A2(n483), .B1(n466), .Y(DFF_4_N3) );
	a222oi_1 U448( .A1(n379), .A2(n484), .B1(n485), .B2(n486), .C1(n369), .C2( n297), .Y(n483) );
	o21ai_0 U449( .A1(n480), .A2(n464), .B1(n386), .Y(n486) );
	o211ai_1 U450( .A1(n328), .A2(n386), .B1(n450), .C1(n300), .Y(n484) );
	inv_1 U451( .A(n369), .Y(n450) );
	a21oi_1 U452( .A1(n487), .A2(n289), .B1(n488), .Y(n482) );
	o211ai_1 U453( .A1(n489), .A2(n490), .B1(n491), .C1(n492), .Y(n487) );
	a21oi_1 U454( .A1(n309), .A2(v9), .B1(n493), .Y(n492) );
	mux2i_1 U455( .A0(n494), .A1(n495), .S(n287), .Y(n493) );
	nor4_1 U456( .A(n496), .B(n497), .C(n498), .D(n499), .Y(n495) );
	and3_1 U457( .A(n435), .B(n288), .C(n421), .X(n497) );
	o21ai_0 U458( .A1(v0), .A2(n471), .B1(n300), .Y(n421) );
	o32ai_1 U459( .A1(n357), .A2(v3), .A3(n368), .B1(n322), .B2(n500), .Y(n496) );
	a21oi_1 U460( .A1(n501), .A2(n376), .B1(n378), .Y(n494) );
	o21ai_0 U461( .A1(v2), .A2(n478), .B1(n302), .Y(n491) );
	a21oi_1 U462( .A1(n502), .A2(n503), .B1(n466), .Y(DFF_3_N3) );
	nor4_1 U463( .A(n431), .B(n504), .C(n505), .D(n506), .Y(n503) );
	nor3_1 U464( .A(n507), .B(v3), .C(n342), .Y(n506) );
	mux2i_1 U465( .A0(n508), .A1(v8), .S(n288), .Y(n507) );
	nor2_1 U466( .A(v6), .B(n316), .Y(n508) );
	and3_1 U467( .A(n399), .B(n409), .C(v11), .X(n505) );
	nor2_1 U468( .A(n310), .B(v9), .Y(n399) );
	nor3_1 U469( .A(n289), .B(n509), .C(n326), .Y(n431) );
	a222oi_1 U470( .A1(n510), .A2(n289), .B1(n378), .B2(n485), .C1(n412), .C2( n300), .Y(n502) );
	nor2_1 U471( .A(n310), .B(v12), .Y(n412) );
	nor2_1 U472( .A(n342), .B(v12), .Y(n378) );
	nand3_1 U473( .A(n511), .B(n512), .C(n513), .Y(n510) );
	a21oi_1 U474( .A1(n414), .A2(n514), .B1(n515), .Y(n513) );
	o32ai_1 U475( .A1(n516), .A2(n387), .A3(n318), .B1(n288), .B2(n517), .Y( n515) );
	nand2_1 U476( .A(n353), .B(n471), .Y(n517) );
	inv_1 U477( .A(n340), .Y(n318) );
	inv_1 U478( .A(n489), .Y(n516) );
	xor2_1 U479( .A(v1), .B(n368), .X(n489) );
	o22ai_1 U480( .A1(n518), .A2(n430), .B1(v12), .B2(n519), .Y(n514) );
	a221oi_1 U481( .A1(v3), .A2(v8), .B1(v2), .B2(n302), .C1(n474), .Y(n519) );
	o21ai_0 U482( .A1(n339), .A2(n520), .B1(n287), .Y(n512) );
	o32ai_1 U483( .A1(n295), .A2(v9), .A3(n367), .B1(n435), .B2(n521), .Y(n520) );
	inv_1 U484( .A(n522), .Y(n521) );
	inv_1 U485( .A(v0), .Y(n367) );
	o21ai_0 U486( .A1(n387), .A2(n342), .B1(n523), .Y(n339) );
	inv_1 U487( .A(n439), .Y(n523) );
	inv_1 U488( .A(n327), .Y(n342) );
	a21oi_1 U489( .A1(n439), .A2(v2), .B1(n524), .Y(n511) );
	a21oi_1 U490( .A1(n525), .A2(n526), .B1(n292), .Y(n524) );
	nand3_1 U491( .A(v11), .B(n481), .C(n340), .Y(n526) );
	inv_1 U492( .A(n501), .Y(tempn481) );
	nor2_1 U493( .A(n478), .B(v9), .Y(n439) );
	inv_1 U494( .A(n321), .Y(n478) );
	nor2_1 U495( .A(n295), .B(v11), .Y(n321) );
	inv_1 U496( .A(n312), .Y(n295) );
	nor2_1 U497( .A(n290), .B(v12), .Y(n312) );
	a21oi_1 U498( .A1(n527), .A2(n528), .B1(n466), .Y(DFF_2_N3) );
	nand2_1 U499( .A(n485), .B(n529), .Y(n528) );
	o22ai_1 U500( .A1(n288), .A2(n308), .B1(v10), .B2(n319), .Y(n529) );
	mux2i_1 U501( .A0(n530), .A1(n531), .S(n289), .Y(n527) );
	nand4_1 U502( .A(n532), .B(n533), .C(n534), .D(n535), .Y(n531) );
	a222oi_1 U503( .A1(n340), .A2(n536), .B1(n353), .B2(n537), .C1(n380), .C2( n287), .Y(n535) );
	nor2_1 U504( .A(n386), .B(n471), .Y(n380) );
	inv_1 U505( .A(n319), .Y(n386) );
	o32ai_1 U506( .A1(n480), .A2(n538), .A3(n387), .B1(n400), .B2(n477), .Y( n537) );
	nor2_1 U507( .A(n385), .B(n480), .Y(n400) );
	inv_1 U508( .A(n539), .Y(n538) );
	nand3_1 U509( .A(n387), .B(n368), .C(n435), .Y(n536) );
	a22oi_1 U510( .A1(n327), .A2(n540), .B1(n302), .B2(n541), .Y(n534) );
	o21ai_0 U511( .A1(v12), .A2(n409), .B1(n322), .Y(n541) );
	o21ai_0 U512( .A1(n477), .A2(n430), .B1(n287), .Y(n540) );
	inv_1 U513( .A(n329), .Y(n477) );
	nor2_1 U514( .A(v11), .B(v12), .Y(n329) );
	nor2_1 U515( .A(v10), .B(v9), .Y(n327) );
	or3_1 U516( .A(n288), .B(n401), .C(n300), .X(n533) );
	inv_1 U517( .A(n414), .Y(n300) );
	nor2_1 U518( .A(n480), .B(v6), .Y(n401) );
	nand3_1 U519( .A(n368), .B(n292), .C(n485), .Y(n532) );
	nor2_1 U520( .A(n292), .B(n326), .Y(n530) );
	a21oi_1 U521( .A1(n542), .A2(n543), .B1(n466), .Y(DFF_1_N3) );
	nor3_1 U522( .A(n544), .B(n305), .C(n417), .Y(n543) );
	nor4_1 U523( .A(n368), .B(n308), .C(n310), .D(n387), .Y(n417) );
	inv_1 U524( .A(n379), .Y(n310) );
	nor2_1 U525( .A(n289), .B(n287), .Y(n379) );
	inv_1 U526( .A(n432), .Y(n305) );
	o22ai_1 U527( .A1(n471), .A2(n345), .B1(n333), .B2(n322), .Y(n544) );
	nand2_1 U528( .A(v12), .B(n290), .Y(n322) );
	inv_1 U529( .A(n420), .Y(n345) );
	nor2_1 U530( .A(n518), .B(n316), .Y(n420) );
	a221oi_1 U531( .A1(n545), .A2(n289), .B1(n370), .B2(n302), .C1(n546), .Y( n542) );
	mux2i_1 U532( .A0(n547), .A1(n548), .S(n288), .Y(n546) );
	a21oi_1 U533( .A1(n501), .A2(n377), .B1(n504), .Y(n548) );
	nor2_1 U534( .A(n549), .B(n308), .Y(n504) );
	nor2_1 U535( .A(n430), .B(v2), .Y(n501) );
	nand3_1 U536( .A(v3), .B(n539), .C(n377), .Y(n547) );
	nand2_1 U537( .A(n395), .B(v0), .Y(n539) );
	nand4_1 U538( .A(n550), .B(n525), .C(n551), .D(n552), .Y(n545) );
	a222oi_1 U539( .A1(n474), .A2(n391), .B1(n340), .B2(n553), .C1(v9), .C2( n554), .Y(n552) );
	o211ai_1 U540( .A1(n368), .A2(n464), .B1(n490), .C1(n429), .Y(n554) );
	nand2_1 U541( .A(v10), .B(n291), .Y(n429) );
	inv_1 U542( .A(n499), .Y(n490) );
	nor2_1 U543( .A(n387), .B(v10), .Y(n499) );
	inv_1 U544( .A(n309), .Y(n387) );
	inv_1 U545( .A(n391), .Y(n464) );
	o21ai_0 U546( .A1(v9), .A2(v3), .B1(n376), .Y(n553) );
	nor2_1 U547( .A(n287), .B(v10), .Y(n340) );
	nor2_1 U548( .A(v10), .B(v12), .Y(n391) );
	a21oi_1 U549( .A1(v6), .A2(v1), .B1(n323), .Y(n474) );
	inv_1 U550( .A(n302), .Y(n323) );
	nand3_1 U551( .A(n291), .B(n385), .C(n319), .Y(n551) );
	inv_1 U552( .A(n498), .Y(n525) );
	nor2_1 U553( .A(n357), .B(v11), .Y(n498) );
	inv_1 U554( .A(n451), .Y(n357) );
	nor2_1 U555( .A(n288), .B(n290), .Y(n451) );
	nand3_1 U556( .A(n297), .B(n288), .C(n509), .Y(n550) );
	a21oi_1 U557( .A1(n555), .A2(n556), .B1(n466), .Y(DFF_0_N3) );
	nand2_1 U558( .A(CLR), .B(n557), .Y(n466) );
	inv_1 U559( .A(RST), .Y(n557) );
	nor3_1 U560( .A(n558), .B(n559), .C(n560), .Y(n556) );
	nor3_1 U561( .A(n549), .B(v10), .C(n349), .Y(n560) );
	inv_1 U562( .A(n311), .Y(n549) );
	nor2_1 U563( .A(n333), .B(n289), .Y(n311) );
	inv_1 U564( .A(n485), .Y(n333) );
	nor2_1 U565( .A(n287), .B(v11), .Y(n485) );
	nor4_1 U566( .A(n561), .B(n331), .C(v12), .D(n316), .Y(n559) );
	inv_1 U567( .A(n338), .Y(n316) );
	nor2_1 U568( .A(v7), .B(v8), .Y(n338) );
	nand2_1 U569( .A(v9), .B(n368), .Y(n331) );
	nand3_1 U570( .A(v6), .B(n414), .C(v1), .Y(n561) );
	o32ai_1 U571( .A1(n471), .A2(v9), .A3(n562), .B1(v7), .B2(n563), .Y(n558) );
	a221oi_1 U572( .A1(n522), .A2(n564), .B1(n301), .B2(n302), .C1(n565), .Y( n563) );
	mux2i_1 U573( .A0(n566), .A1(n567), .S(n287), .Y(n565) );
	nand3_1 U574( .A(n319), .B(n500), .C(n414), .Y(n567) );
	nor2_1 U575( .A(v10), .B(v11), .Y(n414) );
	nand2_1 U576( .A(n385), .B(n480), .Y(n500) );
	inv_1 U577( .A(v3), .Y(n480) );
	nor2_1 U578( .A(n288), .B(v9), .Y(n319) );
	a211oi_1 U579( .A1(n435), .A2(n369), .B1(n568), .C1(n569), .Y(n566) );
	mux2i_1 U580( .A0(n570), .A1(n571), .S(n395), .Y(n569) );
	nor2_1 U581( .A(n385), .B(v1), .Y(n395) );
	inv_1 U582( .A(v6), .Y(n385) );
	or2_0 U583( .A(n394), .B(v0), .X(n571) );
	nand3_1 U584( .A(n309), .B(v10), .C(v3), .Y(n394) );
	nor2_1 U585( .A(n288), .B(n291), .Y(n309) );
	nand4_1 U586( .A(v3), .B(v12), .C(n301), .D(v0), .Y(n570) );
	o21ai_0 U587( .A1(n326), .A2(n409), .B1(n308), .Y(n568) );
	inv_1 U588( .A(n509), .Y(n308) );
	nor2_1 U589( .A(n290), .B(v9), .Y(n509) );
	inv_1 U590( .A(n328), .Y(n409) );
	nor2_1 U591( .A(n368), .B(n290), .Y(n328) );
	inv_1 U592( .A(v2), .Y(n368) );
	nor2_1 U593( .A(n292), .B(v8), .Y(n302) );
	o21ai_0 U594( .A1(v0), .A2(n430), .B1(v11), .Y(n564) );
	inv_1 U595( .A(n435), .Y(n430) );
	nor2_1 U596( .A(n418), .B(n358), .Y(n435) );
	inv_1 U597( .A(v5), .Y(n358) );
	inv_1 U598( .A(v4), .Y(n418) );
	inv_1 U599( .A(n297), .Y(n562) );
	nor2_1 U600( .A(n287), .B(v2), .Y(n297) );
	inv_1 U601( .A(n301), .Y(n471) );
	nor2_1 U602( .A(n291), .B(n290), .Y(n301) );
	a221oi_1 U603( .A1(n522), .A2(v8), .B1(n377), .B2(n370), .C1(n488), .Y(n555) );
	nand2_1 U604( .A(n432), .B(n572), .Y(n488) );
	nand3_1 U605( .A(v7), .B(v9), .C(n369), .Y(n572) );
	nor2_1 U606( .A(n326), .B(n290), .Y(n369) );
	nand3_1 U607( .A(v7), .B(n287), .C(n370), .Y(n432) );
	nor2_1 U608( .A(n326), .B(v10), .Y(n370) );
	inv_1 U609( .A(n376), .Y(n326) );
	nor2_1 U610( .A(n291), .B(v12), .Y(n376) );
	nor2_1 U611( .A(n371), .B(v7), .Y(n377) );
	inv_1 U612( .A(n353), .Y(n371) );
	nor2_1 U613( .A(n292), .B(n287), .Y(n353) );
	nor2_1 U614( .A(n518), .B(n290), .Y(n522) );
	inv_1 U615( .A(n349), .Y(n518) );
	nor2_1 U616( .A(v12), .B(v9), .Y(n349) );
	xor2_1 troj30_0_U1( .A(tempn481), .B(Trigger_en_30_0), .X(n481) );
	and4_1 troj30_0_U2( .A(n484), .B(n317), .C(n495), .D(troj30_0_n1), .X(Trigger_en_30_0) );
	nor2_1 troj30_0_U3( .A(n404), .B(troj30_0_n2), .Y(troj30_0_n1) );
	or2_1 troj30_0_U4( .A(n496), .B(n470), .X(troj30_0_n2) );
endmodule
