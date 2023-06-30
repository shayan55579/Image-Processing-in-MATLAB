function g = show1(f,m,e)
g = 1./(1+double((m./double(f))).^e);
subplot(1,2,1);
imshow(g);
title("g is");
subplot(1,2,2);
imshow(f)
title('F is');
end