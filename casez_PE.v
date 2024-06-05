//Design 8:3 priority encoder using casez statements//

//In Verilog, the casez statement is used for a case statement where 'z' and 'x' are treated as don't care values. 
  This means that the case statement will match any value where 'z' or 'x' occur in the pattern.
  In the provided code, casez is used to match specific patterns of the data_in input signal, where 'x' and 'z' represent unknown or 
  don't-care values. This allows us to prioritize the encoding based on the highest '1' bit in the input. For more understanding learn the
  truth table of PRIORITY ENCODER.
//

    
module priority_encoder_8_3(input [7:0] data_in, output reg [2:0] priority_out);

always @* begin
    casez(data_in)
        8'b1xxx_xxxx: priority_out = 3'b000; // Priority 0
        8'b01xx_xxxx: priority_out = 3'b001; // Priority 1
        8'b001x_xxxx: priority_out = 3'b010; // Priority 2
        8'b0001_xxxx: priority_out = 3'b011; // Priority 3
        8'b0000_1xxx: priority_out = 3'b100; // Priority 4
        8'b0000_01xx: priority_out = 3'b101; // Priority 5
        8'b0000_001x: priority_out = 3'b110; // Priority 6
        8'b0000_0001: priority_out = 3'b111; // Priority 7
        default: priority_out = 3'b000; // Default case
    endcase
end
  
endmodule
