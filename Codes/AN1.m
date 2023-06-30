function [sume,mines,multi,div] = AN1(a,b)
sume =0;
mines = 0;
multi = 0;
div =0;
if(size(a,1) == size(a,1) & size(b,1)==size(b,2) & size(a,1)==size(b,1))
sume = a +b;
mines = a -b;
multi = a *b;
div = a/b;

else
    disp('No way')
end
end