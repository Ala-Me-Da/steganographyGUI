%--Accepts and image as an arguement and converts it to B/W.
%--Since the imaged passed to the function is an index image in uint8
%--We figured a good threshold would between 0 and 255, which is 128; 

function y = flatten(I) 
threshold = 128; 
flatPic = (I > threshold); 
y = flatPic;
end 

 

