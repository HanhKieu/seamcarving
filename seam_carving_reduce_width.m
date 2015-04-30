%a
myImg = imread('inputSeamCarvingPrague.jpg');

%myImg = imread('inputSeamCarvingMall.jpg');

%MY PERSONAL IMAGES
%-----------------


%2
% myImg = imread('kanye.jpg');
% myImg = imresize(myImg,[453, 400]);
% imshow(myImg)


%3
%myImg = imread('apples.jpg');



%b
energyImage = energy_image(myImg);
[reducedColorImage,reducedEnergyImage] = reduce_width(myImg,energyImage);

%c
for i=1:1:99
    [reducedColorImage,reducedEnergyImage] = reduce_width(reducedColorImage,reducedEnergyImage);
end


imshow(reducedColorImage)