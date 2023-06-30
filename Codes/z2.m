function tmp  = z2(a)
tmp = a;
m1 = ceil(size(a,1)/2);% row submatrix
for i=1:size(a,1)
    for j=1:size(a,2)
        tmp = a(i:i+m1-1,j+m1-1)
        if (mod(sum(diag(tmp),3) == 0))
            tmp = tmp(i,j);
        end

        
    end
end
end