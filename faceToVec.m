function [ X ,col1] = faceToVec( imageFile )
%faceToVec  : Pass in the fileName of image , and function will return a
%col Vec containing the image Pixel 
%   The rows are stored continually in a Col Vec.

face1 = imread(imageFile );

[row1, col1] = size(face1);

X = zeros(row1*col1,1) ; 
for i = 1 : 1 : row1 % we create a row vector from the image 
    for j = 1 : 1 : col1
        X(col1 * (i - 1) + j,1) =  face1(i,j);
    end
end

end

