clc
clear all
close all
% vidobj = videoinput('winvideo');
% get(vidobj) 
% preview(vidobj);
% vidobj.SupportedFormats


% info=imaqhwinfo('winvideo',1)
% info.SupportedFormats
% vid=videoinput('winvideo',1,'YUY2_640x480')
% preview(vid)
% closepreview(vid)
% archivo=videowriter('webcam')

% start(vidobj);
% datos=getdata(vidobj,10);
% imaqmontage (datos);
% pause(10)
% stop(vidobj);

% closepreview(vidobj) 
% delete(vidobj)


% clc
% clear all
% Im = imread('.jpg');
% Im=imrotate(Im,-90);
% figure,imshow(Im);
% Im = imresize(Im, [512 512]);
%       diff_im = Im(:,:,2);
%       figure,imshow(diff_im);
%       


% videoObject = VideoReader('TypeI_4_1_TestClipped.wmv');
%     imageData = read(videoObject);
%     numFrames = get(videoObject, 'NumberOfFrames');
%        Heig= get(videoObject, 'Height');
%        Wid= get(videoObject, 'Width');
%        Rateframe= get(videoObject, 'FrameRate');
%        time=get(videoObject, 'Duration');
%       % To cut down the time for this trial height and width are reduced
%        Wid=200;
%        Heig=100;
%        Hii = Heig*(ones(1,Wid));
%     mov(10).cdata = read(videoObject,10);
%     P1=impixel(mov(10).cdata,wii,Hii);
%     % or
%     imagedata=read(videoObject,10);

vid = videoinput('winvideo', 1, 'YUY2_640x480');
src = getselectedsource(vid);

vid.FramesPerTrigger = 1;
vid.Frames  PerTrigger = 2;
vid.FramesPerTrigger = 1;

preview(vid);
vid.FramesPerTrigger = 100;
start(vid);
%stoppreview(vid);
pause(10)
preview(vid);
%start(vid);
stoppreview(vid);
dan = getdata(vid);
save('C:\Users\HP\PDBI\pulso.mat', 'dan');
%histogram(dan)
max(dan)
min(dan)


%     P2=impixel(mov(10).cdata,wii,Hi


