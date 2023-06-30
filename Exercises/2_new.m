function  jafari2_new(f,m,e)
f = double(f);
f_m = m ./ f ;
f_e = f_m .^ e;
f_1 = 1 + f_e;
g = 1./ f_1;
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
imshow(f);title('Orginal');
figure;imshow(g);title('Transform');
figure;plot(x,y);
end