function best_image = f3(img1,img2)
img1_bw =im2bw(img1,graythresh(img1));
img2_bw =im2bw(img2,graythresh(img2));
image_contrast_2 = max(img2_bw(:)) - min(img2_bw(:));
image_contrast_1 = max(img1_bw(:)) - min(img1_bw(:));
if(image_contrast_1 >image_contrast_2)
    imshow(img1)
else
    imshow(img2)
end
end