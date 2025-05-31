function myview(filename);
if nargout~=0
    error('Нет выходных аргументов');
end
if nargin~=1
    error('Функция вызывается с одним аргументом');
end
if ~ischar(filename)
    error('Это не строка');
end
[F, mes]=fopen(filename, 'rt');
if F~=-1
    mas='';
while feof(F)==0
    line=fgetl(F);
    mas=char(mas, line);
end
fclose(F);
disp(mas)
else
    disp('error')
    disp(mes)
end
    