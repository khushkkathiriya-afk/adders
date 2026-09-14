`timescale 1ps/1fs

// Full Adder using Group-5 2-input gate delays[cite: 2]
module FA_struct(input a, b, cin, output sum, cout);
    wire w_xor, w_and1, w_and2;
    xor #(183.52) x1(w_xor, a, b);
    xor #(183.52) x2(sum, w_xor, cin);
    and #(108.11) a1(w_and1, w_xor, cin);
    and #(108.11) a2(w_and2, a, b);
    or  #(277.82) o1(cout, w_and1, w_and2);
endmodule

// Half Adder using Group-5 2-input gate delays[cite: 2]
module HA_struct(input a, b, output sum, cout);
    xor #(183.52) x1(sum, a, b);
    and #(108.11) a1(cout, a, b);
endmodule

// D-Flip Flop using Group-5 Master-Slave DFF delay[cite: 2]
module DFF_struct(input clk, d, output reg q);
    always @(posedge clk) #39.38 q <= d; 
endmodule