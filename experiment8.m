% Experiment 8: Convolution property of Fourier Transform
clc; clear; close all;

x = [1 2 3 4];
h = [1 1 1];
y = conv(x,h);                 % Linear convolution

N = length(y);                 % Zero-padding length
Y1 = fft(y,N);
Y2 = fft(x,N).*fft(h,N);       % Product of Fourier transforms
y_check = ifft(Y2);

subplot(2,1,1);
stem(0:length(y)-1,y);
title('Time-Domain Convolution');
xlabel('n'); ylabel('y[n]'); grid on;

subplot(2,1,2);
stem(0:N-1,abs(Y1));
title('Magnitude of Fourier Transform');
xlabel('Frequency index'); grid on;

disp('Convolution property verified: ifft(fft(x).*fft(h)) equals conv(x,h).');
disp(['Maximum error = ', num2str(max(abs(y-y_check)))]);
