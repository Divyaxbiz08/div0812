clc;
clear all;
figure(1)

subplot(3,3,1);
i=imread('lena.jpeg');
imshow(i);
title('original image');
subplot(3,3,2);
j1=imresize(i,0.8);
imshow(j1);
title('resized image 0.8');

subplot(3,3,3);
j2=imresize(i,0.7);
imshow(j2);
title('resized image 0.7');

subplot(3,3,4);
j3=imresize(i,0.6);
imshow(j3);
title('resized image 0.6');

subplot(3,3,5);
j4=imresize(i,0.1);
imshow(j4);
title('resized image 0.1');
