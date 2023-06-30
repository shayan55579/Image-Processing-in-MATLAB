function count = min13(a)
count = 0;
for i=1:size(a,1)-2
    for j=1:size(a,2)-2
        d1 = diag(a(i:i+2,j:j+2));
        d2 =diag(rot90(a(i:i+2,j:j+2)));
        d3 = a(i,j:j+2);
        d4 = a(i:i+2,j)
        if(d1 ==d1(1))
            count= count +1;
        end
        if(d2 ==d2(1))
            count = count + 1;
        end
        if(d3 == d3(1))
            count = count +1;
        end
        if(d4 == d4(1))
            count = count +1;
        end
    end
end
end