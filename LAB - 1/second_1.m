image = imread('lenna_image.png');
subplot(2, 2, 1);
imshow(image);

gry = rgb2gray(image);
subplot(2, 2, 2);
imshow(gry);
