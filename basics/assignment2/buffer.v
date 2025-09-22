module ha(in,out0,out1,en);
input in,en;
output out0,out1;
bufif0(out0,in,en);
bufif1(out1,in,en);
endmodule
module ha_tb;
reg in,en;
wire out0,out1;
ha uut(in,out0,out1,en);
initial begin
in=0;
#5 en=0;
#5 en=1;


end
initial begin
$monitor($time,"in=%b out0=%b out1=%b en=%b ",in,out0,out1,en);
end
endmodule
