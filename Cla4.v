`timescale 1ps/1fs

module CLA4_struct(input [3:0] A, B, input Cin, output [3:0] S, output Cout);
    wire [3:0] P, G;
    wire c1, c2, c3;
    
    // Level 1: Generate (G) and Propagate (P)
    xor #(183.52) p0(P[0], A[0], B[0]); and #(108.11) g0(G[0], A[0], B[0]);
    xor #(183.52) p1(P[1], A[1], B[1]); and #(108.11) g1(G[1], A[1], B[1]);
    xor #(183.52) p2(P[2], A[2], B[2]); and #(108.11) g2(G[2], A[2], B[2]);
    xor #(183.52) p3(P[3], A[3], B[3]); and #(108.11) g3(G[3], A[3], B[3]);

    // C1 = G0 + P0.Cin
    wire p0_cin;
    and #(108.11) a_c1(p0_cin, P[0], Cin);
    or  #(277.82) o_c1(c1, G[0], p0_cin);

    // C2 = G1 + P1.G0 + P1.P0.Cin
    wire p1_g0, p1_p0, p1_p0_cin, c2_w1;
    and #(108.11) a_c2_1(p1_g0, P[1], G[0]);
    and #(108.11) a_c2_2(p1_p0, P[1], P[0]);
    and #(108.11) a_c2_3(p1_p0_cin, p1_p0, Cin);
    or  #(277.82) o_c2_1(c2_w1, G[1], p1_g0);
    or  #(277.82) o_c2_2(c2, c2_w1, p1_p0_cin);

    // C3 = G2 + P2.G1 + P2.P1.G0 + P2.P1.P0.Cin
    wire p2_g1, p2_p1, p2_p1_g0, p2_p1_p0, p2_p1_p0_cin, c3_w1, c3_w2;
    and #(108.11) a_c3_1(p2_g1, P[2], G[1]);
    and #(108.11) a_c3_2(p2_p1, P[2], P[1]);
    and #(108.11) a_c3_3(p2_p1_g0, p2_p1, G[0]);
    and #(108.11) a_c3_4(p2_p1_p0, p2_p1, P[0]);
    and #(108.11) a_c3_5(p2_p1_p0_cin, p2_p1_p0, Cin);
    or  #(277.82) o_c3_1(c3_w1, G[2], p2_g1);
    or  #(277.82) o_c3_2(c3_w2, c3_w1, p2_p1_g0);
    or  #(277.82) o_c3_3(c3, c3_w2, p2_p1_p0_cin);

    // C4 Implementation
    // Block Propagate: P(3,0) = P3 . P2 . P1 . P0
    wire p_blk_w1, p_blk_w2, p_3_0;
    and #(108.11) a_pb1(p_blk_w1, P[0], P[1]);
    and #(108.11) a_pb2(p_blk_w2, p_blk_w1, P[2]);
    and #(108.11) a_pb3(p_3_0, p_blk_w2, P[3]);

    // Block Generate: G(3,0) = G3 + P3.G2 + P3.P2.G1 + P3.P2.P1.G0
    wire p3_g2, p3_p2, p3_p2_g1, p3_p2_p1, p3_p2_p1_g0;
    and #(108.11) a_gb1(p3_g2, P[3], G[2]);
    and #(108.11) a_gb2(p3_p2, P[3], P[2]);
    and #(108.11) a_gb3(p3_p2_g1, p3_p2, G[1]);
    and #(108.11) a_gb4(p3_p2_p1, p3_p2, P[1]);
    and #(108.11) a_gb5(p3_p2_p1_g0, p3_p2_p1, G[0]);
    
    wire g_3_0_w1, g_3_0_w2, g_3_0;
    or #(277.82) o_gb1(g_3_0_w1, G[3], p3_g2);
    or #(277.82) o_gb2(g_3_0_w2, g_3_0_w1, p3_p2_g1);
    or #(277.82) o_gb3(g_3_0, g_3_0_w2, p3_p2_p1_g0);

    // Final C4 (Cout) = G(3,0) + P(3,0).Cin
    wire p_blk_cin;
    and #(108.11) a_c4(p_blk_cin, p_3_0, Cin);
    or  #(277.82) o_c4(Cout, g_3_0, p_blk_cin);

    // Final Sum = P XOR C
    xor #(183.52) s0(S[0], P[0], Cin);
    xor #(183.52) s1(S[1], P[1], c1);
    xor #(183.52) s2(S[2], P[2], c2);
    xor #(183.52) s3(S[3], P[3], c3);
endmodule