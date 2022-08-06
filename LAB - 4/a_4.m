img = imread("ex_contrast.tif");
equalize_img = equalize(img);

function equalize_img = equalize(img)
    [m, n] = size(img);
    pdf = [];
    for i = 1 : 255
        pdf(i) = sum(sum(img == i)) / (m * n);
    end
    
    cdf = [];
    cdf(1) = pdf(1);
    for i = 2 : 255
        cdf(i) = pdf(i) + cdf(i-1);
    end
    
end