clear all;

img = imread('Keval_Image.jpg');
img = rgb2gray(img);
img = imresize(img, 0.2);
img = double(img);
[m, n] = size(img);

subplot(100, 100, 1);
imshow(img, []);
title('Original Image');

box_size = 15;
standard_box_filter = ones(box_size, box_size);
[s1, s2] = size(standard_box_filter);
new_img = zeros(m, n);

g = floor(box_size / 2);

temp_img = img;
for k = 1 : 80
    for i = box_size : 1 : m - box_size
        for j = box_size : 1 : n - box_size
            temp =  temp_img((i - g) : (i + g), (j - g) : (j + g));
            new_img(i, j) = sum(sum(temp .* standard_box_filter));
        end
    end

    new_img = new_img / (s1 * s2);
    temp_img = new_img;
    subplot(100, 100, k + 1);
    imshow(new_img, []);
    
end


