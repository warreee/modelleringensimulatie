%% Opdracht 2 
figure
for i=1:10
    plot(r0381767_simulatePrice(34.73,360,(2.3001*10^(-4)),0.0159))
    hold on
end
xlabel('Dagen')
ylabel('Prijs ($) per boe')

%% Opdracht 3

test = r0381767_averageOilPrices(60,50)

plot(test)
hold on

%% Opdracht 4

monthlyOilPrices = zeros(60,100000);
for k = 1 : 100000
    monthlyOilPrices (:,k) = r0381767_averageOilPrices(60, 52.69);
end
avgMonthlyOilPrices = mean(monthlyOilPrices,2);

target = 52.69*(80/52.69).^(30*(1:60)/1800);

figure
plot(avgMonthlyOilPrices)
hold on
plot(target)
xlabel('Maanden')
ylabel('Olieprijs ($)')
legend('avgMonthlyOilPrices', 'target', 'Location', 'NorthWest');

%% Opdracht 5
K = 38.4629;
Volie = 40736500;
Vgas = 48555934;
Pgas = 32.944;

Polie = (K*(Volie + Vgas) - Pgas*Vgas)/Volie

%% Opdracht 7

r0381767_upstreamEarnings(34.73)

%% Opdracht 9

r0381767_downstreamEarnings(34.73)

%% Opdracht 12

load('Debt.mat')

sum(Debt(:,3) .* ceil(Debt(:,1)/12) .* (Debt(:,4)/100) + Debt(:,3))

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

%% Opdracht 17
Polie = zeros(6,60);
Polie(1,:) = 50;
Polie(2,:) = 60;
Polie(3,:) = 70;
Polie(4,:) = 80;
Polie(5,:) = 90;
Polie(6,:) = 100;

figure
for i = 1 : 6
    cashflow = r0381767_cashFlow(60, 21.8, Debt, 20, 11.843, Polie(i,:));
    plot(cashflow)
    hold on
end

%% Opdracht 20
Polie = zeros(6,60);
Polie(1,:) = 50;
Polie(2,:) = 60;
Polie(3,:) = 70;
Polie(4,:) = 80;
Polie(5,:) = 90;
Polie(6,:) = 100;

figure
for i = 1 : 6
    cashflow = r0381767_cashFlowWithRefinancing(60, 21.8, Debt, 20, 11.843, Polie(i,:));
    plot(cashflow)
    hold on
end

%% Opdracht 22

figure
for i = 1 : 10
    oilPrices = r0381767_averageOilPrices(24, 52.69);
    cashflow = r0381767_cashFlowWithRefinancing(24, 21.8, Debt, 20, 11.843, oilPrices);
    plot(cashflow)
    hold on
end

%% Opdracht 23
bankruptcy = 0;
for i = 1 : 100000
    oilPrices = r0381767_averageOilPrices(24, 52.69);
    cashflow = r0381767_cashFlowWithRefinancing(24, 21.8, Debt, 20, 11.843, oilPrices);
    if any(cashflow<0)
       bankruptcy = bankruptcy+1; 
    end
end
bankruptcy/100000