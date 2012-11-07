function drawGraph2 (averages,closingPrices)
figure
hold on
plot(averages,'-','LineWidth',1,'Color','red');
plot(closingPrices(823:end,1),'-','LineWidth',.5,'Color','green');
% axis([0 200 10 20]) 
hold off;
end