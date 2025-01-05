module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    assign { w, x, y, z } = { {a, b[4:1]}, {b[0], c, d[4:2]}, {d[1:0], e}, {f, 2'b11}};

endmodule