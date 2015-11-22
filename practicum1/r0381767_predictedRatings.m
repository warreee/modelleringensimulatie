function [ Predicted, err ] = r0381767_predictedRatings( Ratings, r, kappa )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(Ratings);

one = ones(m,n);

D = binaryMartix(Ratings);

Ri = D.*Ratings + 1.5*(one - D);
Ak = [];
err = [];   

for i = 1:kappa
    %[U,S,V] = svds(Ri,i);
    %Ak = U * S * transpose(V);
    [U,S,V] = svd(Ri);
    Ak = U(:,1:r) * S(1:r,1:r) * transpose(V(:,1:r));
    
    err = [err,r0381767_approximationError(Ratings, Ak)];

    Ri = D.*Ratings + (one - D).*Ak;
end


Predicted = max(1,min(5,Ak));
r0381767_approximationError(Ratings, Predicted);

end

