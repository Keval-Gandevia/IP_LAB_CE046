img = imread('building.tif');
[m, n] = size(img);
figure;
imshow(img);

gx = [1 2 1; 0 0 0; -1 -2 -1];
gy = [-1 0 1; -2 0 2; -1 0 1];

xImg = imfilter(new_img, gx);
yImg = imfilter(new_img, gy);

magnitude = xImg + yImg;

figure;
imshow(xImg);

figure;
imshow(yImg);

figure;
imshow(magnitude);