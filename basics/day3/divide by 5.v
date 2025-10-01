module fsm(input rst,clk,b, output reg o,output reg [3:0]state,nexstate);


 localparam [3:0] s0=0,s1=1,s2=2,s3=3,s4=4,s5=5;
  always@(posedge clk or negedge rst) 
  if(!rst) state<=s0; 
   else  state<=nexstate;
  always@(*) begin
 
    case(state) 
    s0:begin o=1;nexstate= b? s1:s0; end
     s1:begin o=0;nexstate= b? s3:s2; end
     s2:begin o=0;nexstate= b? s0:s4; end
      s3:begin o=0;nexstate= b? s2:s1; end
       s4:begin o=0;nexstate= b? s4:s3; end
       
         
       
           default: begin nexstate = s0; o = 0;
    end
          
          
          endcase
           end
 endmodule
`timescale 1ns/1ps

module tb_fsm;

reg clk, rst, b;
wire o;
wire [3:0] state,nexstate;
// Instantiate the FSM
fsm uut (
    .clk(clk),
    .rst(rst),
    .b(b),
    .o(o),
    .state(state),
    .nexstate(nexstate)
    
   
    
);

// Clock generation: 10ns period
initial clk = 0;
always #5 clk = ~clk;

// Test sequence
initial begin
    // Initialize signals
    rst = 0;
    b = 0;

    // Apply reset
    #10;
    rst = 1;

    // Sequence of inputs to test FSM
    #10 b = 1;   // move from s0 -> s1
    #10 b = 0;   // s1 -> s2
    #10 b = 1;   // s2 -> s3 (o should become 1)
    #10 b = 1;   // s3 -> s4 (o back to 0)
    #10 b = 1;   // s4 -> s5
    #10 b = 1;   // s5 -> s6 (o should become 1)
    #10 b = 1;
    #10 b=  1;
    #10 b=  0;
    #10 b=  1;
    #10 b=  0;
       // s6 -> s1 (o back to 0)
    #50;

    $finish;
end

// Monitor outputs
initial begin
    $monitor("Time=%0t | rst=%b | b=%b | o=%b | s=%0d", $time, rst, b, o,state);
end

endmodule
