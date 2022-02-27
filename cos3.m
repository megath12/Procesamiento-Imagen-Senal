
clc 
clear all
fs=30;
f=1/3;
t=1/f;
fa=2*pi*f;
n=[0:1/fs:4];
y=cos((2*pi*n)/2);
stem(n,y)
