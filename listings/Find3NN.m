function [B3, IX3] = Find3NN(chashel, lepest, ...
               currentFlowerX, currentFlowerY, weightX, weightY)
%Find3NN Find 3 nearest neighbour for current flower with customized weights
% B3 - Euclidean Distance Value
% IX3 - Indexes of values in original array
% chashel - original array chashel
% lepest - original array lepest
% Find distance
for i = 1:150
    curr(i) = sqrt( weightX .* (currentFlowerX - chashel(i)) .^ 2 ...
	           + weightY .* (currentFlowerY - lepest(i)) .^ 2);
end
% Sort
[B,IX] = sort(curr);
% Find 3 smallest value
B3 = B(1:3);
IX3 = IX(1:3);
end