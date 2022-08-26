
clc;
clear;
%Time domain response of diff eq
b1=[0.2066 0.4121 0.266];
a1=[1 -0.3695 0.1958];

%impulse response of the system
figure(1);
impz(b1,a1,20);
title('impulse response');

%step response of the system
step_n=[ones(1,20)]
y=filter(b1,a1,step_n);
figure(2);
stem(y)


title('step response')
