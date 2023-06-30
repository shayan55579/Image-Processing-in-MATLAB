function [count] = z3(a,n)
count = 0;
tmp = a;
iwant =  a(2:end-1,2:end-1) ;
for i=1:size(iwant,1)
    for j=1:size(iwant,2)
        tmp = iwant(i-1:i+1,j-1:j+1);
        middleElement = tmp(ceil(numel(tmp)/2))
        if(middleElement -tmp(i,j) <n)
            count = count + 1;
        end
       
        
    end
end
 
end