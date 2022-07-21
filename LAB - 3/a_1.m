img = imread("high_contrast_image.jpg");
img = rgb2gray(img);
img = double(img);

[r, c] = size(img);

brightness = double(0);

for i = 1 : r
    for j = 1 : c
        brightness = brightness + double(img(i, j));
    end
end

brightness = brightness / (r * c);


contrast = double(0);

for i = 1 : r
    for j = 1 : c
        contrast = contrast + power((img(i, j) - brightness), 2);
    end
end

contrast = contrast / (r * c);
contrast = sqrt(contrast);

