r = 10;
c = 10;

for i = 1 : r
    for j = 1 : c
        if(mod(j, 2) == 1)
            new_img_1(i, j) = 0;
        else
            new_img_1(i, j) = 255;
        end
    end
end

for i = 1 : r
    for j = 1 : c
        if(j <= 5)
            new_img_2(i, j) = 0;
        else
            new_img_2(i, j) = 255;
        end
    end
end

for i = 1 : r
    for j = 1 : c
        if(mod(i, 2) == 1 && mod(j, 2) == 1)
            new_img_3(i, j) = 0;
        elseif(mod(i, 2) == 1 && mod(j, 2) == 0)
            new_img_3(i, j) = 255;
        elseif(mod(i, 2) == 0 && mod(j, 2) == 1)
            new_img_3(i, j) = 255;
        elseif(mod(i, 2) == 0 && mod(j, 2) == 0)
            new_img_3(i, j) = 0;
        end
    end
end

subplot(2, 3, 1);
imshow(new_img_1);
title("First image");

subplot(2, 3, 2);
imshow(new_img_2);
title("Second image");

subplot(2, 3, 3);
imshow(new_img_3);
title("third image");

subplot(2, 3, 4);
histogram(uint8(new_img_1));
title("Histogram of first image");

subplot(2, 3, 5);
histogram(uint8(new_img_2));
title("Histogram of second image");

subplot(2, 3, 6);
histogram(uint8(new_img_3));
title("Histogram of third image");




