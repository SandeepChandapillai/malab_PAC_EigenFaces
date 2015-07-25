function [ output_args ] = pca_facedetection( Face , Image )
%pca_facedetection Pass In the Matrix Containing the faces and the image to
%be identified. 
%   Using the face Matrix 

Face = [X1,X2,X3,X4,X5,X6];  % Creating a Single Matrix 
C = cov(Face,1); % Taking Convariance of the Matrix :: Each image with every other image
[eigVec , eigVal] = eig(C) % Taking the eigenValues
featureVec = eigVec  


end

