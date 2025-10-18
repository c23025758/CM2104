function Sphere(axHandle, circleName)
    
    view(axHandle, 3); 
    hold(axHandle, 'on');

   
    h = findobj(axHandle, 'DisplayName', circleName);
    if ~isempty(h) && isvalid(h)
        
        xData = h.XData;
        yData = h.YData;
        xCenter = mean(xData);
        yCenter = mean(yData);
        radius = mean(sqrt((xData - xCenter).^2 + (yData - yCenter).^2));
        [X, Y, Z] = sphere(50); 
        Xs = xCenter + radius * X;
        Ys = yCenter + radius * Y;
        Zs = radius * Z; 

        
        delete(h);

        % Plot the sphere
        surf(axHandle, Xs, Ys, Zs, 'EdgeColor', 'none', 'FaceAlpha', 0.6, 'DisplayName', circleName);

        % nake sure sphere looks correct
        axHandle.DataAspectRatio = [1 1 1];
        axHandle.DataAspectRatioMode = 'manual';
        shading(axHandle, 'interp');
        camlight(axHandle, 'headlight');
        lighting(axHandle, 'gouraud');
    else
        error('Circle with name "%s" not found.', circleName);
    end

    hold(axHandle, 'off');
end
