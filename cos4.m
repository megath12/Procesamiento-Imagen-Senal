clc
clear all
f=1
t=1/f
fa=2*pi*f
fs=30
x=0:1/fs:2;
y=cos(2*pi*x);
plot(x,y)

% n=0:60;
% x1=cos(2*pi/30*n);
% stem(n,x1,'r')