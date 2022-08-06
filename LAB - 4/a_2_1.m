img = imread("kidney.tif");
subplot(2, 2, 1);
imshow(img);
title("Original image");
[r, c] = size(img);

for i = 1 : r
    for j = 1 : c
        if(img(i, j) >= 150 && img(i, j) <= 230)
            new_img(i, j) = 255;
        else
            new_img(i, j) = 0;
        end
    end
end

subplot(2, 2, 2);
imshow(new_img);
title("Output image");