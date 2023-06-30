function g = jafari2(f,m,e)
    f = double(f);
    f_m = m ./ f ;
    f_e = f_m .^ e;
    f_1 = 1 + f_e;
    g = 1./ f_1;
    subplot(1,3,1);
    imshow(f);
    title('Orginal');
    subplot(1,3,2);
    imshow(g);
    title('AfterFunction');
    subplot(1,3,3);
    plot(f(:,:),g(:,:));
    title('Plot diffrence')
end