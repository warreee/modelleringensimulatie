function [ e, residus ] = qrWithoutShift( A, tol )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


Ak = A;

res = norm(tril(A, -1), 'fro');

residus = [res];

while (res >= tol)
    [Q,R] = qr(Ak);
    Ak = R*Q;
    res = norm(tril(Ak, -1), 'fro')
    residus = [residus, res]; 
end

e = diag(Ak);

end

