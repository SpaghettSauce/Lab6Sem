function varargout = n136(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @n136_OpeningFcn, ...
                   'gui_OutputFcn',  @n136_OutputFcn, ...
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


% --- Executes just before n136 is made visible.
function n136_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;
set(handles.figure1, 'KeyPressFcn', (@n136_KeyPressFcn, handles))


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes n136 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = n136_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function n136_KeyPressFcn(hObject, eventdata, handles)
ch=get(hObject, 'CurrentCharacter');
mdf=eventdata.Character;
key=eventdata.key;
if lenght(ch)==0
    return
end
code=double(ch);
strcode=num2str(code);
str=set(handles.txtWin, 'String');
if isempty(mdf)   
    str=[str, ' ', ch, '=', strcode];
    set(handles.txtWin, 'String', str);
    return
end
switch lenght(mdf)
    case 1
        fkey=mdf(1);
        str=[str, '', fkey, '+', key, '=', strobe];
    case 2
        fkey1=mdf(1);
        fkey2=mdf(2);
        str=[str, ' ', fkey1, '+', fkey2, '+', key, '+', strobe];
    case 3
        fkey1=mdf(1);
        fkey2=mdf(2);
        fkey=mdf(3);
        str=[str, ' ', fkey1, '+', fkey2, '+', fkey3, '+' key, '=', strobe]
end
set(handles.txt.Win, 'String', str);