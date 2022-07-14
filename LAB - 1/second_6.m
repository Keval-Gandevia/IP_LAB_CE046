image = imread('lenna_image.png');
figure, imshow(image);

resizedImage = imresize(image, 0.5);
figure, imshow(resizedImage);
