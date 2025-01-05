module top_module ( input clk, input d, output q );
    wire a, b;
    my_dff first ( clk, d,  a);
    my_dff second ( clk, a, b);
    my_dff third ( clk, b, q );
    
endmodule