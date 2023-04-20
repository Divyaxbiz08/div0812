clc;
clear all;
Img1=imread('camera.png');
Img = rgb2gray(Img1);
//512*512
subplot (2,2,1),imshow(Img),title('Og image 512*512');
//256*256
Samp=zeros(256);
m=1;
n=1;
for i=1:2:512-1
    for j=1:2:512-1
         Samp(m,n)=Img(i,j);
           n=n+1;       
        end 
        n=1;
        m=m+1;  
end
SampImg256=mat2gray(Samp);
subplot(2,2,2);
imshow(SampImg256);
title('Sampled.Img256*256')


///////
Samp=zeros(128);
m=1;
n=1;
for i=1:4:512
    for j=1:4:512
         Samp(m,n)=Img(i,j);
           n=n+1;       
        end 
        n=1;
        m=m+1;  
end
SampImg128=mat2gray(Samp);
subplot(2,2,3),imshow(SampImg128),title('Sampled.Img128*128')

//////////////////////

Samp=zeros(64);
m=1;
n=1;
for i=1:8:512
    for j=1:8:512
         Samp(m,n)=Img(i,j);
           n=n+1;       
        end 
        n=1;
        m=m+1;  
end
SampImg64=mat2gray(Samp);
subplot(2,2,4),imshow(SampImg64),title('Sampled.Img64*64')
