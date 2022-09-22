clear all;

img = imread('Test_Image.jpg');
[m, n] = size(img);

noise = imnoise(img, 'Salt & Pepper', 0.02);

max_img = ordfilt2(noise, 9, true(3));
min_img = ordfilt2(noise, 1, true(3));
median_img = ordfilt2(noise, 5, true(3));

subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
imshow(max_img);
title('Max Filterred Image');

subplot(2, 2, 3);
imshow(min_img);
title('Min Filterred Image');

subplot(2, 2, 4);
imshow(median_img);
title('Median Filterred Image');


