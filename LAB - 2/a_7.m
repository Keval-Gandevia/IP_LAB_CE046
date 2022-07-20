pkg load image

img = imread('ex_contrast.tif');

subplot(2, 3, 1);
imshow(img);

r_max = max(max(img));
r_min = min(min(img));

s_max = 255;
s_min = 0;

new_img = round(((s_max - s_min) / (r_max - r_min)) * (img - r_min) + s_min);
subplot(2, 3, 2);
imshow(new_img, []);

% applying thresholding
thresholdingImg = im2bw(new_img, 0.6);
subplot(2, 3, 3);
imshow(thresholdingImg);


