 imgName = 'input.jpg';
 myImg = imread(imgName);


%myImg = [1 2 3; 4 5 6;7 8 9]

energyImage = energy_image(myImg);
%energyImage = [1 2 3; 4 5 6;7 8 9]
%imshow(energyImage);

cumMap = cumulative_minimum_energy_map(energyImage,'VERTICAL');
%cumMap = cumulative_minimum_energy_map(energyImage,'HORIZONTAL');
%cumMap = [9 9 8 7 1 8;6 1 2 3 4 1;4 8 6 6 2 69;10 20 15 11 20 83;3 6 4 5 2 2];

% myString = 'HORIZONTAL';
% mySeam = find_optimal_horizontal_seam(cumMap);
mySeam = find_optimal_vertical_seam(cumMap);
myString = 'VERTICAL';


display_seam(myImg,mySeam,myString)
        
      
        
        
        
