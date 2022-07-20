img = imread('lenna_img.png');
img = rgb2gray(img);

underExposed = img - 100;
underExposed = double(underExposed);
subplot(2, 2, 1);
imshow(underExposed, []);

new_img = power(underExposed, 0.2);
subplot(2, 2, 2);
imshow(new_img, []);