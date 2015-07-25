function [ eigFaceMat ] = getEigenFaces( Face )
%getEigenFaces  Returns a matrix Containing the eigenFaces as Columns .. 
%   Detailed explanation goes here

[row, col] = size(Face);
meanFace = getMeanFace(Face);
Face = removeMeanFace(Face,meanFace);

L = Face' * Face;   % 6 * 6 Matrix rather than n^2 * n^2 \


[eigVec , eigVal] = eigs(L,col); % Taking the eigenValues

eigFaceMat = Face * eigVec ; 


end

