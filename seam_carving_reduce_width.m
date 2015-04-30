%a
%myImg = imread('inputSeamCarvingPrague.jpg');

%myImg = imread('inputSeamCarvingMall.jpg');

%MY PERSONAL IMAGES
%-----------------

%1
%myImg = imread('beach.jpg');
%myImg = imresize(myImg,[330 332]);
%imshow(myImg)

%2
myImg = imread('Kanye.jpg');


%b
energyImage = energy_image(myImg);
[reducedColorImage,reducedEnergyImage] = reduce_width(myImg,energyImage);


for i=1:1:199
    [reducedColorImage,reducedEnergyImage] = reduce_width(reducedColorImage,reducedEnergyImage);
end


imshow(reducedColorImage)