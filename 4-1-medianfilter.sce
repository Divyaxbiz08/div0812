a=imread('C:\Users\Mithilesh\Desktop\all class\DIP\All ocdes\image\camera.png');
b1 = double(mtlb_double(a));
c = imnoise(a,"salt & pepper",0.2);
d = double(mtlb_double(c));
b = d;
m = (1/9)*ones(3,3);


subplot(2,2,1);
imshow(a);
title('org img');

subplot(2,2,2);
imshow(c);
title('noised img');


[r1,c1] = size(mtlb_double(a));
for i = 2:r1-1
        for j = 2:c1-1
        a1 = [d(i-1,j-1),d(i-1,j),d(i-1,j+1),d(i,j-1),d(i,j), d(i,j+1),d(i+1,j-1),d(i+1,j),d(i+1,j+1)];
        a2 = gsort(a1,"g","i");//gsort(A,'g','i') sort the elements of the array A in the increasing order.
        med = a2(5);
        b(i,j) = med;
        end;
end;
subplot(2,2,3);
imshow(uint8(b)); 
title('Filtered Image');
