clc;
clear all;
close all;
n = [-4:4];
z = [zeros(1,4), 1, zeros(1,4)];

stem(n,z);
axis tight;
xlabel('n ---> '); ylabel('Amplitude ->'); title('Unit Impulse');