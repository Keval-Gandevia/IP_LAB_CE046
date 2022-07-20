img = imread('Keval_Image.jpg');
img = rgb2gray(img);
subplot(2, 3, 1);
imshow(img);
title('Grayscale Image');

lowimg = decrease_contrast(img);
subplot(2, 3, 2);
imshow(img);
title('Low Contrast Image');


range1 = [];
range2 = [];
range3 = [];
[r,c] = size(lowimg);
for i = 1 : r
    for j = 1 : c
        if(lowimg(i,j) < 110)
            range1(end+1) = lowimg(i,j);
        elseif(lowimg(i,j) < 140)
            range2(end+1) = lowimg(i,j);
        elseif(lowimg(i,j) < 255)
            range3(end+1) = lowimg(i,j);
        end
    end
end

rmax1 = max(range1);
rmax2 = max(range2);
rmax3 = max(range3);
rmin1 = min(range1);
rmin2 = min(range2);
rmin3 = min(range3);

smax1 = 109;
smin1 = 0;
smax2 = 139;
smin2 = 110;
smax3 = 255;
smin3 = 140;

for i = 1 : r
    for j = 1 : c
        if(lowimg(i,j) < 110)
            new_img(i,j) = ((smax1 - smin1) / (rmax1 - rmin1)) * (lowimg(i,j) - rmin1) + smin1;
        elseif(lowimg(i,j) < 140)
            new_img(i,j) = ((smax2 - smin2) / (rmax2 - rmin2)) * (lowimg(i,j) - rmin2) + smin2;
        elseif(lowimg(i,j) < 255)
            new_img(i,j) = ((smax3 - smin3) / (rmax3 - rmin3)) * (lowimg(i,j) - rmin3) + smin3;
        end
    end
end
subplot(2,3,3);
imshow(new_img);
title('Piecewise Image');


