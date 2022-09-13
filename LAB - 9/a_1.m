clear all;
inputSeq = [-2 2 -4 4];
M = length(inputSeq);
F = [];
ff = 0;
for u = 0 : M - 1
    for x = 0 : M - 1
        ff = ff + (inputSeq(x+1)*exp((-1i * 2 * pi * u * x) / M));
    end
    F = [F ff];
    ff=0;
end
F