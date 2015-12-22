%% Standaard normaal verdeeld
t = zeros(1,1000000);

for i = 1 : 1000000
    t(i) = sqrt(2)*erfinv(2*rand-1) ;
end

mean(t)
var(t)

%% Uniform verdeeld

t = zeros(1,1000);

for i = 1 : 1000
    t(i) = 2 +3*rand ;
end

mean(t)
var(t)


%% Box Muller
N = 1000000;

U1 = rand(1,N);
U2 = rand(1,N);

Z1 = zeros(1,N);
Z2 = zeros(1,N);

for i = 1 : N
    Z1(i) = sqrt(-2*log(U1(i)))*cos(2*pi*U2(i));
    Z2(i) = sqrt(-2*log(U1(i)))*sin(2*pi*U2(i));
end

mean(Z1)
std(Z1)
mean(Z2)
std(Z2)