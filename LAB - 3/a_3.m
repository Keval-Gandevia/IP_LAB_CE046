clear all;
img = imread("money_heist.jpg");
img = rgb2gray(img);

figure, imshow(img);
title("Original Image");

[r, c] = size(img);

k = 1;
for i = 1 : 2: r
    row_img(k, :) = img(i, :);
    k = k + 1;
end

m = 1;
for i = 1 : 2 : c
    final_img(:, m) = row_img(:, i);
    m = m + 1;
end

figure, imshow((final_img));
title("Shrinked Image");