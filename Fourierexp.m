
clear all
clc
T=9;
f=1/T;
syms t n wo

%A0
a1=int(exp(-t),t,-T/2,0);
a2=int(exp(t),t,0,T/2);
a0=(2/T)*(a1+a2)

%An
an1=int(exp(-t)*cos(n*wo*t),t,-T/2,0);
an2=int(exp(t)*cos(n*wo*t),t,0,T/2);
an=(2/T)*(an1+an2)

%Bn
b1=int(exp(-t)*sin(n*wo*t),t,-T/2,0);
b2=int(exp(t)*sin(n*wo*t),t,0,T/2);
bn=(2/T)*(b1+b2)

FS=100;
TS=1/FS;
tiempo=0:TS:27;
F=0;
N=20;
wo=2*pi*f;

for n=1:N;
    a(n)=(4*(exp(9/2)*cos((9*n*wo)/2) + n*wo*exp(9/2)*sin((9*n*wo)/2) - 1))/(9*(n^2*wo^2 + 1));
    b(n)=0;
    F=a(n)*cos(n*wo*tiempo)+b(n)*sin(n*wo*tiempo)+F;
end
F=.5*a0+F;
plot(tiempo,F);
title('T=9')
