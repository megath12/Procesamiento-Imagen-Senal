load gong.mat;
sound(y);
pause(4.5)
%load handel.mat;
%nBits = 8;
%sound(y,Fs,nBits);
load handel.mat;
player = audioplayer(y, Fs);
play(player);



