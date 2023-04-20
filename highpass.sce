a=imread('camera.png');
b=double(a);
c=imnoise(a,'salt & pepper',0.2);
d=double(c);

subplot(2,2,1);
imshow(a);
title('original');
subplot(2,2,2);
imshow(c);
title('noise img');
m=[-1 -1 -1;-1 8 -1;-1 -1 -1];
[r1,c1]=size(a);

for i=2:1:r1-1
    for j=2:1:c1-1
   new(i,j)=(m(1)*d(i-1,j-1))+(m(2)*d(i-1,j))+(m(3)*d(i-1,j+1))    +(m(4)*d(i,j-1))+(m(5)*d(i,j))+(m(6)*d(i,j+1))
    +(m(7)*d(i+1,j-1))+(m(8)*d(i+1,j))+(m(9)*d(i+1,j+1));
    end
end
subplot(2,2,3);
imshow(uint8(new));
title('LP-filtered img');
