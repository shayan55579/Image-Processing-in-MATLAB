function img_out = jafar3_1(img_in,theresh)
subplot(1,4,1);
imshow(img_in);
title("Orginal");
gray = rgb2gray(img_in);
subplot(1,4,2);
imshow(gray);
title("Gray");
img_out = gray>theresh;
subplot(1,4,3);
imshow(img_out);
title("Binary");
th = graythresh(gray);
BW = imbinarize(gray,th);
subplot(1,4,4);
imshow(BW);
title('Binary with graythresh');


end