function [ cashFlow ] = r0381767_cashFlowWithRefinancing( months, cash, Debt, yearlyCapex, yearlyDividend, avgOilPrice )

cashFlow = zeros(1,months);

for i = 1 : months
    earnings = r0381767_downstreamEarnings(avgOilPrice(i)) + r0381767_upstreamEarnings(avgOilPrice(i));

    totalExpense = r0381767_capexExpense(yearlyCapex) + r0381767_dividendExpense(yearlyDividend,mod(i-1,12)+1) + r0381767_interestExpenseWithRefinancing(Debt,i);
    if i > 1
        cashFlow(i) = cashFlow(i-1) + earnings - totalExpense;
    else
        cashFlow(i) = cash + earnings - totalExpense;
    end
end


end

