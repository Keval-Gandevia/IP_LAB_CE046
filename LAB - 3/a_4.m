img = imread("lenna_img.png");
img = rgb2gray(img);

subplot(2, 3, 1);
imshow(img);
title("Original Image");

% 90 degree rotation
img90 = rot90(img, 1);
subplot(2, 3, 2);
imshow(img90);
title("90 degree Image");

% 180 degree rotation
img180 = rot90(img, 2);
subplot(2, 3, 3);
imshow(img180);
title("180 degree Image");

% 270 degree rotation
img270 = rot90(img, 3);
subplot(2, 3, 4);
imshow(img270);
title("270 degree Image");


img63 = imrotate(img, 63, "nearest", "loose");
subplot(2, 3, 5);
imshow(img63);
title("63 degree Image");
