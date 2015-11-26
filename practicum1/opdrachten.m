%% Opdracht 1

load('AmazonBookReviews.mat');
%spy(Ratings);

%% Opdracht 2 

function [ err ] = r0381767_approximationError( Ratings, Predicted )
% Summary of this function goes here
%   Detailed explanation goes here

D = binaryMartix(Ratings);

teller = sum(sum((Ratings-(D.*Predicted)).^2));

noemer = sum(sum((Ratings).^2));

err = sqrt(teller/noemer);
end
