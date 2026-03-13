module tb;

logic [7:0] a;
logic [7:0] b;
logic [7:0] y;

adder dut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);
end

initial begin     
    a = 10;
    b = 20;

    #1;

    $display("y = %0d", y);
	
    a = 20;
    #1;

    $display("y = %0d", y);
    $finish;
end

endmodule
