clear all;
img = imread('balloons.jpg');
img = rgb2gray(img);
[m, n] = size(img);
values = linspace(0, 255, 256);
hist_array = imhist(img);

figure;
imshow(img);

min = 99999999;
min_index = -1;

for i = 2 : 254
    left = hist_array(1 : i);
    right = hist_array(i+1 : 255);
    wl = sum(left) / (m * n);
    wr = sum(right) / (m * n);
    
    ml = sum(dot(left, values(1:i))) / sum(left);
    mr = sum(dot(right, values(i+1:255))) / sum(right);
    
    vl = sum(dot(power(values(1:i) - ml, 2), left)) / sum(left);
    vr = sum(dot(power(values(i+1:255) - mr, 2), right)) / sum(right);
    
    within_class_var = wl * vl + wr * vr;
    
    if within_class_var < min
        min = within_class_var;
        min_index = i;
    end
end

for i = 1 : m
    for j = 1 : n
        if(img(i, j) < min_index)
            output(i, j) = 0;
        else
            output(i, j) = 1;
    end
    end
end

figure;
imshow(output);

L = graythresh(img);
new_img = im2bw(img, L);
 
figure;
imshow(new_img);

if(output == new_img)
    figure;
    imshow('ThumbsUp.jpg');
else
    figure;
    imshow('ThumbsDown.jpg');
end
    
  
    