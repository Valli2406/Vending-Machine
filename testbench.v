module vending_machine_tb;

// Inputs
reg clk;
reg [1:0] in;
reg rst;

// Outputs
wire out;
wire [1:0] change;

vending_machine_18105070 uut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out),
    .change(change)
);

initial begin
    // Initialize inputs
    $dumpfile("vending_machine_18105070.vcd");
    $dumpvars(0, vending_machine_tb);
    rst = 1;
    clk = 0;
    

    #6 rst = 0;
    in = 1;
    #11 in =1;
    #16 in =1;
    #25 $finish;
end
// Clock generation
always #5 clk = ~clk;

endmodule