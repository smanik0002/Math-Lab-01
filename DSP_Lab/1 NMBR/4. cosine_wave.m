clc;
clear all;
close all;
f_cos = 4;
t_cos = 0:0.00001:2;
x_cos = cos(2*pi*f_cos*t_cos); % Fixed variable name from source text 'n' to 't_cos'

plot(t_cos,x_cos);

xlabel('frequency (Hz)');
ylabel('amplitude (v)'); 
title('Cosine');