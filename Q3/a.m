clear all;
clc;
Fs=10000;
Ts=1/Fs;
L=50;
t=(0:L)*Ts;
 
y1=5*sin(2*pi*200*t);
y2=5*sin(2*pi*2000*t);

y3=y1.*y2;
 
subplot(3,1,1)
plot(t,y1);
subplot(3,1,2)
plot(t,y2);
subplot(3,1,3)
plot(t,y3);


