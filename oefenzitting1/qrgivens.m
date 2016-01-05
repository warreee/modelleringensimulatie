function [ Q,R ] = qrgivens( A )
% Oefening 1
  [m,n] = size(A);
  Q = eye(m);
  R = A;

  for j = 1:n
    for i = m:-1:(j+1)
      G = eye(m);
      temp = givens(R(i-1,j),R(i,j));
      c = temp(1,1);
      s = temp(1,2);
      G([i-1, i],[i-1, i]) = [c -s; s c];
      R = G'*R;
      Q = Q*G;
    end
  end

end

