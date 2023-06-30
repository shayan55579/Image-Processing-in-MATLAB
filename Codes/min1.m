function final = min1(a)
final = 0;
if(mod(size(a,1),2)==1 & mod(size(a,3),2)==1)
    for i=1:size(a,2)
        tmp = a(:,i,:);
        ind = find(tmp>ceil(size(tmp,1)/2),ceil(size(tmp,3)/2));
        if(length(ind)>3)
            final = [final,i]
        end
    end
    final = final(2:end);
else
    disp("noooooo")

end
end