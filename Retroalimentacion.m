clc
clear all
close all
s=tf('s');
H=2/(s*(s+1)*(s+2))
%step(H,5)
%H.num(1)
%H.den(1)
[A B C D] = tf2ss(H.num(1),H.den(1))


