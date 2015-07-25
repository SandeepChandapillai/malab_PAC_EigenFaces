function [ Face ] = removeMeanFace( Face , mean )
% removeMeanFace Give the Face Matrix and The meanFace Vector. We will remove
%mean from each vector of the Face Matrix 
%   D

[row,col] = size(Face);

for i = 1: 1 : col 
    Face(:,i) = Face(:,i) - mean ; 
end



end

