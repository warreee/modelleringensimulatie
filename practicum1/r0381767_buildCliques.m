function [ Hinf ] = r0381767_buildCliques( C, tau )
% Finds the cliques in a adjacency matrix

C(C<tau)=0;
C(C>=tau)=1;

while 1
    K = C*C;
    K(K>0)=1;
    K(K<=0)=0;
    if isequal(K,C)
        Hinf = K;
        break
    end
    C = K; 
end

end

