function varargout = Project2GUI(varargin) 
% PROJECT2GUI MATLAB code for Project2GUI.fig
%      PROJECT2GUI, by itself, creates a new PROJECT2GUI or raises the existing
%      singleton*.
%
%      H = PROJECT2GUI returns the handle to a new PROJECT2GUI or the handle to
%      the existing singleton*.
%
%      PROJECT2GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT2GUI.M with the given input arguments.
%
%      PROJECT2GUI('Property','Value',...) creates a new PROJECT2GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project2GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project2GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project2GUI

% Last Modified by GUIDE v2.5 15-Mar-2015 03:07:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project2GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Project2GUI_OutputFcn, ...
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


% --- Executes just before Project2GUI is made visible.
function Project2GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project2GUI (see VARARGIN)

% Choose default command line output for Project2GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project2GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project2GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in loadNormImg.
function loadNormImg_Callback(hObject, eventdata, handles)
% hObject    handle to loadNormImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns loadNormImg contents as cell array
%        contents{get(hObject,'Value')} returns selected item from loadNormImg
handles.output = hObject; 
str=get(hObject,'String');
val=get(hObject,'Value');

switch str{val};
    case 'dog'
         axes(handles.axes1); 
         dog = imread('dogImage.png'); 
         handles.dog = dog; 
         handles.show = imshow(dog);
    case 'Browse...'
        [filename,pathname] = uigetfile('*.png','Select an image');
         handles.dog = imread(strcat(pathname,filename)); %dog name for simplicity 
         axes(handles.axes1); handles.show = imshow(handles.dog); 
end 
guidata(hObject,handles); 

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject; 
str=get(hObject,'String');
val=get(hObject,'Value');

