clc;
clear all;
close all;
n = -5 : 5;
u = [zeros(1,5) 1 zeros(1,5)];
subplot(2,1,1);
plot(n,u);
xlabel("t");
ylabel("u(t)");
title("unit impulse continuous signals");

subplot(2,1,2);
stem(n,u);
xlabel("n");
ylabel("u(n)");
title("unit impulse discrete signals");