
fileOfFaces = {'11.pgm','21.pgm','31.pgm','41.pgm','51.pgm','61.pgm','71.pgm','81.pgm','91.pgm','101.pgm','111.pgm','121.pgm','131.pgm','141.pgm','151.pgm','161.pgm'};

Face = faceToMat(fileOfFaces');
showFaces(Face,92,4,4);
pause(1);

meanFace = getMeanFace(Face);
showFaces(meanFace,92,1,1);
pause(1);

eigFace = getEigenFaces(Face);
showFaces(eigFace,92,4,4);

pause(1);


weight = eigFace' * (removeMeanFace(Face,meanFace))

weight = limitEigenFaces(eigFace,8)' * (removeMeanFace(Face,meanFace))

