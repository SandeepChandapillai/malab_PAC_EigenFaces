function [ face ] = vecToFace( X ,rowSize )
%vecToFace Takes a colVec and reconstructs the BW Image 
%   Each set of colSize Elements corresponds to a row of the image .
%   Assume that input is a colVec
%   rowSize = # cols in Image 



[row, col] = size(X);


numRows = row / rowSize ;     
numCols = rowSize ;
face = zeros(numRows, numCols);

for i = 1 : 1 : numRows
    for j = 1 : 1 : numCols
        face(i,j) = X(rowSize * (i - 1) + j,1);
    end
end


end

