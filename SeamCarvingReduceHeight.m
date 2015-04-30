%a
myImg = imread('inputSeamCarvingPrague.jpg');

%myImg = imread('inputSeamCarvingMall.jpg');

%imshow(myImg)

%b
energyImage = energy_image(myImg);
[reducedColorImage,reducedEnergyImage] = reduce_height(myImg,energyImage);


for i=1:1:99
    [reducedColorImage,reducedEnergyImage] = reduce_height(reducedColorImage,reducedEnergyImage);
end


imshow(reducedColorImage)