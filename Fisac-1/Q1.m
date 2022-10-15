clc;
clear;
close all;
fs = input ('Enter the Sampling Frequency: ');
fpass=110/fs;
T = 0.02;
tmin = 0;
tmax = 20*T;
t = tmin:1/fs:tmax;
f1 = 100; f2 = 90;
x = 2*cos(2*pi*f1*t) + 6*cos(2*pi*f2*t);
y = lowpass(x,(fpass/pi));
subplot(2,1,1), stem(t,x)
title('Sampled Signal');
subplot(2,1,2), stem(t,y)
title('Output');