img = imread("simple_t.png");
img = rgb2gray(img);

subplot(2, 3, 1);
imshow(img);
title("Original Image");

img63 = imrotate(img, 63, "nearest", "crop");
subplot(2, 3, 2);
imshow(img63);
title("nearest Image");

img63 = imrotate(img, 63, "bilinear", "crop");
subplot(2, 3, 3);
imshow(img63);
title("bilinear Image");


img63 = imrotate(img, 63, "bicubic", "crop");
subplot(2, 3, 4);
imshow(img63);
title("bicubic Image");