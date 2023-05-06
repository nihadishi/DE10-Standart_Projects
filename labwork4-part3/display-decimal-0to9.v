module display-decimal-0to9(//sdf2_lab4_part3
    input clk,
    output reg [6:0] hex0
);

reg [25:0] count;
reg [3:0] num;

always @(posedge clk) begin
    if (count == 4'h9)begin 
        count <= 0;
        end
    else begin
        count <= count + 1;
    end

    case (count)
        4'h0: hex0 <= 7'b1000000; 
        4'h1: hex0 <= 7'b1111001; 
        4'h2: hex0 <= 7'b0100100; 
        4'h3: hex0 <= 7'b0110000; 
        4'h4: hex0 <= 7'b0011001; 
        4'h5: hex0 <= 7'b0010010; 
        4'h6: hex0 <= 7'b0000010; 
        4'h7: hex0 <= 7'b1111000; 
        4'h8: hex0 <= 7'b0000000; 
        4'h9: hex0 <= 7'b0010000; 
    endcase
end

endmodule
/* count 1dən başlayır. hex[9]-u çapa verir. Növbəti 'click'də hex[0] olur və sistem yenilənir */
