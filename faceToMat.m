function [ faceVecMatrix ] = faceToMat( FileNameColVec )
%faceToMat : Create a matrix contaiting Face Vectors . 
%   The input should be a col Vec , containing all the image that you want
%   to be added to the faceMat 
%   INPUT : Col Vec of Cell Array of Strings
[row , col ] = size(FileNameColVec);
if col ~= 1 
   disp('Error Require Col Vec of FileName') ;
end

% Look at One Image and then determine the size of faceVecMatrix ; 

faceVecMatrix = faceToVec(char(FileNameColVec(1,1)));
for i = 2 : 1 : row
   faceVecMatrix  = [faceVecMatrix , faceToVec(char(FileNameColVec(i,1)))];
   %disp('#');
end

end

