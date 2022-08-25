clear all;
img = imread('cameraman.tif');
[m, n] = size(img);

for i = 1 : m
    for j = 1 : n
        x = i;
        y = j + 3 * i;
        shear_x(x, y) = img(i, j);
    end
end

subplot(2, 2, 1);
imshow(shear_x);
title('X-Direction shear transform');

for i = 1 : m
    for j = 1 : n
        x = i + 2 * j;
        y = j;
        shear_y(x, y) = img(i, j);
    end
end

subplot(2, 2, 2);
imshow(shear_y);
title('Y-Direction shear transform');


tform = maketform('affine',[1 0 0; .5 1 0; 0 0 1]);
xImg = imtransform(img, tform);
subplot(2, 2, 3);
imshow(xImg);
title('Through imtransform X-Direction');

tform = maketform('affine',[1 3 0; 0 1 0; 0 0 1]);
yImg = imtransform(img, tform);
subplot(2, 2, 4);
imshow(yImg);
title('Through imtransform Y-Direction');

