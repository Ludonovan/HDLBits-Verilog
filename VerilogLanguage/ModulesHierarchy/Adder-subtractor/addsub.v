module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire cout;
    wire [31:0] new_b;
    assign new_b = b ^ {32{sub}};
    add16 first ( a[15:0], new_b[15:0], sub, sum[15:0], cout );
    add16 secnd ( a[31:16], new_b[31:16], cout, sum[31:16],  );

endmodule