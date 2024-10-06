//****************************************************************
// TRIT-ASIC Generated Trojans.  The design generated below is for academic use only.
// Please cite the following if using the benchmark provided:
// J. Cruz, Y. Huang, P. Mishra, S. Bhunia, 
// "An Automated Configurable Trojan Insertion Framework for Dynamic Trust Benchmarks", DATE, 2018
//****************************************************************

module s1238( GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, 
		G2, G3, G4, G5, G6, G7, G8, G9, G45, G530, 
		G532, G535, G537, G539, G542, G546, G547, G548, G549, G550, 
		G551, G552, troj3_0_load3_0_39_, troj3_0_load3_0_38_, troj3_0_load3_0_37_, troj3_0_load3_0_36_, troj3_0_load3_0_35_, troj3_0_load3_0_34_, troj3_0_load3_0_33_, troj3_0_load3_0_32_, 
		troj3_0_load3_0_31_, troj3_0_load3_0_30_, troj3_0_load3_0_29_, troj3_0_load3_0_28_, troj3_0_load3_0_27_, troj3_0_load3_0_26_, troj3_0_load3_0_25_, troj3_0_load3_0_24_, troj3_0_load3_0_23_, troj3_0_load3_0_22_, 
		troj3_0_load3_0_21_, troj3_0_load3_0_20_, troj3_0_load3_0_19_, troj3_0_load3_0_18_, troj3_0_load3_0_17_, troj3_0_load3_0_16_, troj3_0_load3_0_15_, troj3_0_load3_0_14_, troj3_0_load3_0_13_, troj3_0_load3_0_12_, 
		troj3_0_load3_0_11_, troj3_0_load3_0_10_, troj3_0_load3_0_9_, troj3_0_load3_0_8_, troj3_0_load3_0_7_, troj3_0_load3_0_6_, troj3_0_load3_0_5_, troj3_0_load3_0_4_, troj3_0_load3_0_3_, troj3_0_load3_0_2_, 
		troj3_0_load3_0_1_, troj3_0_load3_0_0_);

	input GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, G2, G3, G4, G5, G6, G7,
         G8, G9;

	output G45, G530, G532, G535, G537, G539, G542, G546, G547, G548, G549, G550,
         G551, G552;

	output troj3_0_load3_0_39_, troj3_0_load3_0_38_, troj3_0_load3_0_37_, troj3_0_load3_0_36_, troj3_0_load3_0_35_, 
		troj3_0_load3_0_34_, troj3_0_load3_0_33_, troj3_0_load3_0_32_, troj3_0_load3_0_31_, troj3_0_load3_0_30_, 
		troj3_0_load3_0_29_, troj3_0_load3_0_28_, troj3_0_load3_0_27_, troj3_0_load3_0_26_, troj3_0_load3_0_25_, 
		troj3_0_load3_0_24_, troj3_0_load3_0_23_, troj3_0_load3_0_22_, troj3_0_load3_0_21_, troj3_0_load3_0_20_, 
		troj3_0_load3_0_19_, troj3_0_load3_0_18_, troj3_0_load3_0_17_, troj3_0_load3_0_16_, troj3_0_load3_0_15_, 
		troj3_0_load3_0_14_, troj3_0_load3_0_13_, troj3_0_load3_0_12_, troj3_0_load3_0_11_, troj3_0_load3_0_10_, 
		troj3_0_load3_0_9_, troj3_0_load3_0_8_, troj3_0_load3_0_7_, troj3_0_load3_0_6_, troj3_0_load3_0_5_, 
		troj3_0_load3_0_4_, troj3_0_load3_0_3_, troj3_0_load3_0_2_, troj3_0_load3_0_1_, troj3_0_load3_0_0_;

	wire n537, n515, n511, n538, n998, n535, n536, G39, G32, n996, 
		G29, G44, G43, n514, n512, n513, n272, n275, n274, n278, 
		n277, n273, n284, n286, n271, n290, n292, n291, n289, n270, 
		n299, n298, n302, n304, n269, n268, n309, n267, n266, n313, 
		n307, n312, n315, n265, n264, n318, n320, n319, n263, n325, 
		n262, n261, n328, n260, n330, n259, n336, n258, n341, n311, 
		n257, n345, n256, n348, n351, n255, n356, n362, n364, n363, 
		n369, n360, n372, n373, n337, n371, n380, n379, n383, n385, 
		n386, n378, n377, n388, n389, n390, n392, n395, n365, n393, 
		n396, n391, n399, n401, n400, n404, n331, n322, n403, n398, 
		n317, n387, n394, n397, n408, n410, n412, n414, n416, n417, 
		n413, n419, n354, n349, n418, n423, n350, n352, n353, n422, 
		n426, n425, n421, n409, n429, n431, n430, n428, n439, n441, 
		n440, n438, n435, n342, n448, n446, n310, n455, n443, n442, 
		n357, n324, n358, n458, n460, n462, n463, n461, n456, n466, 
		n453, n436, n452, n469, n473, n454, n475, n467, n359, n437, 
		n471, n434, n478, n477, n483, n485, n288, n484, n482, n481, 
		n470, n474, n487, n479, n449, n316, n433, n489, n346, n492, 
		n374, n285, n491, n494, n402, n343, n447, n495, n347, n496, 
		n497, n370, n367, n332, n382, n472, n499, n340, n281, n498, 
		n405, n476, n407, n406, n323, n490, n424, n294, n300, n504, 
		n432, n507, n338, n488, n506, n508, n510, n334, n445, n516, 
		n505, n509, n480, n459, n517, n366, n276, n344, n297, n415, 
		n503, n519, n314, n468, n444, n465, n427, n306, n493, n500, 
		n518, n502, n520, n384, n381, n335, n333, n376, n501, n522, 
		n280, n521, n283, n368, n329, n282, n361, n355, n321, n457, 
		n524, n301, n293, n526, n528, n527, n529, n530, n327, n420, 
		n295, n326, n287, n375, n525, n339, n531, n308, n279, n296, 
		n523, n451, n533, n305, n534, n411, n486, n303, n464, n450, 
		n532, troj3_0_lfsr_stream3_0_2_, troj3_0_lfsr_stream3_0_22_, troj3_0_lfsr_stream3_0_21_, troj3_0_lfsr_stream3_0_20_, troj3_0_lfsr_stream3_0_19_, troj3_0_lfsr_stream3_0_18_, troj3_0_lfsr_stream3_0_17_, troj3_0_lfsr_stream3_0_16_, troj3_0_lfsr_stream3_0_15_, 
		troj3_0_lfsr_stream3_0_14_, troj3_0_lfsr_stream3_0_13_, troj3_0_lfsr_stream3_0_12_, troj3_0_lfsr_stream3_0_11_, troj3_0_lfsr_stream3_0_10_, troj3_0_lfsr_stream3_0_9_, troj3_0_lfsr_stream3_0_8_, troj3_0_lfsr_stream3_0_7_, troj3_0_lfsr_stream3_0_6_, troj3_0_lfsr_stream3_0_5_, 
		troj3_0_lfsr_stream3_0_4_, troj3_0_lfsr_stream3_0_3_, troj3_0_lfsr_stream3_0_1_, troj3_0_lfsr_stream3_0_0_, troj3_0_N9, troj3_0_N8, troj3_0_N7, troj3_0_N6, troj3_0_N5, troj3_0_N4, 
		troj3_0_N3, troj3_0_N29, troj3_0_N28, troj3_0_N27, troj3_0_N26, troj3_0_N25, troj3_0_N24, troj3_0_n2, troj3_0_n4, troj3_0_n3, 
		troj3_0_N23, troj3_0_N22, troj3_0_N21, troj3_0_N20, troj3_0_N2, troj3_0_N19, troj3_0_N18, troj3_0_N17, troj3_0_N16, troj3_0_N15, 
		troj3_0_N14, troj3_0_N13, troj3_0_N12, troj3_0_N11, troj3_0_N10, troj3_0_n1;

	dfxbp_1 DFF_13_Q_reg( .D(n271), .CLK(CLK), .Q(n537) );
	dfxtp_1 DFF_9_Q_reg( .D(n269), .CLK(CLK), .Q(n515) );
	dfxtp_1 DFF_8_Q_reg( .D(n268), .CLK(CLK), .Q(n511) );
	dfxbp_1 DFF_7_Q_reg( .D(n267), .CLK(CLK), .Q(n538) );
	dfxbp_1 DFF_6_Q_reg( .D(n266), .CLK(CLK), .Q_N(n998) );
	dfxbp_1 DFF_17_Q_reg( .D(n272), .CLK(CLK), .Q(n535) );
	dfxbp_1 DFF_11_Q_reg( .D(n270), .CLK(CLK), .Q(n536) );
	dfxtp_1 DFF_10_Q_reg( .D(n261), .CLK(CLK), .Q(G39) );
	dfxtp_1 DFF_3_Q_reg( .D(n260), .CLK(CLK), .Q(G32) );
	dfxbp_1 DFF_4_Q_reg( .D(n264), .CLK(CLK), .Q_N(n996) );
	dfxtp_1 DFF_0_Q_reg( .D(n259), .CLK(CLK), .Q(G29) );
	dfxtp_1 DFF_15_Q_reg( .D(n258), .CLK(CLK), .Q(G44) );
	dfxtp_1 DFF_14_Q_reg( .D(n257), .CLK(CLK), .Q(G43) );
	dfxbp_1 DFF_12_Q_reg( .D(n256), .CLK(CLK), .Q_N(G546) );
	dfxtp_1 DFF_16_Q_reg( .D(n255), .CLK(CLK), .Q(G45) );
	dfxtp_1 DFF_5_Q_reg( .D(n265), .CLK(CLK), .Q(n514) );
	dfxtp_1 DFF_2_Q_reg( .D(n263), .CLK(CLK), .Q(n512) );
	dfxtp_1 DFF_1_Q_reg( .D(n262), .CLK(CLK), .Q(n513) );
	nor4_1 U288( .A(RST), .B(n273), .C(n274), .D(n275), .Y(n272) );
	a211oi_1 U289( .A1(n513), .A2(G7), .B1(G6), .C1(n276), .Y(n275) );
	nor3_1 U290( .A(n277), .B(n278), .C(n279), .Y(n274) );
	a21oi_1 U291( .A1(G2), .A2(n280), .B1(n281), .Y(n278) );
	o21ai_0 U292( .A1(G1), .A2(n282), .B1(n283), .Y(n277) );
	a21oi_1 U293( .A1(n284), .A2(G0), .B1(G1), .Y(n273) );
	mux2i_1 U294( .A0(n285), .A1(n286), .S(n287), .Y(n284) );
	nor2_1 U295( .A(G3), .B(G2), .Y(n286) );
	nor4_1 U296( .A(RST), .B(n288), .C(n289), .D(n290), .Y(n271) );
	mux2i_1 U297( .A0(n291), .A1(n292), .S(n293), .Y(n290) );
	nand3_1 U298( .A(G7), .B(n294), .C(G11), .Y(n292) );
	nand2_1 U299( .A(n295), .B(n296), .Y(n291) );
	nor3_1 U300( .A(n297), .B(n276), .C(n293), .Y(n289) );
	nor3_1 U301( .A(n298), .B(RST), .C(n299), .Y(n270) );
	nor3_1 U302( .A(n300), .B(G10), .C(n293), .Y(n299) );
	a21oi_1 U303( .A1(n301), .A2(n302), .B1(n303), .Y(n298) );
	o21ai_0 U304( .A1(n304), .A2(n512), .B1(G6), .Y(n302) );
	nor3_1 U305( .A(n305), .B(G11), .C(n306), .Y(n304) );
	and3_1 U306( .A(n307), .B(n308), .C(n279), .X(n269) );
	nor2_1 U307( .A(RST), .B(n309), .Y(n268) );
	xnor2_1 U308( .A(G9), .B(G6), .Y(n309) );
	a21oi_1 U309( .A1(n310), .A2(n311), .B1(RST), .Y(n267) );
	mux2i_1 U310( .A0(n312), .A1(n313), .S(n293), .Y(n266) );
	nand3_1 U311( .A(n303), .B(n305), .C(n307), .Y(n313) );
	nor3_1 U312( .A(G10), .B(RST), .C(n306), .Y(n307) );
	nand2_1 U313( .A(n314), .B(n315), .Y(n312) );
	inv_1 U314( .A(RST), .Y(n315) );
	a21oi_1 U315( .A1(n316), .A2(n317), .B1(RST), .Y(n265) );
	nor2_1 U316( .A(RST), .B(n318), .Y(n264) );
	mux2i_1 U317( .A0(n319), .A1(n320), .S(n321), .Y(n318) );
	nand2_1 U318( .A(n322), .B(n323), .Y(n320) );
	nand4_1 U319( .A(n324), .B(G1), .C(G0), .D(n308), .Y(n319) );
	nor2_1 U320( .A(RST), .B(n325), .Y(n263) );
	a22oi_1 U321( .A1(G10), .A2(n297), .B1(G11), .B2(n306), .Y(n325) );
	a21oi_1 U322( .A1(n326), .A2(n327), .B1(RST), .Y(n262) );
	nor2_1 U323( .A(RST), .B(n328), .Y(n261) );
	xnor2_1 U324( .A(n329), .B(G2), .Y(n328) );
	a21oi_1 U325( .A1(n330), .A2(n331), .B1(RST), .Y(n260) );
	a22oi_1 U326( .A1(n332), .A2(n285), .B1(n333), .B2(n334), .Y(n330) );
	a211oi_1 U327( .A1(n335), .A2(n336), .B1(RST), .C1(n337), .Y(n259) );
	o22ai_1 U328( .A1(G4), .A2(n338), .B1(n339), .B2(n340), .Y(n336) );
	nor3_1 U329( .A(n341), .B(RST), .C(n342), .Y(n258) );
	o32ai_1 U330( .A1(n310), .A2(G9), .A3(G6), .B1(n343), .B2(n311), .Y(n341) );
	nand3_1 U331( .A(n344), .B(n282), .C(n276), .Y(n311) );
	nor3_1 U332( .A(n345), .B(RST), .C(n346), .Y(n257) );
	o32ai_1 U333( .A1(n280), .A2(n287), .A3(n293), .B1(n347), .B2(n339), .Y( n345) );
	nor4_1 U334( .A(n348), .B(n349), .C(RST), .D(n350), .Y(n256) );
	o221ai_1 U335( .A1(G9), .A2(n351), .B1(n352), .B2(n353), .C1(n354), .Y(n348) );
	a22oi_1 U336( .A1(n355), .A2(n276), .B1(n514), .B2(n295), .Y(n351) );
	nor2_1 U337( .A(RST), .B(n356), .Y(n255) );
	a21oi_1 U338( .A1(n357), .A2(n358), .B1(n359), .Y(n356) );
	o221ai_1 U339( .A1(n360), .A2(n317), .B1(n536), .B2(n361), .C1(n362), .Y( G552) );
	o21ai_0 U340( .A1(n363), .A2(n364), .B1(n365), .Y(n362) );
	o22ai_1 U341( .A1(G1), .A2(n293), .B1(n333), .B2(n366), .Y(n364) );
	o21ai_0 U342( .A1(n367), .A2(n368), .B1(n369), .Y(n363) );
	inv_1 U343( .A(n370), .Y(n369) );
	a211oi_1 U344( .A1(n333), .A2(n332), .B1(n371), .C1(n372), .Y(n360) );
	inv_1 U345( .A(n373), .Y(n372) );
	o21ai_0 U346( .A1(n337), .A2(n322), .B1(G6), .Y(n373) );
	nor2_1 U347( .A(n374), .B(n375), .Y(n337) );
	nor3_1 U348( .A(n366), .B(G3), .C(n376), .Y(n371) );
	nand4_1 U349( .A(n377), .B(n378), .C(n379), .D(n380), .Y(G551) );
	or3_1 U350( .A(n368), .B(n381), .C(n382), .X(n380) );
	nand3_1 U351( .A(G5), .B(n383), .C(n355), .Y(n379) );
	o22ai_1 U352( .A1(G0), .A2(n384), .B1(G3), .B2(n385), .Y(n383) );
	a21oi_1 U353( .A1(n281), .A2(G0), .B1(n386), .Y(n385) );
	a21oi_1 U354( .A1(G2), .A2(G0), .B1(n335), .Y(n386) );
	nand3_1 U355( .A(n387), .B(G4), .C(G39), .Y(n378) );
	nand2_1 U356( .A(n365), .B(n388), .Y(n377) );
	nand3_1 U357( .A(n366), .B(n287), .C(n389), .Y(n388) );
	a21oi_1 U358( .A1(n281), .A2(n335), .B1(n390), .Y(n389) );
	a21oi_1 U359( .A1(G5), .A2(n384), .B1(n374), .Y(n390) );
	o221ai_1 U360( .A1(G29), .A2(n382), .B1(n339), .B2(n391), .C1(n392), .Y( G550) );
	a211oi_1 U361( .A1(n393), .A2(n365), .B1(n394), .C1(n395), .Y(n392) );
	nor3_1 U362( .A(n317), .B(n281), .C(n368), .Y(n395) );
	inv_1 U363( .A(n316), .Y(n365) );
	mux2i_1 U364( .A0(n396), .A1(n338), .S(n384), .Y(n393) );
	nand2_1 U365( .A(G2), .B(n282), .Y(n396) );
	inv_1 U366( .A(n397), .Y(n391) );
	or4_1 U367( .A(n397), .B(n394), .C(n398), .D(n399), .X(G549) );
	o32ai_1 U368( .A1(n316), .A2(n400), .A3(n335), .B1(n361), .B2(n401), .Y( n399) );
	nand2_1 U369( .A(n381), .B(n339), .Y(n401) );
	nor4_1 U370( .A(n370), .B(n402), .C(n403), .D(n404), .Y(n400) );
	inv_1 U371( .A(n331), .Y(n404) );
	a21oi_1 U372( .A1(n285), .A2(G5), .B1(n322), .Y(n331) );
	nor2_1 U373( .A(n376), .B(n287), .Y(n322) );
	nor2_1 U374( .A(n366), .B(n405), .Y(n403) );
	a211oi_1 U375( .A1(G3), .A2(G4), .B1(n317), .C1(n338), .Y(n398) );
	inv_1 U376( .A(n387), .Y(n317) );
	nor3_1 U377( .A(G12), .B(G13), .C(n406), .Y(n387) );
	and3_1 U378( .A(n407), .B(n996), .C(G3), .X(n394) );
	nor3_1 U379( .A(n384), .B(G0), .C(n361), .Y(n397) );
	o22ai_1 U380( .A1(n537), .A2(n361), .B1(n408), .B2(n409), .Y(G548) );
	a21oi_1 U381( .A1(n276), .A2(n296), .B1(n410), .Y(n408) );
	o32ai_1 U382( .A1(n297), .A2(n295), .A3(n306), .B1(n411), .B2(n412), .Y( n410) );
	nand2_1 U383( .A(G11), .B(n294), .Y(n412) );
	o22ai_1 U384( .A1(n413), .A2(n305), .B1(n414), .B2(n353), .Y(G547) );
	a21oi_1 U385( .A1(n415), .A2(n303), .B1(n416), .Y(n414) );
	mux2i_1 U386( .A0(n417), .A1(n294), .S(n411), .Y(n416) );
	mux2i_1 U387( .A0(G9), .A1(G11), .S(n326), .Y(n417) );
	nor3_1 U388( .A(n418), .B(n349), .C(n419), .Y(n413) );
	inv_1 U389( .A(n354), .Y(n419) );
	nand3_1 U390( .A(n276), .B(n293), .C(n355), .Y(n354) );
	nor3_1 U391( .A(n420), .B(G7), .C(n409), .Y(n349) );
	nor3_1 U392( .A(n409), .B(n295), .C(n306), .Y(n418) );
	o221ai_1 U393( .A1(n409), .A2(n421), .B1(n422), .B2(n353), .C1(n423), .Y( G542) );
	inv_1 U394( .A(n350), .Y(n423) );
	nor3_1 U395( .A(n352), .B(n303), .C(n409), .Y(n350) );
	inv_1 U396( .A(n424), .Y(n352) );
	nand2_1 U397( .A(n355), .B(G6), .Y(n353) );
	nor3_1 U398( .A(n425), .B(n424), .C(n426), .Y(n422) );
	nor3_1 U399( .A(n297), .B(G8), .C(n326), .Y(n426) );
	o22ai_1 U400( .A1(G7), .A2(n420), .B1(G9), .B2(n427), .Y(n425) );
	o21ai_0 U401( .A1(n303), .A2(n305), .B1(n276), .Y(n421) );
	inv_1 U402( .A(n514), .Y(n409) );
	o22ai_1 U403( .A1(n358), .A2(n428), .B1(G12), .B2(n429), .Y(G539) );
	mux2i_1 U404( .A0(n430), .A1(n431), .S(n407), .Y(n429) );
	nor2_1 U405( .A(n323), .B(n432), .Y(n431) );
	nor2_1 U406( .A(n433), .B(n434), .Y(n430) );
	inv_1 U407( .A(n357), .Y(n428) );
	o221ai_1 U408( .A1(n435), .A2(n436), .B1(n437), .B2(n438), .C1(n439), .Y( G537) );
	o21ai_0 U409( .A1(n440), .A2(G0), .B1(n441), .Y(n439) );
	inv_1 U410( .A(n442), .Y(n441) );
	nor3_1 U411( .A(n443), .B(G9), .C(n293), .Y(n440) );
	a222oi_1 U412( .A1(n329), .A2(G8), .B1(n444), .B2(n332), .C1(n445), .C2( n314), .Y(n438) );
	a221oi_1 U413( .A1(n446), .A2(n447), .B1(n448), .B2(n276), .C1(n342), .Y( n435) );
	nor3_1 U414( .A(n366), .B(n282), .C(n449), .Y(n342) );
	nor2_1 U415( .A(n287), .B(n300), .Y(n448) );
	inv_1 U416( .A(n310), .Y(n446) );
	nand4_1 U417( .A(n450), .B(n326), .C(n451), .D(n282), .Y(n310) );
	or4_1 U418( .A(n452), .B(n453), .C(n454), .D(n455), .X(G535) );
	nor3_1 U419( .A(n442), .B(n456), .C(n443), .Y(n455) );
	inv_1 U420( .A(n515), .Y(n443) );
	nand3_1 U421( .A(n358), .B(n329), .C(n357), .Y(n442) );
	nor3_1 U422( .A(n324), .B(G13), .C(n321), .Y(n357) );
	inv_1 U423( .A(n457), .Y(n324) );
	and2_0 U424( .A(n458), .B(G1), .X(n358) );
	mux2i_1 U425( .A0(n459), .A1(n460), .S(n279), .Y(n458) );
	o211ai_1 U426( .A1(n461), .A2(n462), .B1(G2), .C1(G11), .Y(n460) );
	nor3_1 U427( .A(n463), .B(n464), .C(n367), .Y(n462) );
	nand3_1 U428( .A(n282), .B(n305), .C(n339), .Y(n463) );
	nor4_1 U429( .A(n465), .B(n466), .C(n368), .D(n456), .Y(n461) );
	inv_1 U430( .A(n511), .Y(n456) );
	nand2_1 U431( .A(G7), .B(n308), .Y(n466) );
	nor2_1 U432( .A(G44), .B(n436), .Y(n453) );
	inv_1 U433( .A(n467), .Y(n436) );
	a21oi_1 U434( .A1(n468), .A2(n411), .B1(n469), .Y(n452) );
	a21oi_1 U435( .A1(n470), .A2(n445), .B1(n471), .Y(n469) );
	o221ai_1 U436( .A1(n472), .A2(n382), .B1(G43), .B2(n316), .C1(n473), .Y( G532) );
	a221oi_1 U437( .A1(n474), .A2(n359), .B1(n467), .B2(n475), .C1(n454), .Y( n473) );
	and3_1 U438( .A(n314), .B(n359), .C(n332), .X(n454) );
	o21ai_0 U439( .A1(n366), .A2(n468), .B1(n343), .Y(n475) );
	nor2_1 U440( .A(n476), .B(G3), .Y(n467) );
	inv_1 U441( .A(n437), .Y(n359) );
	nor2_1 U442( .A(n470), .B(n471), .Y(n437) );
	and3_1 U443( .A(n434), .B(n321), .C(G13), .X(n471) );
	o32ai_1 U444( .A1(n376), .A2(G5), .A3(n477), .B1(n478), .B2(n335), .Y(n434) );
	nor2_1 U445( .A(n479), .B(n480), .Y(n478) );
	a21oi_1 U446( .A1(n481), .A2(n482), .B1(n483), .Y(n477) );
	a211oi_1 U447( .A1(n484), .A2(n485), .B1(G10), .C1(G1), .Y(n483) );
	nand3_1 U448( .A(n447), .B(G3), .C(n288), .Y(n485) );
	nor3_1 U449( .A(n306), .B(G8), .C(n327), .Y(n288) );
	nand3_1 U450( .A(n486), .B(n415), .C(n445), .Y(n484) );
	o22ai_1 U451( .A1(G1), .A2(n334), .B1(n367), .B2(n280), .Y(n482) );
	o21ai_0 U452( .A1(n451), .A2(n468), .B1(n449), .Y(n481) );
	inv_1 U453( .A(n476), .Y(n470) );
	o21ai_0 U454( .A1(n449), .A2(n334), .B1(n487), .Y(n474) );
	inv_1 U455( .A(n479), .Y(n487) );
	nor4_1 U456( .A(n488), .B(n366), .C(n368), .D(n376), .Y(n479) );
	or2_0 U457( .A(n464), .B(n297), .X(n449) );
	nand3_1 U458( .A(n433), .B(n321), .C(G13), .Y(n316) );
	a21oi_1 U459( .A1(n347), .A2(n489), .B1(n490), .Y(n433) );
	a21oi_1 U460( .A1(n491), .A2(G1), .B1(n346), .Y(n489) );
	and2_0 U461( .A(G1), .B(n492), .X(n346) );
	o22ai_1 U462( .A1(n493), .A2(n368), .B1(n374), .B2(n293), .Y(n492) );
	inv_1 U463( .A(n285), .Y(n374) );
	nor2_1 U464( .A(n339), .B(G2), .Y(n285) );
	inv_1 U465( .A(n494), .Y(n491) );
	a221oi_1 U466( .A1(n493), .A2(n368), .B1(n495), .B2(n339), .C1(n402), .Y( n494) );
	nor2_1 U467( .A(n343), .B(n282), .Y(n402) );
	inv_1 U468( .A(n447), .Y(n343) );
	nor2_1 U469( .A(G4), .B(G6), .Y(n447) );
	o21ai_0 U470( .A1(n376), .A2(n293), .B1(n287), .Y(n495) );
	inv_1 U471( .A(n496), .Y(n347) );
	o32ai_1 U472( .A1(n384), .A2(G6), .A3(n376), .B1(G1), .B2(n497), .Y(n496) );
	nor2_1 U473( .A(n370), .B(n333), .Y(n497) );
	nor2_1 U474( .A(n367), .B(n376), .Y(n370) );
	inv_1 U475( .A(n332), .Y(n367) );
	nor2_1 U476( .A(n293), .B(G4), .Y(n332) );
	nand2_1 U477( .A(n355), .B(G0), .Y(n382) );
	a221oi_1 U478( .A1(n498), .A2(n376), .B1(n375), .B2(n339), .C1(n499), .Y( n472) );
	mux2i_1 U479( .A0(G4), .A1(n340), .S(n280), .Y(n499) );
	inv_1 U480( .A(n281), .Y(n340) );
	nor2_1 U481( .A(n376), .B(n308), .Y(n281) );
	o22ai_1 U482( .A1(n308), .A2(n368), .B1(n335), .B2(n405), .Y(n498) );
	inv_1 U483( .A(n500), .Y(n405) );
	o32ai_1 U484( .A1(n361), .A2(n501), .A3(n502), .B1(n503), .B2(n476), .Y( G530) );
	nand4_1 U485( .A(n432), .B(n406), .C(n321), .D(n407), .Y(n476) );
	inv_1 U486( .A(G13), .Y(n407) );
	inv_1 U487( .A(n323), .Y(n406) );
	nor2_1 U488( .A(n504), .B(n490), .Y(n323) );
	a221oi_1 U489( .A1(n513), .A2(n486), .B1(n300), .B2(n276), .C1(n424), .Y( n490) );
	nor2_1 U490( .A(n294), .B(n306), .Y(n424) );
	inv_1 U491( .A(n505), .Y(n294) );
	inv_1 U492( .A(n344), .Y(n300) );
	inv_1 U493( .A(G32), .Y(n504) );
	or3_1 U494( .A(n480), .B(n506), .C(n507), .X(n432) );
	o32ai_1 U495( .A1(n488), .A2(n338), .A3(n334), .B1(G2), .B2(n503), .Y(n507) );
	inv_1 U496( .A(n333), .Y(n338) );
	nand3_1 U497( .A(n450), .B(n451), .C(n505), .Y(n488) );
	nor3_1 U498( .A(n508), .B(G5), .C(n451), .Y(n506) );
	mux2i_1 U499( .A0(n509), .A1(n510), .S(n376), .Y(n508) );
	nor2_1 U500( .A(n516), .B(n334), .Y(n510) );
	inv_1 U501( .A(n445), .Y(n334) );
	nor2_1 U502( .A(n366), .B(n339), .Y(n445) );
	a21oi_1 U503( .A1(n486), .A2(n505), .B1(n314), .Y(n516) );
	nor2_1 U504( .A(n305), .B(G10), .Y(n505) );
	nor3_1 U505( .A(n998), .B(G4), .C(n339), .Y(n509) );
	inv_1 U506( .A(n459), .Y(n480) );
	nand4_1 U507( .A(n344), .B(G2), .C(n276), .D(n517), .Y(n459) );
	nor2_1 U508( .A(n368), .B(n366), .Y(n517) );
	inv_1 U509( .A(n493), .Y(n366) );
	nor2_1 U510( .A(n306), .B(n326), .Y(n276) );
	nor2_1 U511( .A(n297), .B(n303), .Y(n344) );
	inv_1 U512( .A(n415), .Y(n297) );
	nor2_1 U513( .A(n305), .B(n451), .Y(n415) );
	and2_0 U514( .A(n518), .B(n519), .X(n503) );
	nand4_1 U515( .A(n500), .B(n493), .C(G11), .D(n314), .Y(n519) );
	o21ai_0 U516( .A1(n305), .A2(n464), .B1(n468), .Y(n314) );
	inv_1 U517( .A(n444), .Y(n468) );
	nor3_1 U518( .A(n306), .B(G9), .C(n465), .Y(n444) );
	inv_1 U519( .A(n427), .Y(n465) );
	nor2_1 U520( .A(n303), .B(G10), .Y(n427) );
	inv_1 U521( .A(G7), .Y(n306) );
	nor2_1 U522( .A(n293), .B(n308), .Y(n493) );
	nor2_1 U523( .A(n282), .B(G3), .Y(n500) );
	nand3_1 U524( .A(n339), .B(n293), .C(n538), .Y(n518) );
	a21oi_1 U525( .A1(n333), .A2(G1), .B1(n520), .Y(n502) );
	a21oi_1 U526( .A1(n384), .A2(n279), .B1(n376), .Y(n520) );
	inv_1 U527( .A(n381), .Y(n384) );
	nor2_1 U528( .A(n335), .B(n308), .Y(n381) );
	inv_1 U529( .A(G1), .Y(n335) );
	nor2_1 U530( .A(n376), .B(n282), .Y(n333) );
	inv_1 U531( .A(G2), .Y(n376) );
	nor3_1 U532( .A(n521), .B(n279), .C(n522), .Y(n501) );
	mux2i_1 U533( .A0(G1), .A1(n280), .S(n282), .Y(n522) );
	nand2_1 U534( .A(G1), .B(G3), .Y(n280) );
	o21ai_0 U535( .A1(G4), .A2(n368), .B1(n283), .Y(n521) );
	nand2_1 U536( .A(G4), .B(n368), .Y(n283) );
	inv_1 U537( .A(n329), .Y(n368) );
	nor2_1 U538( .A(n282), .B(n339), .Y(n329) );
	inv_1 U539( .A(G5), .Y(n282) );
	inv_1 U540( .A(n355), .Y(n361) );
	nor3_1 U541( .A(n457), .B(G13), .C(n321), .Y(n355) );
	inv_1 U542( .A(G12), .Y(n321) );
	nand3_1 U543( .A(n523), .B(n535), .C(n524), .Y(n457) );
	a222oi_1 U544( .A1(n450), .A2(n296), .B1(n525), .B2(n287), .C1(n526), .C2( n301), .Y(n524) );
	nand3_1 U545( .A(G7), .B(n293), .C(n513), .Y(n301) );
	inv_1 U546( .A(G6), .Y(n293) );
	o22ai_1 U547( .A1(n512), .A2(n527), .B1(G8), .B2(n528), .Y(n526) );
	inv_1 U548( .A(n529), .Y(n528) );
	a21oi_1 U549( .A1(G8), .A2(n530), .B1(n529), .Y(n527) );
	nor3_1 U550( .A(G11), .B(G9), .C(G10), .Y(n529) );
	o21ai_0 U551( .A1(n451), .A2(n420), .B1(n327), .Y(n530) );
	inv_1 U552( .A(n296), .Y(n327) );
	inv_1 U553( .A(n295), .Y(n420) );
	nor2_1 U554( .A(n303), .B(n326), .Y(n295) );
	inv_1 U555( .A(G10), .Y(n326) );
	inv_1 U556( .A(n375), .Y(n287) );
	nor2_1 U557( .A(n308), .B(G5), .Y(n375) );
	mux2i_1 U558( .A0(n531), .A1(G5), .S(n339), .Y(n525) );
	inv_1 U559( .A(G3), .Y(n339) );
	nand2_1 U560( .A(n279), .B(n308), .Y(n531) );
	inv_1 U561( .A(G4), .Y(n308) );
	inv_1 U562( .A(G0), .Y(n279) );
	nor2_1 U563( .A(n451), .B(G9), .Y(n296) );
	mux2i_1 U564( .A0(n532), .A1(n533), .S(n451), .Y(n523) );
	inv_1 U565( .A(G11), .Y(n451) );
	a21oi_1 U566( .A1(n464), .A2(n534), .B1(n305), .Y(n533) );
	inv_1 U567( .A(G9), .Y(n305) );
	or2_0 U568( .A(n411), .B(n512), .X(n534) );
	inv_1 U569( .A(n486), .Y(n411) );
	nor2_1 U570( .A(n303), .B(G7), .Y(n486) );
	inv_1 U571( .A(G8), .Y(n303) );
	nand2_1 U572( .A(n450), .B(G10), .Y(n464) );
	nor2_1 U573( .A(G8), .B(G7), .Y(n450) );
	nor2_1 U574( .A(n513), .B(G6), .Y(n532) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_2_( .D(troj3_0_N4), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_2_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_22_( .D(troj3_0_N24), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_22_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_21_( .D(troj3_0_N23), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_21_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_20_( .D(troj3_0_N22), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_20_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_19_( .D(troj3_0_N21), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_19_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_18_( .D(troj3_0_N20), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_18_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_17_( .D(troj3_0_N19), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_17_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_16_( .D(troj3_0_N18), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_16_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_15_( .D(troj3_0_N17), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_15_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_14_( .D(troj3_0_N16), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_14_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_13_( .D(troj3_0_N15), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_13_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_12_( .D(troj3_0_N14), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_12_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_11_( .D(troj3_0_N13), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_11_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_10_( .D(troj3_0_N12), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_10_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_9_( .D(troj3_0_N11), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_9_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_8_( .D(troj3_0_N10), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_8_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_7_( .D(troj3_0_N9), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_7_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_6_( .D(troj3_0_N8), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_6_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_5_( .D(troj3_0_N7), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_5_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_4_( .D(troj3_0_N6), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_4_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_3_( .D(troj3_0_N5), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_3_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_1_( .D(troj3_0_N3), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_1_) );
	dfxtp_1 troj3_0_lfsr_stream3_0_reg_0_( .D(troj3_0_N2), .CLK(CLK), .Q(troj3_0_lfsr_stream3_0_0_) );
	dfxtp_1 troj3_0_load3_0_reg_39_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_39_) );
	dfxtp_1 troj3_0_load3_0_reg_38_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_38_) );
	dfxtp_1 troj3_0_load3_0_reg_37_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_37_) );
	dfxtp_1 troj3_0_load3_0_reg_36_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_36_) );
	dfxtp_1 troj3_0_load3_0_reg_35_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_35_) );
	dfxtp_1 troj3_0_load3_0_reg_34_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_34_) );
	dfxtp_1 troj3_0_load3_0_reg_33_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_33_) );
	dfxtp_1 troj3_0_load3_0_reg_32_( .D(troj3_0_N29), .CLK(CLK), .Q(troj3_0_load3_0_32_) );
	dfxtp_1 troj3_0_load3_0_reg_31_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_31_) );
	dfxtp_1 troj3_0_load3_0_reg_30_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_30_) );
	dfxtp_1 troj3_0_load3_0_reg_29_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_29_) );
	dfxtp_1 troj3_0_load3_0_reg_28_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_28_) );
	dfxtp_1 troj3_0_load3_0_reg_27_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_27_) );
	dfxtp_1 troj3_0_load3_0_reg_26_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_26_) );
	dfxtp_1 troj3_0_load3_0_reg_25_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_25_) );
	dfxtp_1 troj3_0_load3_0_reg_24_( .D(troj3_0_N28), .CLK(CLK), .Q(troj3_0_load3_0_24_) );
	dfxtp_1 troj3_0_load3_0_reg_23_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_23_) );
	dfxtp_1 troj3_0_load3_0_reg_22_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_22_) );
	dfxtp_1 troj3_0_load3_0_reg_21_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_21_) );
	dfxtp_1 troj3_0_load3_0_reg_20_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_20_) );
	dfxtp_1 troj3_0_load3_0_reg_19_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_19_) );
	dfxtp_1 troj3_0_load3_0_reg_18_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_18_) );
	dfxtp_1 troj3_0_load3_0_reg_17_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_17_) );
	dfxtp_1 troj3_0_load3_0_reg_16_( .D(troj3_0_N27), .CLK(CLK), .Q(troj3_0_load3_0_16_) );
	dfxtp_1 troj3_0_load3_0_reg_15_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_15_) );
	dfxtp_1 troj3_0_load3_0_reg_14_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_14_) );
	dfxtp_1 troj3_0_load3_0_reg_13_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_13_) );
	dfxtp_1 troj3_0_load3_0_reg_12_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_12_) );
	dfxtp_1 troj3_0_load3_0_reg_11_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_11_) );
	dfxtp_1 troj3_0_load3_0_reg_10_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_10_) );
	dfxtp_1 troj3_0_load3_0_reg_9_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_9_) );
	dfxtp_1 troj3_0_load3_0_reg_8_( .D(troj3_0_N26), .CLK(CLK), .Q(troj3_0_load3_0_8_) );
	dfxtp_1 troj3_0_load3_0_reg_7_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_7_) );
	dfxtp_1 troj3_0_load3_0_reg_6_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_6_) );
	dfxtp_1 troj3_0_load3_0_reg_5_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_5_) );
	dfxtp_1 troj3_0_load3_0_reg_4_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_4_) );
	dfxtp_1 troj3_0_load3_0_reg_3_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_3_) );
	dfxtp_1 troj3_0_load3_0_reg_2_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_2_) );
	dfxtp_1 troj3_0_load3_0_reg_1_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_1_) );
	dfxtp_1 troj3_0_load3_0_reg_0_( .D(troj3_0_N25), .CLK(CLK), .Q(troj3_0_load3_0_0_) );
	or2_0 troj3_0_U3( .A(troj3_0_n1), .B(troj3_0_lfsr_stream3_0_8_), .X(troj3_0_N9) );
	or2_0 troj3_0_U4( .A(troj3_0_lfsr_stream3_0_7_), .B(troj3_0_n1), .X(troj3_0_N8) );
	and2_0 troj3_0_U5( .A(troj3_0_lfsr_stream3_0_6_), .B(RST), .X(troj3_0_N7) );
	and2_0 troj3_0_U6( .A(RST), .B(troj3_0_lfsr_stream3_0_5_), .X(troj3_0_N6) );
	or2_0 troj3_0_U7( .A(troj3_0_n1), .B(troj3_0_lfsr_stream3_0_4_), .X(troj3_0_N5) );
	or2_0 troj3_0_U8( .A(troj3_0_n1), .B(troj3_0_lfsr_stream3_0_3_), .X(troj3_0_N4) );
	or2_0 troj3_0_U9( .A(troj3_0_n1), .B(troj3_0_lfsr_stream3_0_2_), .X(troj3_0_N3) );
	xor2_1 troj3_0_U10( .A(troj3_0_lfsr_stream3_0_4_), .B(n362), .X(troj3_0_N29) );
	xor2_1 troj3_0_U11( .A(troj3_0_lfsr_stream3_0_3_), .B(n280), .X(troj3_0_N28) );
	xor2_1 troj3_0_U12( .A(troj3_0_lfsr_stream3_0_2_), .B(n337), .X(troj3_0_N27) );
	xor2_1 troj3_0_U13( .A(troj3_0_lfsr_stream3_0_1_), .B(n261), .X(troj3_0_N26) );
	xor2_1 troj3_0_U14( .A(troj3_0_lfsr_stream3_0_0_), .B(n321), .X(troj3_0_N25) );
	nor2_1 troj3_0_U15( .A(troj3_0_n2), .B(troj3_0_n1), .Y(troj3_0_N24) );
	xor2_1 troj3_0_U16( .A(troj3_0_n3), .B(troj3_0_n4), .X(troj3_0_n2) );
	xor2_1 troj3_0_U17( .A(troj3_0_lfsr_stream3_0_8_), .B(troj3_0_lfsr_stream3_0_5_), .X(troj3_0_n4) );
	xnor2_1 troj3_0_U18( .A(troj3_0_lfsr_stream3_0_22_), .B(troj3_0_lfsr_stream3_0_2_), .Y(troj3_0_n3) );
	or2_0 troj3_0_U19( .A(troj3_0_n1), .B(troj3_0_lfsr_stream3_0_22_), .X(troj3_0_N23) );
	and2_0 troj3_0_U20( .A(troj3_0_lfsr_stream3_0_21_), .B(RST), .X(troj3_0_N22) );
	and2_0 troj3_0_U21( .A(troj3_0_lfsr_stream3_0_20_), .B(RST), .X(troj3_0_N21) );
	or2_0 troj3_0_U22( .A(troj3_0_lfsr_stream3_0_19_), .B(troj3_0_n1), .X(troj3_0_N20) );
	or2_0 troj3_0_U23( .A(troj3_0_n1), .B(troj3_0_lfsr_stream3_0_1_), .X(troj3_0_N2) );
	and2_0 troj3_0_U24( .A(troj3_0_lfsr_stream3_0_18_), .B(RST), .X(troj3_0_N19) );
	and2_0 troj3_0_U25( .A(troj3_0_lfsr_stream3_0_17_), .B(RST), .X(troj3_0_N18) );
	and2_0 troj3_0_U26( .A(troj3_0_lfsr_stream3_0_16_), .B(RST), .X(troj3_0_N17) );
	and2_0 troj3_0_U27( .A(troj3_0_lfsr_stream3_0_15_), .B(RST), .X(troj3_0_N16) );
	and2_0 troj3_0_U28( .A(troj3_0_lfsr_stream3_0_14_), .B(RST), .X(troj3_0_N15) );
	and2_0 troj3_0_U29( .A(troj3_0_lfsr_stream3_0_13_), .B(RST), .X(troj3_0_N14) );
	or2_0 troj3_0_U30( .A(troj3_0_lfsr_stream3_0_12_), .B(troj3_0_n1), .X(troj3_0_N13) );
	and2_0 troj3_0_U31( .A(troj3_0_lfsr_stream3_0_11_), .B(RST), .X(troj3_0_N12) );
	and2_0 troj3_0_U32( .A(troj3_0_lfsr_stream3_0_10_), .B(RST), .X(troj3_0_N11) );
	or2_0 troj3_0_U33( .A(troj3_0_lfsr_stream3_0_9_), .B(troj3_0_n1), .X(troj3_0_N10) );
	inv_1 troj3_0_U34( .A(RST), .Y(troj3_0_n1) );
endmodule