switch str{val};
    case 'hidden01'
        axes(handles.axes2);
        hidden = imread('hidden01.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden02'
        axes(handles.axes2);
        hidden = imread('hidden02.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden03'
        axes(handles.axes2);
        hidden = imread('hidden03.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden04'
        axes(handles.axes2);
        hidden = imread('hidden04.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden05'
        axes(handles.axes2);
        hidden = imread('hidden05.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden06' 
        axes(handles.axes2);
        hidden = imread('hidden06.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden07'
        axes(handles.axes2);
        hidden = imread('hidden07.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden08'
        axes(handles.axes2);
        hidden = imread('hidden08.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden09'
        axes(handles.axes2);
        hidden = imread('hidden09.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'hidden10'
        axes(handles.axes2);
        hidden = imread('hidden10.png'); 
        handles.hidden = hidden; 
        handles.display = imshow(handles.hidden);
    case 'Browse...'
         axes(handles.axes2); 
        [filename,pathname] = uigetfile('*.png','Select an image');
         handles.hidden = imread(strcat(pathname,filename)); 
         handles.display = imshow(handles.hidden); 
end 
guidata(hObject, handles);

% --- Executes on button press in redMethod.
function redMethod_Callback(hObject, eventdata, handles)
% hObject    handle to redMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
flatPic = flatten(handles.hidden); 
dogData = handles.dog; 

for m = 1:length(flatPic)
    for n = 1:length(flatPic) 
        if(xor(flatPic(m,n) == 1, mod(dogData(m,n),2) == 1))
            dogData(m,n,1) = dogData(m,n,1) - 1;
        elseif(xor(flatPic(m,n) == 0,mod(dogData(m,n),2) == 0))
            dogData(m,n,1) = dogData(m,n,1); 
        end 
    end 
end 
handles.embbedImg = dogData; 
axes(handles.axes3); imshow(dogData) 
guidata(hObject,handles); 

% --- Executes on button press in greenMethod.
function greenMethod_Callback(hObject, eventdata, handles)
% hObject    handle to greenMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
flatPic = flatten(handles.hidden); 
dogData = handles.dog; 

for m = 1:length(flatPic)
    for n = 1:length(flatPic) 
        if(xor(flatPic(m,n) == 1, mod(dogData(m,n,2),2) == 1))
            dogData(m,n,2) = dogData(m,n,2) - 1;
        elseif(xor(flatPic(m,n) == 0,mod(dogData(m,n,2),2) == 0))
            dogData(m,n,2) = dogData(m,n,2); 
        end 
    end 
end 
handles.embbedImg = dogData; 
axes(handles.axes3); imshow(dogData) 
guidata(hObject,handles); 

% --- Executes on button press in blueMethod.
function blueMethod_Callback(hObject, eventdata, handles)
% hObject    handle to blueMethod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
flatPic = flatten(handles.hidden); 
dogData = handles.dog; 

for m = 1:length(flatPic)
    for n = 1:length(flatPic) 
        if(xor(flatPic(m,n) == 1, mod(dogData(m,n,3),2) == 1))
            dogData(m,n,3) = dogData(m,n,3) - 1;
        elseif(xor(flatPic(m,n) == 0,mod(dogData(m,n,3),2) == 0))
            dogData(m,n,3) = dogData(m,n,3); 
        end 
    end 
end 
handles.embbedImg = dogData; 
axes(handles.axes3); imshow(dogData) 
guidata(hObject,handles); 

% --- Executes on button press in saveEmbedImg.
function saveEmbedImg_Callback(hObject, eventdata, handles)
% hObject    handle to saveEmbedImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imwrite(handles.embbedImg, 'embeddedImage.png'); 


% --- Executes on button press in loadEmbedImage.
function loadEmbedImage_Callback(hObject, eventdata, handles)
% hObject    handle to loadEmbedImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject; 
handles.embedImg = imread('embeddedImage.png'); 
axes(handles.axes4); imshow(handles.embedImg); 
guidata(hObject, handles); 

% --- Executes on button press in redRecover.
function redRecover_Callback(hObject, eventdata, handles)
% hObject    handle to redRecover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recoveredImage = zeros(400); 
size = length(recoveredImage); 
dogData = handles.embbedImg; 
for p = 1:size
    for q = 1:size 
        if(mod(dogData(p,q,1),2) == 1)
            recoveredImage(p,q) = 1;
        else 
            recoveredImage(p,q) = 0; 
        end 
    end 
end 

recoveredImage = expand(recoveredImage); 
axes(handles.axes5); imshow(recoveredImage); 


% --- Executes on button press in greenRecover.
function greenRecover_Callback(~, eventdata, handles)
% hObject    handle to greenRecover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recoveredImage = zeros(400); 
size = length(recoveredImage); 
dogData = handles.embbedImg; 
for p = 1:size
    for q = 1:size 
        if(mod(dogData(p,q,2),2) == 1)
            recoveredImage(p,q) = 1;
        else 
            recoveredImage(p,q) = 0; 
        end 
    end 
end 

recoveredImage = expand(recoveredImage); 
axes(handles.axes5); imshow(recoveredImage); 

% --- Executes on button press in blueRecover.
function blueRecover_Callback(hObject, eventdata, handles)
% hObject    handle to blueRecover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recoveredImage = zeros(400); 
size = length(recoveredImage); 
dogData = handles.embbedImg; 
for p = 1:size
    for q = 1:size 
        if(mod(dogData(p,q,3),2) == 1)
            recoveredImage(p,q) = 1;
        else 
            recoveredImage(p,q) = 0; 
        end 
    end 
end 

recoveredImage = expand(recoveredImage); 
axes(handles.axes5); imshow(recoveredImage); 

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in redMod.
function redMod_Callback(hObject, eventdata, handles)
% hObject    handle to redMod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject; 
dogData = handles.dog; 
flatImg = flatten(handles.hidden); 

%embedded red mod 5 method 
for i = 1:length(dogData)
    for j = 1:length(dogData) 
        if(xor(flatImg(i,j) == 1,mod(dogData(i,j,1),5) == 0))
            dogData(i,j,1) = 4 + flatImg(i,j); 
        end 
    end 
end 

handles.embbedImg = dogData; 
axes(handles.axes3); imshow(handles.embbedImg); 
guidata(hObject, handles)

% --- Executes on button press in greenMod.
function greenMod_Callback(hObject, eventdata, handles)
% hObject    handle to greenMod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject; 
dogData = handles.dog; 
flatImg = flatten(handles.hidden);
handles.flatImg = flatImg; 

%embedded green mod 5 method 
for i = 1:length(dogData)
    for j = 1:length(dogData) 
        if(xor(flatImg(i,j) == 1,mod(dogData(i,j,2),5) == 0))
            dogData(i,j,2) = 4 + flatImg(i,j); 
        end 
    end 
end 

handles.embbedImg = dogData; 
axes(handles.axes3); imshow(handles.embbedImg); 
guidata(hObject, handles)



% --- Executes on button press in blueMod.
function blueMod_Callback(hObject, eventdata, handles)
% hObject    handle to blueMod (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject; 

dogData = handles.dog; 
flatImg = flatten(handles.hidden); 
 

%embedded blue mod 5 method 
for i = 1:length(dogData)
    for j = 1:length(dogData) 
        if(xor(flatImg(i,j) == 1,mod(dogData(i,j,3),5) == 0))
            dogData(i,j,3) = 4 + flatImg(i,j); 
        end 
    end 
end 

handles.embbedImg = dogData; 
axes(handles.axes3); imshow(handles.embbedImg); 

guidata(hObject, handles)

% --- Executes on button press in redModRecovery.
function redModRecovery_Callback(hObject, eventdata, handles)
% hObject    handle to redModRecovery (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recoveryImg = zeros(400); 
dogData = handles.embbedImg;
for m = 1:length(recoveryImg)
    for n = 1:length(recoveryImg) 
        if(mod(dogData(m,n,1),5) == 0) 
            recoveryImg(m,n) = 1; 
        else
            recoveryImg(m,n) = 0; 
        end 
    end 
end 

axes(handles.axes5); imshow(recoveryImg); 


% --- Executes on button press in greenModRecovery.
function greenModRecovery_Callback(hObject, eventdata, handles)
% hObject    handle to greenModRecovery (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recoveryImg = zeros(400);  
dogData = handles.embbedImg;
for m = 1:length(recoveryImg)
    for n = 1:length(recoveryImg) 
        if(mod(dogData(m,n,2),5) == 0) 
            recoveryImg(m,n) = 1; 
        else
            recoveryImg(m,n) = 0; 
        end 
    end 
end 

axes(handles.axes5); imshow(recoveryImg); 


% --- Executes on button press in blueModRecovery.
function blueModRecovery_Callback(hObject, eventdata, handles)
% hObject    handle to blueModRecovery (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
recoveryImg = zeros(400); 
dogData = handles.embbedImg;
for m = 1:length(recoveryImg)
    for n = 1:length(recoveryImg) 
        if(mod(dogData(m,n,3),5) == 0) 
            recoveryImg(m,n) = 1; 
        else
            recoveryImg(m,n) = 0; 
        end 
    end 
end 

axes(handles.axes5); imshow(recoveryImg); 


% --- Executes during object creation, after setting all properties.
function loadNormImg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to loadNormImg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
