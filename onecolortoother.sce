clc;
close;
x=imread('lena.png');

//Displayimg RGB image
figure(1);
imshow(x);
title('Original RGB Image')

//Displaying HSV image
y = rgb2hsv(x);
figure(2);
imshow(y);
title('HSV version of RGB original Image')
