
A = randi(10,5,5);

i = 2;
j = 4;
k = 2;

c = A(i,k)/sqrt(A(i,k)^2 + A(j,k)^2);
s = A(j,k)/sqrt(A(i,k)^2 + A(j,k)^2);

G = eye(5,5);
G(i,i) = c;
G(j,k) = s;
G(i,j) = -s;
G(j,j) = c;
