Fs=10000;
Ts=1/Fs;
L=50;
t=(0:L)*Ts; 
 
y2=sin(2*pi*1000*t);

subplot(1,2,1)
plot(t,y1);
 
nfft=length(y1);
nfft2=2^nextpow2(nfft);
 
ff1=fft(y1,nfft2);
subplot(1,2,2)
plot(abs(ff1));
