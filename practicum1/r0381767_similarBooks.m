function [ books ] = r0381767_similarBooks( bookNumber, nb, Model, labels )
% Returns a sorted array of principal angles between books

[m,n] = size(labels);


temp = 1:n;

for i = 1 : n
    temp(i) = principalAngle(Model(:,i), Model(:,bookNumber));
    
end

[B, I] = sort(temp);

books = labels(I);

end


