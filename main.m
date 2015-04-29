 imgName = 'myImage.jpg';
 myImg = imread(imgName);


%myImg = [1 2 3; 4 5 6;7 8 9]

energyImage = energy_image(myImg);
%energyImage = [1 2 3; 4 5 6;7 8 9]
%imshow(energyImage);

cumMap = cumulative_minimum_energy_map(energyImage,'HORIZONTAL');
%cumMap = [9 9 8 7 1 8;6 1 2 3 4 1;4 8 6 6 2 69;10 20 15 11 20 83;3 6 4 5 2 2];

imagesc(cumMap)
num_rows = size(myImg,1);
num_columns = size(myImg,2);
myList = find_optimal_horizontal_seam(cumMap);
imagesc(myImg);
hold on;
plot(myList);




myList2 = find_optimal_vertical_seam(cumMap);
imagesc(myImg);
hold on;
plot(myList2,1:numel(myList2))


%cumMap
% 
% energyMatrix

        
      
        
        
        
