function [ path ] = r0381767_simulatePrice( initialPrice, days, mu, sigma )
% Simulates the price for 'days' days.

path = zeros(1,days+1);

path(1) = initialPrice;

for t = 1:(days)
    path(t+1) = path(t)*exp((mu-0.5*sigma^2) + sigma*randn);
end

end

