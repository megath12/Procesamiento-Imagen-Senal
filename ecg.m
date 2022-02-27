
clc
clear all
close all

n=[1 15 30 55 75 100 115 135 165 170 205 230 255 330];
s1=[0 0 0 .2 0 0 -.15 1 -.3 0 0 .25 0 0];
x=[0:249];
x1= interp1(n,s1,x,'pchip');
plot(x,x1);
grid on




