clc;
clear all;
close all;
n_step = input('Enter the N Value: '); 
y = [ones(1,n_step)];

stem(y);

xlabel('n >'); 
ylabel('Amplitude >'); 
title('Unit Step');