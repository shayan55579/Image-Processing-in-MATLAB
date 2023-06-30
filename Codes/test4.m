function s = test4(img_name);
img_bw = img2bw(imread(img_name));
intw1 = [-1 -1 -1;-1 1 1;-1 1 1];
intw2 = [-1 -1 1;-1 1 1;-1 -1 1];
struct = ~bwconncomp(img_bw);
img_bw1 = bwhitmiss(img_bw,intw1) + bwhitmiss(img_bw,rot90(intw1)) + bwhitmiss(img_bw,rot90(intw1,2)) + bwhitmiss(img_bw,rot90(intw1,3));
img_bw2 = bwhitmiss(img_bw,intw2) + bwhitmiss(img_bw,rot90(intw2)) + bwhitmiss(img_bw,rot90(intw2,2)) + bwhitmiss(img_bw,rot90(intw2,3));
img_bw3 = img_bw1 + img_bw2;
for i=1:struct.NumObjects
    idx = struct.PixelIdxList{i};
    tmp = zeros(size(img_bw));
    tmp(idx) =1 ;
    tmp = logical(tmp);
    if(find(tmp==img_bw3) ==4)
        [r,c] = find(tmp ==img_bw3);
        for i=1:size(r,1)
            for j=1:size(r,1)
                if(r(i) ==r(j) && c(i)~=c(j))
                    h1 = abs(c(i) - c(j));
                else
                if(r(i)~=r(j)&& c(i)==c(j))
                    h2 = abs(r(i) - r(j))
                end
                end
            
            end
            if(h1 ==h2)
                s = [s;length(idx)];
            end
        end
    
    end



end
end