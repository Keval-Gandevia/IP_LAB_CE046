img = imread('capitol_img.jpg');
img = rgb2gray(img);
figure, imshow(img);

imgNot = imcomplement(img);
figure, imshow(imgNot);