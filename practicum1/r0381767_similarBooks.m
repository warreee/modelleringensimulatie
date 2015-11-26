function [ books ] = r0381767_similarBooks( bookNumber, nb, Model, labels )
% Returns a sorted array of principal angles between books

n = size(labels, 2);


temp = 1:n;

for i = 1 : n
    g = Model(:,i);
    h = Model(:,bookNumber);
    numerator = abs(g'*h);
    denominator = norm(g)*norm(h);
    temp(i) = acos(numerator/denominator);
end

[~, I] = sort(temp);    %sort and create permutation vector
I = I(1:nb);            %select the first nb best
books = labels(I);


end


