
clc          % Limpiar la pantalla
clear all    % Limpiar las variables    
syms s
a=s+0.6263-j*1.0847;  % S0
b=s+1.2526;           % S1  
c=s+0.6263+j*1.0847;  % S2 
n=(a)*(b)*(c);   
k=expand(n)
pretty(k)
vpa(k)
%k=s^3 + (2.5052*s^2)+(3.1378*s)+1.9651;