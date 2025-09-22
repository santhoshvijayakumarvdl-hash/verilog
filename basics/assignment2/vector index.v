module wirew;
  reg [3:0] mem [3:0][3:0];
  integer i;
  integer j;  
  initial begin 
    mem[3][3] = 4'b0001;
    for(i=0;i<1;i=i+1)begin
        for(j=0;j<1;j=j+1)begin 
            mem[i][j]=4'b0000;
            end
           end
   $display("t=%0t  mem[3][3]=%b  ", $time, mem[3][3]);
   $display("t=%0t  mem[0][0]=%b", $time, mem[0][0]);
       end
endmodule
