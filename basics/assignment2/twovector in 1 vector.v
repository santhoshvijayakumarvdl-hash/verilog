module data1;
  reg [7:0] data;
 reg [4:0] out;  
initial begin
data = 124;
out = data[7:4] + data[3:0];
$display("out = %d , upper = %b, lower = %b",
out, out, data[7:4], data[3:0]);
 end
endmodule
