
clc;
clear all;
close all;

x = input('Enter the sequence 1 :');
h = input('Enter the sequence 2 :');

m = length(x);
n = length(h);

N = max(m, n);

x = [x, zeros(1, N - m)];
h = [h, zeros(1, N - n)];

z = zeros(1, N);

for k = 1:N
    y = 0;
    for i = 1:N
        j = mod(k - i, N) + 1;
        y = y + x(i) * h(j);
    end
    z(k) = y;
end

disp('Circular Convolution Output:');
disp(z);

subplot(3, 1, 1);
stem(x);
title('Signal 1');
xlabel('Samples --->');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(h);
title('Signal 2');
xlabel('Samples --->');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(z);
title('Circular Convolution Output');
xlabel('Samples --->');
ylabel('Amplitude');