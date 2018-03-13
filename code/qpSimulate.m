clear; close all;

nSets = 1; 
nSmoothOrders = 2; 
nDistanceTypes = 2; 

for k = 1%:nDistanceTypes
    if k == 1
        whichDistance = 'euclidean';
    elseif k == 2
        whichDistance = 'cityblock';
    end
    for j = 1%:nSmoothOrders
        if j == 1
            whichSmoothSpacing = 3;
        elseif j == 2
            whichSmoothSpacing = 1;
        end
        for i = 1%:nSets
            if i == 1
                DO_INITIALIZE = true;
            else
                DO_INITIALIZE = false;
            end
            qpSimulationCubic(whichDistance, whichSmoothSpacing, i, DO_INITIALIZE)
            cd ([(getpref('ColorMaterial', 'mainCodeDir')), '/code'])
        end
    end
end