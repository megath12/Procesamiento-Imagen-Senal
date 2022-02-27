
clear
clc
T=6;
syms x n t
%a0
a0=(2/T)*int(t/t,0,T/2)
%bn
bn=(2/T)*int(sin(n*(2*pi/T)*t),0,T/2)
%an
an=(2/T)*int(cos(n*(2*pi/T)*t),0,T/2)
FS=100;
TS=1/FS;
tiempo=-9:TS:9;
f=1/T;
N=5; % N=10 y N=20
wo=2*pi*f;
F=0;
for n=1:N;
    b(n)=-(cos(pi*n)-1)/(pi*n);
    a(n)=sin(pi*n)/(pi*n);
    F=a(n)*cos(n*wo*tiempo)+b(n)*sin(n*wo*tiempo)+F;
end
F=0.5*a0+F;
plot(tiempo,F);

