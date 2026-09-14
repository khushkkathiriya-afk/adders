`timescale 1ps/1fs

module Mul8x8_struct(input [7:0] A, B, output [15:0] P);
    
    // 1. Partial Product Generation
    wire pp0_0, pp0_1, pp0_2, pp0_3, pp0_4, pp0_5, pp0_6, pp0_7;
    wire pp1_0, pp1_1, pp1_2, pp1_3, pp1_4, pp1_5, pp1_6, pp1_7;
    wire pp2_0, pp2_1, pp2_2, pp2_3, pp2_4, pp2_5, pp2_6, pp2_7;
    wire pp3_0, pp3_1, pp3_2, pp3_3, pp3_4, pp3_5, pp3_6, pp3_7;
    wire pp4_0, pp4_1, pp4_2, pp4_3, pp4_4, pp4_5, pp4_6, pp4_7;
    wire pp5_0, pp5_1, pp5_2, pp5_3, pp5_4, pp5_5, pp5_6, pp5_7;
    wire pp6_0, pp6_1, pp6_2, pp6_3, pp6_4, pp6_5, pp6_6, pp6_7;
    wire pp7_0, pp7_1, pp7_2, pp7_3, pp7_4, pp7_5, pp7_6, pp7_7;

    // Row 0
    and #(108.11) a0_0(pp0_0, A[0], B[0]); and #(108.11) a0_1(pp0_1, A[1], B[0]);
    and #(108.11) a0_2(pp0_2, A[2], B[0]); and #(108.11) a0_3(pp0_3, A[3], B[0]);
    and #(108.11) a0_4(pp0_4, A[4], B[0]); and #(108.11) a0_5(pp0_5, A[5], B[0]);
    and #(108.11) a0_6(pp0_6, A[6], B[0]); and #(108.11) a0_7(pp0_7, A[7], B[0]);

    // Row 1
    and #(108.11) a1_0(pp1_0, A[0], B[1]); and #(108.11) a1_1(pp1_1, A[1], B[1]);
    and #(108.11) a1_2(pp1_2, A[2], B[1]); and #(108.11) a1_3(pp1_3, A[3], B[1]);
    and #(108.11) a1_4(pp1_4, A[4], B[1]); and #(108.11) a1_5(pp1_5, A[5], B[1]);
    and #(108.11) a1_6(pp1_6, A[6], B[1]); and #(108.11) a1_7(pp1_7, A[7], B[1]);

    // Row 2
    and #(108.11) a2_0(pp2_0, A[0], B[2]); and #(108.11) a2_1(pp2_1, A[1], B[2]);
    and #(108.11) a2_2(pp2_2, A[2], B[2]); and #(108.11) a2_3(pp2_3, A[3], B[2]);
    and #(108.11) a2_4(pp2_4, A[4], B[2]); and #(108.11) a2_5(pp2_5, A[5], B[2]);
    and #(108.11) a2_6(pp2_6, A[6], B[2]); and #(108.11) a2_7(pp2_7, A[7], B[2]);

    // Row 3
    and #(108.11) a3_0(pp3_0, A[0], B[3]); and #(108.11) a3_1(pp3_1, A[1], B[3]);
    and #(108.11) a3_2(pp3_2, A[2], B[3]); and #(108.11) a3_3(pp3_3, A[3], B[3]);
    and #(108.11) a3_4(pp3_4, A[4], B[3]); and #(108.11) a3_5(pp3_5, A[5], B[3]);
    and #(108.11) a3_6(pp3_6, A[6], B[3]); and #(108.11) a3_7(pp3_7, A[7], B[3]);

    // Row 4
    and #(108.11) a4_0(pp4_0, A[0], B[4]); and #(108.11) a4_1(pp4_1, A[1], B[4]);
    and #(108.11) a4_2(pp4_2, A[2], B[4]); and #(108.11) a4_3(pp4_3, A[3], B[4]);
    and #(108.11) a4_4(pp4_4, A[4], B[4]); and #(108.11) a4_5(pp4_5, A[5], B[4]);
    and #(108.11) a4_6(pp4_6, A[6], B[4]); and #(108.11) a4_7(pp4_7, A[7], B[4]);

    // Row 5
    and #(108.11) a5_0(pp5_0, A[0], B[5]); and #(108.11) a5_1(pp5_1, A[1], B[5]);
    and #(108.11) a5_2(pp5_2, A[2], B[5]); and #(108.11) a5_3(pp5_3, A[3], B[5]);
    and #(108.11) a5_4(pp5_4, A[4], B[5]); and #(108.11) a5_5(pp5_5, A[5], B[5]);
    and #(108.11) a5_6(pp5_6, A[6], B[5]); and #(108.11) a5_7(pp5_7, A[7], B[5]);

    // Row 6
    and #(108.11) a6_0(pp6_0, A[0], B[6]); and #(108.11) a6_1(pp6_1, A[1], B[6]);
    and #(108.11) a6_2(pp6_2, A[2], B[6]); and #(108.11) a6_3(pp6_3, A[3], B[6]);
    and #(108.11) a6_4(pp6_4, A[4], B[6]); and #(108.11) a6_5(pp6_5, A[5], B[6]);
    and #(108.11) a6_6(pp6_6, A[6], B[6]); and #(108.11) a6_7(pp6_7, A[7], B[6]);

    // Row 7
    and #(108.11) a7_0(pp7_0, A[0], B[7]); and #(108.11) a7_1(pp7_1, A[1], B[7]);
    and #(108.11) a7_2(pp7_2, A[2], B[7]); and #(108.11) a7_3(pp7_3, A[3], B[7]);
    and #(108.11) a7_4(pp7_4, A[4], B[7]); and #(108.11) a7_5(pp7_5, A[5], B[7]);
    and #(108.11) a7_6(pp7_6, A[6], B[7]); and #(108.11) a7_7(pp7_7, A[7], B[7]);

    // 2. Carry-Save Addition Matrix
    assign P[0] = pp0_0;

    // --- Row 1 ---
    wire s1_0, s1_1, s1_2, s1_3, s1_4, s1_5, s1_6, s1_7;
    wire c1_0, c1_1, c1_2, c1_3, c1_4, c1_5, c1_6, c1_7;
    HA_struct r1_0 (pp0_1, pp1_0, s1_0, c1_0);
    HA_struct r1_1 (pp0_2, pp1_1, s1_1, c1_1);
    HA_struct r1_2 (pp0_3, pp1_2, s1_2, c1_2);
    HA_struct r1_3 (pp0_4, pp1_3, s1_3, c1_3);
    HA_struct r1_4 (pp0_5, pp1_4, s1_4, c1_4);
    HA_struct r1_5 (pp0_6, pp1_5, s1_5, c1_5);
    HA_struct r1_6 (pp0_7, pp1_6, s1_6, c1_6);
    HA_struct r1_7 (1'b0,  pp1_7, s1_7, c1_7); 
    assign P[1] = s1_0;

    // --- Row 2 ---
    wire s2_0, s2_1, s2_2, s2_3, s2_4, s2_5, s2_6, s2_7;
    wire c2_0, c2_1, c2_2, c2_3, c2_4, c2_5, c2_6, c2_7;
    FA_struct r2_0 (s1_1, pp2_0, c1_0, s2_0, c2_0);
    FA_struct r2_1 (s1_2, pp2_1, c1_1, s2_1, c2_1);
    FA_struct r2_2 (s1_3, pp2_2, c1_2, s2_2, c2_2);
    FA_struct r2_3 (s1_4, pp2_3, c1_3, s2_3, c2_3);
    FA_struct r2_4 (s1_5, pp2_4, c1_4, s2_4, c2_4);
    FA_struct r2_5 (s1_6, pp2_5, c1_5, s2_5, c2_5);
    FA_struct r2_6 (s1_7, pp2_6, c1_6, s2_6, c2_6);
    HA_struct r2_7 (pp2_7, c1_7, s2_7, c2_7);
    assign P[2] = s2_0;

    // --- Row 3 ---
    wire s3_0, s3_1, s3_2, s3_3, s3_4, s3_5, s3_6, s3_7;
    wire c3_0, c3_1, c3_2, c3_3, c3_4, c3_5, c3_6, c3_7;
    FA_struct r3_0 (s2_1, pp3_0, c2_0, s3_0, c3_0);
    FA_struct r3_1 (s2_2, pp3_1, c2_1, s3_1, c3_1);
    FA_struct r3_2 (s2_3, pp3_2, c2_2, s3_2, c3_2);
    FA_struct r3_3 (s2_4, pp3_3, c2_3, s3_3, c3_3);
    FA_struct r3_4 (s2_5, pp3_4, c2_4, s3_4, c3_4);
    FA_struct r3_5 (s2_6, pp3_5, c2_5, s3_5, c3_5);
    FA_struct r3_6 (s2_7, pp3_6, c2_6, s3_6, c3_6);
    HA_struct r3_7 (pp3_7, c2_7, s3_7, c3_7);
    assign P[3] = s3_0;

    // --- Row 4 ---
    wire s4_0, s4_1, s4_2, s4_3, s4_4, s4_5, s4_6, s4_7;
    wire c4_0, c4_1, c4_2, c4_3, c4_4, c4_5, c4_6, c4_7;
    FA_struct r4_0 (s3_1, pp4_0, c3_0, s4_0, c4_0);
    FA_struct r4_1 (s3_2, pp4_1, c3_1, s4_1, c4_1);
    FA_struct r4_2 (s3_3, pp4_2, c3_2, s4_2, c4_2);
    FA_struct r4_3 (s3_4, pp4_3, c3_3, s4_3, c4_3);
    FA_struct r4_4 (s3_5, pp4_4, c3_4, s4_4, c4_4);
    FA_struct r4_5 (s3_6, pp4_5, c3_5, s4_5, c4_5);
    FA_struct r4_6 (s3_7, pp4_6, c3_6, s4_6, c4_6);
    HA_struct r4_7 (pp4_7, c3_7, s4_7, c4_7);
    assign P[4] = s4_0;

    // --- Row 5 ---
    wire s5_0, s5_1, s5_2, s5_3, s5_4, s5_5, s5_6, s5_7;
    wire c5_0, c5_1, c5_2, c5_3, c5_4, c5_5, c5_6, c5_7;
    FA_struct r5_0 (s4_1, pp5_0, c4_0, s5_0, c5_0);
    FA_struct r5_1 (s4_2, pp5_1, c4_1, s5_1, c5_1);
    FA_struct r5_2 (s4_3, pp5_2, c4_2, s5_2, c5_2);
    FA_struct r5_3 (s4_4, pp5_3, c4_3, s5_3, c5_3);
    FA_struct r5_4 (s4_5, pp5_4, c4_4, s5_4, c5_4);
    FA_struct r5_5 (s4_6, pp5_5, c4_5, s5_5, c5_5);
    FA_struct r5_6 (s4_7, pp5_6, c4_6, s5_6, c5_6);
    HA_struct r5_7 (pp5_7, c4_7, s5_7, c5_7);
    assign P[5] = s5_0;

    // --- Row 6 ---
    wire s6_0, s6_1, s6_2, s6_3, s6_4, s6_5, s6_6, s6_7;
    wire c6_0, c6_1, c6_2, c6_3, c6_4, c6_5, c6_6, c6_7;
    FA_struct r6_0 (s5_1, pp6_0, c5_0, s6_0, c6_0);
    FA_struct r6_1 (s5_2, pp6_1, c5_1, s6_1, c6_1);
    FA_struct r6_2 (s5_3, pp6_2, c5_2, s6_2, c6_2);
    FA_struct r6_3 (s5_4, pp6_3, c5_3, s6_3, c6_3);
    FA_struct r6_4 (s5_5, pp6_4, c5_4, s6_4, c6_4);
    FA_struct r6_5 (s5_6, pp6_5, c5_5, s6_5, c6_5);
    FA_struct r6_6 (s5_7, pp6_6, c5_6, s6_6, c6_6);
    HA_struct r6_7 (pp6_7, c5_7, s6_7, c6_7);
    assign P[6] = s6_0;

    // --- Row 7 ---
    wire s7_0, s7_1, s7_2, s7_3, s7_4, s7_5, s7_6, s7_7;
    wire c7_0, c7_1, c7_2, c7_3, c7_4, c7_5, c7_6, c7_7;
    FA_struct r7_0 (s6_1, pp7_0, c6_0, s7_0, c7_0);
    FA_struct r7_1 (s6_2, pp7_1, c6_1, s7_1, c7_1);
    FA_struct r7_2 (s6_3, pp7_2, c6_2, s7_2, c7_2);
    FA_struct r7_3 (s6_4, pp7_3, c6_3, s7_3, c7_3);
    FA_struct r7_4 (s6_5, pp7_4, c6_4, s7_4, c7_4);
    FA_struct r7_5 (s6_6, pp7_5, c6_5, s7_5, c7_5);
    FA_struct r7_6 (s6_7, pp7_6, c6_6, s7_6, c7_6);
    HA_struct r7_7 (pp7_7, c6_7, s7_7, c7_7);
    assign P[7] = s7_0;

    // 3. Final Ripple-Carry Adder
    wire fc_0, fc_1, fc_2, fc_3, fc_4, fc_5, fc_6, unused_carry;
    HA_struct f_0 (s7_1, c7_0, P[8], fc_0);
    FA_struct f_1 (s7_2, c7_1, fc_0, P[9], fc_1);
    FA_struct f_2 (s7_3, c7_2, fc_1, P[10], fc_2);
    FA_struct f_3 (s7_4, c7_3, fc_2, P[11], fc_3);
    FA_struct f_4 (s7_5, c7_4, fc_3, P[12], fc_4);
    FA_struct f_5 (s7_6, c7_5, fc_4, P[13], fc_5);
    FA_struct f_6 (s7_7, c7_6, fc_5, P[14], fc_6);
    HA_struct f_7 (c7_7, fc_6, P[15], unused_carry);
endmodule
