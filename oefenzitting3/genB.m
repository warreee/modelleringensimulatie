function [ B ] = genB( k )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

P = randn(k,k);

L = diag(linspace(1,k,k));

B = P * L * P';

end

