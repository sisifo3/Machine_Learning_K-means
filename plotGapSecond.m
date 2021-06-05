function[] = plotGapSecond()
%the next resultss for Gap come to run the function
%GapStaticsSecond(), with the diferent numbers of clusters 1-9
Gap = [-1.935,-6.306,-3.0176,-3.1732,-5.1542,-7.1977,-6.0642,-15.4204,-17.0975];

plot(Gap)
hold on 
xlabel('Number of clusters')
ylabel('Gap')
hold off
end