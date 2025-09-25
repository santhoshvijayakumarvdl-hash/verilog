module desi(
    );
    wire a,b,notg,andg,org,xorg,xnorg;
    
    assign a=1;
    assign b=0;
    assign notg=~a;
    assign andg=a&b;
    assign org=a|b;
    assign xorg=a^b;
    assign xnorg=a~^b;
    
    initial begin
    $monitor(" a=%b b=%b   %b %b %b %b %b ",$realtime,a,b,notg,andg,org,xorg,xnorg);
    end
    
