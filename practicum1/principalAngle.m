function [ angle ] = principalAngle( g, h )
% calculates the principal angle between two vectors

teller = abs(g'*h;
noemer = norm(g)*norm(h);

angle = acos(teller/noemer);


end

