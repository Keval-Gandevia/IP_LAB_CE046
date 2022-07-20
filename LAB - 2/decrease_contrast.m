function lowimg = decrease_contrast(img)
    [m, n] = size(img);
    r_max = max(max(img));
    r_min = min(min(img));
    
    for i = 1 : m
        for j = 1 : n
            lowimg(i, j) = ((155 - 0) / (r_max - r_min)) * (img(i, j) - r_min);
        end
    end
end