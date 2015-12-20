function [ interest, principal ] = r0381767_interestExpense( Debt, month )
% Calculates the interest and the principal that in that month has to be
% payed.

n = size(Debt,1);

interest = 0;
principal = 0;

for i = 1 : n
    if mod(Debt(i,1)-1,12)+1 == mod(month-1,12)+1 && month <= Debt(i,1)
        interest = interest + (Debt(i,4)/100)*Debt(i,3);
    end
    if Debt(i,1) == month
        principal = principal + Debt(i,3);
    end
end

end

