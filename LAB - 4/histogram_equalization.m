function equalized_image = histogram_equalization(img)
    [m, n] = size(img);
    final_img = zeros(m, n);
    freq = zeros(256, 1);
    pdf = zeros(256, 1);
    cdf = zeros(256, 1);
    new_img = zeros(256, 1);
    
    for i = 1 : m
        for j = 1 : n
            freq(img(i, j) + 1) = freq(img(i, j) + 1) + 1;
            pdf(img(i, j) + 1) = freq(img(i, j) + 1) / (m * n);
        end
    end
    
    sum = 0;
    
    for i = 1 : size(pdf)
        sum = sum + pdf(i);
        cdf(i) = sum;
        new_img(i) = round(cdf(i) * 255);
    end
    
    for i = 1 : m
        for j = 1 : n
            final_img(i, j) = new_img(img(i, j) + 1);
        end
    end
    
    equalized_image = final_img;
end


