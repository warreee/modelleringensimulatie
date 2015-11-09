load('Agrigento.mat');

[Q,R,P] = qr(Z);
normOr = norm(Z*P);

rel_errorQr = [];


for k = 10 : 10 : 200
    temp = Q(:,1:k)*R(1:k,:);
    rel = norm(Z*P - temp)/normOr;
    rel_errorQr = [rel_errorQr, rel];
    %figure;
    %imagesc(temp);
   % waitforbuttonpress;
end

semilogy(rel_errorQr);