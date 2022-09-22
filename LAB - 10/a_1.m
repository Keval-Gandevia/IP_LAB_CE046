img = imread('Test_Image.jpg');
[m, n] = size(img);

z = uint8(randi([10, 40], m, n));

noisy_img = double(img) + double(z);
noisy = imhist(mat2gray(noisy_img));

original = imhist((img));

figure(1), bar(0:255, noisy);
figure(2) , bar(0:255, original);
figure(3);

subplot(2,1,1);
imshow(img)
title('original image');

subplot(2,1,2)
imshow(mat2gray(noisy_img))
title('noisy image-uniform noise');