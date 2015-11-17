% vraag 6

tol = eps;
k = 20;

A = genA(k);

[e,res] = qrWithoutShift(A,eps);

B = genB(k);


