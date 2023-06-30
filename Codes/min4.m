function out = min4(a,b)
out =a;
if(size(a,1)==size(a,2) && size(b,2)==size(b,1) && mod(size(a,1),2)==1 &&mod(size(a,2),2)==1)
    h_strat = ceil(size(a,1)/2);
    k_strat = 1;
    h = ceil(size(a,1)/2);
    k = 1;
    for i=1:size(b,1)
        for j=1:size(b,2)
            out(h,k) = b(i,j);
            h = h-1;
            k = k+1;
        end
        h =h_strat +i;
        k = k_strat +i;
    end
else
    disp('Impossible')

end