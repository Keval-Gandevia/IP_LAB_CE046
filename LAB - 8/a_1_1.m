clear all;
img = zeros(9, 9);

for i = 3 : 4
    for j = 3 : 5
        img(i, j) = 1;
    end
end

for i = 5 : 7
    for j = 3 : 7
        img(i, j) = 1;
    end
end

subplot(2, 3, 1);
imshow(img);
title('Original Image');
s = strel('Disk', 1);

erosionImg = convolutionErosion(img, s);
subplot(2, 3, 2);
imshow(erosionImg);
title('Erosed Image');

dilationImg = convolutionDilation(img, s);
subplot(2, 3, 3);
imshow(dilationImg);
title('Dilated Image');

