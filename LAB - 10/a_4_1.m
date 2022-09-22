clear all;
img = imread('Test_Image.jpg');
[m, n] = size(img);
noise = imnoise(img, 'Salt & Pepper', 0.02);
radius = floor(3 / 2);
img = padarray(img, [radius, radius], 0, 'both');

for i = radius + 1 : m - radius
    for j = radius + 1 : n - radius
        subimg = noise((i - radius):(i + radius), (j - radius):(j + radius));
        max_img(i, j) = max(max(subimg));
        min_img(i, j) = min(min(subimg));
        median_img(i, j) = median(median(subimg)); 
    end
end

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

