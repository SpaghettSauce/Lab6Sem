function varargout = n134(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @n134_OpeningFcn, ...
                   'gui_OutputFcn',  @n134_OutputFcn, ...
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


% --- Executes just before n134 is made visible.
function n134_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for n134
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes n134 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = n134_OutputFcn(hObject, eventdata, handles)
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
x=-2:0.2:2;

handles.Line=plot(x, y);
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

set(handles.mnGraphPlot, 'Enable', 'off')
set(handles.mnGraphClear, 'Enable', 'on')

set(handles.radiobutton4, 'Enable', 'on')
set(handles.radiobutton5, 'Enable', 'on')
set(handles.radiobutton6, 'Enable', 'on')

if get(handles.radiobutton4, 'Value')
    set(handles.radiobutton4, 'Enable', 'inactive')
end
if get(handles.radiobutton5, 'Value')
    set(handles.radiobutton5, 'Enable', 'inactive')
end

if get(handles.radiobutton4, 'Value')
    set(handles.line, 'Marker', 'o')
end
if get(handles.radiobutton5, 'Value')
    set(handles.Line, 'Marker', 's')
end


Num=get(handles.pmColor, 'Value');
switch Num
    case 1
        set(handles.Line, 'Color', 'b');
    case 2
        set(handles.Line, 'Color', 'r');
    case 3
        set(handles.Line, 'Color', 'g');
end
set(handles.pmColor, 'Enable', 'on')
set(handles.Line, 'UIContextMenu', handles.cmLine)

% hObject    handle to btnplot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnclear.
function btnclear_Callback(hObject, eventdata, handles)
button=questdlg('Очистить оси?', 'mygui');
if strcmp(button, 'Yes')
    cla
    set(hObject, 'Enable', 'off')
    set(handles.btnplot, 'Enable', 'on')
    
    set(handles.mnGraphPlot, 'Enable', 'on')
    set(handles.mnGraphClear, 'Enable', 'off')
    % hObject    handle to btnclear (see GCBO)
    % eventdata  reserved - to be defined in a future version of MATLAB
    % handles    structure with handles and user data (see GUIDATA)
    set(handles.radiobutton4, 'Enable', 'off')
    set(handles.radiobutton5, 'Enable', 'off')
    set(handles.radiobutton6, 'Enable', 'off')

    set(handles.pmColor, 'Enable', 'off')
end



% --- Executes on button press in chbxGridX.
function chbxGridX_Callback(hObject, eventdata, ~)
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

set(hObject, 'Enable', 'inactive')
set(handles.radiobutton5, 'Enable', 'on')
set(handles.radiobutton6, 'Enable', 'on')


function radiobutton5_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 's')

set(hObject, 'Enable', 'inactive')
set(handles.radiobutton4, 'Enable', 'on')
set(handles.radiobutton6, 'Enable', 'on')

function radiobutton6_Callback(hObject, eventdata, handles)
set(handles.Line, 'Marker', 'None')

set(hObject, 'Enable', 'inactive')
set(handles.radiobutton5, 'Enable', 'on')
set(handles.radiobutton4, 'Enable', 'on')


% --- Executes on selection change in pmColor.
function pmColor_Callback(hObject, eventdata, handles)
Num=get(hObject, 'Value');
switch Num
    case 1
        set(handles.Line, 'Color', 'b');
    case 2
        set(handles.Line, 'Color', 'r');
    case 3
        set(handles.Line, 'Color', 'g');
end
% hObject    handle to pmColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmColor


% --- Executes during object creation, after setting all properties.
function pmColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function scrWidth_Callback(hObject, eventdata, handles)
width=get(hObject, 'Value');
set(handles.Line, 'LineWidth', round(width))


% --- Executes during object creation, after setting all properties.
function scrWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scrWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editFun_Callback(hObject, eventdata, handles)

btnplot_Callback(handles.btnPlot, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function editFun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(hObject, eventdata, handles)
u_fig=get(gcbo, 'Units');
u_uipanel1=get(handles.uipanel1, 'Units');
set(hObject, 'Units', 'pixels');
set(handles.u1panel1, 'Units', 'pixels')
p_fig=get(hObject, 'Position');
x=p_fig(3)-180;
y=p_fig(4)-90;
width=160;
height=70;
set(handles.uipanel1, 'Position', [x, y, width, height])
set(hObject, 'Units', u_fig)
set(handles.uipanel1, 'Units', u_uipanel1)


% --- Executes on button press in btnfile.
%function btnfile_Callback(hObject, eventdata, handles)

%[fname, pname]=uigetfile('*.dat');
%if fname~=0
 %   fullname=strcat(pname, fname);
  %  try    
   %     Mas=load(fullname);
   %     SMas=size(Mas);
   %     if(SMas(2)~=2|~isnumeric(Mas)
    %        errordlg('Неизвестный формат файла с данными', 'Ошибка!')
   %     else
    %    handles.Line=plot(Mas(:, 1), Mas(:, 2))
    %    guidata(gcbo, handles);
      %  end
    %catch
    %    errordlg('Неизвестный формат файла с данными', 'Ошибка!')
   % end
%end


% --------------------------------------------------------------------
function mnGraph_Callback(hObject, eventdata, handles)
% hObject    handle to mnGraph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnGraphPlot_Callback(hObject, eventdata, handles)
btnplot_Callback(handles.btnplot, eventdata, handles)


% --------------------------------------------------------------------
function mnGraphClear_Callback(hObject, eventdata, handles)
btnclear_Callback(handles.btnclear, eventdata, handles)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function mnGridX_Callback(hObject, eventdata, handles)
if strcmp(get(hObject, 'Checked'), 'on')
    set(hObject, 'Checked', 'off')
    set(handles.X_main, 'XGrid', 'on')
else
    set(hObject, 'Checked', 'on')
    set(handles.X_main, 'XGrid', 'on')
end

% --------------------------------------------------------------------
function mnGridY_Callback(hObject, eventdata, handles)
if strcmp(get(hObject, 'Checked'), 'on')
    set(hObject, 'Checked', 'off')
    set(handles.X_main, 'YGrid', 'on')
else
    set(hObject, 'Checked', 'on')
    set(handles.X_main, 'YGrid', 'on')
end


% --------------------------------------------------------------------
function cmLineBlue_Callback(hObject, eventdata, handles)
set(handles.Line, 'Color', 'b')
set(handles.pmColor, 'Value', 1)

% --------------------------------------------------------------------
function cmLineRed_Callback(hObject, eventdata, handles)
set(handles.Line, 'Color', 'r')
set(handles.pmColor, 'Value', 2)

% --------------------------------------------------------------------
function cmLineGreen_Callback(hObject, eventdata, handles)
set(handles.Line, 'Color', 'g')
set(handles.pmColor, 'Value', 3)

% --------------------------------------------------------------------
function cmLine_Callback(hObject, eventdata, handles)
