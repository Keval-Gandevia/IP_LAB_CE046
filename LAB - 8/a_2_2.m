img = imread('banana.bmp');
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

dilationImg = convolutionDilation(img, s);
subplot(2, 3, 3);
imshow(dilationImg);
title('Dilated Image');

