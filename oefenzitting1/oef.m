function [Q,R] = oef(A)

[m,n] = size(A)

Q = eye(m,n);
R = A;
for j = 1:n
    for i = m:j+1
        x = R(i-1,j);
        y = R(i,j);
        rot = give
        [c,s] = givens(R(i-1,j),R(i,j));
        R = G(i,j,c,s)*R;
        Q = Q*G(i,j,c,s)';
    end
end
end
        