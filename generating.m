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

%%

qrTimes = zeros(20,1);
svdTimes = zeros(20,1);
for i = 1 : 20
   A = randn(i*100);
   tic;
   [Q,R,P] = qr(A,0);
   qrTimes(i) = toc;
   tic;
   [U,S,V] = svd(A,'econ');
   svdTimes(i) = toc;
end
plot(qrTimes); hold all; plot(svdTimes);

%%
A = [ 0.5, 0.5; 0.35, 0.65];
A
for i = 1 : 50
    i
    A = A * A 
end

%%
A= [-14.487757 -8.259503 -10.622702 16.7520
