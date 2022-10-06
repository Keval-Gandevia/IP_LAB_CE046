img = imread('wirebond.tif');
[m, n] = size(img);
figure;
imshow(img);

mask = [-1 -1 -1;-1 8 -1;-1 -1 -1];

laplacianImg = conv2(img, mask);
% filterredImg = imfilter(img, mask);

figure;
imshow(laplacianImg, []);

figure;
imshow(abs(laplacianImg));


for i = 1 : m
    for j = 1 : n
        if(laplacianImg(i, j) < 0)
            new_img(i, j) = 0;
        else
            new_img(i, j) = laplacianImg(i, j);
        end
    end
end

figure;
imshow(new_img);