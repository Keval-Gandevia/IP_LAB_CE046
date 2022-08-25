clear all;

img = imread('Keval_Image.jpg');
img = rgb2gray(img);
img = imresize(img, 0.2);
img = double(img);
[m, n] = size(img);

subplot(2, 2, 1);
imshow(img, []);
title('Original Image');

box_size = 9;
standard_box_filter = ones(box_size, box_size);
[s1, s2] = size(standard_box_filter);
new_img = zeros(m, n);

g = floor(box_size / 2);

for i = box_size : 1 : m - box_size
    for j = box_size : 1 : n - box_size
        temp =  img((i - g) : (i + g), (j - g) : (j + g));
        new_img(i, j) = sum(sum(temp .* standard_box_filter));
    end
end

new_img = new_img / (s1 * s2);

subplot(2, 2, 2);
imshow(new_img, []);
title('Transformed Image');


output_from_built = imfilter(img, standard_box_filter);
subplot(2, 2, 3);
imshow(output_from_built, []);
title('Through imfilter');
  
conv2image = conv2(img, standard_box_filter);
subplot(2, 2, 4);
imshow(conv2image, []);
title('Through conv2');


