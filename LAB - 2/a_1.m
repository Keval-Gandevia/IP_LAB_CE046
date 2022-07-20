img = imread('Keval_Image.jpg');
gry = rgb2gray(img);

subplot(2, 2, 1);
imshow(gry);

neg_img = 255 - gry;
subplot(2, 2, 2);
imshow(neg_img);
