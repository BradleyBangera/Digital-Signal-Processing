clc;
clear all;
close all;
cvx=input('Enter Length of Bit Sequence: ');
d=input('Enter Bit Sequence: ');
l=cvx;
x=0:0.01:l*2*pi;
cc=cos(x);
cs=cos(x+pi/2);
k=length(cc);
k1=k/l;
for i=1:l
 if(d(i)==0)
 d(i)=-1;
 i=i+1;
 end
end
i=1;
j=1;
while (i<l) && (j<l)
 dd1(j)=d(i);
 dd1(j+1)=d(i);
 dd2(j)=d(i+1);
 dd2(j+1)=d(i+1);
 j=j+2;
 i=i+2;
end
t=1;
for i=1:l
 for j=1:k1
 dd(t)=d(i);
 d1(t)=dd1(i);
 d2(t)=dd2(i);
 t=t+1;
 j=j+1;
 end
 i=i+1;
end
subplot(6,1,1);
stairs(dd);
axis([0 t -2 2]);
title('Imput Bit Stream');
subplot(6,1,2);
stairs(d1);
axis([0 t -2 2]);
title('Odd Bit Stream');
subplot(6,1,3);
stairs(d2);
axis([0 t -2 2]);
title('Even Bit Stream');
len=length(d1);
if(k<len)
 len=k;
end
for i=1:len
 qcc(i)=cc(i)*d1(i); %odd streams multiplied with I waveform
 qcs(i)=cs(i)*d2(i); %even streams multiplied with Q waveform
 i=i+1;
end
subplot(6,1,4);
plot(qcc);
axis([0 len -2 2]);
title('Modulated Wave of I-Component');
subplot(6,1,5);
plot(qcs);
axis([0 len -2 2]);
title('Modulated Wave of Q-Component');
qp=qcc+qcs; % QPSK output from Adder
subplot(6,1,6);
plot(qp);
axis([0 len -2 2]);
title('QPSK Waveform');