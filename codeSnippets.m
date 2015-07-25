[row,col] = size(Face) ;


%face6 = vecToFace(X1_0,92);

%img = vecToFace(X6,col);
%image(img);
%imshow(img);

%imshow(img,'DisplayRange',[0 256]);
% meanFace = getMeanFace(Face);
% Face = removeMeanFace(Face,meanFace);

%imshow(vecToFace(meanFace,92),'DisplayRange',[0 256]);


% X1 = X1 - meanFace ; 
% X2 = X2 - meanFace ; 
% X3 = X3 - meanFace ; 
% X4 = X4 - meanFace ; 
% X5 = X5 - meanFace ; 
% X6 = X6 - meanFace ; 
% X7 = X7 - meanFace ; 
% X8 = X8 - meanFace ; 
% X9 = X9 - meanFace ; 

% imshow(vecToFace(meanFace,92),'DisplayRange',[0 256]);
% 
% imshow(vecToFace(X3,92),'DisplayRange',[-100 100]);
%imshow(vecToFace(X1,92));

%C_ineff = (X1*X1' + X2*X2' +X3*X3' +X4*X4' +X5*X5' +X6*X6')./6 ; O(n*n)
% Computation ? 
%C_ineff

 % Rather than taking a n*n vector , we find the covarainces betweent the
 % images so that wee get a M*M matrix.... 

%Face = [X1,X2,X3,X4,X5,X6,X7,X8,X9];  % Creating a Single Matrix 

% Testing using the 6th image ... 


%imshow(vecToFace(W6,92),'DisplayRange',[-100 100]);

%C = Face * Face' ; Extermely Large Computation , causes Matlab to Crash 
% so we use matrix multiplication so that we can get by using a smaller
% compuattion 
%   See Matthew Turk and Alex Pentland 1991 Journal of Cognitive NeuroScience  
%

L = Face' * Face;   % 6 * 6 Matrix rather than n^2 * n^2 \


[eigVec , eigVal] = eigs(L,col); % Taking the eigenValues
featureVec = eigVec;
eigVal;
%temp = eigVec(:,1);
%eigFace1 = temp(1,1) * X1 + temp(2,1) * X2 + temp(3,1) * X3 + temp(4,1) * X4 + temp(5,1) * X5 +temp(6,1) * X6;  
%size(eigFace1) ; % Proper Size !! 

% Now to Compute The eigenFaces 


eigFaceMat = Face * eigVec ; 
size(eigFaceMat)  % Proper Size ..

% 
% subplot(4,4,1);
% imshow(vecToFace(eigFaceMat(:,1),92),'DisplayRange',[-100 100]);
% subplot(4,4,2);
% imshow(vecToFace(Face(:,1),92),'DisplayRange',[-100 100]);
% subplot(4,4,3);
% imshow(vecToFace(eigFaceMat(:,2),92),'DisplayRange',[-100 100]);
% subplot(4,4,4);
% imshow(vecToFace(Face(:,2),92),'DisplayRange',[-100 100]);
% subplot(4,4,5);
% imshow(vecToFace(eigFaceMat(:,3),92),'DisplayRange',[-100 100]);
% subplot(4,4,6);
% imshow(vecToFace(Face(:,3),92),'DisplayRange',[-100 100]);
% subplot(4,4,7);
% imshow(vecToFace(eigFaceMat(:,4),92),'DisplayRange',[-100 100]);
% subplot(4,4,8);
% imshow(vecToFace(Face(:,4),92),'DisplayRange',[-100 100]);
% subplot(4,4,9);
% imshow(vecToFace(eigFaceMat(:,5),92),'DisplayRange',[-100 100]);
% subplot(4,4,10);
% imshow(vecToFace(Face(:,5),92),'DisplayRange',[-100 100]);
% subplot(4,4,11);
% imshow(vecToFace(eigFaceMat(:,6),92),'DisplayRange',[-100 100]);
% subplot(4,4,12);
% imshow(vecToFace(Face(:,6),92),'DisplayRange',[-100 100]);
% subplot(4,4,11);
% imshow(vecToFace(eigFaceMat(:,7),92),'DisplayRange',[-100 100]);
% subplot(4,4,12);
% imshow(vecToFace(Face(:,7),92),'DisplayRange',[-100 100]);
% 
% subplot(4,4,13);
% imshow(vecToFace(eigFaceMat(:,8),92),'DisplayRange',[-100 100]);
% subplot(4,4,14);
% imshow(vecToFace(Face(:,8),92),'DisplayRange',[-100 100]);
% 
% subplot(4,4,15);
% imshow(vecToFace(eigFaceMat(:,9),92),'DisplayRange',[-100 100]);
% subplot(4,4,16);
% imshow(vecToFace(Face(:,9),92),'DisplayRange',[-100 100]);



% EigenFaces
for i = 1 : 1 : col
    subplot(4,4,i);
    imshow(vecToFace(eigFaceMat(:,i),92),'DisplayRange',[-100 100]);
    %subplot(5,4,i);
    %imshow(vecToFace(Face(:,i),92),'DisplayRange',[-100 100]);
end
pause(1);
%Faces with mean removed
for i = 1 : 1 : col
    subplot(4,4,i);
    imshow(vecToFace(Face(:,i),92),'DisplayRange',[-100 100]);
end


% We have the EigenFaces . Now On getting a new

%

%faceVecMat = faceToMat('11.pgm');




X1 = faceToVec('11.pgm');
X2 = faceToVec('21.pgm');
X3 = faceToVec('31.pgm');
X4 = faceToVec('41.pgm');
X5 = faceToVec('51.pgm');
X6 = faceToVec('61.pgm');
X7 = faceToVec('71.pgm');
X8 = faceToVec('81.pgm');
X9 = faceToVec('91.pgm');
X10 = faceToVec('101.pgm');
X11 = faceToVec('111.pgm');
X12 = faceToVec('121.pgm');
X13 = faceToVec('131.pgm');
X14 = faceToVec('141.pgm');
X15 = faceToVec('151.pgm');
X16 = faceToVec('161.pgm');



Face = [X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16];  % Creating a Single Matrix




X2 = faceToVec('21.pgm');
weight2 = eigFace' * (X2 - meanFace)


X4 = faceToVec('41.pgm');
weight3 = eigFace' * (X4 - meanFace)

X7 = faceToVec('71.pgm');
weight4 = eigFace' * (X7 - meanFace)


