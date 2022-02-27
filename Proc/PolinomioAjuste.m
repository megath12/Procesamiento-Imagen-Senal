
clc
clear all
close all

nf=[1 15 30 55 75 100 115 135 165 170 205 230 255 330];
sf1=[0 0 0 .2 0 0 -.15 1 -.3 0 0 .1 0 0];
sf=(sf1)+.3;
n=[0:249];
y= interp1(nf,sf,n,'pchip');
plot(n,y)
k=[y]*196.15;
p=fprintf('%g,',k);
grid on


