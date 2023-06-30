function out = jafari3_4(a)
subplot(1,3,1);
imshow(a);
title("Orginal");
J = imnoise(a,'gaussian')
subplot(1,3,2);
imshow(J);
title("Gaussian")
q = imnoise(a,'salt & pepper',0.02);
subplot(1,3,3);
imshow(q)
title("Salt & Pepper")
end