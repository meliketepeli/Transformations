% Connected Component Labelling
% Gray to Binary -> Color

clc
clear all;

img=imread("binaryImg2.png");
figure
imshow(img);
title("First Image");

% we convert image to binary
imgBinary=imbinarize(img);

% first we have to create connected component 4 connectivity
cc4=bwconncomp(imgBinary,4);

% if we want we can create 8-connectivity cc
cc8=bwconncomp(imgBinary,8);

% we have to labeling
label=labelmatrix(cc4);
label2=labelmatrix(cc8);

% final we have to convert label to rgb and then we can see
conv=label2rgb(label);
figure
imshow(conv);
title("RGB Image 4-connectivity");

conv2=label2rgb(label2);
figure
imshow(conv2);
title("RGB Image 8-connectivity");

