function [avg] = calculateAverages(IDX,closingPrices)
avg = [];
for i = 1 : length(IDX)
    avg = [avg; mean(closingPrices(IDX(i)))];
end
end