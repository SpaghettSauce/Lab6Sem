function LoadBtn_Callback(hObject, eventdata, handles)
DataFileStr=uigetfile('*.dat', 'Открыть файл с данными');
if DataFileStr~=0
    set(handles.DataFileEdt, 'String', DataFileStr);
    data=load(DataFileStr);
    handles.xdat=data(:,1);
    handles.ydat=data(:,2);
    guidata(gcbo, handles)
    Hdata=plot(handles.xdat, handles.ydat, 'r');
    set(Hdata, 'MarkerSize', 15);
    hold on
    set(handles.ParEdt, 'String', '')
end

function GuessBtn_Callback(hObject, eventdata, handles);
ParStr=['par0=', get(handles.GuessEdt, 'String'), ';'];
eval(ParStr)
x=(min(handles.xdat):(max(handles.xdat)-min(handles.xdat))/30:max(handles.xdat));
