function varargout = n137(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @n137_OpeningFcn, ...
                   'gui_OutputFcn',  @n137_OutputFcn, ...
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


% --- Executes just before n137 is made visible.
function n137_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to n137 (see VARARGIN)

% Choose default command line output for n137
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes n137 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = n137_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;
handles.Line=line('XData', [], 'YData', [], 'Marker', 'o');
guidata(hObject, handles);


% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
coord=get(hObject, 'CurrentPoint')
x=coord(2, 1);
y=coord(2, 2);
X=get(handles.Line, 'XData');
Y=get(handles.Line, 'YData');
X=[X x];
Y=[Y y];
set(handles.Line, 'XData', X, 'YData', Y)


plot(x, y, 'o')
