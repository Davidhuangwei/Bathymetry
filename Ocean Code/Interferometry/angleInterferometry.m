%% angleInterferometry.m
% Arguments: 
% r1: Nx2 matrix of coordinates from receiver 1
% r2: Nx2 matrix of coordinates from receiver 2
% B: scalar distance between receivers
function angles = angleInterferometry(r1, r2, B)
    sizeR1 = size(r1);
    numPoints = sizeR1(1);
    labels = coregister2(r1, r2, 60, 60, B); 
    minAngle = 60;
    angleRange = 60;
    
    angles = zeros(numPoints, 1);
    for i = 1:numPoints
        if labels(i) > 0 && labels(i) <= numPoints
            angles(i) = calculateAngle(r1(i), r2(labels(i)), B);
        else
            angles(i) = minAngle + angleRange/2;
        end
    end
end

