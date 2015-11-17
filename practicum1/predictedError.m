function [ error ] = predictedError( Ratings, r, kappa )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(Ratings);

one = ones(m,n);

D = binaryMartix(Ratings);

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

