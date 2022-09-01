img = imread('Geometrical.bmp');
img = im2bw(img);
img = imcomplement(img);

subplot(2, 3, 1);
imshow(img);
title('Original Image');

s = strel('Disk', 5);

erosionImg = convolutionErosion(img, s);
subplot(2, 3, 2);
imshow(erosionImg);
title('Erosed Image');


subplot(2, 3, 3);
imshow(img - erosionImg);
title('Boundary Extraction');

