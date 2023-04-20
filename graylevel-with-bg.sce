
clc;
clear all;
a=imread('camera.png');

a1=58; // This value is user defined
b1=158; // This value is user defined
[r,c]=size(a);
figure(2);
subplot(2,1,1);
imshow(a);
for i=1:r
    for j=1:c
        if (a(i,j)>a1 & a(i,j)<b1)
            x(i,j)=255;
        else
            x(i,j)=a(i,j);
        end
    end
end
x=uint8(x);
subplot(2,1,2);
imshow(x);
