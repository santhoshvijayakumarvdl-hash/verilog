module jjnn ;
    reg [7:0] count;
    reg clk;
    initial begin 
    count=128;
    clk=0;
    end
    always@(*)
    forever #5 clk=~clk;
    
    
    
    always@(posedge clk) begin
    count<=count>>1;
      count[7]<=~count[0];
    end
    
    
