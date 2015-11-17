function [ A ] = genA( k )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

O = randn(k,k);

P = orth(O);

L = diag(linspace(1,k,k));

A = P * L * P';

end

