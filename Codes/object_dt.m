function [s] = object_dt(image_name)
img = imread(image_name);
img_bw = im2bw(img,graythresh(img));
img_bw = imfill(img_bw,'holes');
imshow(img);
s = bwconncomp(img_bw);
for i=1: s.NumObjects
    [r,c] = ind2sub(size(img_bw), s.PixelIdxList{i});
    min_r = min(r,[],1);
    max_r = max(r,[],1);
    min_c = min(c,[],1);
    max_c = max(c,[],1);
    x = min_r;
    y= min_c;
    w = max_r - min_r;
    h = max_c - min_c;
    rectangle('Position',[y,x,h,w],'EdgeColor','r','LineWidth',3,'LineStyle','-');
end
end