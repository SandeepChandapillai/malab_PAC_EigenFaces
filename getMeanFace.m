function [ mean ] = getMeanFace( Face )
% getMeanFace Matrix of FaceVectors [Col Vec] . 
%   returns the Mean

[row,col] = size(Face);
mean = zeros(row,1);
for i = 1 : 1 : col
    mean = mean + Face(:,i);
end

mean = mean ./ col ; 

end

