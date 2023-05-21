module BinaryConvertToBCD (
    input [5:0] binary,
    output [6:0] BC
);
 assign BC = {binary[5:3] + 3'b000, binary[2:0] + 3'b000};
