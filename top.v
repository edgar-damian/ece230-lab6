module top(
    input [7:0] sw,
    output [5:0] led

);
    
    light light_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])    
    );
    
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    
    wire w1;
    
    full_adder LSBfull_adder_inst(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(w1) 
    );
    
    full_adder MSBfull_adder_inst(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(w1),
        .Y(led[4]),
        .Cout(led[5])
    
    );

endmodule
