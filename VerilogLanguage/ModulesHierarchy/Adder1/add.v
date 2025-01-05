module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] out1;
    wire [15:0] out2;
    wire cout;
    add16 top ( a[15:0], b[15:0], 0, out1, cout );
    add16 bot ( a[31:16], b[31:16], cout, out2, 0 );
    assign sum = { out2, out1 };

endmodule