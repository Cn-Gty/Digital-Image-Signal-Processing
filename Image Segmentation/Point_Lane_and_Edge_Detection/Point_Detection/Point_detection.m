clear all; close all;
%% generate dot image
x = zeros(100,1);
x1 = x+1;
im = zeros(100,100);
xx = 60;
xy = 80;
yx = 30;
yy = yx+xy-xx;
for i = 1:100
    if i < xy && i >= xx
        im(i,yx:yy) = x1(xx:xy);
    else
        im(i,:) = x;
    end
end

%% laplacian filter
L_f = [1,1,1;1,-8,1;1,1,1];
im_L_f = imfilter(im,L_f);
p = im_L_f(51:70,21:40);

%% plot
figure();
subplot(1,3,1)
imshow(im)
subplot(1,3,2)
imshow(im_L_f)
subplot(1,3,3)
imshow(p)