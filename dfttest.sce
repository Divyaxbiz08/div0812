a=imread('camera.png');
subplot(2,1,1);
imshow(a);
title('org img');
b=double(a);
c=fft(b);
subplot(2,1,2);
imshow(c);
title('LP-filtered img');
