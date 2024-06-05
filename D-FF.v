//Design the following circuits
   a. D latch with reset using if-else statement.
   b. D flip-flop using latch designed above. Verify whether flip-flop has synchronous or asynchronous reset.
   c. D flip-flop with asynchronous reset using If-elseStatement.//


a.  
  module prayas(D,RST,enable,Q,Qbar); //D latch and D flipflop with asynchronous reset are same
    input D,RST,enable;                //only difference is of CLOCK
    output reg Q;
    output Qbar;
    assign Qbar = ~Q;
 
    always @(D or enable or RST)
     if (RST)
       Q <= 1'b0;
     else if (enable)
	    Q <= D;
   endmodule 


b.  // Its synchronous reset
   module prayas(D,CLK,RST,Q,Qbar);
    input D,CLK,RST;
    output reg Q;
    output Qbar;
    wire enable;
    assign enable = 1; // Always enabled for D flip-flop
    assign Qbar = ~Q;
	   
// Clock edge triggered for updating the output of the latch 
    always @(posedge CLK) begin
      if (RST)
       Q <= 1'b0;
     else
       Q <= D;
    end
endmodule







c.

module prayas(D,RST,CLK,Q,Qbar); //D latch and D flipflop with asynchronous reset are same
 input D,RST,CLK;                //only difference is of CLOCK
 output reg Q;
 output Qbar;
 assign Qbar = ~Q;
 
	always @(posedge CLK or negedge RST)
  if (~RST)
    Q <= D;
	else
	 Q <= 1'b0;
endmodule 
 
