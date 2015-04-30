function [ newMatrix ] = reduce_width( myImg, energyImage )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
energyImage = energy_image(myImg);
myString = 'VERTICAL';
cumMap = cumulative_minimum_energy_map(energyImage, myString);
mySeam = find_optimal_vertical_seam(cumMap);


num_rows = size(myImg,1);
num_cols = size(myImg,2);
R = myImg(:,:,1)
G = myImg(:,:,2)
B = myImg(:,:,3)


for i=1:num_rows
            newMatrix(i,:,:) = myImg(i,[1:(mySeam(i)-1) (mySeam(i)+1):end],:);
            
end

imagesc(myImg)


    



end

