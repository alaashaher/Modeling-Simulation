function varargout = bmi(varargin)
% BMI MATLAB code for bmi.fig
%      BMI, by itself, creates a new BMI or raises the existing
%      singleton*.
%
%      H = BMI returns the handle to a new BMI or the handle to
%      the existing singleton*.
%
%      BMI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BMI.M with the given input arguments.
%
%      BMI('Property','Value',...) creates a new BMI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bmi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bmi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bmi

% Last Modified by GUIDE v2.5 29-Nov-2017 19:49:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bmi_OpeningFcn, ...
                   'gui_OutputFcn',  @bmi_OutputFcn, ...
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


% --- Executes just before bmi is made visible.
function bmi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bmi (see VARARGIN)

% Choose default command line output for bmi
handles.output = hObject;
handles.metric = 0 ;
handles.wu = 'lb' ;
handles.hu = 'in' ;
handles.name = ' ' ;
handles.age = ' ' ;
handles.bmi = 0 ;
handles.weight = ' ' ;
handles.height = ' ' ;
handles.result = ' ' ;
handles.condition = ' ' ;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bmi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bmi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function name_text_Callback(hObject, eventdata, handles)
% hObject    handle to name_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.name = get(hObject,'String');
guidata(hObject, handles)
% Hints: get(hObject,'String') returns contents of name_text as text
%        str2double(get(hObject,'String')) returns contents of name_text as a double


% --- Executes during object creation, after setting all properties.
function name_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to name_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function age_text_Callback(hObject, eventdata, handles)
% hObject    handle to age_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.age = get(hObject,'String');
guidata(hObject, handles) 
% Hints: get(hObject,'String') returns contents of age_text as text
%        str2double(get(hObject,'String')) returns contents of age_text as a double


% --- Executes during object creation, after setting all properties.
function age_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to age_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function weight_text_Callback(hObject, eventdata, handles)
% hObject    handle to weight_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2double(get(hObject,'String'));
if isnan(num)
    set(hObject,'String', 0);
end
handles.weight = num;
guidata(hObject, handles) 
% Hints: get(hObject,'String') returns contents of weight_text as text
%        str2double(get(hObject,'String')) returns contents of weight_text as a double


% --- Executes during object creation, after setting all properties.
function weight_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to weight_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height_text_Callback(hObject, eventdata, handles)
% hObject    handle to height_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = str2double(get(hObject,'String'));
if isnan(num)
    set(hObject,'String', 0);
end
handles.height = num;
guidata(hObject, handles); 
% Hints: get(hObject,'String') returns contents of height_text as text
%        str2double(get(hObject,'String')) returns contents of height_text as a double


% --- Executes during object creation, after setting all properties.
function height_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result_text_Callback(hObject, eventdata, handles)
% hObject    handle to result_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result_text as text
%        str2double(get(hObject,'String')) returns contents of result_text as a double


% --- Executes during object creation, after setting all properties.
function result_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in clear_button.
function clear_button_Callback(hObject, eventdata, handles)
% hObject    handle to clear_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.name_text, 'String', '')
handles.name = '';
set(handles.age_text, 'String', '')
handles.age = '';
set(handles.weight_text, 'String', '0')
handles.weight = 0;
set(handles.height_text, 'String', '0')
handles.height = 0;
set(handles.result_text, 'String', '')
handles.result = 0;
handles.condition = '';

% --- Executes on button press in calculate_button.
function calculate_button_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.metric
    w = handles.weight;
    h = handles.height;
else
    w = handles.weight/2.2046;
    h = handles.height/0.3937;
end

bmi = 1e4 * w/h^2;

if bmi < 18.5
    s = ' Underweight';
elseif 18.5 <= bmi & bmi < 25
    s = ' Normal';
elseif 25 <= bmi & bmi < 30
    s = ' Overweight';
else
    s = ' Obese';
end   

bmis = [num2str(bmi, 3) s]; 
set(handles.result_text, 'String', bmis);
handles.result = bmi;
handles.condition = s;
guidata(hObject,handles); 

% --- Executes on button press in save_button.
function save_button_Callback(hObject, eventdata, handles)
% hObject    handle to save_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d{1, 1} = handles.name;
d{1, 2} = handles.age;
d{1, 3} = handles.weight;
d{1, 4} = handles.wu;
d{1, 5} = handles.height;
d{1, 6} = handles.hu;
d{1, 7} = handles.result;
d{1, 8} = handles.condition; 

c = xlsread('bmi', 1 , 'b1');
position = ['a' num2str(c+3)];
[status, message] = xlswrite('bmi', d, 1, position);

if status
    helpdlg('Data saved ok...', 'Save Spreadsheet');
else
    errordlg('Could not save data', 'Save Spreadsheet');
end

% --- Executes on button press in anglo_radio.
function anglo_radio_Callback(hObject, eventdata, handles)
% hObject    handle to anglo_radio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.anglo = get(hObject,'Value');
set(handles.weight_label, 'String', 'Weight (lb):')
set(handles.height_label, 'String', 'Height (in):')
set(handles.metric_radio, 'Value', 0)
handles.metric = 0;
handles.wu = 'lb';
handles.hu = 'in';
guidata(hObject, handles)
% Hint: get(hObject,'Value') returns toggle state of anglo_radio


% --- Executes on button press in metric_radio.
function metric_radio_Callback(hObject, eventdata, handles)
% hObject    handle to metric_radio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.metric = get(hObject,'Value');
set(handles.weight_label, 'String', 'Weight (kg):')
set(handles.height_label, 'String', 'Height (cm):')
set(handles.anglo_radio, 'Value', 0)
handles.anglo = 0;
handles.wu = 'kg';
handles.hu = 'cm';
guidata(hObject, handles)
% Hint: get(hObject,'Value') returns toggle state of metric_radio
