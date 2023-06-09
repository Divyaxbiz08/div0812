clc;
clear all;
image=imread('lena.png');
R = image(:,:,1);
G = image(:,:,2);
B = image(:,:,3);
nBins = 256;
//Get histValues for each channel
[yR,x] = imhist(R,nBins);
[yG,x] = imhist(G,nBins);
[yB,x] = imhist(B,nBins);
//Plot them together in one plot
plot(x,yR,x,yG,x,yB,"Linewidth",2);
xlabel("RGB Intensity");
ylabel("No. of Pixels");
set(gca(),"grid",[1,1]);
