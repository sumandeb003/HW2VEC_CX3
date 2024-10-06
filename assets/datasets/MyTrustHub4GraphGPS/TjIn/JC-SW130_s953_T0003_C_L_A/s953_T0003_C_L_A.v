//****************************************************************
// TRIT-ASIC Generated Trojans.  The design generated below is for academic use only.
// Please cite the following if using the benchmark provided:
// J. Cruz, Y. Huang, P. Mishra, S. Bhunia, 
// "An Automated Configurable Trojan Insertion Framework for Dynamic Trust Benchmarks", DATE, 2018
//****************************************************************

module s953( GND, VDD, RST, CLK, FullIIHS1, FullOHS1, IInDoneHS1, OutAvHS1, OutputHS1, Prog_0, 
		Prog_1, Prog_2, Rdy1BmHS1, Rdy1RtHS1, Rdy2BmHS1, Rdy2RtHS1, RtTSHS1, TpArrayHS1, WantBmHS1, WantRtHS1, 
		ActBmHS1, ActRtHS1, DumpIIHS1, GoBmHS1, GoRtHS1, LdProgHS1, LoadIIHHS1, LoadOHHS1, LxHIInHS1, Mode0HS1, 
		Mode1HS1, Mode2HS1, NewLineHS1, NewTrHS1, ReRtTSHS1, ReWhBufHS1, SeFullIIHS1, SeFullOHS1, SeOutAvHS1, ShftIIRHS1, 
		ShftORHS1, TgWhBufHS1, TxHIInHS1);

	input GND, VDD, RST, CLK, FullIIHS1, FullOHS1, IInDoneHS1, OutAvHS1,
         OutputHS1, Prog_0, Prog_1, Prog_2, Rdy1BmHS1, Rdy1RtHS1, Rdy2BmHS1,
         Rdy2RtHS1, RtTSHS1, TpArrayHS1, WantBmHS1, WantRtHS1;

	output ActBmHS1, ActRtHS1, DumpIIHS1, GoBmHS1, GoRtHS1, LdProgHS1,
         LoadIIHHS1, LoadOHHS1, LxHIInHS1, Mode0HS1, Mode1HS1, Mode2HS1,
         NewLineHS1, NewTrHS1, ReRtTSHS1, ReWhBufHS1, SeFullIIHS1, SeFullOHS1,
         SeOutAvHS1, ShftIIRHS1, ShftORHS1, TgWhBufHS1, TxHIInHS1;

	wire n435, n431, n216, n433, n220, n218, n436, n434, n219, n432, 
		n217, n1, n222, DFF_9_N3, n226, n228, n227, n225, DFF_8_N3, n238, 
		n237, n236, n246, DFF_7_N3, n250, n252, n5, n259, DFF_6_N3, n262, 
		n224, DFF_5_N3, n268, n271, n274, n273, n272, n279, n267, n283, 
		DFF_4_N3, n289, n291, n292, n266, n290, n270, n287, n302, n304, 
		n306, n300, n311, n282, n315, DFF_3_N3, n318, n319, n323, n235, 
		n310, n320, n239, n314, n285, DFF_2_N3, n326, n327, n280, DFF_28_N3, 
		n278, DFF_27_N3, DFF_26_N3, DFF_25_N3, DFF_24_N3, n336, n339, n338, DFF_23_N3, n342, 
		n344, n316, n345, n232, n341, n340, n2, DFF_22_N3, n334, DFF_21_N3, 
		n349, n352, n351, n348, n337, n356, n358, n357, n361, n303, 
		n360, n350, n296, n332, n363, DFF_20_N3, n366, n367, n243, n362, 
		n365, n234, n372, n298, n370, n230, n276, n369, n376, n343, 
		n378, n380, n375, n308, n249, DFF_1_N3, n383, n307, n275, n382, 
		n385, n387, n247, n388, n386, n297, n381, n248, n277, n384, 
		DFF_19_N3, n390, n391, n389, n347, n394, n335, n393, DFF_18_N3, n397, 
		n399, n398, n233, n242, n396, n401, n402, DFF_16_N3, n288, n245, 
		n317, n286, n293, n403, n301, n258, n346, n260, n329, n330, 
		DFF_15_N3, n407, n229, n379, n409, n408, n324, n331, n392, n333, 
		n353, n371, n411, n355, n368, n231, n305, n240, n269, DFF_13_N3, 
		n413, n364, DFF_12_N3, n416, n418, n261, n264, n263, n255, n417, 
		DFF_0_N3, n421, n422, n424, n414, n322, n425, n428, n295, n359, 
		n294, n423, n415, n265, n374, n253, n405, n256, n312, n426, 
		n412, n257, n254, n377, n328, n309, n284, n241, n244, n313, 
		n395, n420, DFF_11_N3, n406, n430, n404, n321, n410, n221, n373, 
		n419, n299, n251, n354, n223, n281, n325, n400, n429, n427, 
		troj3_0_RO3_0out0, troj3_0_RO3_0out1, troj3_0_RO3_0out2, troj3_0_RO3_0out3, troj3_0_RO3_0out4, troj3_0_RO3_0out5, troj3_0_RO3_0out6, troj3_0_RO3_0out7, troj3_0_RO3_0out8, troj3_0_RO3_0out9, 
		troj3_0_RO3_0out10, troj3_0_RO3_0out11, troj3_0_RO3_0out12, troj3_0_RO3_0out13, troj3_0_RO3_0out14, troj3_0_RO3_0out15, troj3_0_RO3_0out16, troj3_0_RO3_0out17, troj3_0_RO3_0out18, troj3_0_RO3_0out19, 
		troj3_0_RO3_0out20, troj3_0_RO3_0out21, troj3_0_RO3_0out22, troj3_0_RO3_0out23, troj3_0_RO3_0out24, troj3_0_RO3_0out25, troj3_0_RO3_0out26, troj3_0_RO3_0out27, troj3_0_RO3_0out28, troj3_0_RO3_0out29, 
		troj3_0_RO3_0out30, troj3_0_RO3_0out31;

	dfxbp_1 DFF_0_Q_reg( .D(DFF_0_N3), .CLK(CLK), .Q_N(n435) );
	dfxbp_1 DFF_5_Q_reg( .D(DFF_5_N3), .CLK(CLK), .Q(n431), .Q_N(n216) );
	dfxbp_1 DFF_4_Q_reg( .D(DFF_4_N3), .CLK(CLK), .Q(n433), .Q_N(n220) );
	dfxbp_1 DFF_3_Q_reg( .D(DFF_3_N3), .CLK(CLK), .Q(n218), .Q_N(n436) );
	dfxbp_1 DFF_2_Q_reg( .D(DFF_2_N3), .CLK(CLK), .Q(n434), .Q_N(n219) );
	dfxbp_1 DFF_1_Q_reg( .D(DFF_1_N3), .CLK(CLK), .Q(n432), .Q_N(n217) );
	dfxbp_1 DFF_28_Q_reg( .D(DFF_28_N3), .CLK(CLK), .Q(DumpIIHS1) );
	dfxbp_1 DFF_27_Q_reg( .D(DFF_27_N3), .CLK(CLK), .Q(LdProgHS1) );
	dfxbp_1 DFF_26_Q_reg( .D(DFF_26_N3), .CLK(CLK), .Q(ReWhBufHS1) );
	dfxbp_1 DFF_24_Q_reg( .D(DFF_24_N3), .CLK(CLK), .Q(SeFullIIHS1) );
	dfxbp_1 DFF_23_Q_reg( .D(DFF_23_N3), .CLK(CLK), .Q(SeFullOHS1) );
	dfxbp_1 DFF_21_Q_reg( .D(DFF_21_N3), .CLK(CLK), .Q(LoadIIHHS1) );
	dfxbp_1 DFF_19_Q_reg( .D(DFF_19_N3), .CLK(CLK), .Q(TxHIInHS1) );
	dfxbp_1 DFF_17_Q_reg( .D(n1), .CLK(CLK), .Q(ShftIIRHS1) );
	dfxbp_1 DFF_15_Q_reg( .D(DFF_15_N3), .CLK(CLK), .Q(NewLineHS1) );
	dfxbp_1 DFF_13_Q_reg( .D(DFF_13_N3), .CLK(CLK), .Q(Mode1HS1) );
	dfxbp_1 DFF_12_Q_reg( .D(DFF_12_N3), .CLK(CLK), .Q(Mode0HS1) );
	dfxbp_1 DFF_9_Q_reg( .D(DFF_9_N3), .CLK(CLK), .Q(GoBmHS1) );
	dfxbp_1 DFF_25_Q_reg( .D(DFF_25_N3), .CLK(CLK), .Q(TgWhBufHS1) );
	dfxbp_1 DFF_22_Q_reg( .D(DFF_22_N3), .CLK(CLK), .Q(SeOutAvHS1) );
	dfxbp_1 DFF_20_Q_reg( .D(DFF_20_N3), .CLK(CLK), .Q(LoadOHHS1) );
	dfxbp_1 DFF_18_Q_reg( .D(DFF_18_N3), .CLK(CLK), .Q(LxHIInHS1) );
	dfxbp_1 DFF_16_Q_reg( .D(DFF_16_N3), .CLK(CLK), .Q(ShftORHS1) );
	dfxbp_1 DFF_14_Q_reg( .D(n2), .CLK(CLK), .Q(Mode2HS1) );
	dfxbp_1 DFF_11_Q_reg( .D(DFF_11_N3), .CLK(CLK), .Q(ReRtTSHS1) );
	dfxbp_1 DFF_10_Q_reg( .D(n5), .CLK(CLK), .Q(NewTrHS1) );
	dfxbp_1 DFF_8_Q_reg( .D(DFF_8_N3), .CLK(CLK), .Q(GoRtHS1) );
	dfxbp_1 DFF_6_Q_reg( .D(DFF_6_N3), .CLK(CLK), .Q(ActRtHS1) );
	dfxbp_1 DFF_7_Q_reg( .D(DFF_7_N3), .CLK(CLK), .Q(ActBmHS1) );
	nand2_1 U240( .A(n221), .B(n222), .Y(n1) );
	nand3_1 U241( .A(n436), .B(n223), .C(n224), .Y(n222) );
	a21oi_1 U242( .A1(n225), .A2(n226), .B1(RST), .Y(DFF_9_N3) );
	a21oi_1 U243( .A1(n227), .A2(n228), .B1(n229), .Y(n226) );
	inv_1 U244( .A(n230), .Y(n228) );
	a21oi_1 U245( .A1(n231), .A2(n232), .B1(n233), .Y(n227) );
	a21oi_1 U246( .A1(WantBmHS1), .A2(n234), .B1(n235), .Y(n225) );
	nand4_1 U247( .A(n236), .B(n237), .C(n238), .D(n239), .Y(DFF_8_N3) );
	nand4_1 U248( .A(n240), .B(n241), .C(n242), .D(n243), .Y(n238) );
	nand3_1 U249( .A(n244), .B(n219), .C(n245), .Y(n237) );
	o21ai_0 U250( .A1(n246), .A2(n229), .B1(n223), .Y(n236) );
	and4_1 U251( .A(n247), .B(WantRtHS1), .C(n248), .D(n249), .X(n246) );
	or3_1 U252( .A(n5), .B(n2), .C(n250), .X(DFF_7_N3) );
	o32ai_1 U253( .A1(n251), .A2(n252), .A3(n253), .B1(n254), .B2(n255), .Y( n250) );
	a21oi_1 U254( .A1(n256), .A2(n436), .B1(n257), .Y(n252) );
	a21oi_1 U255( .A1(n258), .A2(n259), .B1(RST), .Y(n5) );
	o211ai_1 U256( .A1(n220), .A2(n218), .B1(n260), .C1(n216), .Y(n259) );
	nand3_1 U257( .A(n221), .B(n261), .C(n262), .Y(DFF_6_N3) );
	a22oi_1 U258( .A1(n263), .A2(n256), .B1(n264), .B2(n224), .Y(n262) );
	inv_1 U259( .A(n265), .Y(n224) );
	or3_1 U260( .A(n266), .B(n267), .C(n268), .X(DFF_5_N3) );
	o32ai_1 U261( .A1(n269), .A2(FullOHS1), .A3(n270), .B1(RST), .B2(n271), .Y( n268) );
	nor3_1 U262( .A(n272), .B(n273), .C(n274), .Y(n271) );
	nor3_1 U263( .A(n275), .B(n276), .C(n277), .Y(n274) );
	inv_1 U264( .A(n278), .Y(n273) );
	o21ai_0 U265( .A1(n279), .A2(n254), .B1(n280), .Y(n272) );
	a21oi_1 U266( .A1(n281), .A2(n253), .B1(n282), .Y(n279) );
	nor4_1 U267( .A(n283), .B(n284), .C(Rdy1RtHS1), .D(n285), .Y(n267) );
	nand2_1 U268( .A(Rdy2RtHS1), .B(n286), .Y(n283) );
	o221ai_1 U269( .A1(RST), .A2(n287), .B1(IInDoneHS1), .B2(n288), .C1(n289), .Y(DFF_4_N3) );
	nor3_1 U270( .A(n290), .B(n266), .C(n291), .Y(n289) );
	nor4_1 U271( .A(n292), .B(n293), .C(n436), .D(n244), .Y(n291) );
	nand3_1 U272( .A(n217), .B(n216), .C(n219), .Y(n292) );
	nor4_1 U273( .A(n293), .B(n294), .C(n216), .D(n295), .Y(n266) );
	nor3_1 U274( .A(n296), .B(n270), .C(n269), .Y(n290) );
	a22oi_1 U275( .A1(n297), .A2(n264), .B1(n298), .B2(n299), .Y(n270) );
	nor3_1 U276( .A(n300), .B(n301), .C(n302), .Y(n287) );
	nor3_1 U277( .A(n303), .B(n304), .C(n305), .Y(n302) );
	nor3_1 U278( .A(n306), .B(n307), .C(n308), .Y(n304) );
	and4_1 U279( .A(n220), .B(Rdy1RtHS1), .C(n248), .D(n309), .X(n306) );
	o22ai_1 U280( .A1(n310), .A2(n232), .B1(n311), .B2(n312), .Y(n300) );
	a21oi_1 U281( .A1(n313), .A2(n253), .B1(n282), .Y(n311) );
	o21ai_0 U282( .A1(n314), .A2(n315), .B1(n436), .Y(n282) );
	nor2_1 U283( .A(Prog_2), .B(n316), .Y(n315) );
	nand3_1 U284( .A(n317), .B(n239), .C(n318), .Y(DFF_3_N3) );
	a22oi_1 U285( .A1(n319), .A2(n223), .B1(n301), .B2(n286), .Y(n318) );
	o221ai_1 U286( .A1(n320), .A2(n321), .B1(IInDoneHS1), .B2(n322), .C1(n323), .Y(n319) );
	inv_1 U287( .A(n235), .Y(n323) );
	o21ai_0 U288( .A1(n231), .A2(n310), .B1(n324), .Y(n235) );
	nand3_1 U289( .A(n325), .B(n431), .C(n314), .Y(n310) );
	and2_0 U290( .A(n219), .B(RtTSHS1), .X(n320) );
	nand3_1 U291( .A(n249), .B(n314), .C(n286), .Y(n239) );
	inv_1 U292( .A(n285), .Y(n314) );
	o21ai_0 U293( .A1(n432), .A2(n295), .B1(n253), .Y(n285) );
	o21ai_0 U294( .A1(RST), .A2(n326), .B1(n288), .Y(DFF_2_N3) );
	inv_1 U295( .A(n327), .Y(n326) );
	o221ai_1 U296( .A1(n258), .A2(TpArrayHS1), .B1(n328), .B2(n329), .C1(n280), .Y(n327) );
	a21oi_1 U297( .A1(n260), .A2(n330), .B1(n331), .Y(n280) );
	o22ai_1 U298( .A1(RST), .A2(n332), .B1(n251), .B2(n278), .Y(DFF_28_N3) );
	nand3_1 U299( .A(WantRtHS1), .B(n303), .C(n307), .Y(n278) );
	nor4_1 U300( .A(RST), .B(n219), .C(n218), .D(n333), .Y(DFF_27_N3) );
	nor2_1 U301( .A(FullIIHS1), .B(n334), .Y(DFF_26_N3) );
	nor2_1 U302( .A(n335), .B(n334), .Y(DFF_25_N3) );
	nor2_1 U303( .A(RST), .B(n336), .Y(DFF_24_N3) );
	nor3_1 U304( .A(n337), .B(n338), .C(n339), .Y(n336) );
	nor3_1 U305( .A(n316), .B(n218), .C(n265), .Y(n339) );
	nor3_1 U306( .A(n232), .B(n230), .C(n296), .Y(n338) );
	nand3_1 U307( .A(n340), .B(n341), .C(n342), .Y(DFF_23_N3) );
	o21ai_0 U308( .A1(n343), .A2(n344), .B1(n223), .Y(n342) );
	o32ai_1 U309( .A1(n232), .A2(FullOHS1), .A3(n230), .B1(n345), .B2(n316), .Y(n344) );
	inv_1 U310( .A(IInDoneHS1), .Y(n316) );
	inv_1 U311( .A(n346), .Y(n345) );
	or2_0 U312( .A(n305), .B(Rdy1BmHS1), .X(n232) );
	nand3_1 U313( .A(n240), .B(Rdy2RtHS1), .C(n347), .Y(n341) );
	nand3_1 U314( .A(n2), .B(IInDoneHS1), .C(OutputHS1), .Y(n340) );
	inv_1 U315( .A(n221), .Y(n2) );
	nor2_1 U316( .A(n295), .B(n334), .Y(DFF_22_N3) );
	or2_0 U317( .A(RST), .B(OutAvHS1), .X(n334) );
	o21ai_0 U318( .A1(RST), .A2(n348), .B1(n349), .Y(DFF_21_N3) );
	nand4_1 U319( .A(n350), .B(n240), .C(n351), .D(n352), .Y(n349) );
	o21ai_0 U320( .A1(n276), .A2(n353), .B1(n354), .Y(n352) );
	o21ai_0 U321( .A1(RST), .A2(n355), .B1(n251), .Y(n351) );
	inv_1 U322( .A(n337), .Y(n348) );
	nand2_1 U323( .A(n332), .B(n356), .Y(n337) );
	nand4_1 U324( .A(n357), .B(Rdy2RtHS1), .C(n358), .D(n359), .Y(n356) );
	nor2_1 U325( .A(n431), .B(n433), .Y(n358) );
	mux2i_1 U326( .A0(n360), .A1(n361), .S(Prog_2), .Y(n357) );
	nand4_1 U327( .A(WantRtHS1), .B(n295), .C(n354), .D(n303), .Y(n361) );
	inv_1 U328( .A(WantBmHS1), .Y(n303) );
	nand3_1 U329( .A(Prog_0), .B(n362), .C(n350), .Y(n360) );
	inv_1 U330( .A(n296), .Y(n350) );
	nand2_1 U331( .A(FullOHS1), .B(n335), .Y(n296) );
	nand4_1 U332( .A(n363), .B(n308), .C(WantBmHS1), .D(Rdy2BmHS1), .Y(n332) );
	xor2_1 U333( .A(n364), .B(Prog_0), .X(n363) );
	o21ai_0 U334( .A1(RST), .A2(n365), .B1(n366), .Y(DFF_20_N3) );
	nand4_1 U335( .A(n240), .B(n241), .C(n243), .D(n367), .Y(n366) );
	inv_1 U336( .A(FullOHS1), .Y(n367) );
	nand2_1 U337( .A(n362), .B(n368), .Y(n243) );
	inv_1 U338( .A(Rdy1RtHS1), .Y(n362) );
	nor4_1 U339( .A(n369), .B(n370), .C(n371), .D(n234), .Y(n365) );
	and4_1 U340( .A(n248), .B(n298), .C(n325), .D(n372), .X(n234) );
	nand2_1 U341( .A(WantRtHS1), .B(n355), .Y(n372) );
	inv_1 U342( .A(n231), .Y(n298) );
	nor4_1 U343( .A(FullOHS1), .B(n353), .C(n276), .D(n230), .Y(n370) );
	nand3_1 U344( .A(n373), .B(n354), .C(n374), .Y(n230) );
	nor2_1 U345( .A(Rdy2BmHS1), .B(Rdy1BmHS1), .Y(n276) );
	o21ai_0 U346( .A1(WantBmHS1), .A2(n375), .B1(n376), .Y(n369) );
	inv_1 U347( .A(n343), .Y(n376) );
	o21ai_0 U348( .A1(n377), .A2(n378), .B1(n379), .Y(n343) );
	a21oi_1 U349( .A1(TpArrayHS1), .A2(n301), .B1(n380), .Y(n378) );
	nor3_1 U350( .A(n329), .B(n433), .C(n436), .Y(n380) );
	a21oi_1 U351( .A1(n249), .A2(n248), .B1(n308), .Y(n375) );
	inv_1 U352( .A(n381), .Y(n308) );
	nor2_1 U353( .A(n355), .B(n284), .Y(n249) );
	o221ai_1 U354( .A1(RST), .A2(n382), .B1(IInDoneHS1), .B2(n221), .C1(n383), .Y(DFF_1_N3) );
	nand3_1 U355( .A(n264), .B(n247), .C(n307), .Y(n383) );
	inv_1 U356( .A(n275), .Y(n307) );
	nand3_1 U357( .A(n248), .B(n373), .C(Rdy2RtHS1), .Y(n275) );
	a21oi_1 U358( .A1(n432), .A2(n384), .B1(n385), .Y(n382) );
	a21oi_1 U359( .A1(n381), .A2(n386), .B1(n387), .Y(n385) );
	a21oi_1 U360( .A1(Rdy2BmHS1), .A2(n388), .B1(n247), .Y(n387) );
	nand2_1 U361( .A(WantBmHS1), .B(n231), .Y(n247) );
	xor2_1 U362( .A(Prog_1), .B(Prog_0), .X(n388) );
	nand3_1 U363( .A(n248), .B(n373), .C(n297), .Y(n386) );
	inv_1 U364( .A(n355), .Y(n297) );
	nand3_1 U365( .A(n373), .B(n277), .C(n248), .Y(n381) );
	and3_1 U366( .A(n295), .B(n217), .C(Prog_2), .X(n248) );
	inv_1 U367( .A(WantRtHS1), .Y(n277) );
	o221ai_1 U368( .A1(Rdy2BmHS1), .A2(n254), .B1(Rdy2RtHS1), .B2(n312), .C1( n322), .Y(n384) );
	o32ai_1 U369( .A1(n284), .A2(Prog_2), .A3(n389), .B1(RST), .B2(n390), .Y( DFF_19_N3) );
	nor3_1 U370( .A(n391), .B(n301), .C(n392), .Y(n390) );
	nor3_1 U371( .A(n294), .B(Rdy1BmHS1), .C(n216), .Y(n391) );
	a221oi_1 U372( .A1(n393), .A2(n335), .B1(n394), .B2(n299), .C1(n347), .Y( n389) );
	nor3_1 U373( .A(FullOHS1), .B(Rdy1RtHS1), .C(n395), .Y(n347) );
	nor2_1 U374( .A(FullOHS1), .B(n305), .Y(n394) );
	inv_1 U375( .A(FullIIHS1), .Y(n335) );
	o22ai_1 U376( .A1(n368), .A2(n395), .B1(Rdy1BmHS1), .B2(n251), .Y(n393) );
	o22ai_1 U377( .A1(RST), .A2(n396), .B1(n233), .B2(n397), .Y(DFF_18_N3) );
	a21oi_1 U378( .A1(n398), .A2(n264), .B1(n399), .Y(n397) );
	nor3_1 U379( .A(n251), .B(Rdy2BmHS1), .C(n400), .Y(n399) );
	nor2_1 U380( .A(Rdy2RtHS1), .B(n284), .Y(n398) );
	inv_1 U381( .A(n242), .Y(n233) );
	nand2_1 U382( .A(FullOHS1), .B(FullIIHS1), .Y(n242) );
	a211oi_1 U383( .A1(Prog_2), .A2(n401), .B1(n301), .C1(n392), .Y(n396) );
	o221ai_1 U384( .A1(Rdy2RtHS1), .A2(n284), .B1(Rdy2BmHS1), .B2(n400), .C1( n402), .Y(n401) );
	nand4_1 U385( .A(n330), .B(n219), .C(n217), .D(n216), .Y(n402) );
	o211ai_1 U386( .A1(RST), .A2(n403), .B1(n221), .C1(n288), .Y(DFF_16_N3) );
	nand2_1 U387( .A(n245), .B(n434), .Y(n288) );
	inv_1 U388( .A(n317), .Y(n245) );
	nand2_1 U389( .A(n404), .B(n286), .Y(n317) );
	inv_1 U390( .A(n293), .Y(n286) );
	nand2_1 U391( .A(n433), .B(n223), .Y(n293) );
	a211oi_1 U392( .A1(n330), .A2(n260), .B1(n346), .C1(n301), .Y(n403) );
	inv_1 U393( .A(n258), .Y(n301) );
	nand3_1 U394( .A(n436), .B(n260), .C(n431), .Y(n258) );
	o22ai_1 U395( .A1(n253), .A2(n254), .B1(n432), .B2(n322), .Y(n346) );
	inv_1 U396( .A(n329), .Y(n260) );
	nand3_1 U397( .A(n435), .B(n217), .C(n434), .Y(n329) );
	nor2_1 U398( .A(n218), .B(n433), .Y(n330) );
	o22ai_1 U399( .A1(n405), .A2(n406), .B1(RST), .B2(n407), .Y(DFF_15_N3) );
	nor4_1 U400( .A(n240), .B(n371), .C(n408), .D(n229), .Y(n407) );
	inv_1 U401( .A(n379), .Y(n229) );
	nand4_1 U402( .A(n359), .B(n433), .C(n295), .D(n409), .Y(n379) );
	nor3_1 U403( .A(n216), .B(Rdy1RtHS1), .C(Rdy1BmHS1), .Y(n409) );
	inv_1 U404( .A(n324), .Y(n408) );
	nand2_1 U405( .A(n331), .B(n219), .Y(n324) );
	and4_1 U406( .A(n353), .B(n392), .C(n295), .D(n436), .X(n331) );
	inv_1 U407( .A(n333), .Y(n392) );
	nand2_1 U408( .A(n410), .B(n220), .Y(n333) );
	inv_1 U409( .A(n281), .Y(n353) );
	and4_1 U410( .A(Prog_2), .B(n295), .C(n359), .D(n411), .X(n371) );
	o22ai_1 U411( .A1(n231), .A2(n328), .B1(n412), .B2(n355), .Y(n411) );
	nand2_1 U412( .A(Rdy1RtHS1), .B(n368), .Y(n355) );
	inv_1 U413( .A(Rdy2RtHS1), .Y(n368) );
	nand2_1 U414( .A(Rdy1BmHS1), .B(n305), .Y(n231) );
	inv_1 U415( .A(Rdy2BmHS1), .Y(n305) );
	inv_1 U416( .A(n269), .Y(n240) );
	nand3_1 U417( .A(n374), .B(n220), .C(n309), .Y(n269) );
	o22ai_1 U418( .A1(n364), .A2(n221), .B1(RST), .B2(n413), .Y(DFF_13_N3) );
	a21oi_1 U419( .A1(n414), .A2(n217), .B1(n415), .Y(n413) );
	inv_1 U420( .A(Prog_1), .Y(n364) );
	o221ai_1 U421( .A1(n265), .A2(n251), .B1(n354), .B2(n221), .C1(n416), .Y( DFF_12_N3) );
	a21oi_1 U422( .A1(n417), .A2(n263), .B1(n418), .Y(n416) );
	inv_1 U423( .A(n261), .Y(n418) );
	nand4_1 U424( .A(n377), .B(n264), .C(n359), .D(n405), .Y(n261) );
	inv_1 U425( .A(n395), .Y(n264) );
	inv_1 U426( .A(n255), .Y(n263) );
	nand2_1 U427( .A(n223), .B(n218), .Y(n255) );
	nor2_1 U428( .A(n432), .B(n312), .Y(n417) );
	nand4_1 U429( .A(n419), .B(n221), .C(n420), .D(n421), .Y(DFF_0_N3) );
	a21oi_1 U430( .A1(n241), .A2(n309), .B1(n422), .Y(n421) );
	a21oi_1 U431( .A1(n423), .A2(n424), .B1(RST), .Y(n422) );
	a221oi_1 U432( .A1(Prog_2), .A2(n373), .B1(n359), .B2(n425), .C1(n414), .Y( n424) );
	inv_1 U433( .A(n322), .Y(n414) );
	o211ai_1 U434( .A1(n426), .A2(n377), .B1(n218), .C1(n427), .Y(n322) );
	o22ai_1 U435( .A1(Rdy1RtHS1), .A2(Rdy1BmHS1), .B1(n295), .B2(n428), .Y(n425) );
	nor2_1 U436( .A(Prog_2), .B(n431), .Y(n428) );
	nor2_1 U437( .A(FullOHS1), .B(FullIIHS1), .Y(n295) );
	inv_1 U438( .A(n294), .Y(n359) );
	nand2_1 U439( .A(n429), .B(n217), .Y(n294) );
	a221oi_1 U440( .A1(n257), .A2(n281), .B1(n256), .B2(n313), .C1(n415), .Y( n423) );
	o21ai_0 U441( .A1(n253), .A2(n254), .B1(n265), .Y(n415) );
	nand2_1 U442( .A(n256), .B(n374), .Y(n265) );
	inv_1 U443( .A(n253), .Y(n374) );
	nand2_1 U444( .A(n217), .B(n405), .Y(n253) );
	inv_1 U445( .A(Prog_2), .Y(n405) );
	inv_1 U446( .A(n312), .Y(n256) );
	nand2_1 U447( .A(n426), .B(n427), .Y(n312) );
	inv_1 U448( .A(n412), .Y(n426) );
	nand2_1 U449( .A(n433), .B(n216), .Y(n412) );
	inv_1 U450( .A(n254), .Y(n257) );
	nand2_1 U451( .A(n377), .B(n427), .Y(n254) );
	inv_1 U452( .A(n328), .Y(n377) );
	nand2_1 U453( .A(n431), .B(n220), .Y(n328) );
	inv_1 U454( .A(n284), .Y(n309) );
	nand2_1 U455( .A(n429), .B(n216), .Y(n284) );
	nor2_1 U456( .A(n395), .B(n244), .Y(n241) );
	inv_1 U457( .A(n313), .Y(n244) );
	nand2_1 U458( .A(Rdy2RtHS1), .B(Rdy1RtHS1), .Y(n313) );
	nand2_1 U459( .A(Prog_0), .B(n223), .Y(n395) );
	o21ai_0 U460( .A1(Prog_1), .A2(Prog_2), .B1(DFF_11_N3), .Y(n420) );
	inv_1 U461( .A(n406), .Y(DFF_11_N3) );
	nand3_1 U462( .A(RtTSHS1), .B(n404), .C(n430), .Y(n406) );
	nor3_1 U463( .A(RST), .B(n433), .C(n434), .Y(n430) );
	inv_1 U464( .A(n321), .Y(n404) );
	nand2_1 U465( .A(n410), .B(n218), .Y(n321) );
	and3_1 U466( .A(n217), .B(n216), .C(n435), .X(n410) );
	nand3_1 U467( .A(n373), .B(n223), .C(n432), .Y(n221) );
	nor2_1 U468( .A(n400), .B(n431), .Y(n373) );
	nand3_1 U469( .A(n325), .B(n281), .C(n299), .Y(n419) );
	inv_1 U470( .A(n251), .Y(n299) );
	nand2_1 U471( .A(n223), .B(n354), .Y(n251) );
	inv_1 U472( .A(Prog_0), .Y(n354) );
	inv_1 U473( .A(RST), .Y(n223) );
	nand2_1 U474( .A(Rdy2BmHS1), .B(Rdy1BmHS1), .Y(n281) );
	inv_1 U475( .A(n400), .Y(n325) );
	nand2_1 U476( .A(n429), .B(n220), .Y(n400) );
	and2_0 U477( .A(n427), .B(n436), .X(n429) );
	nor2_1 U478( .A(n435), .B(n434), .Y(n427) );
	nand2_1 troj3_0_Trojan3_0(.A(troj3_0_RO3_0out31), .B(DFF_19_N3), .Y(troj3_0_RO3_0out0) );
	nor2_1 troj3_0_RO3_0troj0(.A(troj3_0_RO3_0out0), .B(troj3_0_RO3_0out0), .Y(troj3_0_RO3_0out1) );
	nor2_1 troj3_0_RO3_0troj1(.A(troj3_0_RO3_0out1), .B(troj3_0_RO3_0out1), .Y(troj3_0_RO3_0out2) );
	nor2_1 troj3_0_RO3_0troj2(.A(troj3_0_RO3_0out2), .B(troj3_0_RO3_0out2), .Y(troj3_0_RO3_0out3) );
	nor2_1 troj3_0_RO3_0troj3(.A(troj3_0_RO3_0out3), .B(troj3_0_RO3_0out3), .Y(troj3_0_RO3_0out4) );
	nor2_1 troj3_0_RO3_0troj4(.A(troj3_0_RO3_0out4), .B(troj3_0_RO3_0out4), .Y(troj3_0_RO3_0out5) );
	nor2_1 troj3_0_RO3_0troj5(.A(troj3_0_RO3_0out5), .B(troj3_0_RO3_0out5), .Y(troj3_0_RO3_0out6) );
	nor2_1 troj3_0_RO3_0troj6(.A(troj3_0_RO3_0out6), .B(troj3_0_RO3_0out6), .Y(troj3_0_RO3_0out7) );
	nor2_1 troj3_0_RO3_0troj7(.A(troj3_0_RO3_0out7), .B(troj3_0_RO3_0out7), .Y(troj3_0_RO3_0out8) );
	nor2_1 troj3_0_RO3_0troj8(.A(troj3_0_RO3_0out8), .B(troj3_0_RO3_0out8), .Y(troj3_0_RO3_0out9) );
	nor2_1 troj3_0_RO3_0troj9(.A(troj3_0_RO3_0out9), .B(troj3_0_RO3_0out9), .Y(troj3_0_RO3_0out10) );
	nor2_1 troj3_0_RO3_0troj10(.A(troj3_0_RO3_0out10), .B(troj3_0_RO3_0out10), .Y(troj3_0_RO3_0out11) );
	nor2_1 troj3_0_RO3_0troj11(.A(troj3_0_RO3_0out11), .B(troj3_0_RO3_0out11), .Y(troj3_0_RO3_0out12) );
	nor2_1 troj3_0_RO3_0troj12(.A(troj3_0_RO3_0out12), .B(troj3_0_RO3_0out12), .Y(troj3_0_RO3_0out13) );
	nor2_1 troj3_0_RO3_0troj13(.A(troj3_0_RO3_0out13), .B(troj3_0_RO3_0out13), .Y(troj3_0_RO3_0out14) );
	nor2_1 troj3_0_RO3_0troj14(.A(troj3_0_RO3_0out14), .B(troj3_0_RO3_0out14), .Y(troj3_0_RO3_0out15) );
	nor2_1 troj3_0_RO3_0troj15(.A(troj3_0_RO3_0out15), .B(troj3_0_RO3_0out15), .Y(troj3_0_RO3_0out16) );
	nor2_1 troj3_0_RO3_0troj16(.A(troj3_0_RO3_0out16), .B(troj3_0_RO3_0out16), .Y(troj3_0_RO3_0out17) );
	nor2_1 troj3_0_RO3_0troj17(.A(troj3_0_RO3_0out17), .B(troj3_0_RO3_0out17), .Y(troj3_0_RO3_0out18) );
	nor2_1 troj3_0_RO3_0troj18(.A(troj3_0_RO3_0out18), .B(troj3_0_RO3_0out18), .Y(troj3_0_RO3_0out19) );
	nor2_1 troj3_0_RO3_0troj19(.A(troj3_0_RO3_0out19), .B(troj3_0_RO3_0out19), .Y(troj3_0_RO3_0out20) );
	nor2_1 troj3_0_RO3_0troj20(.A(troj3_0_RO3_0out20), .B(troj3_0_RO3_0out20), .Y(troj3_0_RO3_0out21) );
	nor2_1 troj3_0_RO3_0troj21(.A(troj3_0_RO3_0out21), .B(troj3_0_RO3_0out21), .Y(troj3_0_RO3_0out22) );
	nor2_1 troj3_0_RO3_0troj22(.A(troj3_0_RO3_0out22), .B(troj3_0_RO3_0out22), .Y(troj3_0_RO3_0out23) );
	nor2_1 troj3_0_RO3_0troj23(.A(troj3_0_RO3_0out23), .B(troj3_0_RO3_0out23), .Y(troj3_0_RO3_0out24) );
	nor2_1 troj3_0_RO3_0troj24(.A(troj3_0_RO3_0out24), .B(troj3_0_RO3_0out24), .Y(troj3_0_RO3_0out25) );
	nor2_1 troj3_0_RO3_0troj25(.A(troj3_0_RO3_0out25), .B(troj3_0_RO3_0out25), .Y(troj3_0_RO3_0out26) );
	nor2_1 troj3_0_RO3_0troj26(.A(troj3_0_RO3_0out26), .B(troj3_0_RO3_0out26), .Y(troj3_0_RO3_0out27) );
	nor2_1 troj3_0_RO3_0troj27(.A(troj3_0_RO3_0out27), .B(troj3_0_RO3_0out27), .Y(troj3_0_RO3_0out28) );
	nor2_1 troj3_0_RO3_0troj28(.A(troj3_0_RO3_0out28), .B(troj3_0_RO3_0out28), .Y(troj3_0_RO3_0out29) );
	nor2_1 troj3_0_RO3_0troj29(.A(troj3_0_RO3_0out29), .B(troj3_0_RO3_0out29), .Y(troj3_0_RO3_0out30) );
	nor2_1 troj3_0_RO3_0troj30(.A(troj3_0_RO3_0out30), .B(troj3_0_RO3_0out30), .Y(troj3_0_RO3_0out31) );
endmodule
