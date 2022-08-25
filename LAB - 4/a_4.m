img = imread('ex_contrast.tif');

subplot(2, 3, 1);
imshow(img);
title('Original Image');

equalized_image = histogram_equalization(img);
subplot(2, 3, 2);
imshow(equalized_image, []);
title('Equalized Image');

% histeq function
hist_img = histeq(img);
subplot(2, 3, 3);
imshow(hist_img, []);
title('Using histeq function');


