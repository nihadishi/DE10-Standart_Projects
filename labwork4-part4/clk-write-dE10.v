module clk-write-dE10 (//sdf2_lab4_part4
    input clk,
    output reg [6:0] hex0
);

reg [25:0] count;
reg [3:0] num;

always @(posedge clk) begin
    if (count == 4'h3)begin 
        count <= 0;
        end
    else begin
        count <= count + 1;
    end

    case (count)
        4'h0: hex0 <= 7'b0100001; 
        4'h1: hex0 <= 7'b0000110; 
        4'h2: hex0 <= 7'b1111001; 
        4'h3: hex0 <= 7'b1000000; 
    endcase
end

endmodule