function [ reducedColorImage, reducedEnergyImage ] = reduce_height( myImg, energyImage )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
energyImage = energy_image(myImg);
myString = 'HORIZONTAL';
cumMap = cumulative_minimum_energy_map(energyImage, myString);
mySeam = find_optimal_horizontal_seam(cumMap);


num_rows = size(myImg,1);
num_cols = size(myImg,2);
for i=1:num_cols
            reducedColorImage(:,i,:) = myImg([1:(mySeam(i)-1) (mySeam(i)+1):end],i,:);
            reducedEnergyImage(:,i) = energyImage([1:(mySeam(i)-1) (mySeam(i)+1):end],i);
end

imagesc(myImg)


    



end

