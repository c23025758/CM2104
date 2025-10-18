% (xCircle1,yCircle1), radiusCircle1 & (xCircle2,yCircle2), radiusCircle2 - centre & radii of 2 circles
% intersections - coordinates of intersections, one intersection per row; there will be 0, 1 or 2 rows

function intersections = intersections2circles(r1, x1, y1, r2, x2, y2)
   
    d = sqrt((x2 - x1)^2 + (y2 - y1)^2);

    
    if d > r1 + r2 || d < abs(r1 - r2) || d == 0
        intersections = [];
        return;
    end

     
    a = (r1^2 - r2^2 + d^2) / (2 * d);
    h = sqrt(r1^2 - a^2);

   
    x3 = x1 + a * (x2 - x1) / d;
    y3 = y1 + a * (y2 - y1) / d;

   
    offsetX = h * (y2 - y1) / d;
    offsetY = h * (x2 - x1) / d;
    xInt1 = x3 + offsetX;
    yInt1 = y3 - offsetY;
    xInt2 = x3 - offsetX;
    yInt2 = y3 + offsetY;

    intersections = [xInt1, yInt1; xInt2, yInt2];
end
