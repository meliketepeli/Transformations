% Writing method that Thresholds a given gray level image
 
clc
clear all;

image=imread("Cyprus2.png");
figure
imshow(image);
title("Cyprus Image");

% we have to detect size of the image 
[r c]=size(image);
thresh=40;

for i=1:r
    for j=1:c
        if (image(i,j)>thresh)
            image2(i,j)=1;
        else
            image2(i,j)=0;
        end
    end
end

figure
imshow(image2);
title("Threshold Gray Image");

% Using MATLAB Method version

image3=im2bw(image, 40 ./ 256);
figure
imshow(image3);
title("Matlab Method Version")