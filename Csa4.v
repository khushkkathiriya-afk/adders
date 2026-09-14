`timescale 1ps/1fs

module CSA4_3Word_struct(input [3:0] X, Y, Z, output [5:0] Final_Sum);
    wire [3:0] S_csa, C_csa;
    
    // Level 1: Carry Save Addition (Parallel)
    FA_struct csa0 (X[0], Y[0], Z[0], S_csa[0], C_csa[0]);
    FA_struct csa1 (X[1], Y[1], Z[1], S_csa[1], C_csa[1]);
    FA_struct csa2 (X[2], Y[2], Z[2], S_csa[2], C_csa[2]);
    FA_struct csa3 (X[3], Y[3], Z[3], S_csa[3], C_csa[3]);

    // Level 2: Final Carry-Propagate Addition 
    wire c1, c2, c3;
    
    assign Final_Sum[0] = S_csa[0];
    HA_struct f_cpa1 (S_csa[1], C_csa[0], Final_Sum[1], c1);
    FA_struct f_cpa2 (S_csa[2], C_csa[1], c1, Final_Sum[2], c2);
    FA_struct f_cpa3 (S_csa[3], C_csa[2], c2, Final_Sum[3], c3);
    HA_struct f_cpa4 (C_csa[3], c3, Final_Sum[4], Final_Sum[5]);
endmodule