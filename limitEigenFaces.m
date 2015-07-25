function [ limitedEigenFace ] = limitEigenFaces( eigenFaces , num )
%limitEigenFaces  Rather than using the entire EigenFace set for prediction
%use a limited num.
%   We do not need the entire set for prediction 
% The largest contributions will be from 
%   Detailed explanation goes here

    limitedEigenFace = eigenFaces(:,1:num);
end

