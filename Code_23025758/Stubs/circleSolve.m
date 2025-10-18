% (xCircle,yCircle), radiusCircle - centre & radius of circle
% (xPoint1,yPoint1), (xPoint2,yPoint2), (xPoint3,yPoint3) - points on the circumference of the circle

function [xCircle, yCircle, radiusCircle] = circleSolve(p1, p2, p3)
    
    x1 = p1(1); y1 = p1(2);
    x2 = p2(1); y2 = p2(2);
    x3 = p3(1); y3 = p3(2);

   
    A = [x1 y1 1; x2 y2 1; x3 y3 1];
    B = [-(x1^2 + y1^2); -(x2^2 + y2^2); -(x3^2 + y3^2)];

    X = A \ B; 
    h = -X(1) / 2;
    k = -X(2) / 2;
    lambda = X(3);
    radiusCircle = sqrt(h^2 + k^2 - lambda);
    xCircle = h;
    yCircle = k;
end
