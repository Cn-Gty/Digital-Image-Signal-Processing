clear all; close all;
%% generate dot image
x = zeros(100,1);
x1 = x+1;
im = zeros(100,100);
im(30,:) = x1;

%% filter
% f = [1,2,1;
%     0,0,0;
%     -1 -2 -1];
f = [-1 -1 -1;
    2 2 2;
    -1 -1 -1];
I_without_abs = imfilter(im,f);
I = abs(I_without_abs);

figure();
subplot(1,3,1),imshow(im),title('Org')
subplot(1,3,2),imshow(I),title('absolute after filter')
subplot(1,3,3),imshow(I_without_abs),title('org\_img after filter')
