module bloc(input a,
output c);
reg c,b;

always@(*)begin
b=0;
#5 c=b;
 #5 b=1;
#5 c<=b;
end
endmodule
