clc;
close;

a = imread('lenag.jpeg');

//Displaying Original RGB image
figure(1);
imshow(a);
title("Original Image")

//Displaying Gray level image
b = rgb2gray(a);
figure(2);
imshow(b);
title("Gray Level Image")

//Displaying False coloring(Pseudo) image
figure(3)
imshow(b,jetcolormap(256));
title("Pseudo Color Image");

