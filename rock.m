

clc;
clear all;
close all;
tic;
vid=VideoReader('dan.avi');
  numFrames = vid.NumberOfFrames;
  n=numFrames;

Folder = 'I:\testing\abrupt\';
for iFrame = 1:n
  frames = read(vid, iFrame);
  imwrite(frames, fullfile(Folder, sprintf('%06d.jpg', iFrame)));
end 
FileList = dir(fullfile(Folder, '*.jpg'));
for iFile = 1:length(FileList)
  aFile = fullfile(Folder, FileList(iFile).name);
  img   = imread(aFile);
end

