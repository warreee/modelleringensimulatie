%% Opdracht 2 
figure
for i=1:10
    plot(r0381767_simulatePrice(50,360,(2.3001*10^(-4)),0.0159))
    hold on
end

%% Opdracht 3

test = r0381767_averageOilPrices(12,50)

plot(test)
hold on

%% Opdracht 4

monthlyOilPrices = zeros(60,100000);
for k = 1 : 100000
    monthlyOilPrices (:,k) = r0381767_averageOilPrices(60, 52.69);
end
avgMonthlyOilPrices = mean(monthlyOilPrices,2);

target = 52.69*(80/52.69).^(30*(1:60)/1800);

plot(avgMonthlyOilPrices)
hold on
plot(target)

%% Opdracht 5
K = 38.4629;
Volie = 40736500;
Vgas = 48555934;
Pgas = 32.944;

Polie = (K*(Volie + Vgas) - Pgas*Vgas)/Volie

%% Opdracht 7

r0381767_upstreamEarnings(45)

%% Opdracht 9

%% Opdracht 12

load('Debt.mat')

sum(Debt(:,3));

%% Opdracht 14

interest = zeros(360,1);
principal = zeros(360,1);
for m = 1 : 360
    [interest(m),principal(m)] = r0381767_interestExpense(Debt, m);
end

%% Opdracht 15

plot(cumsum(interest), 'x-');
hold all
plot(cumsum(principal), 'o-');
legend('Interest', 'Hoofdsom', 'Location', 'NorthWest');