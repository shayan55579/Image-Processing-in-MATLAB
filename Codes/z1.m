function h = z1(a,b)
h = 0;
if(size(a,1) == size(b,1) && size(b,2)==size(b,2))
    tmpa = a(find(a ~=b));
    tmpb = b(find(a ~=b));
    for i=1:size(a,1)-2
        for j=1:size(a,2)-2
            if(find(tmpa(i,j))==find(tmpb(i,j)))
                h = h + 1;
            else
                h = h + 3;
                
            end
        end
    end
else
    disp('Impossible')
end

end