
clear all
clc
T=13;
f=1/T;
syms t n wo

% %A0
% a1=int(sqrt(4-t^2),t,2,4);
% a2=int(-2*t,t,5,6);
% a3=int(9*t,t,6,7);
% a4=int(-10*t,t,7,8);
% a5=int(3*t,t,8,9);
% a6=int(sqrt(9-t^2),t,10,13);
% a0=(2/T)*(a1+a2+a3+a4+a5+a6)
% 
% %An
% an1=int(sqrt(4-t^2)*cos(n*wo*t),t,2,4);
% an2=int(-2*t*cos(n*wo*t),t,5,6);
% an3=int(9*t*cos(n*wo*t),t,6,7);
% an4=int(-10*t*cos(n*wo*t),t,7,8);
% an5=int(3*t*cos(n*wo*t),t,8,9);
% an6=int(sqrt(9-t^2)*cos(n*wo*t),t,10,13);
% an=(2/T)*(a1+a2+a3+a4+a5+a6)

%Bn
b1=int(sqrt(4-t^2)*sin(n*wo*t),t,2,4);
b2=int(-2*t*sin(n*wo*t),t,5,6);
b3=int(9*t*sin(n*wo*t),t,6,7);
b4=int(-10*t*sin(n*wo*t),t,7,8);
b5=int(3*t*sin(n*wo*t),t,8,9);
b6=int(sqrt(9-t^2)*sin(n*wo*t),t,10,13);
bn=(2/T)*(b1+b2+b3+b4+b5+b6)
solve(bn)
pretty(bn)

FS=100;
TS=1/FS;
tiempo=0:TS:13;
F=0;
N=5;
wo=2*pi*f;
% 
% for n=1:N;
%     a(n)=(9*asin(13/3))/13 - (9*asin(10/3))/13 - (log(3^(1/2) + 2)*4i)/13 + (12^(1/2)*4i)/13 - (91^(1/2)*10i)/13 + 160^(1/2)*1i - 4/13;
%     b(n)=
%     F=a(n)*cos(n*wo*tiempo)+b(n)*sin(n*wo*tiempo)+F;
% end
% F=.5*a0+F;
% plot(tiempo,F);
% title('ECG')
