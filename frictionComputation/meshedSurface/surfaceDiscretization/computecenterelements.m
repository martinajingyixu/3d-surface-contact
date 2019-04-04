function [elementCenterArray] = computecenterelements(nodesCoord,elementArray)
elementCenterArray = zeros(3,size(elementArray,2));

    for iElement = 1:size(elementArray,2)


        idxArray = elementArray(:,iElement);
    %     iElement
    %     idxArray
        elementNodesCoords.x = [...
            nodesCoord.x(idxArray(1));...
            nodesCoord.x(idxArray(2));...
            nodesCoord.x(idxArray(3));];

        elementNodesCoords.y = [...
            nodesCoord.y(idxArray(1));...
            nodesCoord.y(idxArray(2));...
            nodesCoord.y(idxArray(3));];


        elementNodesCoords.z = [...
            nodesCoord.z(idxArray(1));...
            nodesCoord.z(idxArray(2));...
            nodesCoord.z(idxArray(3));];

        elementCenter = [mean(elementNodesCoords.x),...
            mean(elementNodesCoords.y),mean(elementNodesCoords.z)]';

        elementCenterArray(:,iElement) = elementCenter;
    end
end
