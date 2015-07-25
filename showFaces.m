function [] = showFaces( Faces, colSizeOfImage ,rowPlt , colPlt)
%showFaces : Prints out the Faces .. 
%   Detailed explanation goes here

[row , col ] = size(Faces);

for i = 1 : 1 : col
    subplot(rowPlt,colPlt,i);
    imshow(vecToFace( Faces(:,i),colSizeOfImage),'DisplayRange',[-100 100]);
end

end

