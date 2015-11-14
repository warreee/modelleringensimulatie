function [ binMat ] = binaryMartix( in )
% Creates a matrix with for every non zero element in input a 1, 0
% otherwise.

[m,n] = size(in);

binMat = zeros(m,n);
binMat(in > 0) = 1;
    
end

