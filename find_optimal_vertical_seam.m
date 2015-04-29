function [ myList ] = find_optimal_vertical_seam( cumMap )

num_rows = size(cumMap,1);
num_columns = size(cumMap,2);

myList = zeros(1,num_rows);
current_row = num_rows ;%start from the last row


myArray = cumMap(current_row,:); %gets last row


minimum = min(myArray); %minimum of bottom row
rowLookingAt = cumMap(num_rows,:);

if(numel(find(rowLookingAt == minimum)) > 1)
    tempVector = find(rowLookingAt == minimum);
    j = tempVector(1);
else
    j = find(myArray == minimum); % current column 
end

myList(current_row) = j; %puts indices into vector



for i=num_rows:-1:2
    if j == 1
        myArray = [cumMap(i - 1, j), cumMap(i - 1, j + 1)];
                  %top and top right
    elseif j == num_columns
        myArray = [cumMap(i - 1, j -1), cumMap(i - 1, j)];
                  %top left and top
    else
        myArray = [cumMap(i - 1, j - 1), cumMap(i - 1, j), cumMap(i - 1, j + 1)];
    end
   
    minimum = min(myArray);
 
    rowLookingAt = cumMap(i-1,:); %get the row I'm looking at
    
    if(numel(find(rowLookingAt)) > 1)
        tempVector = find(rowLookingAt == minimum);
        if numel(find(tempVector == (j - 1))) == 1
            column = find(tempVector == (j - 1));
            j = tempVector(column)
        elseif numel(find(tempVector == j)) == 1
            column = find(tempVector == j);
            j = tempVector(column)
        elseif numel(find(tempVector == j + 1)) == 1
            column = find(tempVector == ( j + 1));
            j = tempVector(column)
        else
            j = tempVector(1);
        end
    else
        j = find(rowLookingAt == minimum); % current column find which column its in
    end
    myList(i - 1) = j; %puts indices into vector,j is current column
end

%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


end

