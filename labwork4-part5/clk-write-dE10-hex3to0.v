module clk-write-dE10-hex3to0 (//sdf2_lab4_part5
    input clk,
    output reg [6:0] hex0,
	 output reg [6:0] hex1,
	 output reg [6:0] hex2,
	 output reg [6:0] hex3
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
        4'h0: begin hex0 <= 7'b0100001;
						  hex1 <= 7'b0000110;
						  hex2 <= 7'b1111001; 
						  hex3 <= 7'b1000000; 
				  end
		 4'h1: begin  hex1 <= 7'b0100001;
						  hex2 <= 7'b0000110;
						  hex3 <= 7'b1111001; 
						  hex0 <= 7'b1000000; 
				  end
		 4'h2: begin  hex2 <= 7'b0100001;
						  hex3 <= 7'b0000110;
						  hex0 <= 7'b1111001; 
						  hex1 <= 7'b1000000; 
				  end
		 4'h3: begin  hex3 <= 7'b0100001;
						  hex0 <= 7'b0000110;
						  hex1 <= 7'b1111001; 
						  hex2 <= 7'b1000000; 
				  end
        
    endcase
end

endmodule