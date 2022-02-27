clc
clear all
delete(instrfind);

K=serial('COM7','BaudRate',9600,'TimeOut',500,'Terminator','LF'); %establecer comunicacion serial en puerto 5
fopen(K);                 % ABRIR PUERTO

% n=5;
% fprintf(K,'%s',n);
%fprintf(K,'%c',n);         ESCRITURA


%p=fscanf(K);               LECTURA


%fclose(K);                 CERRAR PUERTO


