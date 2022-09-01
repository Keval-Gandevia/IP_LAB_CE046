img = imread('banana.bmp');
img = im2bw(img);
img = imcomplement(img);

subplot(3, 3, 1);
imshow(img);
title('Original Image');

% define structuring element.
s = strel('Disk', 6);

% erosion
erosion = imerode(img, s);

subplot(3, 3, 2);
imshow(erosion);
title('After erosion');

subplot(3, 3, 3);
imshow(img - erosion);
title('Boundary Extraction');

% dialation

dialation = imdilate(img, s);

subplot(3, 3, 4);
imshow(dialation);
title('After dialation');

subplot(3, 3, 5);
imshow(dialation - img);
title('Boundary Extraction');




