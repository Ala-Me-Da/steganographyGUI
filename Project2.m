%Peter Alameda
%Section A01, Winter Quarter 2015
%2nd Quarter Project, Project #3 Stenography 
clc
clear
%{
dogData = imread('dogImage.png'); 
imagesc(dogData)  
hidden01 = imread('hidden01.png'); 
figure(2)
image(hidden01) 


flatImage = flatten(hidden01);
imshow(flatImage); 


%---Part 2: Embedding the Images 
%---This first technique is the Odd/Even Red Embedding

flatPic = flatten(hidden01); 

for m = 1:length(flatPic)
    for n = 1:length(flatPic) 
        if(xor(flatPic(m,n) == 1, mod(dogData(m,n),2) == 1))
            dogData(m,n,1) = dogData(m,n,1) - 1;
        elseif(xor(flatPic(m,n) == 0,mod(dogData(m,n),2) == 0))
            dogData(m,n,1) = dogData(m,n,1); 
        end 
    end 
end 

figure; imshow(dogData); title('Embedded image') 

%---Part 3: Recovering the Hidden Image 

recoveredImage = zeros(400); 
size = length(recoveredImage); 

for p = 1:size
    for q = 1:size 
        if(mod(dogData(p,q,1),2) == 1)
            recoveredImage(p,q) = 1;
        else 
            recoveredImage(p,q) = 0; 
        end 
    end 
end 

recoveredImage = expand(recoveredImage); 
figure; imshow(recoveredImage); title('Recovered Image') 

%---Part 4: More Embedding Techniques 
%   1:  Odd/Even Grn Embedding Techinque 
%   2:  Odd/Even Blu Embedding Techinque
%   3:  Mod Function Embedding Technique 

%1: Old/Even Green Embedding Technique 
hidden02 = imread('hidden02.png'); 
flatPic = flatten(hidden02); 

for m = 1:length(flatPic)
    for n = 1:length(flatPic) 
        if(xor(flatPic(m,n) == 1, mod(dogData(m,n,2),2) == 1))
            dogData(m,n,2) = dogData(m,n,2) - 1;
        elseif(xor(flatPic(m,n) == 0,mod(dogData(m,n,2),2) == 0))
            dogData(m,n,2) = dogData(m,n,2); 
        end 
    end 
end 

figure; imshow(dogData); title('Embedded image Green') 

%---Recovering Image hidden in the Green 

recoveredImage = zeros(400); 
size = length(recoveredImage); 

for p = 1:size
    for q = 1:size 
        if(mod(dogData(p,q,2),2) == 1)
            recoveredImage(p,q) = 1;
        else 
            recoveredImage(p,q) = 0; 
        end 
    end 
end 

recoveredImage = expand(recoveredImage); 
figure; imshow(recoveredImage); title('Recovered Image (Green Method)') 

%2: Old/Even Blue Embedding Technique 
hidden03 = imread('hidden03.png'); 
flatPic = flatten(hidden03); 

for m = 1:length(flatPic)
    for n = 1:length(flatPic) 
        if(xor(flatPic(m,n) == 1, mod(dogData(m,n,3),2) == 1))
            dogData(m,n,3) = dogData(m,n,3) - 1;
        elseif(xor(flatPic(m,n) == 0,mod(dogData(m,n,3),2) == 0))
            dogData(m,n,3) = dogData(m,n,3); 
        end 
    end 
end 

figure; imshow(dogData); title('Embedded image Blue') 

%---Recovering Image hidden in the Blue

recoveredImage = zeros(400); 
size = length(recoveredImage); 

for p = 1:size
    for q = 1:size 
        if(mod(dogData(p,q,3),2) == 1)
            recoveredImage(p,q) = 1;
        else 
            recoveredImage(p,q) = 0; 
        end 
    end 
end 

recoveredImage = expand(recoveredImage); 
figure; imshow(recoveredImage); title('Recovered Image Blue')  
   %}         
%----------------------------------------------------
%mod embedding 

dogData = imread('dogImage.png');
hidden07 = imread('hidden07.png'); 
flatImg = flatten(hidden07); 
temp = dogData;  
%embedded method 
for i = 1:length(dogData)
    for j = 1:length(dogData) 
        if(xor(flatImg(i,j) == 1,mod(dogData(i,j,1),5) == 0))
            dogData(i,j,1) = 4 + flatImg(i,j); 
        end 
    end 
end 
figure; imshow(temp); title('YEE') 


%recovery 
recoveryImg = zeros(400); 

for m = 1:length(recoveryImg)
    for n = 1:length(recoveryImg) 
        if(mod(dogData(m,n,1),5) == 0) 
            recoveryImg(m,n) = 1; 
        else
            recoveryImg(m,n) = 0; 
        end 
    end 
end 

figure; imshow(recoveryImg); title('YEE RECOVER') 
