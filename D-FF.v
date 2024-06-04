//Design the following circuits
   a. D latch with reset using if-else statement.
   b. D flip-flop using latch designed above. Verify whether flip-flop has synchronous or asynchronous reset.
   c. D flip-flop with asynchronous reset using If-elseStatement.//


a.  
   module prayas(D,RST,Q,Qbar); //D latch and D flipflop with asynchronous reset are same
    input D,RST;                //only difference is of CLOCK
    output reg Q;
    output Qbar;
    assign Qbar = ~Q;
 
    always @(posedge RST)
     if (RST)
       Q <= 1'b0;
	   else
	    Q <= D;
   endmodule 

b.
   module prayas(D,RST,CLK,Q,Qbar); //D latch and D flipflop with asynchronous reset are same
 input D,RST,CLK;                //only difference is of CLOCK
 output reg Q;
 output Qbar;
 assign Qbar = ~Q;
 
 always @(posedge CLK)
  if (~RST)
    Q <= D;
	else
	 Q <= 1'b0;
endmodule 







c.

module prayas(D,RST,CLK,Q,Qbar); //D latch and D flipflop with asynchronous reset are same
 input D,RST,CLK;                //only difference is of CLOCK
 output reg Q;
 output Qbar;
 assign Qbar = ~Q;
 
 always @(posedge CLK)
  if (~RST)
    Q <= D;
	else
	 Q <= 1'b0;
endmodule 
 
