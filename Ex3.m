clc; clear; clf;
b1=[2.066 0.4131 0.2066];
a1=[1 -0.395 0.1958];
freqz(b1,a1,64);
title('Frequency Response');