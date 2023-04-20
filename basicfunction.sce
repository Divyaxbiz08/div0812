clc;
clear all;

i1=imread('camera.png');
i2=imread('lena.jpeg');
//Img = rgb2gray(Img);
//Samp=zeros(256);
figure(1);
imshow(i1);
figure(2);
imshow(i2);

/////
figure(3);
subplot(1,2,1);
imshow(i1);
subplot(1,2,2);
imshow(i2);

