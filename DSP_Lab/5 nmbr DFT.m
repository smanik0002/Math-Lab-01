
clc; clear all; close all;

% Take inputs from user
x = input('Enter the sequence (e.g., [1 2 3 4]): ');
l = length(x);
n = input('Enter the number of points (DFT length N): ');

% Handle zero-padding or truncation safely
if n > l
    x1 = [x zeros(1, n-l)];
else
    x1 = x(1:n);
end

% Compute N-point DFT
y = zeros(1, n);
for k = 1:n
    for j = 1:n
        y(k) = y(k) + x1(j) * exp(-2*pi*1i*(k-1)*(j-1)/n);
    end
end

% Display complex DFT values in Command Window
disp('DFT Output (y):');
disp(y);

% Plotting Input and Magnitude Response
figure;
subplot(2,1,1);
stem(0:l-1, x, 'filled');
xlabel('Samples (n)');
ylabel('Amplitude');
title('Input Sequence x(n)');
grid on;

subplot(2,1,2);
stem(0:n-1, abs(y), 'filled');
xlabel('Frequency Samples (k)');
ylabel('Magnitude |X(k)|');
title('N-Point DFT Output - Magnitude');
grid on;
drawnow;
shg;
waitfor(gcf);