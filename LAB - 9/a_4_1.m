imgWoman = imread('woman.tif');
imgRect = imread('Rectangle.tif');

% resize the image
imgWoman = imresize(imgWoman, size(imgRect));

subplot(2, 3, 1);
imshow(imgWoman);
title('Original Image');

imgWoman = double(imgWoman);
imgRect = double(imgRect);

fft2Img = fft2(imgWoman);
absolute = abs(fft2Img);
fftShift = fftshift(absolute);
phase = angle(fft2Img);
subplot(2, 3, 2);
imshow(phase, []);
title('Phase of woman');

reconImg = exp(1i * phase);
subplot(2, 3, 3);
imshow(ifft2(reconImg), []);
title('Reconst. using only phase');

fft2Rect = fft2(imgRect);
absolute1 = abs(fft2Rect);
fftShiftRect = fftshift(absolute1);
phase2 = angle(fft2Rect);

reconImg2 = absolute1 .* exp(1i * phase);
subplot(2, 3, 4);
imshow(ifft2(reconImg2), []);
title('reconstructed using woman spec and phase of rect');

reconImg3 = absolute .* exp(1i * phase2);
subplot(2, 3, 5);
imshow(ifft2(reconImg3), []);
title('reconstructed using spec of woman and phase of rect');

reconImg4 = absolute .* exp(1i * phase);
subplot(2, 3, 6);
imshow(ifft2(reconImg4),[]);
title('Reconst. original image');



