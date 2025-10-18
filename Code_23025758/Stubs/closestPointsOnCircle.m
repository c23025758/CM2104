% (xCircle1,yCircle1), radiusCircle1 & (xCircle2,yCircle2), radiusCircle2 - centre & radii of 2 circles
% (xPoint,yPoint) - point
% (xOnCircle,yOnCircle) - closest point on one of the circles
% select - which circle is closest (1 or 2)

function [xOnCircle, yOnCircle, select] = closestPointsOnCircle(xC1, yC1, rC1, xC2, yC2, rC2, xP, yP)
    
    d1 = sqrt((xP - xC1)^2 + (yP - yC1)^2);
    d2 = sqrt((xP - xC2)^2 + (yP - yC2)^2);

   
    dist1 = abs(d1 - rC1);
    dist2 = abs(d2 - rC2);

    if dist1 < dist2
        
        xOnCircle = xC1 + (rC1 / d1) * (xP - xC1);
        yOnCircle = yC1 + (rC1 / d1) * (yP - yC1);
        select = 1;
    else
        
        xOnCircle = xC2 + (rC2 / d2) * (xP - xC2);
        yOnCircle = yC2 + (rC2 / d2) * (yP - yC2);
        select = 2;
    end
end
