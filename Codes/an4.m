function idx = an4(a)
idx = 0;
if(size(a,1)== size(a,2))
    for i=1:size(a,1)
        if(length(a(a(i,:)==0))== length(a(a(:,i)==0)))
            idx = [idx,i];
        end
   
    end
else
    disp('no')
end
idx =idx(2:end);
end