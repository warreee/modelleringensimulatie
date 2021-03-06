function [] = r0381767_plotAllApproximationErrors( Ratings )
% Plots the relative error for rang r = 1 : 40

max = 40;
Errors = zeros(1,40); 
kappa = 5000;

for r = 1:max
    Errors(r) = r0381767_predictedError(Ratings, r, kappa);
end

figure
semilogy(Errors);
title('Relative error in function of rang r')
xlabel('Relative error')
ylabel('Relative error')
print -depsc opdracht5 %used for output

end

