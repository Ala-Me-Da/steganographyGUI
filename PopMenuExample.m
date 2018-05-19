function varargout = PopMenuExample(varargin)
% POPMENUEXAMPLE MATLAB code for PopMenuExample.fig
%      POPMENUEXAMPLE, by itself, creates a new POPMENUEXAMPLE or raises the existing
%      singleton*.
%
%      H = POPMENUEXAMPLE returns the handle to a new POPMENUEXAMPLE or the handle to
%      the existing singleton*.
%
%      POPMENUEXAMPLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POPMENUEXAMPLE.M with the given input arguments.
%
%      POPMENUEXAMPLE('Property','Value',...) creates a new POPMENUEXAMPLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PopMenuExample_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PopMenuExample_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PopMenuExample

% Last Modified by GUIDE v2.5 17-Feb-2015 10:03:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PopMenuExample_OpeningFcn, ...
                   'gui_OutputFcn',  @PopMenuExample_OutputFcn, ...
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


% --- Executes just before PopMenuExample is made visible.
function PopMenuExample_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PopMenuExample (see VARARGIN)

% Choose default command line output for PopMenuExample
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PopMenuExample wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PopMenuExample_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

str=get(hObject,'String');
val=get(hObject,'Value');

x=0:1000;

switch str{val};
    case 'Graph1'
        axes(handles.axes1)
        y=x;
        plot(x,y)
        
    case 'Graph2'
        axes(handles.axes1)
        y=x.^2;
        plot(x,y)
        
    case 'Graph3'
        axes(handles.axes1)
        y=exp(x);
        plot(x,y)
        
end

        
        

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
