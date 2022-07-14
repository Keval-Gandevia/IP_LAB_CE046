pkg load image;
img = imread('dhoni_image.jpg');

bw = im2bw(img);
figure, imshow(bw);

[r,c,z] = size(bw);
new_img = zeros(c, r);

for i = 1:1:r
  new_img(:, i) = bw(r - i + 1, :);
end
figure, imshow(new_img);
