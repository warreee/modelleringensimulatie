%% Opgave 1
load('dailyArea.mat');

%% Opgave 2
plot(real(dailyArea(:,4)))
hold on
Y = dailyArea(:,4);
n = length(Y);
power = abs(Y(1:floor(n/2))).^2;
nyquist = 1/2;
freq = (1:n/2)/(n/2)*nyquist;
plot(freq,power)

period = 1./freq;
plot(period,power);
axis([0 40 0 2e+8]);
ylabel('Power');
xlabel('Period (Years/Cycle)');
hold on;
index = find(power == max(power));
mainPeriodStr = num2str(period(index));
plot(period(index),power(index),'r.', 'MarkerSize',25);
text(period(index)+2,power(index),['Period = ',mainPeriodStr]);
hold off;

%% Opgave 5
format short
a = 31415926535
b = 31415926535
a = num2str(a);
b = num2str(a);
N = length(a)+length(b);
n = zeros(N,1);
m = zeros(N,1);
for i=1:length(a)
    n(i) = str2num(a(i));
end

for i=1:length(b)
    m(i) = str2num(b(i));
end

ifft(fft(n).*fft(m))