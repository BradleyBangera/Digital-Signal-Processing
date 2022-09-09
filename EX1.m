clear;clc;clf;
T=0.12; Sum=0; fo=25; fs=1000;
 % change fo and n values
 N=25   ;
 t=0; i=1;
 while t<T
      sum=0;
      k=1;
      while k<=N
          X=j*4/(k*pi);
          sum=sum+X*exp(j*2*pi*k*fo*t);
          k=k+2;
      end;
       x(i)=real(sum);
       t=t+1/fs;
       i=i+1;
      end;
      t=0:1/fs:T-1/fs;
      plot(t,x);
      title('Waveform for N=25')
