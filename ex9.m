clear;clc; clf;
fs=2000;
t=(0:199)/fs;
s=sin(2*pi*50.*t)+sin(2*pi*120.*t)+sin(2*pi*240.*t);
awgn=(0.5*randn(1,200)+.25);
sn=s+awgn;

 subplot(211);
 plot(t,sn);
 title('sinusoid with noise');
 grid;

 sn=fft(sn,200);
 f=0:10:990;
 sfmag=abs(sn);
 subplot(212);
 plot(f,sfmag(1:100));
 title('spectral estimation');
 grid;