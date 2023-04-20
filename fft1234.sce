clc;
clear all;
a=imread('lenag.jpeg');
a=rgb2gray(a);
a=double(a);
b=fft2(a);

figure(1);
imshow(abs(b));
c=fftshift(b);
figure(2);
imshow(abs(c));
