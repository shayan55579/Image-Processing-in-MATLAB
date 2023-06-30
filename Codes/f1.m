function num = f1(img)
img = imread(img);
num = 0;
img_bw=rgb2gray(img);
y=imbinarize(img_bw);
s = bwconncomp(y);
for i=1: s.NumObjects
   y_jadid = s.PixelIdxList{i};
   y_jadid=~imbinarize(img_bw);
   [a b]=bwlabel(y_jadid);
   if (b>=2)
       num = num +1;
   end
    
end
disp(num)
end
%count all holes

%x=rgb2gray(imread('Check.JPG'));
%y=~imbinarize(x);
%figure;
%imshow(y);
%[a b]=bwlabel(y);
%disp(b-1);