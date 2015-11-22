function [ books ] = r0381767_similarBooks( bookNumber, nb, Model, labels )
% Returns a sorted array of principal angles between books

[m,n] = size(labels);


temp = 1:n;

for i = 1 : n
    temp(i) = principalAngle(Model(i,:), Model(bookNumber,:));
    
end

map = containers.Map(temp,labels);

book = values(map);
books = book(1:nb);

end

