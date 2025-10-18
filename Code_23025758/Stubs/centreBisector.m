% m,c - parameters of line y = mx + c bisecting centre points
% (xCircle1,yCircle1), (xCircle2,yCircle2) - centres of 2 circles

function [m, c] = centreBisector(xC1, yC1, xC2, yC2)
    mx = (xC1 + xC2) / 2;
    my = (yC1 + yC2) / 2;

    dx = xC2 - xC1;
    dy = yC2 - yC1;

    if dx == 0
        m = 0;
        c = my;
    elseif dy == 0
         m = inf;
         c = mx;
    else
        
        m0 = dy / dx;
        m = -1 / m0; 
        c = my - m * mx;
    end
end
