function [Errors] = r0381767_plotAllApproximationErrors( Ratings )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
max = 40;
Errors = zeros(1,40); 
kappa = 5000;

for r = 1:max
    temp = ['Approximation for r = ', num2str(r)];
    disp(temp);
    tic;
    Errors(1,r) = predictedError(Ratings, r, kappa);
    toc;
end

semilogy(Errors);

end

