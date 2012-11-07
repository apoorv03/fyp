clear all;
clc;
[IDX, closingPrices, testSet, trainingSet] = fypVanillaKNN('ubs4.csv',5);
averages = calculateAverages(IDX,closingPrices);
drawGraph2(averages,closingPrices);
trade(testSet, averages);