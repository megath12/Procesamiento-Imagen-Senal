
clear 
clc
close all
Fs = 10000;
T = 3;
t = 0:(1/Fs):2;
f = 500;
y1 = cos(2*pi*f*t);
sound(y1, Fs);
pause(4)
y = cos(2*pi*10500*t);
sound(y, Fs);
