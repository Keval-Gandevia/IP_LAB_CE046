img = imread("dollar_img.jpg");
img = rgb2gray(img);
img = double(img);

subplot(3, 4, 1);
imshow(img, []);
title("Original Image");

c1 = mod(img, 2);
c2 = mod(floor(img/2), 2);
c3 = mod(floor(img/4), 2);
c4 = mod(floor(img/8), 2);
c5 = mod(floor(img/16), 2);
c6 = mod(floor(img/32), 2);
c7 = mod(floor(img/64), 2);
c8 = mod(floor(img/128), 2);

subplot(3, 4, 2);
imshow(c1, []);
title("Bit Plane - 1");

subplot(3, 4, 3);
imshow(c2, []);
title("Bit Plane - 2");

subplot(3, 4, 4);
imshow(c3, []);
title("Bit Plane - 3");

subplot(3, 4, 5);
imshow(c4, []);
title("Bit Plane - 4");

subplot(3, 4, 6);
imshow(c5, []);
title("Bit Plane - 5");

subplot(3, 4, 7);
imshow(c6, []);
title("Bit Plane - 6");

subplot(3, 4, 8);
imshow(c7, []);
title("Bit Plane - 7");

subplot(3, 4, 9);
imshow(c8, []);
title("Bit Plane - 8");


new_img = (c8 * power(2, 7)) + (c7 * power(2, 6));
subplot(3, 4, 10);
imshow(new_img, []);
title("New image with 2 bit plane");

new_img_1 = (c8 * power(2, 7)) + (c7 * power(2, 6)) + (c6 * power(2, 5)) + (c5 * power(2, 4));
subplot(3, 4, 11);
imshow(new_img_1, []);
title("New image with 4 bit plane");

new_img_2 = (c8 * power(2, 7)) + (c7 * power(2, 6)) + (c6 * power(2, 5)) + (c5 * power(2, 4)) + (c4 * power(2, 3)) + (c3 * power(2, 2)) + (c2 * power(2, 1)) + (c1 * power(2, 0));
subplot(3, 4, 12);
imshow(new_img_2, []);
title("New image with 8 bit plane");