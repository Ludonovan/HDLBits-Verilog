module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire sel;
    wire [15:0] mult0;
    wire [15:0] mult1;
    add16 first ( a[15:0], b[15:0], 0, sum[15:0], sel );
    add16 sel1 ( a[31:16], b[31:16], 0, mult0, 0 );
    add16 sel2 ( a[31:16], b[31:16], 1, mult1 , 0 );
    assign sum[31:16] = sel ? mult1 : mult0;

endmodule

