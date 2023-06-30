function out = jafari3_3(a)
subplot(1,3,1);
imshow(a);
title("Orginal");
K = imadjust(a,[0.3 0.7],[]);
subplot(1,3,2);
imshow(K)
title("imadjust");
I3 = flipdim(a ,1);
subplot(1,3,3);
imshow(I3)
title("Filp")


end