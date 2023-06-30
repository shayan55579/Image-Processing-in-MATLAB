function [out] = An2(a,b)
out = 0;
if(size(b,1)==size(b,2) & mod(size(b,1),2)==1)
    out = conv2(a,b,"same")
else
    disp('impossible')
end