function outputImg = convolutionErosion(img, s)
    s = getnhood(s);
    [m, n] = size(s);
    radius = floor(m / 2);
    [r, c] = size(img);

    img = padarray(img, [radius, radius], 0, 'both');
    new_img = zeros(r, c);
    for i = radius + 1 : r
        for j = radius + 1 : c
            subimg = img((i - radius):(i + radius), (j - radius):(j + radius));
            
            if bitand(subimg, s) == s
                new_img(i - radius, j - radius) = 1;
            else
                new_img(i - radius, j - radius) = 0;
            end
        end
    end
    outputImg = (new_img);
end