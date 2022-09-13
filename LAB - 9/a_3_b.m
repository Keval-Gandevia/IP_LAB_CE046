img = imread('Rectangle.tif');
subplot(2, 3, 1);
imshow(img);
title('Origianl Image');

translatedImg = imrotate(img, 135);
subplot(2, 3, 2);
imshow(translatedImg);
title('Rotated Image');

[m, n] = size(img);
fft2Img = fft2(img, m, n);
fftShiftImg = fftshift(fft2Img);
absolute = abs(fftShiftImg);
logTransform = log(1 + absolute);

subplot(2, 3, 3);
imshow(logTransform, []);
title('Magnitude of the Original Image');

[r, c] = size(translatedImg);
fft2Img1 = fft2(translatedImg, r, c);
fftShiftImg1 = fftshift(fft2Img1);
absolute1 = abs(fftShiftImg1);
logTransform1 = log(1 + absolute1);

subplot(2, 3, 4);
imshow(logTransform1, []);
title('Magnitude of the rotated Image');

phase1 = angle(fftShiftImg);
subplot(2, 3, 5);
imshow(phase1, []);
title('Phase Angle of original Image');

phase2 = angle(fft2Img1);
subplot(2, 3, 6);
imshow(phase2, []);
title('Phase Angle of translated image');

