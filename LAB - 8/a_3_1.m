clear all;
img = imread('blobs.png');

subplot(2, 3, 1);
imshow(img);
title('Original Image');

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

% opening
openingImage = convolutionDilation(erosionImg, s);
subplot(2, 3, 4);
imshow(openingImage);
title('After Opening');

% closing
closingImage = convolutionErosion(dilationImg, s);
subplot(2, 3, 5);
imshow(closingImage);
title('After Closing');

