clc;
clear all;
close all;
f = 2;
fs = 100;
t = 0:1/fs:1;
%defining the phase shifts
p1 = 0;
p2 = pi;
bit_sequence=input('Enter the 8 bit sequence: ');
time = [];
digital_signal = [];
PSK = [];
carrier_signal = [];
for ii = 1:1:8
 if bit_sequence(ii) == 0
 bit = zeros(1,length(t));
 else
 bit = ones(1,length(t));
 end

 digital_signal = [digital_signal bit];

 %Generating the BPSK signal
 if bit_sequence(ii) == 0
 bit = sin(2*pi*f*t+p1);
 else
 bit = sin(2*pi*f*t+p2);
 end
 PSK = [PSK bit];

 %Generating the carrier wave
 carrier = cos(2*f*t*pi);
 carrier_signal = [carrier_signal carrier];
 time = [time t];
 t = t + 1;
end
subplot(3,1,1);
plot(time,digital_signal,'r','linewidth',2);
grid on;
axis([0 time(end) -0.5 1.5]);
title('Bit Sequence')
subplot(3,1,2);
plot(time,carrier_signal,'linewidth',2);
grid on;
axis tight;
title('Carrier Signal')
subplot(3,1,3);
plot(time,PSK,'linewidth',2);
grid on;
axis tight;
title('BPSK Signal')