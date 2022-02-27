
clear all      % Borrar variables almacenadas
clc            % Limpiar pantalla

B=2/3;         % Valor de B
w=3769.9111;   % Valor de Wo
syms q         % Q se sustituye por "s" minuscula

y=(B*w*q);
z=(q^2+w^2);

c=(z^3);
p=(y^3+(2.5052*z*y^2)+(3.131785*y*z^2)+(1.9651*z^3));

t=c/p;         % División entre N(s) y D(s) 
t1=expand(t);  % Realizar las operaciones correspondientes 
pretty(t1)     % Ecuacion presentada de manera agradable

r=solve(p,q)   % Obtener raices del polinomio D(s)


