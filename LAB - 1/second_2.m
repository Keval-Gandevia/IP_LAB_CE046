image = imread('lenna_image.png');
subplot(2, 2, 1);
imshow(image);


BandW = im2bw(gry, 0.5);
subplot(2, 2, 2);
imshow(BandW);

