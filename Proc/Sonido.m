clc
clear all
% 
recObj = audiorecorder(44100, 16, 2);
disp('Grabando...')
recordblocking(recObj,10)
disp('FIN')
play(recObj)



