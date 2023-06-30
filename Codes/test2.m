function img_out = test2(image_name)
img = imread(image_name);
img_bw=im2bw(img);
img_bw1 = bwmorph(img_bw,'thin');
img_bw2 = bwmorph(img_bw1,'endpoints');
idx1 = find(img_bw2(1:floor(size(img_bw2,1))/2),floor(size(img_bw2,2)/:end)==1);
%idx2,idx3....
if(length(idx1)==length(idx4)&&length(idx2)==lengh(idx3))
    img_out =img;
else
    img_out = imadjust(img,stretchlim(img),[0,1],0.5)

end

end