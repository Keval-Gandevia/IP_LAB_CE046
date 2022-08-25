img = imread('pout.tif');
img = double(img);

subplot(3, 3, 1);
imshow(img, []);
title('Original Image');

% 2 Gray Levels
gray2img = floor(img / 128);
subplot(3, 3, 2);
imshow(gray2img, []);
title('2 Gray levels');

% 16 Gray Levels
gray16img = floor(img / 16);
subplot(3, 3, 3);
imshow(gray16img, []);
title('16 Gray levels');

% 64 Gray Levels
gray64img = floor(img / 4);
subplot(3, 3, 4);
imshow(gray64img, []);
title('64 Gray levels');

% 128 Gray Levels
gray128img = floor(img / 2);
subplot(3, 3, 5);
imshow(gray128img, []);
title('128 Gray levels');

% 256 Gray Levels
gray256img = floor(img / 1);
subplot(3, 3, 6);
imshow(gray256img, []);
title('256 Gray levels');


