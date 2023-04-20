clc;
clear all;
a=imread('camera.png');
[r,c]=size(a);
subplot(2,1,1);
imshow(a);
G=0.8;
for i=1:r
    for j=1:c
        b=double(a(i,j));
        x(i,j)=b^G;
        end
end
new1=uint8(x);
subplot(2,1,2);
imshow(new1);

