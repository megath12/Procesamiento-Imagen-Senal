clear all
clc

Fs=200;
N=400;
t=[0:1/200:2];
x1=cos(2*pi*60*t);
x2=cos(2*pi*80*t);
df=Fs/N;
fre=[0:df:Fs];
for k=0:N
    aux=0;
    for n=0:N-1
        aux=x1(n+1)*exp(-j*2*(pi/N)*n*k)+aux;
        end
X(k+1)=aux;
end

for k=0:N
    aux1=0;
    for n=0:N-1
        aux1=x2(n+1)*exp(-j*2*(pi/N)*n*k)+aux1;
        end
X1(k+1)=aux1;
end
magX=abs(X);
angX=angle(X);
subplot(3,1,1)
stem(fre,magX)
hold on
magX1=abs(X1);
angX1=angle(X1);
subplot(3,1,2)
stem(fre,magX1)
subplot(3,1,3)
Y=magX+magX1;
stem(fre,Y)

subplot(3,1,1)
%subplot(3,2,1)
%subplot(3,3,1)


