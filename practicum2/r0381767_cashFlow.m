function [ cashFlow ] = r0381767_cashFlow( months, cash, Debt, yearlyCapex, yearlyDividend, avgOilPrice )
% Function to simulate the cashflow

cashFlow = zeros(1,months);

for i = 1 : months
    earnings = r0381767_downstreamEarnings(avgOilPrice(i)) + r0381767_upstreamEarnings(avgOilPrice(i));
    [interest, principal] = r0381767_interestExpense(Debt, i);
    totalExpense = r0381767_capexExpense(yearlyCapex) + r0381767_dividendExpense(yearlyDividend,mod(i,12)) + interest + principal;
    if i > 1
        cashFlow(i) = cashFlow(i-1) + earnings - totalExpense;
    else
        cashFlow(i) = cash + earnings - totalExpense;
    end
end

end

