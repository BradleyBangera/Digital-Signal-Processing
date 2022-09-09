clear; clc; clf;
N=8; nn=0:(N-1); kk=nn;
xb=[1 1 0 0 0 0 0 1 ];
Xb=fft(xb,N);

 subplot(221); stem(nn,xb);
 title('X(n)');
 xlabel('Index(n)');
 axis([0 7 0 1 ]);
subplot(222);
stem(kk,real(Xb));
title('Real Part of DFT');
xlabel('Index(k)');
axis([0 7 -1 4]);
subplot(224);
stem(kk,imag(Xb));
title('Imag Part of DFT');
xlabel('index(k)');
axis([0 7 -2 2]);