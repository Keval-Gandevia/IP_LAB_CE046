clear all;

img = imread('Keval_Image.jpg');
img = rgb2gray(img);
img = imresize(img, 0.1);
img = double(img);
[m, n] = size(img);

subplot(2, 2, 1);
imshow(img, []);
title('Original Image');

weighted_filter = [1, 2, 1; 2, 4, 2; 1, 2, 1];
new_img = zeros(m, n);
box_size = 3;
[s1, s2] = size(weighted_filter);

g = floor(box_size / 2);

for i = box_size : 1 : m - box_size
    for j = box_size : 1 : n - box_size
        temp =  img((i - g) : (i + g), (j - g) : (j + g));
        new_img(i, j) = sum(sum(temp .* weighted_filter));
    end
end

new_img = new_img / 16;

subplot(2, 2, 2);
imshow(new_img, []);
title('Through Weighted Filter');

