clear all;

img = imread("cameraman.tif");
img = imresize(img, 0.5);

figure;
imshow(img);
title("Original Image");

c = 4;
[m, n] = size(img);
m = m * c;
d = (127 / m);

for i = 1 : m
    p(i) = 1 + (d * i) - d;
end

for i = 2 : m
    for j = 1 : m
        p(i, j) = p(1, j);
    end
end

q = p';

for i = 1 : m
    for j = 1 : m
        new_img(i, j) = img(round(q(i, j)), round(p(i, j)));
    end
end

figure;
imshow(new_img);
title('Transformed Image');


interp2Img = interp2(double(img));
figure;
imshow(interp2Img, []);
title('Through interp2');





