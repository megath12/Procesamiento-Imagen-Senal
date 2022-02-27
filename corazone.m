
clc
clear all

%Corazon Polar
syms x y
t=0:.01:2*pi;
f=(sin(t).*sqrt(abs(cos(t))))./(sin(t)+7/5)-2.*sin(t)+2;
polar(t,f)
set(findobj('type','line'),'color',[.31 .4 .58],'linewidth',2);
title('DANAE')
pause(2)
figure

% corazn azul relleno
t = linspace(-pi, pi);
x = 12.*sin(t) -4.*sin(3.*t) ;
y = 13.*cos(t) - 5.*cos(2.*t) - 2.*cos(3.*t) - cos(4.*t);
area(x,y)
set(findobj('Type','patch'),'lineStyle','none','FaceColor',[.31 .4 .58]);
title('SARAHI')
pause(2)
figure

% Corazon verde
ezplot('(x^2+y^2-1)^3 - x^2*y^3=0',[-1.5,1.5,-1,1.5]);
set(findobj('Type','line'),'Color',[.31 .4 .58],'Linewidth', 2);
title('SANDI')
pause(2)


% corazon 3D
%set up mesh
n=100;
x=linspace(-2,2,n);
y=linspace(-2,2,n);
z=linspace(-2,2,n);
[X,Y,Z]=ndgrid(x,y,z);
%Compute function at every point in mesh
F = ( X.^2 + 9/4 .* Y.^2 + Z.^2 -1 ).^3 - X.^2 .* Z.^3 - 9/(80) .* Y.^2 .* Z.^3 ;
%generate plot
f1 = figure;
isosurface(F,0)
view([-67.5 2]);
set(findobj('Type','patch'),'FaceColor',[.31 .4 .58])
light('Parent',gca,...
'Position',[16.3 -103.1 -384.12]);
title('GALAN')


pause(2)
x=-2:0.01:2;
X=size(x);
for i=1:X(2)
    y(i)=(1-(abs(x(i))-1)^2)^.5;
    z(i)=acos(1-abs(x(i)))-pi;
end 
figure;
plot(x,y,'r',x,z,'r');
title(' ¡¡ME ENCANTAS!! ')


