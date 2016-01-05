a = 66;
m = 401;
x(1) = 1;
for i=2:m-1
    x(i) = mod(a*x(i-1),m)
end
y(1:m-2) = x(2:m-1);
plot(x(1:m-2),y(1:m-2),'b.')