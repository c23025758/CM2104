% (xCircle1,yCircle1), (xCircle2,yCircle2), (xCircle3,yCircle3) - centres of 3 circles
% matrixT - translation matrix
% matrixR - rotation matrix
% matrixCombined - translation and rotation matrix

function [matrixT, matrixR, matrixCombined] = transformationMatrices(xCircle1, yCircle1, xCircle2, yCircle2, xCircle3, yCircle3)
    
    matrixT = [1 0 -xCircle3;
               0 1 -yCircle3;
               0 0 1];
    
        dx = xCircle2 - xCircle1;
    dy = yCircle2 - yCircle1;
    if dx == 0
        mBisector = 0; 
    else
        mLine = dy / dx;
        mBisector = -1 / mLine; 
    end
    theta = atan(mBisector); 
    if theta < 0
        theta = theta + pi; 
    end
    matrixR = [cos(theta) -sin(theta) 0;
               sin(theta) cos(theta) 0;
               0 0 1];
     matrixCombined = matrixR * matrixT;
end

