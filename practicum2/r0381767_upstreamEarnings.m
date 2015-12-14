function [ earnings ] = r0381767_upstreamEarnings( oilPrice )
% Calculates the upstream earnings

K = 38.4629;
Volie = 40736500;
Vgas = 48555934;
Pgas = 32.944;

earnings = ((oilPrice*Volie + Pgas*Vgas) - K*(Volie + Vgas))/10^9;


end

