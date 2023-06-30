function o = an5(a,n)
o = 0;
if(size(a,1)>=n & size(a,2)>=n)
for i=1:n:size(a,1)-n+1
    for j=1:n:size(a,2)-n+1
        tmp = a(i:i+n-1:j+n-1);
        if(diag(rot90(tmp))==n)
            o = o+1;
        end
    end
end
else
    disp('Cant do it')
end
end