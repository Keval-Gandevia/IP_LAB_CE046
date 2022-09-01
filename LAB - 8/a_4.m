img = imread('Geometrical.bmp');
img = im2bw(img);
img = imcomplement(img);

subplot(2, 3, 1);
imshow(img);
title('Original Image');

s = strel('Disk', 5);

% erosion
erosion = imerode(img, s);

subplot(2, 3, 2);
imshow(erosion);
title('After erosion');

subplot(2, 3, 3);
imshow(img - erosion);
title('Boundary Extraction');