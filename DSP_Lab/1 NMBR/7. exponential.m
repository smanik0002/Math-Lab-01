clc;
clear all;
close all;
t_exp = 0:0.01:1;
a_exp = 5;
z_exp = exp(-a_exp*t_exp);

plot(t_exp, z_exp);

xlabel('n >'); 
ylabel('Amplitude --->');
title('Exponential');