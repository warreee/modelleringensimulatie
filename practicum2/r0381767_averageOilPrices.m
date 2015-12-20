function [ avgMonthlyOilPrice ] = r0381767_averageOilPrices(months, initialPrice)
%Calculates the averge monthly oilprize
%   Uses r0381767_simulatePrice()

mu = log(80/52.69)/1800;
sigma = 0.0159;

daily = r0381767_simulatePrice(initialPrice, 30*months-1, mu, sigma);

monthly = reshape(daily, [30,months]);

avgMonthlyOilPrice = mean(monthly,1);

end

