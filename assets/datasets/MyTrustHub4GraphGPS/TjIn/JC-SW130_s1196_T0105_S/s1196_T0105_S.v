//****************************************************************
// TRIT-ASIC Generated Trojans.  The design generated below is for academic use only.
// Please cite the following if using the benchmark provided:
// J. Cruz, Y. Huang, P. Mishra, S. Bhunia, 
// "An Automated Configurable Trojan Insertion Framework for Dynamic Trust Benchmarks", DATE, 2018
//****************************************************************

module s1196( GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, 
		G2, G3, G4, G5, G6, G7, G8, G9, G45, G530, 
		G532, G535, G537, G539, G542, G546, G547, G548, G549, G550, 
		G551, G552);

	input GND, VDD, RST, CLK, G0, G1, G10, G11, G12, G13, G2, G3, G4, G5, G6, G7,
         G8, G9;

	output G45, G530, G532, G535, G537, G539, G542, G546, G547, G548, G549, G550,
         G551, G552;

	wire n541, n542, n540, n990, G46, G39, G35, G32, n986, G29, 
		G44, G43, G40, n497, n498, n496, n275, n277, n276, n283, 
		n287, n274, n273, n291, n272, n292, n271, n270, n298, n300, 
		n299, n269, n306, n268, n282, n267, n310, n309, n312, n314, 
		n308, n318, n266, n322, n265, n324, n326, n264, n328, n263, 
		n333, n337, n262, n341, n340, n261, n345, n347, n346, n344, 
		n350, n349, n343, n260, n356, n358, n359, n355, n259, n361, 
		n367, n364, n258, n375, n377, n376, n373, n383, n384, n334, 
		n382, n389, n391, n393, n395, n386, n390, n398, n388, n387, 
		n401, n404, n403, n402, n406, n408, n338, n409, n297, n385, 
		n379, n407, n411, n329, n302, n412, n400, n405, n416, n418, 
		n420, n423, n425, n426, n422, n368, n362, n427, n431, n363, 
		n365, n366, n430, n435, n434, n281, n429, n417, n437, n439, 
		n303, n438, n304, n436, n446, n449, n450, n339, n295, n445, 
		n456, n458, n455, n459, n453, n464, n466, n467, n463, n457, 
		n372, n441, n472, n471, n290, n470, n474, n380, n475, n477, 
		n462, n480, n371, n479, n476, n483, n485, n486, n484, n482, 
		n468, n454, n444, n487, n489, n491, n490, n494, n493, n500, 
		n280, n492, n501, n502, n495, n503, n378, n332, n433, n451, 
		n296, n381, n443, n505, n354, n469, n396, n348, n504, n351, 
		n330, n507, n508, n510, n509, n414, n319, n465, n478, n447, 
		n415, n410, n506, n514, n432, n440, n517, n473, n488, n293, 
		n360, n424, n428, n279, n518, n461, n413, n320, n516, n519, 
		n521, n325, n327, n460, n284, n522, n520, n515, n481, n421, 
		n289, n452, n448, n392, n353, n397, n399, n374, n513, n525, 
		n311, n323, n336, n394, n526, n315, n331, n313, n512, n369, 
		n301, n442, n528, n321, n352, n305, n531, n532, n316, n335, 
		n530, n533, n370, n307, n529, n285, n527, n288, n536, n523, 
		n524, n537, n342, n539, n534, n357, n278, n538, n419, n499, 
		n286, n535, n511, n317, n294, troj5_0_counter_0_, troj5_0_counter_1_, troj5_0_counter_2_, troj5_0_n1, troj5_0_n2, 
		troj5_0_n3, troj5_0_n4, troj5_0_N7, troj5_0_N5, troj5_0_N4, troj5_0_n5, troj5_0_N3, troj5_0_N2, Trojan_out_5_0, Trigger_en_5_0, tempG551;

	dfxbp_1 DFF_13_Q_reg( .D(n275), .CLK(CLK), .Q(n541) );
	dfxbp_1 DFF_9_Q_reg( .D(n274), .CLK(CLK), .Q(n542) );
	dfxbp_1 DFF_8_Q_reg( .D(n273), .CLK(CLK), .Q(n540) );
	dfxbp_1 DFF_7_Q_reg( .D(n272), .CLK(CLK), .Q_N(n990) );
	dfxtp_1 DFF_17_Q_reg( .D(n267), .CLK(CLK), .Q(G46) );
	dfxtp_1 DFF_10_Q_reg( .D(n266), .CLK(CLK), .Q(G39) );
	dfxtp_1 DFF_6_Q_reg( .D(n265), .CLK(CLK), .Q(G35) );
	dfxtp_1 DFF_3_Q_reg( .D(n264), .CLK(CLK), .Q(G32) );
	dfxbp_1 DFF_4_Q_reg( .D(n270), .CLK(CLK), .Q_N(n986) );
	dfxtp_1 DFF_0_Q_reg( .D(n263), .CLK(CLK), .Q(G29) );
	dfxtp_1 DFF_15_Q_reg( .D(n262), .CLK(CLK), .Q(G44) );
	dfxtp_1 DFF_14_Q_reg( .D(n261), .CLK(CLK), .Q(G43) );
	dfxtp_1 DFF_11_Q_reg( .D(n260), .CLK(CLK), .Q(G40) );
	dfxbp_1 DFF_12_Q_reg( .D(n259), .CLK(CLK), .Q_N(G546) );
	dfxtp_1 DFF_16_Q_reg( .D(n258), .CLK(CLK), .Q(G45) );
	dfxtp_1 DFF_5_Q_reg( .D(n271), .CLK(CLK), .Q(n497) );
	dfxtp_1 DFF_2_Q_reg( .D(n269), .CLK(CLK), .Q(n498) );
	dfxtp_1 DFF_1_Q_reg( .D(n268), .CLK(CLK), .Q(n496) );
	nor3_1 U291( .A(n276), .B(RST), .C(n277), .Y(n275) );
	nor3_1 U292( .A(n278), .B(n279), .C(n280), .Y(n277) );
	o32ai_1 U293( .A1(n281), .A2(n278), .A3(n282), .B1(n283), .B2(n284), .Y( n276) );
	a21oi_1 U294( .A1(n285), .A2(n286), .B1(n287), .Y(n283) );
	nor3_1 U295( .A(n288), .B(G6), .C(n289), .Y(n287) );
	nor2_1 U296( .A(RST), .B(n290), .Y(n274) );
	nor2_1 U297( .A(RST), .B(n291), .Y(n273) );
	xnor2_1 U298( .A(G9), .B(G6), .Y(n291) );
	nor2_1 U299( .A(RST), .B(n292), .Y(n272) );
	a21oi_1 U300( .A1(n293), .A2(n294), .B1(n295), .Y(n292) );
	a21oi_1 U301( .A1(n296), .A2(n297), .B1(RST), .Y(n271) );
	nor2_1 U302( .A(RST), .B(n298), .Y(n270) );
	mux2i_1 U303( .A0(n299), .A1(n300), .S(n301), .Y(n298) );
	nand2_1 U304( .A(n302), .B(n303), .Y(n300) );
	nand4_1 U305( .A(G0), .B(n304), .C(G1), .D(n305), .Y(n299) );
	nor2_1 U306( .A(RST), .B(n306), .Y(n269) );
	a22oi_1 U307( .A1(G10), .A2(n280), .B1(G11), .B2(n284), .Y(n306) );
	a21oi_1 U308( .A1(n307), .A2(n282), .B1(RST), .Y(n268) );
	inv_1 U309( .A(n285), .Y(n282) );
	nor4_1 U310( .A(RST), .B(n308), .C(n309), .D(n310), .Y(n267) );
	a211oi_1 U311( .A1(n496), .A2(G7), .B1(G6), .C1(n279), .Y(n310) );
	a211oi_1 U312( .A1(G4), .A2(n311), .B1(n312), .C1(n313), .Y(n309) );
	mux2i_1 U313( .A0(n314), .A1(n294), .S(n315), .Y(n312) );
	nor2_1 U314( .A(n316), .B(n317), .Y(n314) );
	a21oi_1 U315( .A1(n318), .A2(G0), .B1(G1), .Y(n308) );
	mux2i_1 U316( .A0(n319), .A1(n320), .S(n321), .Y(n318) );
	nor2_1 U317( .A(RST), .B(n322), .Y(n266) );
	xnor2_1 U318( .A(n323), .B(G2), .Y(n322) );
	nor2_1 U319( .A(RST), .B(n324), .Y(n265) );
	mux2i_1 U320( .A0(n325), .A1(n326), .S(n278), .Y(n324) );
	nor2_1 U321( .A(G8), .B(n327), .Y(n326) );
	a21oi_1 U322( .A1(n328), .A2(n329), .B1(RST), .Y(n264) );
	a22oi_1 U323( .A1(n319), .A2(n330), .B1(n331), .B2(n332), .Y(n328) );
	a211oi_1 U324( .A1(n315), .A2(n333), .B1(RST), .C1(n334), .Y(n263) );
	o21ai_0 U325( .A1(n335), .A2(n336), .B1(n337), .Y(n333) );
	inv_1 U326( .A(n338), .Y(n337) );
	nor4_1 U327( .A(RST), .B(n339), .C(n340), .D(n341), .Y(n262) );
	and3_1 U328( .A(n295), .B(n342), .C(n278), .X(n341) );
	and4_1 U329( .A(n278), .B(n294), .C(n305), .D(n293), .X(n340) );
	nor4_1 U330( .A(RST), .B(n343), .C(n344), .D(n345), .Y(n261) );
	mux2i_1 U331( .A0(n346), .A1(n347), .S(n278), .Y(n345) );
	nand3_1 U332( .A(G2), .B(n348), .C(G3), .Y(n347) );
	nand2_1 U333( .A(n319), .B(G1), .Y(n346) );
	mux2i_1 U334( .A0(n349), .A1(n350), .S(n315), .Y(n344) );
	or2_0 U335( .A(n335), .B(n351), .X(n350) );
	nand3_1 U336( .A(G3), .B(G6), .C(n352), .Y(n349) );
	nor2_1 U337( .A(n353), .B(n354), .Y(n343) );
	nor3_1 U338( .A(n355), .B(RST), .C(n356), .Y(n260) );
	a21oi_1 U339( .A1(n357), .A2(n358), .B1(n286), .Y(n356) );
	o21ai_0 U340( .A1(n359), .A2(n498), .B1(G6), .Y(n358) );
	nor3_1 U341( .A(n284), .B(G11), .C(n342), .Y(n359) );
	nor3_1 U342( .A(n360), .B(G10), .C(n278), .Y(n355) );
	nor4_1 U343( .A(n361), .B(n362), .C(RST), .D(n363), .Y(n259) );
	o221ai_1 U344( .A1(G9), .A2(n364), .B1(n365), .B2(n366), .C1(n367), .Y(n361) );
	inv_1 U345( .A(n368), .Y(n367) );
	a22oi_1 U346( .A1(n369), .A2(n279), .B1(n497), .B2(n370), .Y(n364) );
	a21oi_1 U347( .A1(n371), .A2(n372), .B1(RST), .Y(n258) );
	o221ai_1 U348( .A1(n373), .A2(n278), .B1(G40), .B2(n374), .C1(n375), .Y( G552) );
	a21oi_1 U349( .A1(n353), .A2(n376), .B1(n377), .Y(n375) );
	nor3_1 U350( .A(n297), .B(n378), .C(n379), .Y(n377) );
	o22ai_1 U351( .A1(n331), .A2(n296), .B1(n380), .B2(n297), .Y(n376) );
	a21oi_1 U352( .A1(n381), .A2(n382), .B1(n383), .Y(n373) );
	inv_1 U353( .A(n384), .Y(n383) );
	o21ai_0 U354( .A1(n334), .A2(n302), .B1(n385), .Y(n384) );
	nor2_1 U355( .A(n386), .B(n352), .Y(n334) );
	o21ai_0 U356( .A1(n348), .A2(n313), .B1(n311), .Y(n382) );
	nand3_1 U357( .A(n387), .B(n388), .C(n389), .Y(tempG551) );
	a22oi_1 U358( .A1(G5), .A2(n390), .B1(n381), .B2(n391), .Y(n389) );
	nand3_1 U359( .A(n321), .B(n392), .C(n393), .Y(n391) );
	a21oi_1 U360( .A1(n394), .A2(n315), .B1(n395), .Y(n393) );
	a21oi_1 U361( .A1(G5), .A2(n396), .B1(n386), .Y(n395) );
	inv_1 U362( .A(n319), .Y(n386) );
	o32ai_1 U363( .A1(n397), .A2(n305), .A3(n380), .B1(n374), .B2(n398), .Y( n390) );
	o21ai_0 U364( .A1(n320), .A2(n317), .B1(G1), .Y(n398) );
	nand3_1 U365( .A(n323), .B(n396), .C(n399), .Y(n388) );
	nand3_1 U366( .A(n385), .B(G4), .C(G39), .Y(n387) );
	o221ai_1 U367( .A1(n335), .A2(n400), .B1(G29), .B2(n397), .C1(n401), .Y( G550) );
	a211oi_1 U368( .A1(n402), .A2(n381), .B1(n403), .C1(n404), .Y(n401) );
	nor3_1 U369( .A(n297), .B(n394), .C(n311), .Y(n404) );
	inv_1 U370( .A(n405), .Y(n403) );
	mux2i_1 U371( .A0(n406), .A1(n379), .S(n396), .Y(n402) );
	nand2_1 U372( .A(G2), .B(n294), .Y(n406) );
	nand4_1 U373( .A(n405), .B(n400), .C(n407), .D(n408), .Y(G549) );
	a22oi_1 U374( .A1(n409), .A2(n335), .B1(n338), .B2(n385), .Y(n408) );
	nor2_1 U375( .A(n379), .B(G4), .Y(n338) );
	o22ai_1 U376( .A1(n396), .A2(n374), .B1(n379), .B2(n297), .Y(n409) );
	inv_1 U377( .A(n385), .Y(n297) );
	nor3_1 U378( .A(G12), .B(G13), .C(n410), .Y(n385) );
	inv_1 U379( .A(n331), .Y(n379) );
	nand3_1 U380( .A(G1), .B(n411), .C(n381), .Y(n407) );
	nand3_1 U381( .A(n412), .B(n413), .C(n329), .Y(n411) );
	a21oi_1 U382( .A1(G5), .A2(n319), .B1(n302), .Y(n329) );
	nor2_1 U383( .A(n321), .B(n313), .Y(n302) );
	o21ai_0 U384( .A1(n414), .A2(G5), .B1(n305), .Y(n412) );
	nand3_1 U385( .A(n348), .B(n317), .C(n369), .Y(n400) );
	nand3_1 U386( .A(n415), .B(n986), .C(G3), .Y(n405) );
	o22ai_1 U387( .A1(n541), .A2(n374), .B1(n416), .B2(n417), .Y(G548) );
	a21oi_1 U388( .A1(n279), .A2(n285), .B1(n418), .Y(n416) );
	o32ai_1 U389( .A1(n280), .A2(n370), .A3(n284), .B1(n419), .B2(n420), .Y( n418) );
	nand2_1 U390( .A(G11), .B(n421), .Y(n420) );
	o22ai_1 U391( .A1(n422), .A2(n342), .B1(n423), .B2(n366), .Y(G547) );
	a21oi_1 U392( .A1(n424), .A2(n286), .B1(n425), .Y(n423) );
	mux2i_1 U393( .A0(n426), .A1(n421), .S(n419), .Y(n425) );
	mux2i_1 U394( .A0(G9), .A1(G11), .S(n307), .Y(n426) );
	nor3_1 U395( .A(n427), .B(n362), .C(n368), .Y(n422) );
	nor3_1 U396( .A(n428), .B(G6), .C(n374), .Y(n368) );
	nor3_1 U397( .A(n281), .B(G7), .C(n417), .Y(n362) );
	nor3_1 U398( .A(n417), .B(n370), .C(n284), .Y(n427) );
	o221ai_1 U399( .A1(n417), .A2(n429), .B1(n430), .B2(n366), .C1(n431), .Y( G542) );
	inv_1 U400( .A(n363), .Y(n431) );
	nor3_1 U401( .A(n365), .B(n286), .C(n417), .Y(n363) );
	inv_1 U402( .A(n432), .Y(n365) );
	nand2_1 U403( .A(n369), .B(G6), .Y(n366) );
	nor4_1 U404( .A(n433), .B(n432), .C(n434), .D(n435), .Y(n430) );
	nor2_1 U405( .A(G7), .B(n281), .Y(n435) );
	a21oi_1 U406( .A1(G8), .A2(n281), .B1(G9), .Y(n434) );
	inv_1 U407( .A(n370), .Y(n281) );
	o21ai_0 U408( .A1(n342), .A2(n286), .B1(n279), .Y(n429) );
	inv_1 U409( .A(n497), .Y(n417) );
	mux2i_1 U410( .A0(n436), .A1(n437), .S(n415), .Y(G539) );
	mux2i_1 U411( .A0(n438), .A1(n439), .S(n301), .Y(n437) );
	nor2_1 U412( .A(n303), .B(n440), .Y(n439) );
	inv_1 U413( .A(n410), .Y(n303) );
	nor2_1 U414( .A(n304), .B(n441), .Y(n438) );
	inv_1 U415( .A(n442), .Y(n304) );
	nand3_1 U416( .A(n443), .B(n301), .C(n444), .Y(n436) );
	o22ai_1 U417( .A1(n445), .A2(n313), .B1(n446), .B2(n447), .Y(G537) );
	a221oi_1 U418( .A1(n352), .A2(n293), .B1(n448), .B2(n325), .C1(n449), .Y( n446) );
	inv_1 U419( .A(n450), .Y(n449) );
	a21oi_1 U420( .A1(n305), .A2(n295), .B1(n339), .Y(n450) );
	nor3_1 U421( .A(n413), .B(G7), .C(n451), .Y(n339) );
	nor4_1 U422( .A(n452), .B(G10), .C(G11), .D(G5), .Y(n295) );
	a222oi_1 U423( .A1(n453), .A2(n454), .B1(n455), .B2(G8), .C1(n456), .C2( n457), .Y(n445) );
	a21oi_1 U424( .A1(n428), .A2(n458), .B1(n354), .Y(n456) );
	nand3_1 U425( .A(G6), .B(n342), .C(n542), .Y(n458) );
	nor2_1 U426( .A(n371), .B(n459), .Y(n455) );
	a21oi_1 U427( .A1(n460), .A2(G6), .B1(n323), .Y(n459) );
	nor2_1 U428( .A(n461), .B(n332), .Y(n453) );
	or3_1 U429( .A(n462), .B(n463), .C(n464), .X(G535) );
	o21ai_0 U430( .A1(G44), .A2(n465), .B1(n466), .Y(n464) );
	o21ai_0 U431( .A1(n460), .A2(n289), .B1(n467), .Y(n466) );
	o32ai_1 U432( .A1(n447), .A2(n288), .A3(n332), .B1(n321), .B2(n468), .Y( n467) );
	and4_1 U433( .A(n469), .B(n540), .C(n542), .D(n457), .X(n463) );
	inv_1 U434( .A(n372), .Y(n457) );
	nand4_1 U435( .A(G12), .B(n441), .C(n442), .D(n415), .Y(n372) );
	o22ai_1 U436( .A1(n315), .A2(n470), .B1(n471), .B2(n472), .Y(n441) );
	nand3_1 U437( .A(n469), .B(G2), .C(n540), .Y(n472) );
	or3_1 U438( .A(n286), .B(n288), .C(n290), .X(n471) );
	nand4_1 U439( .A(G7), .B(n317), .C(n307), .D(n305), .Y(n290) );
	mux2i_1 U440( .A0(n473), .A1(n474), .S(n317), .Y(n470) );
	nor4_1 U441( .A(n475), .B(n380), .C(n452), .D(n378), .Y(n474) );
	inv_1 U442( .A(n414), .Y(n380) );
	nand3_1 U443( .A(G10), .B(n294), .C(n285), .Y(n475) );
	o211ai_1 U444( .A1(G43), .A2(n296), .B1(n476), .C1(n477), .Y(G532) );
	a221oi_1 U445( .A1(n478), .A2(n479), .B1(n480), .B2(n481), .C1(n462), .Y( n477) );
	nor3_1 U446( .A(n461), .B(n371), .C(n378), .Y(n462) );
	nor2_1 U447( .A(n371), .B(n278), .Y(n480) );
	and2_0 U448( .A(n468), .B(n447), .X(n371) );
	o21ai_0 U449( .A1(n327), .A2(n413), .B1(G4), .Y(n479) );
	a22oi_1 U450( .A1(n433), .A2(n482), .B1(n399), .B2(n483), .Y(n476) );
	o221ai_1 U451( .A1(n484), .A2(n305), .B1(G3), .B2(n321), .C1(n485), .Y(n483) );
	mux2i_1 U452( .A0(n486), .A1(n394), .S(n315), .Y(n485) );
	or2_0 U453( .A(n316), .B(n320), .X(n486) );
	a21oi_1 U454( .A1(n323), .A2(n313), .B1(n414), .Y(n484) );
	o21ai_0 U455( .A1(n332), .A2(n447), .B1(n468), .Y(n482) );
	inv_1 U456( .A(n454), .Y(n468) );
	nor3_1 U457( .A(n444), .B(G12), .C(n415), .Y(n454) );
	inv_1 U458( .A(n487), .Y(n444) );
	o22ai_1 U459( .A1(n315), .A2(n488), .B1(n489), .B2(n313), .Y(n487) );
	a21oi_1 U460( .A1(n490), .A2(n294), .B1(n491), .Y(n489) );
	and3_1 U461( .A(n481), .B(n469), .C(n353), .X(n491) );
	nand3_1 U462( .A(n492), .B(n493), .C(n494), .Y(n490) );
	or3_1 U463( .A(n495), .B(G7), .C(n451), .X(n494) );
	nand3_1 U464( .A(n448), .B(n499), .C(n500), .Y(n493) );
	nor3_1 U465( .A(n280), .B(G10), .C(G1), .Y(n500) );
	inv_1 U466( .A(n424), .Y(n280) );
	nand3_1 U467( .A(n460), .B(G11), .C(n501), .Y(n492) );
	mux2i_1 U468( .A0(n495), .A1(n502), .S(n286), .Y(n501) );
	nand3_1 U469( .A(n315), .B(n278), .C(n316), .Y(n502) );
	mux2i_1 U470( .A0(n503), .A1(n448), .S(n315), .Y(n495) );
	nor2_1 U471( .A(n335), .B(n378), .Y(n503) );
	inv_1 U472( .A(n330), .Y(n378) );
	inv_1 U473( .A(n448), .Y(n332) );
	inv_1 U474( .A(n451), .Y(n433) );
	nand3_1 U475( .A(G10), .B(n286), .C(n424), .Y(n451) );
	inv_1 U476( .A(n381), .Y(n296) );
	nor3_1 U477( .A(n443), .B(G12), .C(n415), .Y(n381) );
	o21ai_0 U478( .A1(n504), .A2(n505), .B1(n506), .Y(n443) );
	o32ai_1 U479( .A1(n313), .A2(G6), .A3(n396), .B1(n353), .B2(n354), .Y(n505) );
	inv_1 U480( .A(n469), .Y(n354) );
	nor2_1 U481( .A(n311), .B(n315), .Y(n469) );
	inv_1 U482( .A(n348), .Y(n396) );
	nor2_1 U483( .A(n305), .B(n315), .Y(n348) );
	mux2i_1 U484( .A0(n507), .A1(n351), .S(n315), .Y(n504) );
	a21oi_1 U485( .A1(G2), .A2(n330), .B1(n331), .Y(n351) );
	nor2_1 U486( .A(n278), .B(G4), .Y(n330) );
	a221oi_1 U487( .A1(n353), .A2(n311), .B1(n352), .B2(n335), .C1(n508), .Y( n507) );
	mux2i_1 U488( .A0(n509), .A1(n510), .S(n278), .Y(n508) );
	nand2_1 U489( .A(G5), .B(n305), .Y(n510) );
	nor2_1 U490( .A(n319), .B(n414), .Y(n509) );
	nor2_1 U491( .A(n313), .B(G3), .Y(n414) );
	nor2_1 U492( .A(n335), .B(G2), .Y(n319) );
	o221ai_1 U493( .A1(n511), .A2(n512), .B1(n513), .B2(n397), .C1(n465), .Y( G530) );
	inv_1 U494( .A(n478), .Y(n465) );
	nor2_1 U495( .A(n447), .B(G3), .Y(n478) );
	nand4_1 U496( .A(n440), .B(n410), .C(n301), .D(n415), .Y(n447) );
	inv_1 U497( .A(G13), .Y(n415) );
	nand2_1 U498( .A(G32), .B(n506), .Y(n410) );
	inv_1 U499( .A(n514), .Y(n506) );
	a221oi_1 U500( .A1(n360), .A2(n279), .B1(n499), .B2(n496), .C1(n432), .Y( n514) );
	nor2_1 U501( .A(n421), .B(n284), .Y(n432) );
	nand3_1 U502( .A(n515), .B(n516), .C(n517), .Y(n440) );
	a21oi_1 U503( .A1(n320), .A2(n518), .B1(n473), .Y(n517) );
	inv_1 U504( .A(n488), .Y(n473) );
	nand4_1 U505( .A(n353), .B(n323), .C(G2), .D(n293), .Y(n488) );
	nor2_1 U506( .A(n428), .B(n360), .Y(n293) );
	nand2_1 U507( .A(G8), .B(n424), .Y(n360) );
	nor2_1 U508( .A(n342), .B(n288), .Y(n424) );
	inv_1 U509( .A(n279), .Y(n428) );
	nor2_1 U510( .A(n284), .B(n307), .Y(n279) );
	o32ai_1 U511( .A1(n413), .A2(n461), .A3(n288), .B1(G6), .B2(n990), .Y(n518) );
	inv_1 U512( .A(n325), .Y(n461) );
	nand2_1 U513( .A(n353), .B(G5), .Y(n413) );
	nor2_1 U514( .A(G2), .B(G3), .Y(n320) );
	nand3_1 U515( .A(G11), .B(n294), .C(n519), .Y(n516) );
	mux2i_1 U516( .A0(n520), .A1(n521), .S(n313), .Y(n519) );
	o21ai_0 U517( .A1(n522), .A2(n325), .B1(n448), .Y(n521) );
	o21ai_0 U518( .A1(n286), .A2(n327), .B1(n523), .Y(n325) );
	inv_1 U519( .A(n460), .Y(n327) );
	nor3_1 U520( .A(G10), .B(G9), .C(n284), .Y(n460) );
	inv_1 U521( .A(G7), .Y(n284) );
	nor2_1 U522( .A(n421), .B(n419), .Y(n522) );
	nand2_1 U523( .A(G35), .B(n316), .Y(n520) );
	nand3_1 U524( .A(n448), .B(n331), .C(n481), .Y(n515) );
	nor3_1 U525( .A(n452), .B(G11), .C(n421), .Y(n481) );
	inv_1 U526( .A(n289), .Y(n421) );
	nor2_1 U527( .A(n342), .B(G10), .Y(n289) );
	inv_1 U528( .A(n524), .Y(n452) );
	nor2_1 U529( .A(n392), .B(n335), .Y(n448) );
	inv_1 U530( .A(n353), .Y(n392) );
	nor2_1 U531( .A(n305), .B(n278), .Y(n353) );
	inv_1 U532( .A(n399), .Y(n397) );
	nor2_1 U533( .A(n374), .B(n317), .Y(n399) );
	inv_1 U534( .A(n369), .Y(n374) );
	a21oi_1 U535( .A1(n331), .A2(n315), .B1(n525), .Y(n513) );
	mux2i_1 U536( .A0(n526), .A1(n336), .S(n311), .Y(n525) );
	inv_1 U537( .A(n323), .Y(n311) );
	nor2_1 U538( .A(n294), .B(n335), .Y(n323) );
	inv_1 U539( .A(n394), .Y(n336) );
	nor2_1 U540( .A(n313), .B(n305), .Y(n394) );
	nand2_1 U541( .A(G2), .B(n305), .Y(n526) );
	inv_1 U542( .A(G1), .Y(n315) );
	nor2_1 U543( .A(n294), .B(n313), .Y(n331) );
	inv_1 U544( .A(G2), .Y(n313) );
	nand2_1 U545( .A(n369), .B(G2), .Y(n512) );
	nor3_1 U546( .A(n442), .B(G13), .C(n301), .Y(n369) );
	inv_1 U547( .A(G12), .Y(n301) );
	nand3_1 U548( .A(n527), .B(G46), .C(n528), .Y(n442) );
	a222oi_1 U549( .A1(n524), .A2(n285), .B1(n529), .B2(n530), .C1(n531), .C2( n321), .Y(n528) );
	inv_1 U550( .A(n352), .Y(n321) );
	nor2_1 U551( .A(n305), .B(G5), .Y(n352) );
	inv_1 U552( .A(G4), .Y(n305) );
	o22ai_1 U553( .A1(G5), .A2(G3), .B1(G0), .B2(n532), .Y(n531) );
	inv_1 U554( .A(n316), .Y(n532) );
	nor2_1 U555( .A(n335), .B(G4), .Y(n316) );
	inv_1 U556( .A(G3), .Y(n335) );
	o32ai_1 U557( .A1(G10), .A2(G9), .A3(G11), .B1(n533), .B2(n286), .Y(n530) );
	a21oi_1 U558( .A1(n370), .A2(G11), .B1(n285), .Y(n533) );
	nor2_1 U559( .A(n286), .B(n307), .Y(n370) );
	inv_1 U560( .A(G10), .Y(n307) );
	nor2_1 U561( .A(n498), .B(n534), .Y(n529) );
	nor2_1 U562( .A(n288), .B(G9), .Y(n285) );
	mux2i_1 U563( .A0(n535), .A1(n536), .S(n288), .Y(n527) );
	inv_1 U564( .A(G11), .Y(n288) );
	nand2_1 U565( .A(n537), .B(n523), .Y(n536) );
	nand3_1 U566( .A(G10), .B(G9), .C(n524), .Y(n523) );
	nor2_1 U567( .A(G7), .B(G8), .Y(n524) );
	mux2i_1 U568( .A0(n538), .A1(n539), .S(n342), .Y(n537) );
	inv_1 U569( .A(G9), .Y(n342) );
	nor3_1 U570( .A(n534), .B(G8), .C(G10), .Y(n539) );
	inv_1 U571( .A(n357), .Y(n534) );
	nand3_1 U572( .A(G7), .B(n278), .C(n496), .Y(n357) );
	inv_1 U573( .A(G6), .Y(n278) );
	nor2_1 U574( .A(n498), .B(n419), .Y(n538) );
	inv_1 U575( .A(n499), .Y(n419) );
	nor2_1 U576( .A(n286), .B(G7), .Y(n499) );
	inv_1 U577( .A(G8), .Y(n286) );
	nor2_1 U578( .A(n496), .B(G6), .Y(n535) );
	o21ai_0 U579( .A1(n294), .A2(n317), .B1(G1), .Y(n511) );
	inv_1 U580( .A(G0), .Y(n317) );
	inv_1 U581( .A(G5), .Y(n294) );
	dfrtp_1 troj5_0_counter_reg_0_( .D(troj5_0_n3), .CLK(CLK), .RESET_B(troj5_0_N5), .Q(troj5_0_counter_0_) );
	dfrtp_1 troj5_0_counter_reg_1_( .D(troj5_0_n2), .CLK(CLK), .RESET_B(troj5_0_N5), .Q(troj5_0_counter_1_) );
	dfrtp_1 troj5_0_counter_reg_2_( .D(troj5_0_n1), .CLK(CLK), .RESET_B(troj5_0_N5), .Q(troj5_0_counter_2_) );
	edfxtp_1 troj5_0_Trojan_out5_0_reg( .D(troj5_0_N7), .DE(troj5_0_N5), .CLK(CLK), .Q(Trojan_out_5_0) );
	mux2_1 troj5_0_U3( .A0(troj5_0_counter_2_), .A1(troj5_0_N4), .S(Trigger_en_5_0), .X(troj5_0_n1) );
	mux2_1 troj5_0_U4( .A0(troj5_0_counter_1_), .A1(troj5_0_N3), .S(Trigger_en_5_0), .X(troj5_0_n2) );
	xor2_1 troj5_0_U5( .A(troj5_0_counter_0_), .B(Trigger_en_5_0), .X(troj5_0_n3) );
	nor4_2 troj5_0_U6( .A(n443), .B(n280), .C(n538), .D(n464), .Y(Trigger_en_5_0) );
	xnor2_1 troj5_0_U7( .A(troj5_0_n4), .B(tempG551), .Y(G551) );
	nand2_1 troj5_0_U8( .A(Trojan_out_5_0), .B(Trigger_en_5_0), .Y(troj5_0_n4) );
	and3_1 troj5_0_U9( .A(troj5_0_counter_2_), .B(troj5_0_counter_0_), .C(troj5_0_counter_1_), .X(troj5_0_N7) );
	inv_1 troj5_0_U10( .A(RST), .Y(troj5_0_N5) );
	xnor2_1 troj5_0_U11( .A(troj5_0_counter_2_), .B(troj5_0_n5), .Y(troj5_0_N4) );
	nand2_1 troj5_0_U12( .A(troj5_0_counter_1_), .B(troj5_0_counter_0_), .Y(troj5_0_n5) );
	xnor2_1 troj5_0_U13( .A(troj5_0_counter_1_), .B(troj5_0_N2), .Y(troj5_0_N3) );
	inv_1 troj5_0_U14( .A(troj5_0_counter_0_), .Y(troj5_0_N2) );
endmodule
