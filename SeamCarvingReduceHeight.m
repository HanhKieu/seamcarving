%a
myImg = imread('inputSeamCarvingPrague.jpg');

%d
%myImg = imread('inputSeamCarvingMall.jpg');


%PERSIONAL IMAGES
%apples
% myImg = imread('Picnic.jpg');
% myImg = imresize(myImg,[252,600]);
% imshow(myImg)

%b
energyImage = energy_image(myImg);
[reducedColorImage,reducedEnergyImage] = reduce_height(myImg,energyImage);


for i=1:1:99
    [reducedColorImage,reducedEnergyImage] = reduce_height(reducedColorImage,reducedEnergyImage);
end

%c
imshow(reducedColorImage)