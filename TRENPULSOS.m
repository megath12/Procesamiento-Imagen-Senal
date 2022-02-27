%Serie trigonométrica de Fourier

clear all
close all
clc

FS=100;
TS=1/FS;
t=-3:TS:3;

f=1/5;
A=1;
ao=A;
N=50;
wo=2*pi*f;
F=0;

for n=1:N;
    a(n)=(2*A)/(n*pi)*sin(n*pi/2);
    F=a(n)*cos(n*wo*t)+F;
end

F=0.5*ao+F;
plot(t,F);






