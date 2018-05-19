function z = expand(F)
%--converts the b/w image into a RBG image 
%--A 255 value is a white value
%--zero values are black values 
%--zeros creates an nxnx3 matrix 
%--z(:,:1), z(:,:,2), z(:,:,3) creates the RGB intensities 

s = length(F); 
z = zeros(s,3);

for i = 1:s
    for j = 1:s 
        if(F(i,j) == 1)
            z(i,j,1) = 255;
            z(i,j,2) = 255;
            z(i,j,3) = 255;
        end 

    end 
end 
z;
end 
