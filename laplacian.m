clc;
clear;
close all;

% plot moon image 
figure(1);
x = imread("moon.tif");
imshow(x);
title("Original image");

% laplacian filter 
h = [0 -1 0; -1 4 -1; 0 -1 0];

% operation
figure(2);
output = imfilter(x,h);
imshow(output);