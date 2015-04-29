 imgName = 'myImage.jpg';
 myImg = imread(imgName);


%myImg = [1 2 3; 4 5 6;7 8 9]

energyImage = energy_image(myImg);
%energyImage = [1 2 3; 4 5 6;7 8 9]
%imshow(energyImage);

cumMap = cumulative_minimum_energy_map(energyImage,'HORIZONTAL');
cumMap = [20 2 6 20 48;3 10 11 1 3; 9 8 9 9 10; 3 6 5 2 4];

myList = find_optimal_vertical_seam(cumMap);
myList
%cumMap
% 
% energyMatrix

        
      
        
        
        
