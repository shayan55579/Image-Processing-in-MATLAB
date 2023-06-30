function [out] = f2(img)
%intw1 = [-1 -1 -1;-1 1 1;-1 1 1];
%intw2 = [-1 -1 1;-1 1 1;-1 -1 1];
%struct = ~bwconncomp(img_bw);
%img_bw1 = bwhitmiss(img_bw,intw1) + bwhitmiss(img_bw,rot90(intw1)) + bwhitmiss(img_bw,rot90(intw1,2)) + bwhitmiss(img_bw,rot90(intw1,3));
%img_bw2 = bwhitmiss(img_bw,intw2) + bwhitmiss(img_bw,rot90(intw2)) + bwhitmiss(img_bw,rot90(intw2,2)) + bwhitmiss(img_bw,rot90(intw2,3));
%img_bw3 = img_bw1 + img_bw2;
I= imread(img);
Ibw = ~im2bw(I,graythresh(I));
Ifill = imfill(Ibw,'holes');
Iarea = bwareaopen(Ifill,100);
Ifinal = bwlabel(Iarea);
stat = regionprops(Ifinal,'boundingbox');
imshow(I); hold on;
for cnt = 1 : numel(stat)
    bb = stat(cnt).BoundingBox;
    rectangle('position',bb,'edgecolor','r','linewidth',2);
end

end
