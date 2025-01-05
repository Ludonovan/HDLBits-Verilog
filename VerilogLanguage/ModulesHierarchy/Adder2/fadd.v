module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

    wire [15:0] out1;
    wire [15:0] out2;
    wire cout;
    add16 first ( a[15:0], b[15:0], 0, out1, cout );
    add16 secnd ( a[31:16], b[31:16], cout, out2, 0 );
    assign sum = { out2, out1};
    
endmodule

module add1 ( input a, input b, input cin, output sum, output cout );

    wire axorb, aandb, cinandaxorb;
    assign axorb = a ^ b;
    assign aandb = a && b;
    assign cinandaxorb = cin && axorb;
    assign sum  = axorb ^ cin;
    assign cout = cinandaxorb || aandb;

endmodule