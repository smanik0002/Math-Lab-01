
% Experiment 7:
% Real Life Application of FFT and Butterworth Filter

clc;
clear;
close all;

% Step 1: Load Audio File
[file, path] = uigetfile('*.m4a', 'Select Audio File');

if isequal(file,0)
    error('No audio file selected!');
end

[x, Fs] = audioread(fullfile(path,file));

% Convert Stereo Audio to Mono
if size(x,2) > 1
    x = mean(x,2);
end

L = length(x);
t = (0:L-1)/Fs;

% Step 2: Plot Original Audio
figure('Name','FFT and Butterworth Filter');

subplot(2,2,1);
plot(t,x);
title('Original Audio Signal');
xlabel('Time (Seconds)');
ylabel('Amplitude');
grid on;

% Step 3: Apply FFT
X = fft(x);
P = abs(X/L);

P = P(1:floor(L/2)+1);

if mod(L,2) == 0
    P(2:end-1) = 2*P(2:end-1);
else
    P(2:end) = 2*P(2:end);
end

f = Fs*(0:floor(L/2))/L;

subplot(2,2,2);
plot(f,P);
title('FFT of Original Audio');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0 min(4000,Fs/2)]);
grid on;

% Step 4: Apply Butterworth Filter
fc = 1800;

if fc >= Fs/2
    error('Cutoff frequency must be below Nyquist frequency!');
end

[b,a] = butter(4,fc/(Fs/2),'low');

y = filtfilt(b,a,x);

% Step 5: Plot Filtered Audio
subplot(2,2,3);
plot(t,y);
title('Filtered Audio Signal');
xlabel('Time (Seconds)');
ylabel('Amplitude');
grid on;

% Step 6: Apply FFT to Filtered Audio
Y = fft(y);
Q = abs(Y/L);

Q = Q(1:floor(L/2)+1);

if mod(L,2) == 0
    Q(2:end-1) = 2*Q(2:end-1);
else
    Q(2:end) = 2*Q(2:end);
end

subplot(2,2,4);
plot(f,Q);
title('FFT of Filtered Audio');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0 min(4000,Fs/2)]);
grid on;

% Step 7: Save Filtered Audio
audiowrite('Filtered_Audio.wav',y,Fs);

disp('Experiment Completed Successfully!');
disp('Filtered Audio Saved!');

% Step 8: Play Filtered Audio
soundsc(y,Fs);
