function varargout = n123(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @n123_OpeningFcn, ...
                   'gui_OutputFcn',  @n123_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before n123 is made visible.
function n123_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for n123
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes n123 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = n123_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnplot.
function btnplot_Callback(hObject, eventdata, handles)
x=-2:0.2:2;
y=exp(-x.^2);
handles.Line=plot(x,y);
guidata(gcbo, handles);
if get(handles.chbxGridX, 'Value')
    set(gca, 'XGrid', 'on');
else
    set(gca, 'XGrid', 'off');
end
if get(handles.chbxGridY, 'Value')
    set(gca, 'YGrid', 'on');
else
    set(gca, 'YGrid', 'off');
end
set(hObject, 'Enable', 'off')
set(handles.btnclear, 'Enable', 'on')

set(handles.rbMarkCirc, 'Enable', 'off')
set(handles.rbMarksq, 'Enable', 'off')
set(handles.rbMarkNone, 'Enable', 'off')
% hObject    handle to btnplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnclear.
function btnclear_Callback(hObject, eventdata, handles)
cla
set(hObject, 'Enable', 'off')
set(handles.btnplot, 'Enable', 'on')
% hObject    handle to btnclear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in chbxGridX.
function chbxGridX_Callback(hObject, eventdata, handles)
if get(hObject, 'Value')
    set(gca, 'XGrid', 'on')
else
    set(gca, 'XGrid', 'off')
end
% hObject    handle to chbxGridX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chbxGridX


% --- Executes on button press in chbxGridY.
function chbxGridY_Callback(hObject, eventdata, handles)
if get(hObject, 'Value')
    set(gca, 'YGrid', 'on')
else
    set(gca, 'YGrid', 'off')
end
% hObject    handle to chbxGridY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chbxGridY



function radiobutton4_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 'o')

function radiobutton5_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 's')

function radiobutton6_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 'None')
