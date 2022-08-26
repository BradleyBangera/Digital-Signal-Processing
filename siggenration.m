% workspace init
clc;
clear;
close all;

% genrate basic signals of common lenght 16
N=16;
n=0:N-1;

b=ones(1,N); %block of ones
r=n; % ramp func

p=8; %triangular wave time period
n1=0:p/2-1;
n2=p/2:p-1;
p1=p*ones(1,length(n2));
A=1;
tri_block=[2*A*n1/p 2*A*(p1-n2)/p];
t=[tri_block tri_block];

e=(5/6).^n;

figure(1)
stem(n,b);
figure(2)
stem(n,r)
figure(3)
stem(n,t);
figure(4);
stem(n,e);

%% Create and display r[n-6]*u[n]
figure('Name','Tutorial-II -Elementary Signals');
stem(n,r);
grid;
stem(n+6,r,'r*');
title('r[n](blue) & z[n]=t[n]*(u[n]-u[n-10])(Red)')


%% ii Creat and display z[n]=t[n]*(u[n]-u[n=10])
z=[t(1:10) zeros(1,6);];
figure('Name','Tutorial-2 Elementary Signals');
stem(n,t);
grid;
hold on;
stem(n,z,'r*')
title('t[n](blue) and z[n]=t[n]*(u[n]-u[n-10](red))');
