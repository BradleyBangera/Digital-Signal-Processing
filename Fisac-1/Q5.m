clc;
clearvars;
close all;
x=[1 1 0 1 1 0 0 1];
bp=1;
A=1.5; br=1/bp;
% bit rate
f1=br*2; f2=br*5;
t2=bp/99:bp/99:bp;
mod=[];
for (i=1:1:length(x))
 if (x(i)==1)
 y=A*cos(2*pi*f1*t2);
 else
 y=A*cos(2*pi*f2*t2);
 end
 mod=[mod y];
end
c=[];
for n=1:1:length(x)
 if x(n)==1;
 j=ones(1,100);
 else x(n)==0;
 j=zeros(1,100);
 end
 c=[c j];
end
t1=bp/100:bp/100:100*length(x)*(bp/100);
subplot(2,1,1);
plot(t1,c,'lineWidth',1.5);grid on;
title('Digital Signal of Binary Data');
t3=bp/99:bp/99:length(x);
subplot(2,1,2);
plot(t3,mod);
xlabel('Time');
ylabel('Amplitude');
title('BFSK Signal');