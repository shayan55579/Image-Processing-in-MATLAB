function out = show(a)
out = zeros(2.*size(a));
out = uint8(out);
out(1:2:end,1:2:end) =a;
for i=2:2:size(out,1)-1
    out(i,:) = (out(i-1,:)+out(i+1,:))./2;
end
for j=2:2:size(out,2)-1
    out(:,j) = (out(:,j-1)+out(:,j+1))./2;
end
out = uint8(out);
imshow(a);
title("orginal");
figure;
imshow(out);
title("resize")
end
