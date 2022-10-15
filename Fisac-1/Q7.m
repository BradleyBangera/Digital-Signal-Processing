clc;
clear all;
close all;
x=[ 1 0 1 0 1 1 0 1]; % input message sequence
bp=.000001; % bit period
disp(' Binary information at transmitter:');
disp(x); % for displaying the input sequence
bit=[];
for n=1:1:length(x)
 if x(n)==1;
 se=ones(1,100);
 else x(n)==0;
 se=zeros(1,100);
 end
 bit=[bit se];
end
t1=bp/100:bp/100:100*length(x)*(bp/100);
subplot(2,1,1);
plot(t1,bit,'lineWidth',2.5);grid on; % for ploting given binary information
%in the form of digital signal
axis([ 0 bp*length(x) -.5 1.5]);
ylabel('amplitude(V)');
xlabel(' time(sec)');
title('Transmitting information as digital signal');
A1=10; % Amplitude of carrier signal for Bit 1
A2=5; % Amplitude of carrier signal for Bit 0
br=1/bp; % bit rate
f=br*10; % carrier frequency
t2=bp/99:bp/99:bp;
ss=length(t2);
m=[];
for (i=1:1:length(x))
 if (x(i)==1)
 y=A1*cos(2*pi*f*t2);
 else
 y=A2*cos(2*pi*f*t2);
 end
 m=[m y];
end
t3=bp/99:bp/99:bp*length(x);
subplot(2,1,2);
plot(t3,m);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('ASK Modulated Wave');