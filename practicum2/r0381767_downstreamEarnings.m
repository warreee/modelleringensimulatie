function [ earnings ] = r0381767_downstreamEarnings( oilPrice )
% Calulate downstream earnings in billions

Odown = 32;

earnings = Odown /100 * (7.66 - oilPrice/15);

end

