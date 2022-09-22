clear all;
img = imread('Test_Image.jpg');
img = double(img);
img = mat2gray(img);

imhist(img);

noise = imnoise(img, 'Salt & Pepper', 0.5);
figure,imshow (noise);
figure, imhist(noise);