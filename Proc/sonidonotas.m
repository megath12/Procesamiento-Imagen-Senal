clc;clear all;close all
Fs=2000;
N=256;
df=Fs/N;
fre=[0:df:Fs];
v=audiorecorder(Fs,16,1);
for q=0:1000
    recordblocking(v,0.130);
    x=v.getaudiodata();
    X=fft(x,N);
    MagX=abs(X);
    max=0;
    for k=1:128
        if(MagX(k)>max)
            max=MagX(k);
            posM=k;
        end
    end    
    Nota=posM*df;
    if Nota>257 && Nota<263
        fprintf('DO')
    elseif Nota>437 && Nota<443
        fprintf('LA')
    elseif Nota>661 && Nota<668
        fprintf('MI  \n')
    end
    drawnow;
    stem(MagX);
end 