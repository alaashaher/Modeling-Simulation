function varargout = Naive_Bayes_classify_gui(varargin)
% NAIVE_BAYES_CLASSIFY_GUI MATLAB code for Naive_Bayes_classify_gui.fig
%      NAIVE_BAYES_CLASSIFY_GUI, by itself, creates a new NAIVE_BAYES_CLASSIFY_GUI or raises the existing
%      singleton*.
%
%      H = NAIVE_BAYES_CLASSIFY_GUI returns the handle to a new NAIVE_BAYES_CLASSIFY_GUI or the handle to
%      the existing singleton*.
%
%      NAIVE_BAYES_CLASSIFY_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NAIVE_BAYES_CLASSIFY_GUI.M with the given input arguments.
%
%      NAIVE_BAYES_CLASSIFY_GUI('Property','Value',...) creates a new NAIVE_BAYES_CLASSIFY_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Naive_Bayes_classify_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Naive_Bayes_classify_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Naive_Bayes_classify_gui

% Last Modified by GUIDE v2.5 10-Dec-2017 12:26:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Naive_Bayes_classify_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @Naive_Bayes_classify_gui_OutputFcn, ...
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


% --- Executes just before Naive_Bayes_classify_gui is made visible.
function Naive_Bayes_classify_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Naive_Bayes_classify_gui (see VARARGIN)

% Choose default command line output for Naive_Bayes_classify_gui
handles.output = hObject;
handles.money = 0 ;
handles.weather = '';
handles.exam = '' ;
handles.ExPath = [] ;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Naive_Bayes_classify_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Naive_Bayes_classify_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function money_Callback(hObject, eventdata, handles)
% hObject    handle to money (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.money = get(hObject,'String');
% Hints: get(hObject,'String') returns contents of money as text
%        str2double(get(hObject,'String')) returns contents of money as a double


% --- Executes during object creation, after setting all properties.
function money_CreateFcn(hObject, eventdata, handles)
% hObject    handle to money (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function exam_Callback(hObject, eventdata, handles)
% hObject    handle to exam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.exam = get(hObject,'String');
% Hints: get(hObject,'String') returns contents of exam as text
%        str2double(get(hObject,'String')) returns contents of exam as a double


% --- Executes during object creation, after setting all properties.
function exam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to exam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function weather_Callback(hObject, eventdata, handles)
% hObject    handle to weather (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.weather = get(hObject,'String');
% Hints: get(hObject,'String') returns contents of weather as text
%        str2double(get(hObject,'String')) returns contents of weather as a double


% --- Executes during object creation, after setting all properties.
function weather_CreateFcn(hObject, eventdata, handles)
% hObject    handle to weather (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function path_Callback(hObject, eventdata, handles)
% hObject    handle to path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of path as text
%        str2double(get(hObject,'String')) returns contents of path as a double


% --- Executes during object creation, after setting all properties.
function path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in classfiy.
function classfiy_Callback(hObject, eventdata, handles)
% hObject    handle to classfiy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path = get(handles.path,'String');
x = Naive_Bayes_classify(path);
[num, exam, weather ] = xlsread(path);
len = length(weather);
d{1,1} = handles.money ;
d{1,2} = handles.exam ;
d{1,3} = handles.weather ;
d{1,4} = x ;
% xlswrite('ass3.xlsx' , d{1,1} , 'b1','D1');
% xlswrite('ass3.xlsx' , d{1,2} , 'b1','D1');
% xlswrite('ass3.xlsx' , d{1,3} , 'b1','D1');
% xlswrite('ass3.xlsx' , d{1,4} , 'b1','D1');
display(x);
set(handles.res,'String',x);
% set(handles.res,'String',x);



function res_Callback(hObject, eventdata, handles)
% hObject    handle to res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of res as text
%        str2double(get(hObject,'String')) returns contents of res as a double


% --- Executes during object creation, after setting all properties.
function res_CreateFcn(hObject, eventdata, handles)
% hObject    handle to res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in browse.
function browse_Callback(hObject, eventdata, handles)
% hObject    handle to browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName,FilePath]=uigetfile({'*.*','All Files'});
handles.ExPath = [FilePath FileName];
set(handles.path,'String',handles.ExPath);
guidata(hObject, handles);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over res.
function res_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to res (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.res,'String',handles.result);