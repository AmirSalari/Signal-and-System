Fs=10000;
Ts=1/Fs;
L=50;
t=(0:L)*Ts;
 
y1=sin(2*pi*2000*t);
y2=sin(2*pi*1000*t);
y3=sin(2*pi*4200*t);
y4=y1+y2+y3;
 
subplot(4,2,1)
plot(t,y1);
subplot(4,2,3)
plot(t,y2);
subplot(4,2,5)
plot(t,y3);
subplot(4,2,7)
plot(t,y4);
 
nfft=length(y1);
nfft2=2^nextpow2(nfft);
 
ff1=fft(y1,nfft2);
ff2=fft(y2,nfft2);
ff3=fft(y3,nfft2);
ff4=fft(y4,nfft2);
 
subplot(4,2,2)
plot(abs(ff1));
subplot(4,2,4)
plot(abs(ff2));
subplot(4,2,6)
plot(abs(ff3));
subplot(4,2,8)
plot(abs(ff4));
