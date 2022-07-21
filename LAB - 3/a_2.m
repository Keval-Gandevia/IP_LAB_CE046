clear all;
img = imread('capitol_img.jpg');
img = rgb2gray(img);

BW = roipoly(img);
img = double(img);
%BW = imcomplement(BW);
BW = double(BW) * 255;

final = bitand(img, BW);
%final = bitor(img, BW);

img = mat2gray(img);
BW = mat2gray(BW);
final = mat2gray(final);
figure, imshow(img);
figure, imshow(BW);
figure, imshow (final);