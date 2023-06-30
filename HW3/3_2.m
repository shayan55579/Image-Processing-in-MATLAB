function out = jafari3_2(a,num)
a_jam = a+num;
a_zarb = a.*num;
a_taghsim = a./num;
a_menha = a-num;
subplot(1,5,1);
imhist(a);
title("Orginal");
subplot(1,5,2);
imhist(a_jam);
title("Sum");
subplot(1,5,3);
imhist(a_zarb)
title("multi");
subplot(1,5,4);
imhist(a_taghsim);
title("Divide");
subplot(1,5,5);
imhist(a_menha);
title("Minus")

end