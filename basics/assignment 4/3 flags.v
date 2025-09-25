module fiyf(
    input[3:0] a,b,

  output reg[3:0] sum
);
reg of;
reg z;
reg carry,c;


assign a=4'b1001;
assign b=4'b1011;

initial begin
{carry,sum}=a+b;
if(carry)
c=1;
end
initial begin 

if(((sum[4]==0)&&(a[4]==1)&&(b[4]==1))||((sum[4]==1)&&(a[4]==0)&&(b[4]==0)))
of=1;
 if(&sum)
z=1;


end


endmodule
