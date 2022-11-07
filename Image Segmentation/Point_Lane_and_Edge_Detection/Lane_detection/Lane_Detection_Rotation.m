clear all; close all;
%% generate dot image
x = zeros(100,1);
x1 = x+1;
im = zeros(100,100);
% im(50,:) = x1;
% imshow(im)
a = 2;
b = 0;
xx = 1:100;
yy = round(a*xx + b);
for i = 1:100
    if yy(i)>100
        yy(i) = 0;
    end
end
    
for i = 1:100
    if yy(i) ~= 0
        im(i,yy(i)) = 1;
    end
end
% imshow(im)
%% filter_self_produced(actually this generate a more perfect line)
f = [1,1,2;
    -1 0 1;
    -2 -1 -1];
F= imfilter(im,f);
figure()
subplot(1,3,1)
imshow(F)
title('Lane: y = 2x');
%% filter Laplacian
ff = [1,1,1;
    1,-8,1;
    1,1,1];
FF = imfilter(F,ff);
subplot(1,3,2);
imshow(FF)
title('Img after lap\_filter without abs');
subplot(1,3,3);
imshow(abs(FF));
title('Img after Lap\_filter and abs operation');
