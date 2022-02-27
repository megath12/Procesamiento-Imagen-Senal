clear all
clc

f = imread('fe.png');
C=uint8(F)
%imshow(f,'InitialMagnification','fit')
% f = zeros(30,30);
% f(5:24,13:17) = 1;
% imshow(f,'InitialMagnification','fit')
F = fft2(c);
F2 = log(abs(F));
imshow(F2,[-1 5],'InitialMagnification','fit');
colormap(jet); colorbar

%imshow(F2,[-1 5],'InitialMagnification','fit');
% hold on
% colormap(jet); 
% colorbar;
% 
% imshow(F)
% hold on
% %pause(3)
% F = fft2(f,256,256);
% F2 = fftshift(F);
% imshow(log(abs(F2)),[-1 5]); colormap(jet); colorbar
% hold on