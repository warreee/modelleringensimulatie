function [ Predicted, err ] = r0381767_predictedRatings( Ratings, r, kappa )
%Low rank approximation for a uncomplete matrix Ratings
%   Predicted is the predicted approximation
%   err is a vector with the approximation error in every step (kappa steps
%   long)

[m,n] = size(Ratings);
one = ones(m,n);
D = zeros(m,n);
D(Ratings > 0) = 1;

Ri = D.*Ratings + 1.5*(one - D);

err = zeros(1,kappa);   

for i = 1:kappa
    [U,S,V] = svd(Ri);
    Ak = U(:,1:r) * S(1:r,1:r) * transpose(V(:,1:r));
    err(i) = r0381767_approximationError(Ratings, Ak);
    Ri = D.*Ratings + (one - D).*Ak;
end
rank(Ak)
Predicted = max(1,min(5,Ak));
r0381767_approximationError(Ratings, Predicted);

end

