clc
clear all
fs=140;
t1=[0:1/fs:1];
xc=cos(14*(2*pi*t1));
xc1=cos(2*(2*pi*t1));
n=0:16;
t=0:1/16:1;
xd1=cos(2*pi/8*n);
xd=cos(2*pi*14/16*n);
subplot(2,1,1)
plot(t1,xc1)
hold on
stem(t,xd)
hold on
subplot(2,1,2)
plot(t1,xc,'r')
hold on
stem(t,xd1)
