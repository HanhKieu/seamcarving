function [ cumMap ] = cumulative_minimum_energy_map( energyImage, seamDirection )

if strcmp(seamDirection, 'VERTICLE')
    energyImage = energyImage; %do nothing
elseif strcmp(seamDirection, 'HORIZONTAL')
    energyImage = transpose(energyImage);
end

num_rows = size(energyImage, 1);
num_columns = size(energyImage,2);

cumMap = zeros(num_rows,num_columns);
cumMap(1,:) = energyImage(1, :);




for i=2:1:num_rows
    for j=1:1:num_columns
        if j == 1
            myArray = [cumMap(i - 1, j), cumMap(i - 1, j + 1)];
                      %top and top right
        elseif j == num_columns
            myArray = [cumMap(i - 1, j -1), cumMap(i - 1, j)];
                      %top left and top
        else
            myArray = [cumMap(i - 1, j - 1), cumMap(i - 1, j), cumMap(i - 1, j + 1)];
        end
        cumMap(i,j) = energyImage(i,j) + min(myArray);
    end
end


if strcmp(seamDirection,'HORIZONTAL')
    cumMap = transpose(cumMap);
    
%imshow(cumMap)


%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


end

