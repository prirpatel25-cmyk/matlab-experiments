clc;
clear all;
close all;
x = [1 1 1];
h = [1 1 1];
y = zeros(1,length(x) + length(h) - 1);
for i = 1:length(x)
    for j = 1:length(h)
        y(i+j-1) = y(i+j-1) + x(i)*h(j);
    end
end
n = 0:length(y)-1;
stem(n,y);
grid on;
title('convolution of two rectangular signals');