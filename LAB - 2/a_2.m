pkg load image
img = imread('ex_log.tif');
img = double(img);
subplot(2, 3, 1);
imshow(img, []);

new_img = log(img + 1);
subplot(2, 3, 2);
imshow(new_img);

n_nrm = mat2gray(new_img);
subplot(2, 3, 3);
imshow(n_nrm);
