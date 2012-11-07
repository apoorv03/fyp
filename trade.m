function trade(testSet, predictedPrice)

startingMoney = 100000.0;
tradeLimit = 0.1 * startingMoney;
volumeBalance = 0;
dollarBalance = startingMoney;
tradeThreshold = 0.01;
maxTradeStep = startingMoney / (testSet(1) * 25)

% tradeStepSize = (int) (startingMoney / (kHistory * tempVal));
for i = 1 : length(testSet)
    delta = testSet(i) - predictedPrice(i);
    
    % Sell 
    if (delta > tradeThreshold*testSet(i))
        currentTradeVolume = min( round(((10*delta)/testSet(i)) * maxTradeStep), maxTradeStep);
        str = ['day ', num2str(i),' trade today - Selling ', num2str(currentTradeVolume)]
        volumeBalance = volumeBalance - currentTradeVolume;   
        dollarBalance = dollarBalance + testSet(i)*currentTradeVolume;
        dollarBalance = dollarBalance - 5;
    elseif (delta < (-1)*tradeThreshold*testSet(i))
        delta = -1 * delta;
        currentTradeVolume = min(round(((10*delta)/testSet(i)) * maxTradeStep), maxTradeStep);
        str = ['day ', num2str(i),' trade today - Buying ', num2str(currentTradeVolume)]
        volumeBalance = volumeBalance + currentTradeVolume;  
        dollarBalance = dollarBalance - testSet(i)*currentTradeVolume;
        dollarBalance = dollarBalance - 5;
    end %end if
   
end %end for loop
answer = ['profit made - ', num2str(dollarBalance - startingMoney)]
end %end function		