function whiteImage= jafari1(a)
whiteImage = 255 * ones(size(a,1), size(a,2), 'uint8');
b = a((size(a,1))/4:1:2.*((size(a,1))/4),(size(a,2))/4:1:2.*((size(a,2))/4));
whiteImage(1:size(b,1),size(whiteImage,2)-size(b,2)+1:size(whiteImage,1),:) = b;
imshow(whiteImage);

end