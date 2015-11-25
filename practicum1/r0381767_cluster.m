function [ Cluster ] = r0381767_cluster( Hinf, labels )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
p = symamd(Hinf);
blocks = Hinf(p,p);
n = size(blocks,1);
Cluster = {};
i = 1;
while i <= n
    j = findClusterAt(blocks,i);
    Cluster = [Cluster, {labels(p(i:j))}];
    i = j+1;
end

end

