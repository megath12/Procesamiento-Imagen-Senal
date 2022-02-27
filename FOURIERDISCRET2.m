clear all
clc

Fs=200;
N=400;
t=[0:1/200:2];
x1=cos(2*pi*60*t);
x2=cos(2*pi*80*t);
plot(t(1:100),x1(1:100))

% df=Fs/N;
% fre=[0:df:Fs];
% for k=0:N
%     aux=0;
%     for n=0:N-1
%         aux=x2(n+1)*exp(-j*2*(pi/N)*n*k)+aux;
%         end
% X(k+1)=aux;
% end
% magX=abs(X);
% angX=angle(X);
% stem(fre,magX)