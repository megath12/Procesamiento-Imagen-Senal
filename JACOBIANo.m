z=3;
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


