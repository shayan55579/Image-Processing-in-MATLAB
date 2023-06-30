function  show4(f,m,e)
f = imadjust(f,[0.3 0.7],[]);
g = 1./(1+double((m./double(f))).^e);
g = uint8(g.*255);
x = 0:255;
y = zeros(size(x));
for i=1:size(x,2)
    idx = find(f==x(i)); 
    if(size(idx,1)>0)
        y(i) = g(idx(1));
    else
        if(i==1)
            y(i) = 0;
        
         else
        y(i) = y(i-1);
        end
    end
end
imshow(f);title('imadjust');
figure;imshow(g);title('Transform');
figure;plot(x,y);
end