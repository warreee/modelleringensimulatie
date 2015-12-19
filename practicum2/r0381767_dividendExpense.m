function [ dividend ] = r0381767_dividendExpense( yearlyDividend, month )
% Calculates the dividend for a given month

if ismember(month,linspace(3,12,4))
    dividend = yearlyDividend/4;
else
    dividend = 0;
end

end

