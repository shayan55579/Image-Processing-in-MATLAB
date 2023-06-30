function r = z4(a)
r = 0;
for i=1:size(a,1)
    for j=1:size(a,2)
        if(a(i,j)==0) %mikham check konam age draye ghabli adda bood bargardoone age badi ya ghabli 0 bodd rad beshe
           r = [r,a(find(i-1,j))]            % age badi ham 1 bood bargadoobe
          if(a(i,j) ==0)
              r = [r,a(find(i,j-1))]  
              

        end
    end
end
 r = r(2:end);
end