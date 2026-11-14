clc;
clear all;
close all;
t_ramp = 0:0.1:1;
r = t_ramp;

stem(r);
axis tight;
xlabel('n --->'); 
ylabel('Amplitude >'); 
title('Ramp');