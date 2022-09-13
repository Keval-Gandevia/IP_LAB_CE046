img = imread('cameraman.tif');

subplot(2, 2, 1);
imshow(img);
title('Origianl Image');

[m, n] = size(img);

fft2Img = fft2(img, m, n);

fftShiftImg = fftshift(fft2Img);

absolute = abs(fftShiftImg);

logTransform = log(1 + absolute);
subplot(2, 2, 2);
imshow(logTransform, []);
title('Magnitude');

phase = angle(fftShiftImg);
subplot(2, 2, 3);
imshow(phase, []);
title('Phase Angle');

ifft2Img = ifft2(fft2Img);
subplot(2, 2, 4);
imshow(ifft2Img, []);
title('Reconstructed original image');

