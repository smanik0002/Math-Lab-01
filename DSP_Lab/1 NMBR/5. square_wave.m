clc;
clear all;
close all;
f_sq = 8;
t_sq = 0:0.001:0.5;
x_sq = square(2*pi*f_sq*t_sq);

plot(t_sq,x_sq);

xlabel('n >');
ylabel('Amplitude -->');
title('Square wave');