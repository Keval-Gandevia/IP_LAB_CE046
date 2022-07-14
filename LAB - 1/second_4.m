image = imread('lenna_image.png');
figure, imshow(image);

underExposedImage = image - 100;
figure, imshow(underExposedImage);
