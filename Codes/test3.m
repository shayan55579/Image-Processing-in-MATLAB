function img_out = test3(img_name)
img = imread(img_name);
img_edge = edge(img,'canny');
idx_edge = find(img_edge==1);
tmp = length(idx_edge)/numel(img);
if(tmp <0.2)
    img_out =imfilter(img,fspecial('unsharp',0)); 
elseif(tmp>0.5)
    img_out = imfilter(img,fspecial('average',3));
else
    img_out =img;
end
subplot(1,2,1)
imshow(img);
title("Orginal");
subplot(1,2,2);
imshow(img_out);
title('Result');
end
