function [IDX,closingPrices,testSet,trainingSet] = fypVanillaKNN(filename, learningDays)

partition = 823;
M = load(filename);
closingPrices = M(:,5);
feature = [];
for i=learningDays+1:length(closingPrices)
    feature = [feature; closingPrices(i-learningDays:i-1)'];
end
testSet = feature (partition:end,:);
trainingSet = feature(1:partition-1,:);
IDX = knnsearch(trainingSet,testSet,'K',learningDays);

end