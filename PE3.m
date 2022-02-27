function varargout = PE3(varargin)
% PE3 MATLAB code for PE3.fig
%      PE3, by itself, creates a new PE3 or raises the existing
%      singleton*.
%
%      H = PE3 returns the handle to a new PE3 or the handle to
%      the existing singleton*.
%
%      PE3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PE3.M with the given input arguments.
%
%      PE3('Property','Value',...) creates a new PE3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PE3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PE3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PE3

% Last Modified by GUIDE v2.5 18-Jun-2020 23:53:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PE3_OpeningFcn, ...
                   'gui_OutputFcn',  @PE3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PE3 is made visible.
function PE3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PE3 (see VARARGIN)

% Choose default command line output for PE3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PE3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PE3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function ed1_Callback(hObject, eventdata, handles)
% hObject    handle to ed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed1 as text
%        str2double(get(hObject,'String')) returns contents of ed1 as a double


% --- Executes during object creation, after setting all properties.
function ed1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bt1.
function bt1_Callback(hObject, eventdata, handles)

nv=get(handles.ed1,'String');
n=(str2double(nv));
c=[1 1];
pie(n,c);

% delete(instrfind);
% clc 
% 
% K=serial('COM7','BaudRate',9600,'TimeOut',50,'Terminator','LF'); %establecer comunicacion seril en puerto 5
% 
% nv=get(handles.ed1,'String');
% n=(str2double(nv));
% n2=(str2double(nv))*pi;
% set(handles.tx5,'String',n2);
% axes(handles.gf2);
% %disp(n);
% %disp(nv);
% x=[9-n n];    
% c=[1 1];
% pie(x,c);
% set(gca,'Color','k');
% fopen(K);
% %fprintf(K,'%c','nv');
% disp(nv);
% fprintf(K,'%s',nv);
%fprintf(K,'%u',n);
%fclose(K);

% hObject    handle to bt1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bt2.
function bt2_Callback(hObject, eventdata, handles)

nv=get(handles.ed1,'String');
n=(str2double(nv));
set(handles.tx4,'String',n);
c=[1 1];
pie(n,c);

% delete(instrfind); %borrar todos los puertos
% clc %limpiar pantalla
% 
% K=serial('COM7','BaudRate',9600,'TimeOut',500,'Terminator','LF'); %establecer comunicacion seril en puerto 5
% fopen(K);
% N=20000;
% 
% for L=1:N;
%     p=fscanf(K);
%     set(handles.tx4,'String',p);
%     p1=str2double(p);  
% %     set()
%     axes(handles.gf1);
%     stem(L,p1,'g') 
% %     title('Sensor','Color','b') 
%     set(gca,'Color','k'); 
%     xlabel('Tiempo \rightarrow');
%     ylabel('Distancia(cm)\rightarrow');
%     axis([L-2 L+2 0 100]);
%     
%     axes(handles.gf2);
%     y=p1;
%     set(handles.tx5,'String',y*4);
%     x=[100-y y];
%     c=[1 1];
%     pie(x,c);
%     set(gca,'Color','k');
% %     grid on
% %     drawnow
%      pause(0.001);
%     clc
% end
% 
% fclose(K);
% hObject    handle to bt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over bt2.
function bt2_ButtonDownFcn(hObject, eventdata, handles)

% hObject    handle to bt2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on bt2 and none of its controls.
function bt2_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to bt2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in bt3.
function bt3_Callback(hObject, eventdata, handles)
%delete(instrfind);
clc
clear all
% hObject    handle to bt3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function gf1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to gf1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on mouse press over axes background.
function gf2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to gf2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
