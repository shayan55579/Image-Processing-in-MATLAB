function idx = min14(a)
idx = 0;
d1 = 0;
if(size(a,1)==size(a,2) && size(a,2)==size(a,3))
    for i=1:size(a,1)
        d1 = [d1;a(i,i,i)];
    end
    d1 = d1(2:end);
    for j=1:size(a,3)
       tmp = a(:,:,i)
    if(diag(tmp) == d1)
        idx = [idx;i];
    end
    end
    idx = idx(2:end);
else
    disp('impossible')
end

end