clc;
clear all;
close all;
a_damp = 4;
t_damp = 0:0.001:2;
x_damp = a_damp*sin(2*pi*a_damp*t_damp);
z_damp = exp(-t_damp);
q = x_damp.*z_damp;

plot(t_damp,q);

xlabel('n ---- >'); 
ylabel('Amplitude -- >');
title('Damped');