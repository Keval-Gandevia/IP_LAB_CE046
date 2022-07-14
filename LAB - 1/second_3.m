image = imread('lenna_image.png');
figure, imshow(image);

overExposedImage = image + 100;
figure, imshow(overExposedImage);
