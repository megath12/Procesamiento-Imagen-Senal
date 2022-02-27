clc
clear all
close all

A=imread('C:\Users\HP\Pictures\123.jpg');
subplot(2,2,1)
imshow(A)      %primer imagen
[B mapa]=rgb2ind(A,128);
subplot(2,2,2)
imshow(B,mapa)  %segunda imagen
mapa1=jet(1);
subplot(2,2,3)
imshow(B,mapa1) %tercer imagen
subplot(2,2,4)
D=rgb2gray(A);
imshow(D)      %cuarta imagen

figure(2)
E=rgb2hsv(A);
imshow(E);

figure(3)
F=rgb2ycbcr(A);
imshow(F);

figure(4)
G=rgb2lab(A);
imshow(G);

figure(5)
H=rgb2xyz(A);
imshow(H);

figure(6)
I=rgb2ntsc(A);
imshow(I);



% I = imread('C:\Users\HP\Pictures\123.jpg');
% subplot(3,1,1)
% imshow(I)
% C=rgb2gray(I);
% subplot(3,1,2)
% imshow(C)
% C=uint8(sum(I,3)/3);
% color(:,:,1)=(C);%*3)*.299;
% color(:,:,2)=(C);%*3)*.587;
% color(:,:,3)=(C);%*3)*.114;
% subplot(3,1,3)
% kolor=imfilter(color);
% imshow(Kolor)


