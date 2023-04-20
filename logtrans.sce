clc;
clear all;
a=imread('mscit1.png');
a=rgb2gray(a);
subplot(2,1,1);
imshow(a);

c=1;
[r1,c1]=size(a);
for i=1:r1
    for j=1:c1
        b=double(a(i,j));
        s(i,j)=c*log10(1+b);
    end
end

new1=uint8(s*100);
//imshow(new1);
subplot(2,1,2);
imshow(new1);
