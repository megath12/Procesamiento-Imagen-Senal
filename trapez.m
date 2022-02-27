clear
clc
T=6;
f=1/T;
syms t n wo

%A0
a1=int(-t,t,-T/3,0);
a2=int(t,t,0,T/3);
a3=int(T/3,t,T/3,2*T/3);
a0=(2/T)*(a1+a2+a3)

%An
an1=int(-t*cos(n*wo*t),t,-T/3,0)
an2=int(t*cos(n*wo*t),t,0,T/3)
an3=int((T/3)*cos(n*wo*t),t,T/3,2*T/3)
an=(2/T)*(an1+an2+an3)
simplify(an)
%Bn
b1=int(-t*sin(n*wo*t),t,-T/3,0);
b2=int(t*sin(n*wo*t),t,0,T/3);
b3=int((T/3)*sin(n*wo*t),t,T/3,2*T/3);
bn=(2/T)*(b1+b2+b3)

FS=100;
TS=1/FS;
tiempo=0:TS:18;
F=0;
N=20;
wo=2*pi*f;

for n=1:N;
    a(n)=- (2*(sin(2*n*wo) - sin(4*n*wo)))/(3*n*wo) - (2*(2*sin(n*wo)^2 - 2*n*wo*sin(2*n*wo)))/(3*n^2*wo^2);
    b(n)=(2*(cos(2*n*wo) - cos(4*n*wo)))/(3*n*wo);
    F=a(n)*cos(n*wo*tiempo)+b(n)*sin(n*wo*tiempo)+F;
end
F=.5*a0+F;
plot(tiempo,F);
title('T=6')
