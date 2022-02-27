clc
clear all
Fs=8000;
r=audiorecorder(Fs,16,1);
record(r)
pause(7)
stop(r)
mySpeech=getaudiodata(r)
sound(mySpeech,8000)%+ o - modificando frecuencia 
play(r)

