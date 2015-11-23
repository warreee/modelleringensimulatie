function [ points ] = circlepoints( n )
% returns an array with n points in a circle

points = zeros(n,2);
for i = 1 : n
    radius = rand();
    angle = rand() * 2 * pi;
    %We moeten hier de de vierkantswortel nog nemen omdat de oppervlakte
    %kwadratisch toeneemt met de straat
    [x,y] = pol2cart(angle,sqrt(radius));
    points(i,:) = [x y ];
    
end


end

