function img_out = tasvir1(img_in,theresh)
img_out = img_in>theresh;
subplot(1,2,1);
imshow(img_in);
title("Orginal");
subplot(1,2,2);
imshow(img_out);
title("Binary");
figure;
imhist(img_in);

end