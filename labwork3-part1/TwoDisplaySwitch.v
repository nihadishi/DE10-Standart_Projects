module TwoDisplaySwitch (
    input [7:0] switches,
    output reg [6:0] hex0,
    output reg [6:0] hex1
);

always @(*)
begin
    case(switches[7:4])
        4'b0000: hex1 = 7'b1000000;  // Display '0'
        4'b0001: hex1 = 7'b1111001;  // Display '1'
        4'b0010: hex1 = 7'b0100100;  // Display '2'
        4'b0011: hex1 = 7'b0110000;  // Display '3'
        4'b0100: hex1 = 7'b0011001;  // Display '4'
        4'b0101: hex1 = 7'b0010010;  // Display '5'
        4'b0110: hex1 = 7'b0000010;  // Display '6'
        4'b0111: hex1 = 7'b1111000;  // Display '7'
        4'b1000: hex1 = 7'b0000000;  // Display '8'
        4'b1001: hex1 = 7'b0010000;  // Display '9'
        default: hex1 = 7'b1111111;   // Treat other values as don't-cares
    endcase

    case(switches[3:0])
        4'b0000: hex0 = 7'b1000000;  // Display '0'
        4'b0001: hex0 = 7'b1111001;  // Display '1'
        4'b0010: hex0 = 7'b0100100;  // Display '2'
        4'b0011: hex0 = 7'b0110000;  // Display '3'
        4'b0100: hex0 = 7'b0011001;  // Display '4'
        4'b0101: hex0 = 7'b0010010;  // Display '5'
        4'b0110: hex0 = 7'b0000010;  // Display '6'
        4'b0111: hex0 = 7'b1111000;  // Display '7'
        4'b1000: hex0 = 7'b0000000;  // Display '8'
        4'b1001: hex0 = 7'b0010000;  // Display '9'
        default: hex0 = 7'b1111111;   // Treat other values as don't-cares
    endcase
end