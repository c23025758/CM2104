% m,c - parameters of bisector line y = mx + c
% (xOffBisector,yOffBisector) - point not on the bisector line
% (xOnBisector,yOnBisector) - point on the bisector line

function [xOnBisector,yOnBisector] = closestPointBisector(m,c,xOff,yOff)
xOnBisector=(xOff+m*(yOff-c))/(m^2+1);
yOnBisector=m*xOnBisector+c;
end