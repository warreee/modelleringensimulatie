function [Errors] = r0381767_plotAllApproximationErrors( Ratings )
% Plots the relative error for rang r = 1 : 40

max = 40;
Errors = zeros(1,40); 
kappa = 5000;

for r = 1:max
    Errors(1,r) = predictedError(Ratings, r, kappa);
end

semilogy(Errors);

end

