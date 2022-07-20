img_power1 = imread('ex_power1.tif');
img_power1 = double(img_power1);

subplot(2, 2, 1);
imshow(img_power1, []);

new_power1 = power(img_power1, 0.5);
subplot(2, 2, 2);
imshow(new_power1, []);

img_power2 = imread('ex_power2.tif');
img_power2 = double(img_power2);

subplot(2, 2, 3);
imshow(img_power2, []);

new_power2 = power(img_power2, 3.8);
subplot(2, 2, 4);
imshow(new_power2, []);
