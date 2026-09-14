`timescale 1ps/1fs

module RCA8_Reg_struct(input clk, input [7:0] A_in, B_in, input Cin_in, output [7:0] S_out, output Cout_out);
    wire [7:0] A, B, S;
    wire cin_reg, c1, c2, c3, c4, c5, c6, c7, cout_w;

    // Input Registers
    DFF_struct da0(clk, A_in[0], A[0]); DFF_struct db0(clk, B_in[0], B[0]);
    DFF_struct da1(clk, A_in[1], A[1]); DFF_struct db1(clk, B_in[1], B[1]);
    DFF_struct da2(clk, A_in[2], A[2]); DFF_struct db2(clk, B_in[2], B[2]);
    DFF_struct da3(clk, A_in[3], A[3]); DFF_struct db3(clk, B_in[3], B[3]);
    DFF_struct da4(clk, A_in[4], A[4]); DFF_struct db4(clk, B_in[4], B[4]);
    DFF_struct da5(clk, A_in[5], A[5]); DFF_struct db5(clk, B_in[5], B[5]);
    DFF_struct da6(clk, A_in[6], A[6]); DFF_struct db6(clk, B_in[6], B[6]);
    DFF_struct da7(clk, A_in[7], A[7]); DFF_struct db7(clk, B_in[7], B[7]);
    DFF_struct dcin(clk, Cin_in, cin_reg);

    // Structural RCA logic
    FA_struct fa0 (A[0], B[0], cin_reg, S[0], c1);
    FA_struct fa1 (A[1], B[1], c1, S[1], c2);
    FA_struct fa2 (A[2], B[2], c2, S[2], c3);
    FA_struct fa3 (A[3], B[3], c3, S[3], c4);
    FA_struct fa4 (A[4], B[4], c4, S[4], c5);
    FA_struct fa5 (A[5], B[5], c5, S[5], c6);
    FA_struct fa6 (A[6], B[6], c6, S[6], c7);
    FA_struct fa7 (A[7], B[7], c7, S[7], cout_w);

    // Output Registers
    DFF_struct ds0(clk, S[0], S_out[0]); DFF_struct ds4(clk, S[4], S_out[4]);
    DFF_struct ds1(clk, S[1], S_out[1]); DFF_struct ds5(clk, S[5], S_out[5]);
    DFF_struct ds2(clk, S[2], S_out[2]); DFF_struct ds6(clk, S[6], S_out[6]);
    DFF_struct ds3(clk, S[3], S_out[3]); DFF_struct ds7(clk, S[7], S_out[7]);
    DFF_struct dcout(clk, cout_w, Cout_out);
endmodule
