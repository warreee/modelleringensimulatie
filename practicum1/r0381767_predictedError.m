function [ error ] = r0381767_predictedError( Ratings, r, kappa )
%A more optimized version of r0381767_predictedRatings
%   It only returns the error of the last approximation.

[m,n] = size(Ratings);

one = ones(m,n);

D = zeros(m,n);
D(Ratings>0)=1;

Ri = D.*Ratings + 1.5*(one - D);
Ak = [];

for i = 1:kappa
    [U,S,V] = svd(Ri);
    Ak = U(:,1:r) * S(1:r,1:r) * transpose(V(:,1:r));
    Ri = D.*Ratings + (one - D).*Ak;
end


Predicted = max(1,min(5,Ak));
error = r0381767_approximationError(Ratings, Predicted);

end

