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

function GuessBtn_Callback(hObject, eventdata, handles)
ParStr=['par0=', get(handles.GuessEdt, 'String'), ';'];
eval(ParStr)
x=(min(handles.xdat):(max(handles.xdat)-min(handles.xdat))/30:max(handles.xdat));
FunName=get(handles.FunEdt, 'String', ';')
y=fevel(FunName, par0, x);
plot(x, y, '--b')

function FitBtn_Callback(hObject, eventdata, handles)
options=optimset('Display', 'iter');
ParStr=['par0=', get(handles.GuessEdt, 'String'), ';'];
eval(ParStr)
eval(['LB', get(handles.LBEdt, 'String'), ';'])
eval(['UB', get(handles.UBEdt, 'String'), ';'])
par=lsqcurvefit(FunName, par0, handles.xdat, handles.ydat, LB, UB, options);
ParStr=mat2str(par, 3);
set(handles.PartEdt, 'String', ParStr);
x=(min(handles.xdat):(max(handles.xdat)-min(handles.xdat))/30:max(handles.xdat));
y=feval(FunName, par, x);
Hplot=plot(x, y, '-g');
set(Hplot(1), 'LineWidth', 2)

function ClearBTN_Callback(hObject, eventdata, handles)
cla;