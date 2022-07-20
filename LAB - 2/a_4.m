img = imread('Keval_Image.jpg');
img = rgb2gray(img);

overExposed = img + 100;
overExposed = double(overExposed);
subplot(2, 2, 1);
imshow(overExposed, []);

new_img = power(overExposed, 3.4);
subplot(2, 2, 2);
imshow(new_img, []);
