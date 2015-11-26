function [ err ] = r0381767_approximationError( Ratings, Predicted )
% Calculates relative error between Ratings and Predicted
%   err: measure of relative error between Ratings and Predicted
%   Ratings and Predicted must have the same dimensions
%   Unknown values in Ratings are 0

[m,n] = size(Ratings);
D = zeros(m,n);
D(Ratings > 0) = 1;

numerator = sum(sum((Ratings-(D.*Predicted)).^2));

denominator = sum(sum((Ratings).^2));

err = sqrt(numerator/denominator);
end

