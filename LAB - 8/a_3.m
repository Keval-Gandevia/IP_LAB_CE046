clear all;

img = imread('blobs.png');

subplot(2, 3, 1);
imshow(img);
title('Original Image');

s = strel('Disk', 5);

% erosion
erosion = imerode(img, s);
subplot(2, 3, 2);
imshow(erosion);
title('Erosed Image');

% dilation
dilation = imdilate(img, s);
subplot(2, 3, 3);
imshow(dilation);
title('Dilated Image');

% opening
openingImage = imdilate(erosion, s);
subplot(2, 3, 4);
imshow(openingImage);
title('After Opening');

% closing
closingImage = imerode(dilation, s);
subplot(2, 3, 5);
imshow(closingImage);
title('After Closing');





