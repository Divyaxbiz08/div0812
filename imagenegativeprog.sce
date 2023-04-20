//for gray image

A = imread('a123.bmp');
A=rgb2gray(A);
subplot(2,1,1);
imshow(A);
title('Original Image ');

[row col]=size(A);
for x=1:row
    for y=1:col
       A(x,y)=255-A(x,y);
    end
end
subplot(2,1,2);
imshow(A);
title('Image after negation');

