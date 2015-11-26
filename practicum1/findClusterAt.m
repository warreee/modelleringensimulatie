function [ b ] = findClusterAt( BlockMatrix, i )
%Returns the end row of a block in a diagonal Block matrix
%   Detailed explanation goes here
n = size(BlockMatrix,1);
it = i;
while (it <= n) && (BlockMatrix(it,i) ~= 0)
    b = it;
    it = it + 1;


end

