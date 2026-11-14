clc;
clear all;
close all;
n_sine = 0:0.000001:4;
x_sine = sin(2*pi*n_sine);

plot(n_sine,x_sine);

xlabel('n >'); 
ylabel('Amplitude --->');
title('Sine Wave');