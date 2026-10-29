clc;
clear all;
close all;
T = 2*pi;
W = (2*pi)/T;
t = linspace(1,4*pi,100);
N = 20;
sq_wave = zeros(1,length(t));
for n = 1:2:N
    sq_wave = sq_wave + (4/n*pi)*(sin(n*W*t));
    hold on;
    plot(t,sq_wave);
end
t = linspace(1,2*pi,100);
saw_wave = zeros(1,length(t));
for n = 1:2:N
    saw_wave = saw_wave + (2/n*pi)*(-1)^(n+1)*(sin(n*W*t));
    hold on;
    plot(t,saw_wave);
end
t = linspace(0,4*pi,100);
tri_wave = zeros(size(t));
for n = 1:1:N
    tri_wave = tri_wave + (8/n^2*pi^2)*(-1)^(n-1)*(sin(n*W*t));
    hold on;
    plot(t,tri_wave);
end