// Load the image into Scilab
img=imread('lena.png');
// Load the image into Scilab
//img = imread('lena.jpg');

// Convert the image to grayscale
gray_img = rgb2gray(img);

// Apply the Sobel edge detection algorithm to the image
dx = imdilate(gray_img, strel('rectangle', [3, 3])) - imerode(gray_img, strel('rectangle', [3, 3]));
dy = imdilate(gray_img, strel('rectangle', [3, 3])) - imerode(gray_img, strel('rectangle', [3, 3]));
edges = sqrt(dx.^2 + dy.^2);

// Display the original image and the edges
subplot(1,2,1)
imshow(gray_img)
title('Original Image')
subplot(1,2,2)
imshow(edges)
title('Edges')
