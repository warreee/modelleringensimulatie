function [ Hinf ] = r0381767_buildCliques( C, tau )

C(C<tau)=0;
C(C>=tau)=1;
K1 = C*C;
K1(C>0)=1;
K1(C<=0)=0;
while 1
    K = K*K;
    K(C>0)=1;
    K(C<=0)=0;
    if K1 == K
        Hinf = K;
        break
    end
    
    
end


end

