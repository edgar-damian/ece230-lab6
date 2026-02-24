// Implement top level module
// Implement top level module
module top(
    input [7:0] sw,
    output [5:0] led

);
    
    light light_inst(
        .downStairs(sw[0]),
        .upStairs(sw[1]),
        .stair_light(led[0])    
    );
    
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
    );
    
    wire c1;
    
    full_adder LSBfull_adder_inst(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(c1)
    );
    
    full_adder MSBfull_adder_inst(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(c1),
        .Y(led[4]),
        .Cout(led[5])
    
    );

endmodule
