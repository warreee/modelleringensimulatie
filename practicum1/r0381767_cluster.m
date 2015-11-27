function [ Cluster ] = r0381767_cluster( Hinf, labels )
% Returns a cell array of clusters of books

p = symamd(Hinf);
blocks = Hinf(p,p);
n = size(blocks,1);
Cluster = {};
i = 1;
while i <= n
    j = r0381767_findClusterAt(blocks,i);
    Cluster = [Cluster, {labels(p(i:j))}];
    i = j+1;
end

end

