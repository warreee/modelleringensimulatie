load('Agrigento.mat');

[U,S,V] = svd(Z);
colormap gray

rel_error = [];


for k = 10 : 10 : 200
    S(1:k,1:k);
    temp = U(:,1:k) * S(1:k,1:k) * transpose(V(:,1:k));
    rel = norm(Z - temp)/norm(Z);
    rel_error = [rel_error, rel];
    %figure;
    %imagesc(temp);
   % waitforbuttonpress;
end

semilogy(rel_error);
hold on;
oef8;

