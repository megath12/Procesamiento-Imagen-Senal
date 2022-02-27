
clear
clc
T=3;
syms x
syms n
syms t

% a0
a0=(2/T)*int(,0,T/2)

% bn
bn=(2/T)*int(*sin(n*(2*pi/T)*t),0,T/2)

% an
an=(2/T)*int(*cos(n*(2*pi/T)*t),0,T/2)

FS=100;
TS=1/FS;
tiempo=0:TS:27;

f=1/T;
ao=4*T/9;
N=20;
wo=2*pi*f;
F=0;

for n=1:N;
    a(n)=;
    b(n)=;
    F=a(n)*cos(n*wo*tiempo)+b(n)*sin(n*wo*tiempo)+F;
end

F=0.5*ao+F;
plot(tiempo,F);
grid on
