%Levitador Magnetico.
%Retroalimentacon de Estados
clear all; clc; close all
format long g
%Definir todas las variables del sistema
z=3; %Altura que queremos del anillo

m=1.4482e-3; %Masa del anillo
g=9.81; %Gravedad
Rb= 14.5; %Valor de la Resistencia de la bobina en Ohms
Lb= 128e-3; %Valor de la Inductancia de la bobina en H
Ra= 0.20816e-3; %Valor de la Resistencia del anillo en Ohms
La= 2.07023e-6; %Valor de la Inductancia del anillo en H
w=60 ; %Frecuencia del voltaje
Zr= sqrt(Ra^2+(w*La)^2); %Impedancia del anillo
fir=atan(w*La/Ra);
Mz= 36.2e-6; %No se como calcular :(
Rbz=Rb-(Mz^2*w^2/abs(Zr))*cos(fir);
Lbz=Lb+(Mz^2*w/abs(Zr))*sin(fir);
Zb2=(Rbz^2)+(w*Lbz)^2;
Kl=(Mz^2*w/2/abs(Zr))*sin(fir);
Vc=53.768;  %Voltaje inducido
u=Vc^2;
%--------------------Se defines mas Matrices Jacobianos
A=[0,1;0,0]
B=[0;Kl/abs(Zb2)^2/m/z]
C=[1,0]

raices=poly(A) %Calcula el Politnomio Caracteristico
%--------------Matriz de Controlabilidad
Ctb=ctrb(A,B)
%--------------Matriz de Observabilidad
Obs=obsv(A,C)
%--------------Matriz de Controlabilidad Inversa
Cinv=inv(Ctb)

%poly(A)

Abar=[0,1;-raices(3),-raices(2)]
Bbar=[0;1]
Ctbbar=ctrb(Abar,Bbar)

Po=conv2([1 5],[1 5])

Kbar=[raices(3)-Po(3),raices(2)-Po(2)]

K=[Kbar*Ctbbar*Cinv] %K para el Controlador
%-------------DUAL--------
%Para el calculo del Observador
Adual=[0,1;0,0]'
Cdual=[0;Kl/abs(Zb2)^2/m/z]'
Bdual=[1,0]'
Ctb=ctrb(Adual,Bdual)
Obs=obsv(Adual,Cdual)
Cinvd=inv(Ctb)
ra=poly(Adual)

Abd=[0,1;-ra(3),-ra(2)]
Bbd=[0;1]

Ctbbd=ctrb(Abd,Bbd)

Po2=conv2([1 50],[1 50])

Kbd=[ra(3)-Po2(3),ra(2)-Po2(2)]

Kd=[Kbd*Ctbbd*Cinvd]

L=[-Kd]'  %L para el Obsrvador
%--------Comprobacion de las raices de los polinomios objetivos y hacer
%asintoticamente el sistema
eig(A+(B*K))
eig(A-(L*C))

% %----------------Principio de Separación
%%% Acontrolada=[A+(B*K), L*C;0, A-(L*C)]
