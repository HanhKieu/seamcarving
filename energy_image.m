function [ energyImg ] = energy_image(im)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%creates energyMatrix, initializes to 0
im = rgb2gray(im);
[myGradx,myGrady] = imgradientxy(im2double(im));
energyImg = sqrt((myGradx.^2) + (myGrady.^2));

end

