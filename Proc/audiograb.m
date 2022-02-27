
clc
clear all
Fs=2000;
N=128;
df=Fs/N;
fre=[0:df:Fs];

%Grabar Audio Matlab
v=audiorecorder(Fs,16,1);

for q=0:100
recordblocking(v,0.130)
x=v.getaudiodata();
X=fft(x,128);
MagX=abs(X);
drawnow
stem(MagX)
end
k=max(MaqX)
%L=audioplayer(mys,15000)
%play(L)