
clc;
clear all;
close all;

f = input('Enter the Sine wave frequency (Hz): ');

f1 = f;
f2 = 2 * f;
f3 = 8 * f;

t1 = 0:1/f1:2/f;
t2 = 0:1/f2:2/f;
t3 = 0:1/f3:2/f;

x1 = sin(2*pi*f*t1 + pi/6);
x2 = sin(2*pi*f*t2 + pi/6);
x3 = sin(2*pi*f*t3 + pi/6);

figure;

subplot(3,1,1);
stem(t1,x1,'filled');
title('Under Sampled Signal Fsamp < 2*Fsig');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
stem(t2,x2,'filled');
title('Critical Sampled Signal Fsamp = 2*Fsig');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
stem(t3,x3,'filled');
title('Over Sampled Signal Fsamp > 2*Fsig');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;